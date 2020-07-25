.class public Lorg/spongycastle/crypto/generators/RSABlindingFactorGenerator;
.super Ljava/lang/Object;
.source "RSABlindingFactorGenerator.java"


# static fields
.field private static ONE:Ljava/math/BigInteger;

.field private static ZERO:Ljava/math/BigInteger;


# instance fields
.field private key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/RSABlindingFactorGenerator;->ZERO:Ljava/math/BigInteger;

    .line 19
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/RSABlindingFactorGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateBlindingFactor()Ljava/math/BigInteger;
    .locals 6

    .prologue
    .line 58
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/RSABlindingFactorGenerator;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-nez v4, :cond_0

    .line 60
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "generator not initialised"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/RSABlindingFactorGenerator;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    .line 64
    .local v3, "m":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 70
    .local v2, "length":I
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/spongycastle/crypto/generators/RSABlindingFactorGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v2, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 71
    .local v0, "factor":Ljava/math/BigInteger;
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 73
    .local v1, "gcd":Ljava/math/BigInteger;
    sget-object v4, Lorg/spongycastle/crypto/generators/RSABlindingFactorGenerator;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lorg/spongycastle/crypto/generators/RSABlindingFactorGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lorg/spongycastle/crypto/generators/RSABlindingFactorGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 32
    instance-of v1, p1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 34
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 36
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/RSABlindingFactorGenerator;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 37
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/RSABlindingFactorGenerator;->random:Ljava/security/SecureRandom;

    .line 45
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/RSABlindingFactorGenerator;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    instance-of v1, v1, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v1, :cond_1

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generator requires RSA public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    .restart local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    check-cast p1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/RSABlindingFactorGenerator;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 42
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/RSABlindingFactorGenerator;->random:Ljava/security/SecureRandom;

    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method
