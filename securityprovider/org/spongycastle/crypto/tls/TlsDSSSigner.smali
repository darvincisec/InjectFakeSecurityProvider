.class public Lorg/spongycastle/crypto/tls/TlsDSSSigner;
.super Lorg/spongycastle/crypto/tls/TlsDSASigner;
.source "TlsDSSSigner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsDSASigner;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDSAImpl(S)Lorg/spongycastle/crypto/DSA;
    .locals 3
    .param p1, "hashAlgorithm"    # S

    .prologue
    .line 19
    new-instance v0, Lorg/spongycastle/crypto/signers/DSASigner;

    new-instance v1, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/signers/HMacDSAKCalculator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/signers/DSASigner;-><init>(Lorg/spongycastle/crypto/signers/DSAKCalculator;)V

    return-object v0
.end method

.method protected getSignatureAlgorithm()S
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x2

    return v0
.end method

.method public isValidPublicKey(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z
    .locals 1
    .param p1, "publicKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .prologue
    .line 14
    instance-of v0, p1, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    return v0
.end method
