.class public Lorg/spongycastle/crypto/digests/RIPEMD128Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source "RIPEMD128Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x10


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    .line 24
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->reset()V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/RIPEMD128Digest;)V
    .locals 1
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/RIPEMD128Digest;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    .line 35
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->copyIn(Lorg/spongycastle/crypto/digests/RIPEMD128Digest;)V

    .line 36
    return-void
.end method

.method private F1(IIIIII)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I

    .prologue
    .line 199
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->f1(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private F2(IIIIII)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I

    .prologue
    .line 210
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->f2(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5a827999

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private F3(IIIIII)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I

    .prologue
    .line 221
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->f3(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private F4(IIIIII)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I

    .prologue
    .line 232
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->f4(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, -0x70e44324

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF1(IIIIII)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I

    .prologue
    .line 243
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->f1(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF2(IIIIII)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I

    .prologue
    .line 254
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->f2(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6d703ef3

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF3(IIIIII)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I

    .prologue
    .line 265
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->f3(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5c4dd124

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF4(IIIIII)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I

    .prologue
    .line 276
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->f4(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x50a28be6

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private RL(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "n"    # I

    .prologue
    .line 140
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private copyIn(Lorg/spongycastle/crypto/digests/RIPEMD128Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/RIPEMD128Digest;

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 42
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H0:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H0:I

    .line 43
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H1:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H1:I

    .line 44
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H2:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H2:I

    .line 45
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H3:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H3:I

    .line 47
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    .line 49
    return-void
.end method

.method private f1(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 155
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private f2(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 166
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private f3(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 177
    xor-int/lit8 v0, p2, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p3

    return v0
.end method

.method private f4(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 188
    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private unpackWord(I[BI)V
    .locals 2
    .param p1, "word"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 91
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 92
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 93
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 94
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 95
    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .prologue
    .line 473
    new-instance v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;-><init>(Lorg/spongycastle/crypto/digests/RIPEMD128Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->finish()V

    .line 103
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H0:I

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->unpackWord(I[BI)V

    .line 104
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->unpackWord(I[BI)V

    .line 105
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->unpackWord(I[BI)V

    .line 106
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H3:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->unpackWord(I[BI)V

    .line 108
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->reset()V

    .line 110
    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "RIPEMD128"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock()V
    .locals 26

    .prologue
    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H0:I

    move/from16 v22, v0

    .local v22, "aa":I
    move/from16 v2, v22

    .line 287
    .local v2, "a":I
    move-object/from16 v0, p0

    iget v13, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H1:I

    .local v13, "bb":I
    move v3, v13

    .line 288
    .local v3, "b":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H2:I

    move/from16 v23, v0

    .local v23, "cc":I
    move/from16 v4, v23

    .line 289
    .local v4, "c":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H3:I

    move/from16 v24, v0

    .local v24, "dd":I
    move/from16 v5, v24

    .line 294
    .local v5, "d":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v2

    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v11, v1, v6

    const/16 v12, 0xe

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v5

    .line 296
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v4

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v11, v1, v6

    const/16 v12, 0xc

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v3

    .line 298
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v6, v1, v6

    const/4 v7, 0x5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v2

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v5

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v11, v1, v6

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v4

    .line 301
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v3

    .line 302
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v2

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v11, v1, v6

    const/16 v12, 0xd

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v5

    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v11, v1, v6

    const/16 v12, 0xe

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v4

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v3

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v6, v1, v6

    const/4 v7, 0x6

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v2

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v11, v1, v6

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v5

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v4

    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v3

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v6, v1, v6

    const/4 v7, 0x7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v2

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v11, v1, v6

    const/4 v12, 0x6

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v5

    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v4

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v11, v1, v6

    const/16 v12, 0xd

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v3

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v2

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v5

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v11, v1, v6

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v4

    .line 321
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v3

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v6, v1, v6

    const/4 v7, 0x7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v2

    .line 323
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v11, v1, v6

    const/16 v12, 0xc

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v5

    .line 324
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v4

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v3

    .line 326
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v2

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v11, v1, v6

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v5

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v11, v1, v6

    const/16 v12, 0xd

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v4

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v11, v1, v6

    const/16 v12, 0xc

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v3

    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v2

    .line 335
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v11, v1, v6

    const/16 v12, 0xd

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v5

    .line 336
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v11, v1, v6

    const/4 v12, 0x6

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v4

    .line 337
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v11, v1, v6

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v3

    .line 338
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v6, v1, v6

    const/16 v7, 0xe

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v2

    .line 339
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v5

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v11, v1, v6

    const/16 v12, 0xd

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v4

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v3

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v6, v1, v6

    const/16 v7, 0xe

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v2

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v5

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v11, v1, v6

    const/16 v12, 0xd

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v4

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v11, v1, v6

    const/4 v12, 0x6

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v3

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v6, v1, v6

    const/4 v7, 0x5

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v2

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v11, v1, v6

    const/16 v12, 0xc

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v5

    .line 348
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v11, v1, v6

    const/4 v12, 0x7

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v4

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v11, v1, v6

    const/4 v12, 0x5

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v3

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v6, v1, v6

    const/16 v7, 0xb

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v2

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v11, v1, v6

    const/16 v12, 0xc

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v5

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v11, v1, v6

    const/16 v12, 0xe

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v4

    .line 357
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v3

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v6, v1, v6

    const/16 v7, 0xe

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v2

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v11, v1, v6

    const/16 v12, 0xf

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v5

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v4

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v3

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v6, v1, v6

    const/16 v7, 0x9

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v2

    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v11, v1, v6

    const/16 v12, 0xe

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v5

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v11, v1, v6

    const/4 v12, 0x5

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v4

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v11, v1, v6

    const/4 v12, 0x6

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v3

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v6, v1, v6

    const/16 v7, 0x8

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v2

    .line 367
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v11, v1, v6

    const/4 v12, 0x6

    move-object/from16 v6, p0

    move v7, v5

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v5

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v11, v1, v6

    const/4 v12, 0x5

    move-object/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v2

    move v10, v3

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v4

    .line 369
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v11, v1, v6

    const/16 v12, 0xc

    move-object/from16 v6, p0

    move v7, v3

    move v8, v4

    move v9, v5

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v3

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v11, v1, v6

    const/16 v12, 0x8

    move-object/from16 v6, p0

    move/from16 v7, v22

    move v8, v13

    move/from16 v9, v23

    move/from16 v10, v24

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v8

    .line 375
    .end local v22    # "aa":I
    .local v8, "aa":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v11, v1, v6

    const/16 v12, 0x9

    move-object/from16 v6, p0

    move/from16 v7, v24

    move v9, v13

    move/from16 v10, v23

    invoke-direct/range {v6 .. v12}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v11

    .line 376
    .end local v24    # "dd":I
    .local v11, "dd":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v14, v1, v6

    const/16 v15, 0x9

    move-object/from16 v9, p0

    move/from16 v10, v23

    move v12, v8

    invoke-direct/range {v9 .. v15}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v14

    .line 377
    .end local v23    # "cc":I
    .local v14, "cc":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v13

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v20, v1, v6

    const/16 v21, 0xd

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v8

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v15, v1, v6

    const/16 v16, 0xf

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v11

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v14

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v17, v1, v6

    const/16 v18, 0x5

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v13

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v20, v1, v6

    const/16 v21, 0x7

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v8

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v15, v1, v6

    const/16 v16, 0x7

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v11

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v20, v1, v6

    const/16 v21, 0x8

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v14

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v13

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v20, v1, v6

    const/16 v21, 0xe

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v8

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v15, v1, v6

    const/16 v16, 0xe

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v11

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v14

    .line 389
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v17, v1, v6

    const/16 v18, 0x6

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v13

    .line 394
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v20, v1, v6

    const/16 v21, 0x9

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v8

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v15, v1, v6

    const/16 v16, 0xd

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v11

    .line 396
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v14

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v17, v1, v6

    const/16 v18, 0x7

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v13

    .line 398
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v8

    .line 399
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v15, v1, v6

    const/16 v16, 0x8

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v11

    .line 400
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v20, v1, v6

    const/16 v21, 0x9

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v14

    .line 401
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v13

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v20, v1, v6

    const/16 v21, 0x7

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v8

    .line 403
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v15, v1, v6

    const/16 v16, 0x7

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v11

    .line 404
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v14

    .line 405
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v17, v1, v6

    const/16 v18, 0x7

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v13

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v8

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v15, v1, v6

    const/16 v16, 0xf

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v11

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v20, v1, v6

    const/16 v21, 0xd

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v14

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v13

    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v20, v1, v6

    const/16 v21, 0x9

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v8

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v15, v1, v6

    const/16 v16, 0x7

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v11

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v14

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v13

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v20, v1, v6

    const/16 v21, 0x8

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v8

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v15, v1, v6

    const/16 v16, 0x6

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v11

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v14

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v17, v1, v6

    const/16 v18, 0xe

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v13

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v8

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v15, v1, v6

    const/16 v16, 0xd

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v11

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v20, v1, v6

    const/16 v21, 0x5

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v14

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v17, v1, v6

    const/16 v18, 0xe

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v13

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v20, v1, v6

    const/16 v21, 0xd

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v8

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v15, v1, v6

    const/16 v16, 0xd

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v11

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v20, v1, v6

    const/16 v21, 0x7

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v14

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v17, v1, v6

    const/16 v18, 0x5

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v13

    .line 434
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x8

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v8

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x6

    aget v15, v1, v6

    const/16 v16, 0x5

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v11

    .line 436
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x4

    aget v20, v1, v6

    const/16 v21, 0x8

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v14

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x1

    aget v17, v1, v6

    const/16 v18, 0xb

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v13

    .line 438
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x3

    aget v20, v1, v6

    const/16 v21, 0xe

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v8

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xb

    aget v15, v1, v6

    const/16 v16, 0xe

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v11

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xf

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v14

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aget v17, v1, v6

    const/16 v18, 0xe

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v13

    .line 442
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x5

    aget v20, v1, v6

    const/16 v21, 0x6

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v8

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xc

    aget v15, v1, v6

    const/16 v16, 0x9

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v11

    .line 444
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x2

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v14

    .line 445
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xd

    aget v17, v1, v6

    const/16 v18, 0x9

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v13

    .line 446
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0x9

    aget v20, v1, v6

    const/16 v21, 0xc

    move-object/from16 v15, p0

    move/from16 v16, v8

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v19, v11

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v8

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x7

    aget v15, v1, v6

    const/16 v16, 0x5

    move-object/from16 v10, p0

    move v12, v8

    invoke-direct/range {v10 .. v16}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v11

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xa

    aget v20, v1, v6

    const/16 v21, 0xf

    move-object/from16 v15, p0

    move/from16 v16, v14

    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v19, v13

    invoke-direct/range {v15 .. v21}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v14

    .line 449
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v6, 0xe

    aget v17, v1, v6

    const/16 v18, 0x8

    move-object/from16 v12, p0

    move v15, v11

    move/from16 v16, v8

    invoke-direct/range {v12 .. v18}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v13

    .line 451
    move-object/from16 v0, p0

    iget v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H1:I

    add-int/2addr v1, v4

    add-int/2addr v11, v1

    .line 456
    move-object/from16 v0, p0

    iget v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H2:I

    add-int/2addr v1, v5

    add-int/2addr v1, v8

    move-object/from16 v0, p0

    iput v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H1:I

    .line 457
    move-object/from16 v0, p0

    iget v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H3:I

    add-int/2addr v1, v2

    add-int/2addr v1, v13

    move-object/from16 v0, p0

    iput v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H2:I

    .line 458
    move-object/from16 v0, p0

    iget v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H0:I

    add-int/2addr v1, v3

    add-int/2addr v1, v14

    move-object/from16 v0, p0

    iput v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H3:I

    .line 459
    move-object/from16 v0, p0

    iput v11, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H0:I

    .line 464
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    .line 465
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v1, v1

    move/from16 v0, v25

    if-eq v0, v1, :cond_0

    .line 467
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v6, 0x0

    aput v6, v1, v25

    .line 465
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 5
    .param p1, "bitLength"    # J

    .prologue
    const/16 v4, 0xe

    .line 77
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    if-le v0, v4, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->processBlock()V

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v1, v2

    aput v1, v0, v4

    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 84
    return-void
.end method

.method protected processWord([BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 68
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->processBlock()V

    .line 72
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->reset()V

    .line 120
    const v1, 0x67452301

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H0:I

    .line 121
    const v1, -0x10325477

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H1:I

    .line 122
    const v1, -0x67452302

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H2:I

    .line 123
    const v1, 0x10325476

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->H3:I

    .line 125
    iput v2, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 129
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aput v2, v1, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lorg/spongycastle/util/Memoable;

    .prologue
    .line 478
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;

    .line 480
    .local v0, "d":Lorg/spongycastle/crypto/digests/RIPEMD128Digest;
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/RIPEMD128Digest;->copyIn(Lorg/spongycastle/crypto/digests/RIPEMD128Digest;)V

    .line 481
    return-void
.end method
