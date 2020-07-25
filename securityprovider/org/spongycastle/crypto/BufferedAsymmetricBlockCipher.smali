.class public Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;
.super Ljava/lang/Object;
.source "BufferedAsymmetricBlockCipher.java"


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field private final cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 0
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 23
    return-void
.end method


# virtual methods
.method public doFinal()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    invoke-interface {v1, v2, v3, v4}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 148
    .local v0, "out":[B
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->reset()V

    .line 150
    return-object v0
.end method

.method public getBufferPosition()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    return v0
.end method

.method public getInputBlockSize()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->reset()V

    .line 58
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    .line 65
    iput v1, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    .line 66
    return-void

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public processByte(B)V
    .locals 3
    .param p1, "in"    # B

    .prologue
    .line 96
    iget v0, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 98
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "attempt to process message too long for cipher"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    aput-byte p1, v0, v1

    .line 102
    return-void
.end method

.method public processBytes([BII)V
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 116
    if-nez p3, :cond_0

    .line 133
    :goto_0
    return-void

    .line 121
    :cond_0
    if-gez p3, :cond_1

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 128
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "attempt to process message too long for cipher"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget v0, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    if-eqz v1, :cond_0

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->buf:[B

    aput-byte v2, v1, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    :cond_0
    iput v2, p0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->bufOff:I

    .line 170
    return-void
.end method
