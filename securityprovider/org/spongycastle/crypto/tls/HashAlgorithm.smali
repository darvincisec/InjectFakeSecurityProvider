.class public Lorg/spongycastle/crypto/tls/HashAlgorithm;
.super Ljava/lang/Object;
.source "HashAlgorithm.java"


# static fields
.field public static final md5:S = 0x1s

.field public static final none:S = 0x0s

.field public static final sha1:S = 0x2s

.field public static final sha224:S = 0x3s

.field public static final sha256:S = 0x4s

.field public static final sha384:S = 0x5s

.field public static final sha512:S = 0x6s


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(S)Ljava/lang/String;
    .locals 1
    .param p0, "hashAlgorithm"    # S

    .prologue
    .line 18
    packed-switch p0, :pswitch_data_0

    .line 35
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 21
    :pswitch_0
    const-string v0, "none"

    goto :goto_0

    .line 23
    :pswitch_1
    const-string v0, "md5"

    goto :goto_0

    .line 25
    :pswitch_2
    const-string v0, "sha1"

    goto :goto_0

    .line 27
    :pswitch_3
    const-string v0, "sha224"

    goto :goto_0

    .line 29
    :pswitch_4
    const-string v0, "sha256"

    goto :goto_0

    .line 31
    :pswitch_5
    const-string v0, "sha384"

    goto :goto_0

    .line 33
    :pswitch_6
    const-string v0, "sha512"

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getText(S)Ljava/lang/String;
    .locals 2
    .param p0, "hashAlgorithm"    # S

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/HashAlgorithm;->getName(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isPrivate(S)Z
    .locals 1
    .param p0, "hashAlgorithm"    # S

    .prologue
    .line 46
    const/16 v0, 0xe0

    if-gt v0, p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
