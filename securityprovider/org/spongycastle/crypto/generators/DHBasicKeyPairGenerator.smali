.class public Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;
.super Ljava/lang/Object;
.source "DHBasicKeyPairGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 7

    .prologue
    .line 32
    sget-object v1, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;

    .line 33
    .local v1, "helper":Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v0

    .line 35
    .local v0, "dhp":Lorg/spongycastle/crypto/params/DHParameters;
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePrivate(Lorg/spongycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 36
    .local v2, "x":Ljava/math/BigInteger;
    invoke-virtual {v1, v0, v2}, Lorg/spongycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePublic(Lorg/spongycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 38
    .local v3, "y":Ljava/math/BigInteger;
    new-instance v4, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v5, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-direct {v5, v3, v0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    new-instance v6, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-direct {v6, v2, v0}, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-direct {v4, v5, v6}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v4
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 27
    check-cast p1, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/KeyGenerationParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    .line 28
    return-void
.end method
