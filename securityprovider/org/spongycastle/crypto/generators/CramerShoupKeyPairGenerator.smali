.class public Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;
.super Ljava/lang/Object;
.source "CramerShoupKeyPairGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private param:Lorg/spongycastle/crypto/params/CramerShoupKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculatePublicKey(Lorg/spongycastle/crypto/params/CramerShoupParameters;Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;)Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;
    .locals 8
    .param p1, "csParams"    # Lorg/spongycastle/crypto/params/CramerShoupParameters;
    .param p2, "sk"    # Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;

    .prologue
    .line 53
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getG1()Ljava/math/BigInteger;

    move-result-object v2

    .line 54
    .local v2, "g1":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getG2()Ljava/math/BigInteger;

    move-result-object v3

    .line 55
    .local v3, "g2":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    .line 57
    .local v5, "p":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX1()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX2()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 58
    .local v0, "c":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY1()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY2()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 59
    .local v1, "d":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getZ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 61
    .local v4, "h":Ljava/math/BigInteger;
    new-instance v6, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    invoke-direct {v6, p1, v0, v1, v4}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;-><init>(Lorg/spongycastle/crypto/params/CramerShoupParameters;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v6
.end method

.method private generatePrivateKey(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/CramerShoupParameters;)Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;
    .locals 8
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "csParams"    # Lorg/spongycastle/crypto/params/CramerShoupParameters;

    .prologue
    .line 44
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v7

    .line 45
    .local v7, "p":Ljava/math/BigInteger;
    new-instance v0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;

    .line 46
    invoke-direct {p0, v7, p1}, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p0, v7, p1}, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 47
    invoke-direct {p0, v7, p1}, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v7, p1}, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    .line 48
    invoke-direct {p0, v7, p1}, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;-><init>(Lorg/spongycastle/crypto/params/CramerShoupParameters;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 49
    .local v0, "key":Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;
    return-object v0
.end method

.method private generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 40
    sget-object v0, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 4

    .prologue
    .line 30
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/CramerShoupKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/CramerShoupKeyGenerationParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v0

    .line 32
    .local v0, "csParams":Lorg/spongycastle/crypto/params/CramerShoupParameters;
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/CramerShoupKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/CramerShoupKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->generatePrivateKey(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/CramerShoupParameters;)Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;

    move-result-object v2

    .line 33
    .local v2, "sk":Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;
    invoke-direct {p0, v0, v2}, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->calculatePublicKey(Lorg/spongycastle/crypto/params/CramerShoupParameters;Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;)Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    move-result-object v1

    .line 34
    .local v1, "pk":Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;
    invoke-virtual {v2, v1}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->setPk(Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;)V

    .line 36
    new-instance v3, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v3, v1, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 26
    check-cast p1, Lorg/spongycastle/crypto/params/CramerShoupKeyGenerationParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/KeyGenerationParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/CramerShoupKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/CramerShoupKeyGenerationParameters;

    .line 27
    return-void
.end method
