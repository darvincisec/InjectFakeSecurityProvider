.class public Lorg/spongycastle/crypto/engines/RC6Engine;
.super Ljava/lang/Object;
.source "RC6Engine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final LGW:I = 0x5

.field private static final P32:I = -0x481eae9d

.field private static final Q32:I = -0x61c88647

.field private static final _noRounds:I = 0x14

.field private static final bytesPerWord:I = 0x4

.field private static final wordSize:I = 0x20


# instance fields
.field private _S:[I

.field private forEncryption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    .line 51
    return-void
.end method

.method private bytesToWord([BI)I
    .locals 4
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I

    .prologue
    .line 342
    const/4 v1, 0x0

    .line 344
    .local v1, "word":I
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 346
    shl-int/lit8 v2, v1, 0x8

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int v1, v2, v3

    .line 344
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 349
    :cond_0
    return v1
.end method

.method private decryptBlock([BI[BI)I
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 254
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v0

    .line 255
    .local v0, "A":I
    add-int/lit8 v8, p2, 0x4

    invoke-direct {p0, p1, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v1

    .line 256
    .local v1, "B":I
    add-int/lit8 v8, p2, 0x8

    invoke-direct {p0, p1, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v2

    .line 257
    .local v2, "C":I
    add-int/lit8 v8, p2, 0xc

    invoke-direct {p0, p1, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v3

    .line 260
    .local v3, "D":I
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v9, 0x2b

    aget v8, v8, v9

    sub-int/2addr v2, v8

    .line 261
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v9, 0x2a

    aget v8, v8, v9

    sub-int/2addr v0, v8

    .line 264
    const/16 v4, 0x14

    .local v4, "i":I
    :goto_0
    const/4 v8, 0x1

    if-lt v4, v8, :cond_0

    .line 266
    const/4 v5, 0x0

    .local v5, "t":I
    const/4 v7, 0x0

    .line 268
    .local v7, "u":I
    move v6, v3

    .line 269
    .local v6, "temp":I
    move v3, v2

    .line 270
    move v2, v1

    .line 271
    move v1, v0

    .line 272
    move v0, v6

    .line 274
    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int v5, v1, v8

    .line 275
    const/4 v8, 0x5

    invoke-direct {p0, v5, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v5

    .line 277
    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int v7, v3, v8

    .line 278
    const/4 v8, 0x5

    invoke-direct {p0, v7, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v7

    .line 280
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v9, v4, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v2, v8

    .line 281
    invoke-direct {p0, v2, v5}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateRight(II)I

    move-result v2

    .line 282
    xor-int/2addr v2, v7

    .line 284
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v9, v4, 0x2

    aget v8, v8, v9

    sub-int/2addr v0, v8

    .line 285
    invoke-direct {p0, v0, v7}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateRight(II)I

    move-result v0

    .line 286
    xor-int/2addr v0, v5

    .line 264
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 290
    .end local v5    # "t":I
    .end local v6    # "temp":I
    .end local v7    # "u":I
    :cond_0
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    sub-int/2addr v3, v8

    .line 291
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v1, v8

    .line 293
    invoke-direct {p0, v0, p3, p4}, Lorg/spongycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 294
    add-int/lit8 v8, p4, 0x4

    invoke-direct {p0, v1, p3, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 295
    add-int/lit8 v8, p4, 0x8

    invoke-direct {p0, v2, p3, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 296
    add-int/lit8 v8, p4, 0xc

    invoke-direct {p0, v3, p3, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 298
    const/16 v8, 0x10

    return v8
.end method

.method private encryptBlock([BI[BI)I
    .locals 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    const/4 v10, 0x5

    .line 200
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v0

    .line 201
    .local v0, "A":I
    add-int/lit8 v8, p2, 0x4

    invoke-direct {p0, p1, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v1

    .line 202
    .local v1, "B":I
    add-int/lit8 v8, p2, 0x8

    invoke-direct {p0, p1, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v2

    .line 203
    .local v2, "C":I
    add-int/lit8 v8, p2, 0xc

    invoke-direct {p0, p1, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->bytesToWord([BI)I

    move-result v3

    .line 206
    .local v3, "D":I
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    add-int/2addr v1, v8

    .line 207
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v3, v8

    .line 210
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v8, 0x14

    if-gt v4, v8, :cond_0

    .line 212
    const/4 v5, 0x0

    .local v5, "t":I
    const/4 v7, 0x0

    .line 214
    .local v7, "u":I
    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int v5, v1, v8

    .line 215
    invoke-direct {p0, v5, v10}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v5

    .line 217
    mul-int/lit8 v8, v3, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int v7, v3, v8

    .line 218
    invoke-direct {p0, v7, v10}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v7

    .line 220
    xor-int/2addr v0, v5

    .line 221
    invoke-direct {p0, v0, v7}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v0

    .line 222
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v9, v4, 0x2

    aget v8, v8, v9

    add-int/2addr v0, v8

    .line 224
    xor-int/2addr v2, v7

    .line 225
    invoke-direct {p0, v2, v5}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v2

    .line 226
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    mul-int/lit8 v9, v4, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    add-int/2addr v2, v8

    .line 228
    move v6, v0

    .line 229
    .local v6, "temp":I
    move v0, v1

    .line 230
    move v1, v2

    .line 231
    move v2, v3

    .line 232
    move v3, v6

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 235
    .end local v5    # "t":I
    .end local v6    # "temp":I
    .end local v7    # "u":I
    :cond_0
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v9, 0x2a

    aget v8, v8, v9

    add-int/2addr v0, v8

    .line 236
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    const/16 v9, 0x2b

    aget v8, v8, v9

    add-int/2addr v2, v8

    .line 239
    invoke-direct {p0, v0, p3, p4}, Lorg/spongycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 240
    add-int/lit8 v8, p4, 0x4

    invoke-direct {p0, v1, p3, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 241
    add-int/lit8 v8, p4, 0x8

    invoke-direct {p0, v2, p3, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 242
    add-int/lit8 v8, p4, 0xc

    invoke-direct {p0, v3, p3, v8}, Lorg/spongycastle/crypto/engines/RC6Engine;->wordToBytes(I[BI)V

    .line 244
    const/16 v8, 0x10

    return v8
.end method

.method private rotateLeft(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 320
    shl-int v0, p1, p2

    neg-int v1, p2

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private rotateRight(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 335
    ushr-int v0, p1, p2

    neg-int v1, p2

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private setKey([B)V
    .locals 11
    .param p1, "key"    # [B

    .prologue
    .line 136
    array-length v8, p1

    add-int/lit8 v8, v8, 0x3

    div-int/lit8 v3, v8, 0x4

    .line 137
    .local v3, "c":I
    if-nez v3, :cond_0

    .line 139
    const/4 v3, 0x1

    .line 141
    :cond_0
    array-length v8, p1

    add-int/lit8 v8, v8, 0x4

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v8, v8, 0x4

    new-array v2, v8, [I

    .line 144
    .local v2, "L":[I
    array-length v8, p1

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 146
    div-int/lit8 v8, v4, 0x4

    div-int/lit8 v9, v4, 0x4

    aget v9, v2, v9

    shl-int/lit8 v9, v9, 0x8

    aget-byte v10, p1, v4

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    aput v9, v2, v8

    .line 144
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 156
    :cond_1
    const/16 v8, 0x2c

    new-array v8, v8, [I

    iput-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    .line 158
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    const/4 v9, 0x0

    const v10, -0x481eae9d

    aput v10, v8, v9

    .line 159
    const/4 v4, 0x1

    :goto_1
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v8, v8

    if-ge v4, v8, :cond_2

    .line 161
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    iget-object v9, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    add-int/lit8 v10, v4, -0x1

    aget v9, v9, v10

    const v10, -0x61c88647

    add-int/2addr v9, v10

    aput v9, v8, v4

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    :cond_2
    array-length v8, v2

    iget-object v9, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v9, v9

    if-le v8, v9, :cond_3

    .line 173
    array-length v8, v2

    mul-int/lit8 v5, v8, 0x3

    .line 180
    .local v5, "iter":I
    :goto_2
    const/4 v0, 0x0

    .line 181
    .local v0, "A":I
    const/4 v1, 0x0

    .line 182
    .local v1, "B":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 184
    .local v6, "j":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_3
    if-ge v7, v5, :cond_4

    .line 186
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    iget-object v9, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    aget v9, v9, v4

    add-int/2addr v9, v0

    add-int/2addr v9, v1

    const/4 v10, 0x3

    invoke-direct {p0, v9, v10}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v0

    .end local v0    # "A":I
    aput v0, v8, v4

    .line 187
    .restart local v0    # "A":I
    aget v8, v2, v6

    add-int/2addr v8, v0

    add-int/2addr v8, v1

    add-int v9, v0, v1

    invoke-direct {p0, v8, v9}, Lorg/spongycastle/crypto/engines/RC6Engine;->rotateLeft(II)I

    move-result v1

    .end local v1    # "B":I
    aput v1, v2, v6

    .line 188
    .restart local v1    # "B":I
    add-int/lit8 v8, v4, 0x1

    iget-object v9, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v9, v9

    rem-int v4, v8, v9

    .line 189
    add-int/lit8 v8, v6, 0x1

    array-length v9, v2

    rem-int v6, v8, v9

    .line 184
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 177
    .end local v0    # "A":I
    .end local v1    # "B":I
    .end local v5    # "iter":I
    .end local v6    # "j":I
    .end local v7    # "k":I
    :cond_3
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    array-length v8, v8

    mul-int/lit8 v5, v8, 0x3

    .restart local v5    # "iter":I
    goto :goto_2

    .line 191
    .restart local v0    # "A":I
    .restart local v1    # "B":I
    .restart local v6    # "j":I
    .restart local v7    # "k":I
    :cond_4
    return-void
.end method

.method private wordToBytes(I[BI)V
    .locals 3
    .param p1, "word"    # I
    .param p2, "dst"    # [B
    .param p3, "dstOff"    # I

    .prologue
    .line 357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 359
    add-int v1, v0, p3

    int-to-byte v2, p1

    aput-byte v2, p2, v1

    .line 360
    ushr-int/lit8 p1, p1, 0x8

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "RC6"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 75
    instance-of v1, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to RC6 init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    .line 80
    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 81
    .local v0, "p":Lorg/spongycastle/crypto/params/KeyParameter;
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->forEncryption:Z

    .line 82
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/RC6Engine;->setKey([B)V

    .line 83
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/RC6Engine;->getBlockSize()I

    move-result v0

    .line 92
    .local v0, "blockSize":I
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->_S:[I

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RC6 engine not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    add-int v1, p2, v0

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 98
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_1
    add-int v1, p4, v0

    array-length v2, p3

    if-le v1, v2, :cond_2

    .line 102
    new-instance v1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_2
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/RC6Engine;->forEncryption:Z

    if-eqz v1, :cond_3

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC6Engine;->encryptBlock([BI[BI)I

    move-result v1

    .line 105
    :goto_0
    return v1

    .line 107
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC6Engine;->decryptBlock([BI[BI)I

    move-result v1

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
