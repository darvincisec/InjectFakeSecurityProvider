.class public Lorg/spongycastle/crypto/engines/IDEAEngine;
.super Ljava/lang/Object;
.source "IDEAEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final BASE:I = 0x10001

.field protected static final BLOCK_SIZE:I = 0x8

.field private static final MASK:I = 0xffff


# instance fields
.field private workingKey:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IDEAEngine;->workingKey:[I

    .line 32
    return-void
.end method

.method private bytesToWord([BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 103
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private expandKey([B)[I
    .locals 9
    .param p1, "uKey"    # [B

    .prologue
    const/16 v8, 0x34

    const/16 v4, 0x10

    const/4 v7, 0x6

    const v6, 0xffff

    .line 206
    new-array v1, v8, [I

    .line 208
    .local v1, "key":[I
    array-length v3, p1

    if-ge v3, v4, :cond_0

    .line 210
    new-array v2, v4, [B

    .line 212
    .local v2, "tmp":[B
    const/4 v3, 0x0

    array-length v4, v2

    array-length v5, p1

    sub-int/2addr v4, v5

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    move-object p1, v2

    .line 217
    .end local v2    # "tmp":[B
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 219
    mul-int/lit8 v3, v0, 0x2

    invoke-direct {p0, p1, v3}, Lorg/spongycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v3

    aput v3, v1, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    const/16 v0, 0x8

    :goto_1
    if-ge v0, v8, :cond_4

    .line 224
    and-int/lit8 v3, v0, 0x7

    if-ge v3, v7, :cond_2

    .line 226
    add-int/lit8 v3, v0, -0x7

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v4, v0, -0x6

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v1, v0

    .line 222
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    :cond_2
    and-int/lit8 v3, v0, 0x7

    if-ne v3, v7, :cond_3

    .line 230
    add-int/lit8 v3, v0, -0x7

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v4, v0, -0xe

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v1, v0

    goto :goto_2

    .line 234
    :cond_3
    add-int/lit8 v3, v0, -0xf

    aget v3, v1, v3

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x9

    add-int/lit8 v4, v0, -0xe

    aget v4, v1, v4

    shr-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/2addr v3, v6

    aput v3, v1, v0

    goto :goto_2

    .line 238
    :cond_4
    return-object v1
.end method

.method private generateWorkingKey(Z[B)[I
    .locals 1
    .param p1, "forEncryption"    # Z
    .param p2, "userKey"    # [B

    .prologue
    .line 348
    if-eqz p1, :cond_0

    .line 350
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/engines/IDEAEngine;->expandKey([B)[I

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/engines/IDEAEngine;->expandKey([B)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->invertKey([I)[I

    move-result-object v0

    goto :goto_0
.end method

.method private ideaFunc([I[BI[BI)V
    .locals 13
    .param p1, "workingKey"    # [I
    .param p2, "in"    # [B
    .param p3, "inOff"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 158
    .local v2, "keyOff":I
    move/from16 v0, p3

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v7

    .line 159
    .local v7, "x0":I
    add-int/lit8 v11, p3, 0x2

    invoke-direct {p0, p2, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v8

    .line 160
    .local v8, "x1":I
    add-int/lit8 v11, p3, 0x4

    invoke-direct {p0, p2, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v9

    .line 161
    .local v9, "x2":I
    add-int/lit8 v11, p3, 0x6

    invoke-direct {p0, p2, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->bytesToWord([BI)I

    move-result v10

    .line 163
    .local v10, "x3":I
    const/4 v4, 0x0

    .local v4, "round":I
    move v3, v2

    .end local v2    # "keyOff":I
    .local v3, "keyOff":I
    :goto_0
    const/16 v11, 0x8

    if-ge v4, v11, :cond_0

    .line 165
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "keyOff":I
    .restart local v2    # "keyOff":I
    aget v11, p1, v3

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v7

    .line 166
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "keyOff":I
    .restart local v3    # "keyOff":I
    aget v11, p1, v2

    add-int/2addr v8, v11

    .line 167
    const v11, 0xffff

    and-int/2addr v8, v11

    .line 168
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "keyOff":I
    .restart local v2    # "keyOff":I
    aget v11, p1, v3

    add-int/2addr v9, v11

    .line 169
    const v11, 0xffff

    and-int/2addr v9, v11

    .line 170
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "keyOff":I
    .restart local v3    # "keyOff":I
    aget v11, p1, v2

    invoke-direct {p0, v10, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v10

    .line 172
    move v5, v8

    .line 173
    .local v5, "t0":I
    move v6, v9

    .line 174
    .local v6, "t1":I
    xor-int/2addr v9, v7

    .line 175
    xor-int/2addr v8, v10

    .line 177
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "keyOff":I
    .restart local v2    # "keyOff":I
    aget v11, p1, v3

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v9

    .line 178
    add-int/2addr v8, v9

    .line 179
    const v11, 0xffff

    and-int/2addr v8, v11

    .line 181
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "keyOff":I
    .restart local v3    # "keyOff":I
    aget v11, p1, v2

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v8

    .line 182
    add-int/2addr v9, v8

    .line 183
    const v11, 0xffff

    and-int/2addr v9, v11

    .line 185
    xor-int/2addr v7, v8

    .line 186
    xor-int/2addr v10, v9

    .line 187
    xor-int/2addr v8, v6

    .line 188
    xor-int/2addr v9, v5

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 191
    .end local v5    # "t0":I
    .end local v6    # "t1":I
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "keyOff":I
    .restart local v2    # "keyOff":I
    aget v11, p1, v3

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v11

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v11, v0, v1}, Lorg/spongycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 192
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "keyOff":I
    .restart local v3    # "keyOff":I
    aget v11, p1, v2

    add-int/2addr v11, v9

    add-int/lit8 v12, p5, 0x2

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v0, v12}, Lorg/spongycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 193
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "keyOff":I
    .restart local v2    # "keyOff":I
    aget v11, p1, v3

    add-int/2addr v11, v8

    add-int/lit8 v12, p5, 0x4

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v0, v12}, Lorg/spongycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 194
    aget v11, p1, v2

    invoke-direct {p0, v10, v11}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mul(II)I

    move-result v11

    add-int/lit8 v12, p5, 0x6

    move-object/from16 v0, p4

    invoke-direct {p0, v11, v0, v12}, Lorg/spongycastle/crypto/engines/IDEAEngine;->wordToBytes(I[BI)V

    .line 195
    return-void
.end method

.method private invertKey([I)[I
    .locals 10
    .param p1, "inKey"    # [I

    .prologue
    .line 297
    const/16 v3, 0x34

    .line 298
    .local v3, "p":I
    const/16 v9, 0x34

    new-array v2, v9, [I

    .line 299
    .local v2, "key":[I
    const/4 v0, 0x0

    .line 301
    .local v0, "inOff":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .local v1, "inOff":I
    aget v9, p1, v0

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    .line 302
    .local v5, "t1":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v9, p1, v1

    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v6

    .line 303
    .local v6, "t2":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local v1    # "inOff":I
    aget v9, p1, v0

    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v7

    .line 304
    .local v7, "t3":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v9, p1, v1

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v8

    .line 305
    .local v8, "t4":I
    add-int/lit8 v3, v3, -0x1

    aput v8, v2, v3

    .line 306
    add-int/lit8 v3, v3, -0x1

    aput v7, v2, v3

    .line 307
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 308
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 310
    const/4 v4, 0x1

    .local v4, "round":I
    move v1, v0

    .end local v0    # "inOff":I
    .restart local v1    # "inOff":I
    :goto_0
    const/16 v9, 0x8

    if-ge v4, v9, :cond_0

    .line 312
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v5, p1, v1

    .line 313
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local v1    # "inOff":I
    aget v6, p1, v0

    .line 314
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 315
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 317
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v9, p1, v1

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    .line 318
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local v1    # "inOff":I
    aget v9, p1, v0

    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v6

    .line 319
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v9, p1, v1

    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v7

    .line 320
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local v1    # "inOff":I
    aget v9, p1, v0

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v8

    .line 321
    add-int/lit8 v3, v3, -0x1

    aput v8, v2, v3

    .line 322
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 323
    add-int/lit8 v3, v3, -0x1

    aput v7, v2, v3

    .line 324
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 310
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 327
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v5, p1, v1

    .line 328
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local v1    # "inOff":I
    aget v6, p1, v0

    .line 329
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 330
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 332
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v9, p1, v1

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v5

    .line 333
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local v1    # "inOff":I
    aget v9, p1, v0

    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v6

    .line 334
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget v9, p1, v1

    invoke-virtual {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->addInv(I)I

    move-result v7

    .line 335
    aget v9, p1, v0

    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/IDEAEngine;->mulInv(I)I

    move-result v8

    .line 336
    add-int/lit8 v3, v3, -0x1

    aput v8, v2, v3

    .line 337
    add-int/lit8 v3, v3, -0x1

    aput v7, v2, v3

    .line 338
    add-int/lit8 v3, v3, -0x1

    aput v6, v2, v3

    .line 339
    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 341
    return-object v2
.end method

.method private mul(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const v1, 0x10001

    const v3, 0xffff

    .line 128
    if-nez p1, :cond_0

    .line 130
    sub-int p1, v1, p2

    .line 145
    :goto_0
    and-int v1, p1, v3

    return v1

    .line 132
    :cond_0
    if-nez p2, :cond_1

    .line 134
    sub-int p1, v1, p1

    goto :goto_0

    .line 138
    :cond_1
    mul-int v0, p1, p2

    .line 140
    .local v0, "p":I
    and-int p2, v0, v3

    .line 141
    ushr-int/lit8 p1, v0, 0x10

    .line 142
    sub-int v2, p2, p1

    if-ge p2, p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    add-int p1, v2, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private mulInv(I)I
    .locals 9
    .param p1, "x"    # I

    .prologue
    const v8, 0x10001

    const/4 v7, 0x1

    const v6, 0xffff

    .line 252
    const/4 v5, 0x2

    if-ge p1, v5, :cond_0

    move v3, p1

    .end local p1    # "x":I
    .local v3, "x":I
    move v1, p1

    .line 275
    :goto_0
    return v1

    .line 257
    .end local v3    # "x":I
    .restart local p1    # "x":I
    :cond_0
    const/4 v1, 0x1

    .line 258
    .local v1, "t0":I
    div-int v2, v8, p1

    .line 259
    .local v2, "t1":I
    rem-int v4, v8, p1

    .line 261
    .local v4, "y":I
    :goto_1
    if-eq v4, v7, :cond_2

    .line 263
    div-int v0, p1, v4

    .line 264
    .local v0, "q":I
    rem-int/2addr p1, v4

    .line 265
    mul-int v5, v2, v0

    add-int/2addr v5, v1

    and-int v1, v5, v6

    .line 266
    if-ne p1, v7, :cond_1

    move v3, p1

    .line 268
    .end local p1    # "x":I
    .restart local v3    # "x":I
    goto :goto_0

    .line 270
    .end local v3    # "x":I
    .restart local p1    # "x":I
    :cond_1
    div-int v0, v4, p1

    .line 271
    rem-int/2addr v4, p1

    .line 272
    mul-int v5, v1, v0

    add-int/2addr v5, v2

    and-int v2, v5, v6

    goto :goto_1

    .line 275
    .end local v0    # "q":I
    :cond_2
    rsub-int/lit8 v5, v2, 0x1

    and-int v1, v5, v6

    move v3, p1

    .end local p1    # "x":I
    .restart local v3    # "x":I
    goto :goto_0
.end method

.method private wordToBytes(I[BI)V
    .locals 2
    .param p1, "word"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 111
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 112
    add-int/lit8 v0, p3, 0x1

    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 113
    return-void
.end method


# virtual methods
.method addInv(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 286
    rsub-int/lit8 v0, p1, 0x0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "IDEA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 46
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 48
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 49
    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 48
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/IDEAEngine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IDEAEngine;->workingKey:[I

    .line 50
    return-void

    .line 53
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to IDEA init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IDEAEngine;->workingKey:[I

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IDEA engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 79
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 84
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IDEAEngine;->workingKey:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/IDEAEngine;->ideaFunc([I[BI[BI)V

    .line 89
    const/16 v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
