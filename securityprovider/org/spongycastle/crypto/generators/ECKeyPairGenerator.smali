.class public Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;
.super Ljava/lang/Object;
.source "ECKeyPairGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;
.implements Lorg/spongycastle/math/ec/ECConstants;


# instance fields
.field params:Lorg/spongycastle/crypto/params/ECDomainParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 9

    .prologue
    .line 45
    iget-object v5, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 46
    .local v3, "n":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 47
    .local v4, "nBitLength":I
    ushr-int/lit8 v2, v4, 0x2

    .line 52
    .local v2, "minWeight":I
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v4, v5}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 54
    .local v1, "d":Ljava/math/BigInteger;
    sget-object v5, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gez v5, :cond_0

    .line 59
    invoke-static {v1}, Lorg/spongycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v5

    if-lt v5, v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Lorg/spongycastle/math/ec/ECMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 69
    .local v0, "Q":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v5, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v6, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    iget-object v7, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v6, v0, v7}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    new-instance v7, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v8, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-direct {v7, v1, v8}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v5
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 2
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 28
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    .line 30
    .local v0, "ecP":Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 31
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;->getDomainParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 33
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 37
    :cond_0
    return-void
.end method
