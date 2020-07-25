.class public Lorg/spongycastle/crypto/ec/ECElGamalEncryptor;
.super Ljava/lang/Object;
.source "ECElGamalEncryptor.java"

# interfaces
.implements Lorg/spongycastle/crypto/ec/ECEncryptor;


# instance fields
.field private key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public encrypt(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/crypto/ec/ECPair;
    .locals 8
    .param p1, "point"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    iget-object v4, p0, Lorg/spongycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-nez v4, :cond_0

    .line 64
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ECElGamalEncryptor not initialised"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    .line 68
    .local v1, "ec":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/crypto/ec/ECElGamalEncryptor;->random:Ljava/security/SecureRandom;

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/ec/ECUtil;->generateK(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 70
    .local v3, "k":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/ec/ECElGamalEncryptor;->createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    .line 72
    .local v0, "basePointMultiplier":Lorg/spongycastle/math/ec/ECMultiplier;
    const/4 v4, 0x2

    new-array v2, v4, [Lorg/spongycastle/math/ec/ECPoint;

    .line 73
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Lorg/spongycastle/math/ec/ECMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    aput-object v4, v2, v6

    iget-object v4, p0, Lorg/spongycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 74
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    aput-object v4, v2, v7

    .line 77
    .local v2, "gamma_phi":[Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 79
    new-instance v4, Lorg/spongycastle/crypto/ec/ECPair;

    aget-object v5, v2, v6

    aget-object v6, v2, v7

    invoke-direct {v4, v5, v6}, Lorg/spongycastle/crypto/ec/ECPair;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)V

    return-object v4
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 31
    instance-of v1, p1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 33
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 35
    .local v0, "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ECPublicKeyParameters are required for encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 40
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/ec/ECElGamalEncryptor;->random:Ljava/security/SecureRandom;

    .line 52
    .end local v0    # "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 44
    .restart local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    instance-of v1, p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-nez v1, :cond_2

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ECPublicKeyParameters are required for encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_2
    check-cast p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/ec/ECElGamalEncryptor;->key:Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 50
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/ec/ECElGamalEncryptor;->random:Ljava/security/SecureRandom;

    goto :goto_0
.end method
