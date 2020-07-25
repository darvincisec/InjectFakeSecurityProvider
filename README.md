# PatchSecurityProvider
A simple script to patch smali file to include a Fake Security Provider at 1. This provider is created by patching the SpongyCastle library to print the key, key size, algorithm parameters, keystore password in logcat. With this you can retrieve application cryptographic assets provided applications depend on the default security provider.

If applications just rely on default Security Provider like this
```Java
Cipher.getInstance("AES");
KeyStore.getInstance("BKS");
```
then inserting a security provider 
```Java
Security.insertProviderAt(new BouncyCastleProvider(), 1);
```
can divert all the cryptographic operations to be performed through the inserted security provider.


# Usage
```Shell
sh patchcryptoprovider.sh <xyz.apk> <class file to include the security provider>
```
Ex: sh patchcryptoprovider.sh 123.apk MainActivity

# Demo
![Demo](demo.gif)
