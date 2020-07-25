.class public Lorg/spongycastle/crypto/modes/PaddedBlockCipher;
.super Lorg/spongycastle/crypto/BufferedBlockCipher;
.source "PaddedBlockCipher.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 31
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    .line 33
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 8
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 194
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v4}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 195
    .local v0, "blockSize":I
    const/4 v3, 0x0

    .line 197
    .local v3, "resultLen":I
    iget-boolean v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->forEncryption:Z

    if-eqz v4, :cond_3

    .line 199
    iget v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    if-ne v4, v0, :cond_1

    .line 201
    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, p2

    array-length v5, p1

    if-le v4, v5, :cond_0

    .line 203
    new-instance v4, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 206
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v7, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    .line 207
    iput v7, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    .line 213
    :cond_1
    iget v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    sub-int v4, v0, v4

    int-to-byte v1, v4

    .line 215
    .local v1, "code":B
    :goto_0
    iget v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    if-ge v4, v0, :cond_2

    .line 217
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    aput-byte v1, v4, v5

    .line 218
    iget v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    goto :goto_0

    .line 221
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    add-int v6, p2, v3

    invoke-interface {v4, v5, v7, p1, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 250
    .end local v1    # "code":B
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->reset()V

    .line 252
    return v3

    .line 225
    :cond_3
    iget v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    if-ne v4, v0, :cond_5

    .line 227
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v7, v6, v7}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    .line 228
    iput v7, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    .line 238
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    add-int/lit8 v5, v0, -0x1

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 240
    .local v2, "count":I
    if-ltz v2, :cond_4

    if-le v2, v0, :cond_6

    .line 242
    :cond_4
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v5, "pad block corrupted"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 232
    .end local v2    # "count":I
    :cond_5
    new-instance v4, Lorg/spongycastle/crypto/DataLengthException;

    const-string v5, "last block incomplete in decryption"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 245
    .restart local v2    # "count":I
    :cond_6
    sub-int/2addr v3, v2

    .line 247
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-static {v4, v7, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public getOutputSize(I)I
    .locals 4
    .param p1, "len"    # I

    .prologue
    .line 46
    iget v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 47
    .local v1, "total":I
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 49
    .local v0, "leftOver":I
    if-nez v0, :cond_1

    .line 51
    iget-boolean v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 59
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return v1

    .restart local v1    # "total":I
    :cond_1
    sub-int v2, v1, v0

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v3, v3

    add-int v1, v2, v3

    goto :goto_0
.end method

.method public getUpdateOutputSize(I)I
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 73
    iget v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 74
    .local v1, "total":I
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 76
    .local v0, "leftOver":I
    if-nez v0, :cond_0

    .line 78
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v1, v2

    .line 81
    :goto_0
    return v2

    :cond_0
    sub-int v2, v1, v0

    goto :goto_0
.end method

.method public processByte(B[BI)I
    .locals 4
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "resultLen":I
    iget v1, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 103
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v1, v2, v3, p2, p3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 104
    iput v3, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 109
    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 131
    if-gez p3, :cond_0

    .line 133
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t have a negative input length!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->getBlockSize()I

    move-result v0

    .line 137
    .local v0, "blockSize":I
    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->getUpdateOutputSize(I)I

    move-result v2

    .line 139
    .local v2, "length":I
    if-lez v2, :cond_1

    .line 141
    add-int v4, p5, v2

    array-length v5, p4

    if-le v4, v5, :cond_1

    .line 143
    new-instance v4, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    :cond_1
    const/4 v3, 0x0

    .line 148
    .local v3, "resultLen":I
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    sub-int v1, v4, v5

    .line 150
    .local v1, "gapLen":I
    if-le p3, v1, :cond_2

    .line 152
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v6, p4, p5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 156
    iput v6, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    .line 157
    sub-int/2addr p3, v1

    .line 158
    add-int/2addr p2, v1

    .line 160
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    array-length v4, v4

    if-le p3, v4, :cond_2

    .line 162
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    add-int v5, p5, v3

    invoke-interface {v4, p1, p2, p4, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 164
    sub-int/2addr p3, v0

    .line 165
    add-int/2addr p2, v0

    goto :goto_0

    .line 169
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->buf:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/spongycastle/crypto/modes/PaddedBlockCipher;->bufOff:I

    .line 173
    return v3
.end method
