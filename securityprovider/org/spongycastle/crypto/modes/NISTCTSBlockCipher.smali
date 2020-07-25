.class public Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;
.super Lorg/spongycastle/crypto/BufferedBlockCipher;
.source "NISTCTSBlockCipher.java"


# static fields
.field public static final CS1:I = 0x1

.field public static final CS2:I = 0x2

.field public static final CS3:I = 0x3


# instance fields
.field private final blockSize:I

.field private final type:I


# direct methods
.method public constructor <init>(ILorg/spongycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 40
    iput p1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    .line 41
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p2}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 43
    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    .line 45
    iget v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    .line 47
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 12
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
    const/4 v11, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 203
    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/2addr v7, p2

    array-length v8, p1

    if-le v7, v8, :cond_0

    .line 205
    new-instance v7, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v8, "output buffer to small in doFinal"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 208
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v7}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    .line 209
    .local v1, "blockSize":I
    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int v5, v7, v1

    .line 210
    .local v5, "len":I
    new-array v0, v1, [B

    .line 212
    .local v0, "block":[B
    iget-boolean v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->forEncryption:Z

    if-eqz v7, :cond_6

    .line 214
    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-ge v7, v1, :cond_1

    .line 216
    new-instance v7, Lorg/spongycastle/crypto/DataLengthException;

    const-string v8, "need at least one block of input for NISTCTS"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 219
    :cond_1
    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-le v7, v1, :cond_5

    .line 221
    new-array v4, v1, [B

    .line 223
    .local v4, "lastBlock":[B
    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-eq v7, v9, :cond_2

    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-ne v7, v11, :cond_4

    .line 225
    :cond_2
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v8, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v7, v8, v10, v0, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 227
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v7, v1, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v7, v4, v10, v4, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 231
    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-ne v7, v9, :cond_3

    if-ne v5, v1, :cond_3

    .line 233
    invoke-static {v0, v10, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    add-int v7, p2, v1

    invoke-static {v4, v10, p1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    .end local v4    # "lastBlock":[B
    :goto_0
    iget v6, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    .line 331
    .local v6, "offset":I
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->reset()V

    .line 333
    return v6

    .line 239
    .end local v6    # "offset":I
    .restart local v4    # "lastBlock":[B
    :cond_3
    invoke-static {v4, v10, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    add-int v7, p2, v1

    invoke-static {v0, v10, p1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 246
    :cond_4
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v7, v10, v0, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v7, v0, v10, v0, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 248
    invoke-static {v0, v10, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v8, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v8, v5

    invoke-static {v7, v8, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v7, v4, v10, v4, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 252
    add-int v7, p2, v5

    invoke-static {v4, v10, p1, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 257
    .end local v4    # "lastBlock":[B
    :cond_5
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v8, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v7, v8, v10, v0, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 259
    invoke-static {v0, v10, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 264
    :cond_6
    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-ge v7, v1, :cond_7

    .line 266
    new-instance v7, Lorg/spongycastle/crypto/DataLengthException;

    const-string v8, "need at least one block of input for CTS"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 269
    :cond_7
    new-array v4, v1, [B

    .line 271
    .restart local v4    # "lastBlock":[B
    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-le v7, v1, :cond_e

    .line 273
    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-eq v7, v11, :cond_8

    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->type:I

    if-ne v7, v9, :cond_b

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v7, v7

    iget v8, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v7, v8

    rem-int/2addr v7, v1

    if-eqz v7, :cond_b

    .line 275
    :cond_8
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    instance-of v7, v7, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    if-eqz v7, :cond_9

    .line 277
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    check-cast v7, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    .line 279
    .local v2, "c":Lorg/spongycastle/crypto/BlockCipher;
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v2, v7, v10, v0, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 286
    .end local v2    # "c":Lorg/spongycastle/crypto/BlockCipher;
    :goto_1
    move v3, v1

    .local v3, "i":I
    :goto_2
    iget v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    if-eq v3, v7, :cond_a

    .line 288
    sub-int v7, v3, v1

    sub-int v8, v3, v1

    aget-byte v8, v0, v8

    iget-object v9, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    aget-byte v9, v9, v3

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 286
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 283
    .end local v3    # "i":I
    :cond_9
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v8, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v7, v8, v10, v0, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_1

    .line 291
    .restart local v3    # "i":I
    :cond_a
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v7, v1, v0, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v7, v0, v10, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 294
    add-int v7, p2, v1

    invoke-static {v4, v10, p1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 298
    .end local v3    # "i":I
    :cond_b
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    check-cast v7, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    .line 300
    .restart local v2    # "c":Lorg/spongycastle/crypto/BlockCipher;
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v8, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int/2addr v8, v1

    invoke-interface {v2, v7, v8, v4, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 302
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v7, v10, v0, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    if-eq v5, v1, :cond_c

    .line 306
    sub-int v7, v1, v5

    invoke-static {v4, v5, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    :cond_c
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v7, v0, v10, v0, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 311
    invoke-static {v0, v10, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-eq v3, v5, :cond_d

    .line 315
    aget-byte v7, v4, v3

    iget-object v8, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    aget-byte v8, v8, v3

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v3

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 318
    :cond_d
    add-int v7, p2, v1

    invoke-static {v4, v10, p1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 323
    .end local v2    # "c":Lorg/spongycastle/crypto/BlockCipher;
    .end local v3    # "i":I
    :cond_e
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v8, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v7, v8, v10, v0, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 325
    invoke-static {v0, v10, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0
.end method

.method public getOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 82
    iget v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 60
    iget v2, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 61
    .local v1, "total":I
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 63
    .local v0, "leftOver":I
    if-nez v0, :cond_0

    .line 65
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v1, v2

    .line 68
    :goto_0
    return v2

    :cond_0
    sub-int v2, v1, v0

    goto :goto_0
.end method

.method public processByte(B[BI)I
    .locals 6
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
    const/4 v5, 0x0

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "resultLen":I
    iget v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 105
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v1, v2, v5, p2, p3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 106
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->blockSize:I

    iput v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    .line 111
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    .line 113
    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 8
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
    const/4 v7, 0x0

    .line 136
    if-gez p3, :cond_0

    .line 138
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t have a negative input length!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 141
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->getBlockSize()I

    move-result v0

    .line 142
    .local v0, "blockSize":I
    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v2

    .line 144
    .local v2, "length":I
    if-lez v2, :cond_1

    .line 146
    add-int v4, p5, v2

    array-length v5, p4

    if-le v4, v5, :cond_1

    .line 148
    new-instance v4, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 152
    :cond_1
    const/4 v3, 0x0

    .line 153
    .local v3, "resultLen":I
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    sub-int v1, v4, v5

    .line 155
    .local v1, "gapLen":I
    if-le p3, v1, :cond_2

    .line 157
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-interface {v4, v5, v7, p4, p5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 160
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput v0, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    .line 164
    sub-int/2addr p3, v1

    .line 165
    add-int/2addr p2, v1

    .line 167
    :goto_0
    if-le p3, v0, :cond_2

    .line 169
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    add-int v6, p5, v3

    invoke-interface {v4, v5, v7, p4, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 171
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    sub-int/2addr p3, v0

    .line 174
    add-int/2addr p2, v0

    goto :goto_0

    .line 178
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->buf:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lorg/spongycastle/crypto/modes/NISTCTSBlockCipher;->bufOff:I

    .line 182
    return v3
.end method
