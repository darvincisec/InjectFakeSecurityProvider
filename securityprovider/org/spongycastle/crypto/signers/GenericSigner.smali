.class public Lorg/spongycastle/crypto/signers/GenericSigner;
.super Ljava/lang/Object;
.source "GenericSigner.java"

# interfaces
.implements Lorg/spongycastle/crypto/Signer;


# instance fields
.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private final engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private forSigning:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "engine"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 25
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->digest:Lorg/spongycastle/crypto/Digest;

    .line 26
    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;,
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-boolean v1, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->forSigning:Z

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "GenericSigner not initialised for signature generation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 100
    .local v0, "hash":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1, v0, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 102
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    return-object v1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "parameters"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 40
    iput-boolean p1, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->forSigning:Z

    .line 43
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 45
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 52
    .local v0, "k":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "signing requires private key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "k":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    move-object v0, p2

    .line 49
    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .restart local v0    # "k":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    .line 57
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "verification requires public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/GenericSigner;->reset()V

    .line 64
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 65
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 143
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "input"    # B

    .prologue
    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 74
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "length"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 85
    return-void
.end method

.method public verifySignature([B)Z
    .locals 8
    .param p1, "signature"    # [B

    .prologue
    const/4 v4, 0x0

    .line 112
    iget-boolean v5, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->forSigning:Z

    if-eqz v5, :cond_0

    .line 114
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "GenericSigner not initialised for verification"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v1, v5, [B

    .line 118
    .local v1, "hash":[B
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5, v1, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 122
    :try_start_0
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/GenericSigner;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 v6, 0x0

    array-length v7, p1

    invoke-interface {v5, p1, v6, v7}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v2

    .line 125
    .local v2, "sig":[B
    array-length v5, v2

    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 127
    array-length v5, v1

    new-array v3, v5, [B

    .line 128
    .local v3, "tmp":[B
    const/4 v5, 0x0

    array-length v6, v3

    array-length v7, v2

    sub-int/2addr v6, v7

    array-length v7, v2

    invoke-static {v2, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    move-object v2, v3

    .line 132
    .end local v3    # "tmp":[B
    :cond_1
    invoke-static {v2, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 136
    .end local v2    # "sig":[B
    :goto_0
    return v4

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
