#!/bin/bash
#
# Script to patch smali file to include a patch security provider
#
if [[ ("$1" = "") || ("$2" = "") ]];then
    echo "Usage: $0 <.apk file to be tampered> <Name of the class which has to include the security provider>" >&2
    exit 1
fi

if [ ! -x "$(command -v apktool)" ]; then
  echo 'Error: apktool is not configured' >&2
  exit 1
fi
if [ ! -x "$(command -v apksigner)" ]; then
  echo 'Error: apksigner is not configured.Configure $PATH to include this /Users/<username>/Library/Android/sdk/build-tools/<version>' >&2
  exit 1
fi

echo "Tampering $1"
HOME_DIR=$PWD

filename=$1
tamperedfile="${filename%.*}"
tamperedfile+="_patched.apk"

cp "$1" "$tamperedfile"

echo "==============Disassembling the apk=================="
./apktool.sh d $tamperedfile
if [ $? != 0 ]; then
    echo "apktool error"
    exit 1
fi
directory="${tamperedfile%.*}"

inputfile="$2.smali"

pushd "$directory"
filetopatch=$(find . -name $inputfile)
sed '/# direct methods/a \
.method static constructor <clinit>()V \
    .locals 2 \
    .prologue \
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;\
    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V \
    const/4 v1, 0x1 \
    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I \
    return-void \
.end method \
' $filetopatch > $filetopatch.tmp           
mv $filetopatch.tmp $filetopatch
popd

echo "$HOME_DIR/$directory/smali"

if [ -d "$HOME_DIR/$directory/smali_classes2" ]; then
    cp -r $HOME_DIR/securityprovider/* $HOME_DIR/$directory/smali_classes2/
else
    cp -r $HOME_DIR/securityprovider/* $HOME_DIR/$directory/smali/
fi
echo "=========Reassembling the apk==============="
./apktool.sh b "${tamperedfile%.*}"
directory="${tamperedfile%.*}"
directory+="/dist"

cp "$directory/$tamperedfile" .
echo "=========SIGNING THE APK========="
zipalign -p 4 $tamperedfile ${tamperedfile%.*}-aligned.apk
mv ${tamperedfile%.*}-aligned.apk $tamperedfile
apksigner sign --ks keystore.jks --ks-key-alias <alias> --ks-pass pass:<password> --key-pass pass:<password> $tamperedfile
if [ $? -eq 0 ]; then
    echo "APK -> $tamperedfile for crypto test is ready"
else
    echo "Create a keystore file and set the alias and password accordingly"
fi
rm -rf ${tamperedfile%.*}
