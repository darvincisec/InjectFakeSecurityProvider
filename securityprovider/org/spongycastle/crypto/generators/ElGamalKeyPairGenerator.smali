.class public Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;
.super Ljava/lang/Object;
.source "ElGamalKeyPairGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;


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
    .locals 9

    .prologue
    .line 33
    sget-object v2, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;

    .line 34
    .local v2, "helper":Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;
    iget-object v5, p0, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;->getParameters()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v1

    .line 35
    .local v1, "egp":Lorg/spongycastle/crypto/params/ElGamalParameters;
    new-instance v0, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getL()I

    move-result v8

    invoke-direct {v0, v5, v6, v7, v8}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 37
    .local v0, "dhp":Lorg/spongycastle/crypto/params/DHParameters;
    iget-object v5, p0, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePrivate(Lorg/spongycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 38
    .local v3, "x":Ljava/math/BigInteger;
    invoke-virtual {v2, v0, v3}, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePublic(Lorg/spongycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 40
    .local v4, "y":Ljava/math/BigInteger;
    new-instance v5, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v6, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-direct {v6, v4, v1}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    new-instance v7, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-direct {v7, v3, v1}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v5
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 28
    check-cast p1, Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/KeyGenerationParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/ElGamalKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/ElGamalKeyGenerationParameters;

    .line 29
    return-void
.end method
