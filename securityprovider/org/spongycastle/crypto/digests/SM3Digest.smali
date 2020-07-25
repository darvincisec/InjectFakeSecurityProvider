.class public Lorg/spongycastle/crypto/digests/SM3Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source "SM3Digest.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final DIGEST_LENGTH:I = 0x20

.field private static final T:[I


# instance fields
.field private V:[I

.field private W:[I

.field private W1:[I

.field private inwords:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x40

    .line 33
    new-array v3, v6, [I

    sput-object v3, Lorg/spongycastle/crypto/digests/SM3Digest;->T:[I

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    .line 39
    const v2, 0x79cc4519

    .line 40
    .local v2, "t":I
    sget-object v3, Lorg/spongycastle/crypto/digests/SM3Digest;->T:[I

    shl-int v4, v2, v0

    rsub-int/lit8 v5, v0, 0x20

    ushr-int v5, v2, v5

    or-int/2addr v4, v5

    aput v4, v3, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v2    # "t":I
    :cond_0
    const/16 v0, 0x10

    :goto_1
    if-ge v0, v6, :cond_1

    .line 44
    rem-int/lit8 v1, v0, 0x20

    .line 45
    .local v1, "n":I
    const v2, 0x7a879d8a

    .line 46
    .restart local v2    # "t":I
    sget-object v3, Lorg/spongycastle/crypto/digests/SM3Digest;->T:[I

    shl-int v4, v2, v1

    rsub-int/lit8 v5, v1, 0x20

    ushr-int v5, v2, v5

    or-int/2addr v4, v5

    aput v4, v3, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    .end local v1    # "n":I
    .end local v2    # "t":I
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    .line 29
    const/16 v0, 0x44

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    .line 30
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->W1:[I

    .line 56
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->reset()V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SM3Digest;)V
    .locals 1
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/SM3Digest;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    .line 29
    const/16 v0, 0x44

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    .line 30
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->W1:[I

    .line 67
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SM3Digest;->copyIn(Lorg/spongycastle/crypto/digests/SM3Digest;)V

    .line 68
    return-void
.end method

.method private FF0(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 237
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private FF1(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 242
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private GG0(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 247
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private GG1(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 252
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private P0(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 223
    shl-int/lit8 v2, p1, 0x9

    ushr-int/lit8 v3, p1, 0x17

    or-int v1, v2, v3

    .line 224
    .local v1, "r9":I
    shl-int/lit8 v2, p1, 0x11

    ushr-int/lit8 v3, p1, 0xf

    or-int v0, v2, v3

    .line 225
    .local v0, "r17":I
    xor-int v2, p1, v1

    xor-int/2addr v2, v0

    return v2
.end method

.method private P1(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 230
    shl-int/lit8 v2, p1, 0xf

    ushr-int/lit8 v3, p1, 0x11

    or-int v0, v2, v3

    .line 231
    .local v0, "r15":I
    shl-int/lit8 v2, p1, 0x17

    ushr-int/lit8 v3, p1, 0x9

    or-int v1, v2, v3

    .line 232
    .local v1, "r23":I
    xor-int v2, p1, v0

    xor-int/2addr v2, v1

    return v2
.end method

.method private copyIn(Lorg/spongycastle/crypto/digests/SM3Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/SM3Digest;

    .prologue
    const/4 v3, 0x0

    .line 72
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v0, p1, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    .line 75
    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lorg/spongycastle/crypto/digests/SM3Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SM3Digest;-><init>(Lorg/spongycastle/crypto/digests/SM3Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->finish()V

    .line 127
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x0

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 128
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 129
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 130
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 131
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 132
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 133
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x1c

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 136
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->reset()V

    .line 138
    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "SM3"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock()V
    .locals 25

    .prologue
    .line 258
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_0
    const/16 v21, 0x10

    move/from16 v0, v21

    if-ge v15, v0, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    move-object/from16 v22, v0

    aget v22, v22, v15

    aput v22, v21, v15

    .line 258
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 262
    :cond_0
    const/16 v15, 0x10

    :goto_1
    const/16 v21, 0x44

    move/from16 v0, v21

    if-ge v15, v0, :cond_1

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    move-object/from16 v21, v0

    add-int/lit8 v22, v15, -0x3

    aget v20, v21, v22

    .line 265
    .local v20, "wj3":I
    shl-int/lit8 v21, v20, 0xf

    ushr-int/lit8 v22, v20, 0x11

    or-int v16, v21, v22

    .line 266
    .local v16, "r15":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    move-object/from16 v21, v0

    add-int/lit8 v22, v15, -0xd

    aget v19, v21, v22

    .line 267
    .local v19, "wj13":I
    shl-int/lit8 v21, v19, 0x7

    ushr-int/lit8 v22, v19, 0x19

    or-int v17, v21, v22

    .line 268
    .local v17, "r7":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    move-object/from16 v22, v0

    add-int/lit8 v23, v15, -0x10

    aget v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    move-object/from16 v23, v0

    add-int/lit8 v24, v15, -0x9

    aget v23, v23, v24

    xor-int v22, v22, v23

    xor-int v22, v22, v16

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SM3Digest;->P1(I)I

    move-result v22

    xor-int v22, v22, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    move-object/from16 v23, v0

    add-int/lit8 v24, v15, -0x6

    aget v23, v23, v24

    xor-int v22, v22, v23

    aput v22, v21, v15

    .line 262
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 270
    .end local v16    # "r15":I
    .end local v17    # "r7":I
    .end local v19    # "wj13":I
    .end local v20    # "wj3":I
    :cond_1
    const/4 v15, 0x0

    :goto_2
    const/16 v21, 0x40

    move/from16 v0, v21

    if-ge v15, v0, :cond_2

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W1:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    move-object/from16 v22, v0

    aget v22, v22, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    move-object/from16 v23, v0

    add-int/lit8 v24, v15, 0x4

    aget v23, v23, v24

    xor-int v22, v22, v23

    aput v22, v21, v15

    .line 270
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 275
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v2, v21, v22

    .line 276
    .local v2, "A":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v3, v21, v22

    .line 277
    .local v3, "B":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v4, v21, v22

    .line 278
    .local v4, "C":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v5, v21, v22

    .line 279
    .local v5, "D":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget v6, v21, v22

    .line 280
    .local v6, "E":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget v7, v21, v22

    .line 281
    .local v7, "F":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x6

    aget v8, v21, v22

    .line 282
    .local v8, "G":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget v9, v21, v22

    .line 285
    .local v9, "H":I
    const/4 v15, 0x0

    :goto_3
    const/16 v21, 0x10

    move/from16 v0, v21

    if-ge v15, v0, :cond_3

    .line 287
    shl-int/lit8 v21, v2, 0xc

    ushr-int/lit8 v22, v2, 0x14

    or-int v14, v21, v22

    .line 288
    .local v14, "a12":I
    add-int v21, v14, v6

    sget-object v22, Lorg/spongycastle/crypto/digests/SM3Digest;->T:[I

    aget v22, v22, v15

    add-int v18, v21, v22

    .line 289
    .local v18, "s1_":I
    shl-int/lit8 v21, v18, 0x7

    ushr-int/lit8 v22, v18, 0x19

    or-int v10, v21, v22

    .line 290
    .local v10, "SS1":I
    xor-int v11, v10, v14

    .line 291
    .local v11, "SS2":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/spongycastle/crypto/digests/SM3Digest;->FF0(III)I

    move-result v21

    add-int v21, v21, v5

    add-int v21, v21, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W1:[I

    move-object/from16 v22, v0

    aget v22, v22, v15

    add-int v12, v21, v22

    .line 292
    .local v12, "TT1":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lorg/spongycastle/crypto/digests/SM3Digest;->GG0(III)I

    move-result v21

    add-int v21, v21, v9

    add-int v21, v21, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    move-object/from16 v22, v0

    aget v22, v22, v15

    add-int v13, v21, v22

    .line 293
    .local v13, "TT2":I
    move v5, v4

    .line 294
    shl-int/lit8 v21, v3, 0x9

    ushr-int/lit8 v22, v3, 0x17

    or-int v4, v21, v22

    .line 295
    move v3, v2

    .line 296
    move v2, v12

    .line 297
    move v9, v8

    .line 298
    shl-int/lit8 v21, v7, 0x13

    ushr-int/lit8 v22, v7, 0xd

    or-int v8, v21, v22

    .line 299
    move v7, v6

    .line 300
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/spongycastle/crypto/digests/SM3Digest;->P0(I)I

    move-result v6

    .line 285
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 304
    .end local v10    # "SS1":I
    .end local v11    # "SS2":I
    .end local v12    # "TT1":I
    .end local v13    # "TT2":I
    .end local v14    # "a12":I
    .end local v18    # "s1_":I
    :cond_3
    const/16 v15, 0x10

    :goto_4
    const/16 v21, 0x40

    move/from16 v0, v21

    if-ge v15, v0, :cond_4

    .line 306
    shl-int/lit8 v21, v2, 0xc

    ushr-int/lit8 v22, v2, 0x14

    or-int v14, v21, v22

    .line 307
    .restart local v14    # "a12":I
    add-int v21, v14, v6

    sget-object v22, Lorg/spongycastle/crypto/digests/SM3Digest;->T:[I

    aget v22, v22, v15

    add-int v18, v21, v22

    .line 308
    .restart local v18    # "s1_":I
    shl-int/lit8 v21, v18, 0x7

    ushr-int/lit8 v22, v18, 0x19

    or-int v10, v21, v22

    .line 309
    .restart local v10    # "SS1":I
    xor-int v11, v10, v14

    .line 310
    .restart local v11    # "SS2":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/spongycastle/crypto/digests/SM3Digest;->FF1(III)I

    move-result v21

    add-int v21, v21, v5

    add-int v21, v21, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W1:[I

    move-object/from16 v22, v0

    aget v22, v22, v15

    add-int v12, v21, v22

    .line 311
    .restart local v12    # "TT1":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8}, Lorg/spongycastle/crypto/digests/SM3Digest;->GG1(III)I

    move-result v21

    add-int v21, v21, v9

    add-int v21, v21, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    move-object/from16 v22, v0

    aget v22, v22, v15

    add-int v13, v21, v22

    .line 312
    .restart local v13    # "TT2":I
    move v5, v4

    .line 313
    shl-int/lit8 v21, v3, 0x9

    ushr-int/lit8 v22, v3, 0x17

    or-int v4, v21, v22

    .line 314
    move v3, v2

    .line 315
    move v2, v12

    .line 316
    move v9, v8

    .line 317
    shl-int/lit8 v21, v7, 0x13

    ushr-int/lit8 v22, v7, 0xd

    or-int v8, v21, v22

    .line 318
    move v7, v6

    .line 319
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/spongycastle/crypto/digests/SM3Digest;->P0(I)I

    move-result v6

    .line 304
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 322
    .end local v10    # "SS1":I
    .end local v11    # "SS2":I
    .end local v12    # "TT1":I
    .end local v13    # "TT2":I
    .end local v14    # "a12":I
    .end local v18    # "s1_":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v23, v21, v22

    xor-int v23, v23, v2

    aput v23, v21, v22

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v23, v21, v22

    xor-int v23, v23, v3

    aput v23, v21, v22

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v23, v21, v22

    xor-int v23, v23, v4

    aput v23, v21, v22

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v23, v21, v22

    xor-int v23, v23, v5

    aput v23, v21, v22

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget v23, v21, v22

    xor-int v23, v23, v6

    aput v23, v21, v22

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget v23, v21, v22

    xor-int v23, v23, v7

    aput v23, v21, v22

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x6

    aget v23, v21, v22

    xor-int v23, v23, v8

    aput v23, v21, v22

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget v23, v21, v22

    xor-int v23, v23, v9

    aput v23, v21, v22

    .line 331
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    .line 332
    return-void
.end method

.method protected processLength(J)V
    .locals 5
    .param p1, "bitLength"    # J

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 163
    iget v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    if-le v0, v3, :cond_0

    .line 166
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    aput v2, v0, v1

    .line 167
    iget v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    .line 169
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->processBlock()V

    .line 172
    :cond_0
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    if-ge v0, v3, :cond_1

    .line 174
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    aput v2, v0, v1

    .line 175
    iget v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 180
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    long-to-int v2, p1

    aput v2, v0, v1

    .line 181
    return-void
.end method

.method protected processWord([BI)V
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 147
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 p2, p2, 0x1

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 p2, p2, 0x1

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p2, p2, 0x1

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 152
    .local v0, "n":I
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v2, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    aput v0, v1, v2

    .line 153
    iget v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    .line 155
    iget v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 157
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->processBlock()V

    .line 159
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->reset()V

    .line 109
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const v1, 0x7380166f

    aput v1, v0, v3

    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x1

    const v2, 0x4914b2b9

    aput v2, v0, v1

    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x2

    const v2, 0x172442d7

    aput v2, v0, v1

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x3

    const v2, -0x2575fa00

    aput v2, v0, v1

    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x4

    const v2, -0x5690cf44

    aput v2, v0, v1

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x5

    const v2, 0x163138aa

    aput v2, v0, v1

    .line 115
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x6

    const v2, -0x1c7211b3

    aput v2, v0, v1

    .line 116
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x7

    const v2, -0x4f04f1b2

    aput v2, v0, v1

    .line 118
    iput v3, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    .line 119
    return-void
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lorg/spongycastle/util/Memoable;

    .prologue
    .line 95
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/SM3Digest;

    .line 97
    .local v0, "d":Lorg/spongycastle/crypto/digests/SM3Digest;
    invoke-super {p0, v0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 98
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SM3Digest;->copyIn(Lorg/spongycastle/crypto/digests/SM3Digest;)V

    .line 99
    return-void
.end method
