.class public Lorg/spongycastle/crypto/engines/RSABlindingEngine;
.super Ljava/lang/Object;
.source "RSABlindingEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private blindingFactor:Ljava/math/BigInteger;

.field private core:Lorg/spongycastle/crypto/engines/RSACoreEngine;

.field private forEncryption:Z

.field private key:Lorg/spongycastle/crypto/params/RSAKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->core:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    return-void
.end method

.method private blindMessage(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p1, "msg"    # Ljava/math/BigInteger;

    .prologue
    .line 116
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->blindingFactor:Ljava/math/BigInteger;

    .line 117
    .local v0, "blindMsg":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method private unblindMessage(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "blindedMsg"    # Ljava/math/BigInteger;

    .prologue
    .line 129
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 130
    .local v1, "m":Ljava/math/BigInteger;
    move-object v2, p1

    .line 131
    .local v2, "msg":Ljava/math/BigInteger;
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->blindingFactor:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 132
    .local v0, "blindFactorInverse":Ljava/math/BigInteger;
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 133
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 135
    return-object v2
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->core:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->core:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 40
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 42
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 44
    .local v1, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/RSABlindingParameters;

    .line 51
    .end local v1    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .local v0, "p":Lorg/spongycastle/crypto/params/RSABlindingParameters;
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->core:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSABlindingParameters;->getPublicKey()Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 53
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->forEncryption:Z

    .line 54
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSABlindingParameters;->getPublicKey()Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 55
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSABlindingParameters;->getBlindingFactor()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->blindingFactor:Ljava/math/BigInteger;

    .line 56
    return-void

    .end local v0    # "p":Lorg/spongycastle/crypto/params/RSABlindingParameters;
    :cond_0
    move-object v0, p2

    .line 48
    check-cast v0, Lorg/spongycastle/crypto/params/RSABlindingParameters;

    .restart local v0    # "p":Lorg/spongycastle/crypto/params/RSABlindingParameters;
    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .prologue
    .line 96
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->core:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v1, p1, p2, p3}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->convertInput([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 98
    .local v0, "msg":Ljava/math/BigInteger;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->blindMessage(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 107
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->core:Lorg/spongycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->convertOutput(Ljava/math/BigInteger;)[B

    move-result-object v1

    return-object v1

    .line 104
    :cond_0
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RSABlindingEngine;->unblindMessage(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method
