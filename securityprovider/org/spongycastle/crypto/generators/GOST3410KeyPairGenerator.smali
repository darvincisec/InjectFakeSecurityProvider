.class public Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;
.super Ljava/lang/Object;
.source "GOST3410KeyPairGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private param:Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 11

    .prologue
    .line 34
    iget-object v8, p0, Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;->param:Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;->getParameters()Lorg/spongycastle/crypto/params/GOST3410Parameters;

    move-result-object v0

    .line 35
    .local v0, "GOST3410Params":Lorg/spongycastle/crypto/params/GOST3410Parameters;
    iget-object v8, p0, Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;->param:Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v5

    .line 37
    .local v5, "random":Ljava/security/SecureRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    .line 38
    .local v4, "q":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    .line 39
    .local v3, "p":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getA()Ljava/math/BigInteger;

    move-result-object v1

    .line 41
    .local v1, "a":Ljava/math/BigInteger;
    const/16 v2, 0x40

    .line 44
    .local v2, "minWeight":I
    :cond_0
    new-instance v6, Ljava/math/BigInteger;

    const/16 v8, 0x100

    invoke-direct {v6, v8, v5}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 46
    .local v6, "x":Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v8

    const/4 v9, 0x1

    if-lt v8, v9, :cond_0

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_0

    .line 51
    invoke-static {v6}, Lorg/spongycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v8

    if-lt v8, v2, :cond_0

    .line 62
    invoke-virtual {v1, v6, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 64
    .local v7, "y":Ljava/math/BigInteger;
    new-instance v8, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v9, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;

    invoke-direct {v9, v7, v0}, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/GOST3410Parameters;)V

    new-instance v10, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;

    invoke-direct {v10, v6, v0}, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/GOST3410Parameters;)V

    invoke-direct {v8, v9, v10}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v8
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 28
    check-cast p1, Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/KeyGenerationParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/GOST3410KeyPairGenerator;->param:Lorg/spongycastle/crypto/params/GOST3410KeyGenerationParameters;

    .line 29
    return-void
.end method
