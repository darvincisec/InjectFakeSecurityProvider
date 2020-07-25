.class public final Lorg/spongycastle/crypto/util/DigestFactory;
.super Ljava/lang/Object;
.source "DigestFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMD5()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA1()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA224()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA256()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA384()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA3_224()Lorg/spongycastle/crypto/Digest;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0xe0

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA3_256()Lorg/spongycastle/crypto/Digest;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA3_384()Lorg/spongycastle/crypto/Digest;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x180

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA3_512()Lorg/spongycastle/crypto/Digest;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA512()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    return-object v0
.end method

.method public static createSHA512_224()Lorg/spongycastle/crypto/Digest;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;

    const/16 v1, 0xe0

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA512tDigest;-><init>(I)V

    return-object v0
.end method

.method public static createSHA512_256()Lorg/spongycastle/crypto/Digest;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA512tDigest;-><init>(I)V

    return-object v0
.end method
