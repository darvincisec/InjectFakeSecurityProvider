.class public Lorg/spongycastle/crypto/agreement/DHAgreement;
.super Ljava/lang/Object;
.source "DHAgreement.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private dhParams:Lorg/spongycastle/crypto/params/DHParameters;

.field private key:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

.field private privateValue:Ljava/math/BigInteger;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/agreement/DHAgreement;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p1, "pub"    # Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    .param p2, "message"    # Ljava/math/BigInteger;

    .prologue
    .line 87
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v3, v4}, Lorg/spongycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    .line 94
    .local v0, "p":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v1

    .line 95
    .local v1, "peerY":Ljava/math/BigInteger;
    if-eqz v1, :cond_1

    sget-object v3, Lorg/spongycastle/crypto/agreement/DHAgreement;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_1

    sget-object v3, Lorg/spongycastle/crypto/agreement/DHAgreement;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 97
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Diffie-Hellman public key is weak"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/DHAgreement;->privateValue:Ljava/math/BigInteger;

    invoke-virtual {v1, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 101
    .local v2, "result":Ljava/math/BigInteger;
    sget-object v3, Lorg/spongycastle/crypto/agreement/DHAgreement;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Shared key can\'t be 1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_3
    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/DHAgreement;->key:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method public calculateMessage()Ljava/math/BigInteger;
    .locals 5

    .prologue
    .line 69
    new-instance v0, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;-><init>()V

    .line 70
    .local v0, "dhGen":Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;
    new-instance v2, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/DHAgreement;->random:Ljava/security/SecureRandom;

    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 71
    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/DHKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 73
    .local v1, "dhPair":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/agreement/DHAgreement;->privateValue:Ljava/math/BigInteger;

    .line 75
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 41
    instance-of v2, p1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 43
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 45
    .local v1, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/agreement/DHAgreement;->random:Ljava/security/SecureRandom;

    .line 46
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 55
    .end local v1    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .local v0, "kParam":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    instance-of v2, v0, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    if-nez v2, :cond_1

    .line 57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/crypto/agreement/DHAgreement;->random:Ljava/security/SecureRandom;

    move-object v0, p1

    .line 51
    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .restart local v0    # "kParam":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    .line 60
    :cond_1
    check-cast v0, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/DHAgreement;->key:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 61
    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/DHAgreement;->key:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/agreement/DHAgreement;->dhParams:Lorg/spongycastle/crypto/params/DHParameters;

    .line 62
    return-void
.end method
