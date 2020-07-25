.class public Lorg/spongycastle/math/ec/custom/sec/SecT571Field;
.super Ljava/lang/Object;
.source "SecT571Field.java"


# static fields
.field private static final M59:J = 0x7ffffffffffffffL

.field private static final RM:J = -0x1084210842108422L

.field private static final ROOT_Z:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->ROOT_Z:[J

    return-void

    :array_0
    .array-data 8
        0x2be1195f08cafb99L    # 2.5016400602366306E-97
        -0x6a0f73507b9a83ddL    # -5.27848393260514E-203
        -0x3507b9a83dcd41efL    # -1.4531635499737842E53
        0x657c232be1195f08L    # 7.297283174828906E180
        -0x7b9a83dcf73507cL
        0x7c232be1195f08caL    # 9.34156735235881E289
        -0x41ee6a0f73507b9bL    # -1.02362256409199E-9
        0x5f08caf84657c232L    # 6.340366030377565E149
        0x784657c232be119L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add([JI[JI[JI)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "z"    # [J
    .param p5, "zOff"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 30
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public static add([J[J[J)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J

    .prologue
    .line 20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 22
    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private static addBothTo([JI[JI[JI)V
    .locals 8
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "z"    # [J
    .param p5, "zOff"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 46
    add-int v1, p5, v0

    aget-wide v2, p4, v1

    add-int v4, p1, v0

    aget-wide v4, p0, v4

    add-int v6, p3, v0

    aget-wide v6, p2, v6

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public static addBothTo([J[J[J)V
    .locals 8
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J

    .prologue
    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 38
    aget-wide v2, p2, v0

    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public static addExt([J[J[J)V
    .locals 6
    .param p0, "xx"    # [J
    .param p1, "yy"    # [J
    .param p2, "zz"    # [J

    .prologue
    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 54
    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public static addOne([J[J)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    const/4 v1, 0x0

    .line 60
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x1

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    .line 61
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 63
    aget-wide v2, p0, v0

    aput-wide v2, p1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 2
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 69
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat576;->fromBigInteger64(Ljava/math/BigInteger;)[J

    move-result-object v0

    .line 70
    .local v0, "z":[J
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce5([JI)V

    .line 71
    return-object v0
.end method

.method protected static implMultiply([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "zz"    # [J

    .prologue
    .line 277
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v0

    .line 279
    .local v0, "precomp":[J
    invoke-static {p0, v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->implMultiplyPrecomp([J[J[J)V

    .line 280
    return-void
.end method

.method protected static implMultiplyPrecomp([J[J[J)V
    .locals 18
    .param p0, "x"    # [J
    .param p1, "precomp"    # [J
    .param p2, "zz"    # [J

    .prologue
    .line 284
    const/16 v12, 0xf

    .line 290
    .local v12, "MASK":I
    const/16 v15, 0x38

    .local v15, "k":I
    :goto_0
    if-ltz v15, :cond_1

    .line 292
    const/4 v5, 0x1

    .local v5, "j":I
    move v14, v5

    .end local v5    # "j":I
    .local v14, "j":I
    :goto_1
    const/16 v0, 0x9

    if-ge v14, v0, :cond_0

    .line 294
    aget-wide v0, p0, v14

    ushr-long/2addr v0, v15

    long-to-int v13, v0

    .line 295
    .local v13, "aVal":I
    and-int v16, v13, v12

    .line 296
    .local v16, "u":I
    ushr-int/lit8 v0, v13, 0x4

    and-int v17, v0, v12

    .line 297
    .local v17, "v":I
    mul-int/lit8 v1, v16, 0x9

    add-int/lit8 v0, v17, 0x10

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v5, v14, -0x1

    move-object/from16 v0, p1

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->addBothTo([JI[JI[JI)V

    .line 292
    add-int/lit8 v5, v14, 0x2

    .end local v14    # "j":I
    .restart local v5    # "j":I
    move v14, v5

    .end local v5    # "j":I
    .restart local v14    # "j":I
    goto :goto_1

    .line 299
    .end local v13    # "aVal":I
    .end local v16    # "u":I
    .end local v17    # "v":I
    :cond_0
    const/16 v0, 0x10

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-wide/16 v4, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ)J

    .line 290
    add-int/lit8 v15, v15, -0x8

    goto :goto_0

    .line 302
    .end local v14    # "j":I
    :cond_1
    const/16 v15, 0x38

    :goto_2
    if-ltz v15, :cond_4

    .line 304
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_3
    const/16 v0, 0x9

    if-ge v5, v0, :cond_2

    .line 306
    aget-wide v0, p0, v5

    ushr-long/2addr v0, v15

    long-to-int v13, v0

    .line 307
    .restart local v13    # "aVal":I
    and-int v16, v13, v12

    .line 308
    .restart local v16    # "u":I
    ushr-int/lit8 v0, v13, 0x4

    and-int v17, v0, v12

    .line 309
    .restart local v17    # "v":I
    mul-int/lit8 v1, v16, 0x9

    add-int/lit8 v0, v17, 0x10

    mul-int/lit8 v3, v0, 0x9

    move-object/from16 v0, p1

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->addBothTo([JI[JI[JI)V

    .line 304
    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    .line 311
    .end local v13    # "aVal":I
    .end local v16    # "u":I
    .end local v17    # "v":I
    :cond_2
    if-lez v15, :cond_3

    .line 313
    const/16 v6, 0x12

    const/4 v8, 0x0

    const/16 v9, 0x8

    const-wide/16 v10, 0x0

    move-object/from16 v7, p2

    invoke-static/range {v6 .. v11}, Lorg/spongycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ)J

    .line 302
    :cond_3
    add-int/lit8 v15, v15, -0x8

    goto :goto_2

    .line 316
    .end local v5    # "j":I
    :cond_4
    return-void
.end method

.method protected static implMulwAcc([JJ[JI)V
    .locals 17
    .param p0, "xs"    # [J
    .param p1, "y"    # J
    .param p3, "z"    # [J
    .param p4, "zOff"    # I

    .prologue
    .line 320
    const/16 v11, 0x20

    new-array v10, v11, [J

    .line 322
    .local v10, "u":[J
    const/4 v11, 0x1

    aput-wide p1, v10, v11

    .line 323
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_0
    const/16 v11, 0x20

    if-ge v4, v11, :cond_0

    .line 325
    ushr-int/lit8 v11, v4, 0x1

    aget-wide v14, v10, v11

    const/4 v11, 0x1

    shl-long/2addr v14, v11

    aput-wide v14, v10, v4

    .line 326
    add-int/lit8 v11, v4, 0x1

    aget-wide v14, v10, v4

    xor-long v14, v14, p1

    aput-wide v14, v10, v11

    .line 323
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 329
    :cond_0
    const-wide/16 v8, 0x0

    .line 330
    .local v8, "l":J
    const/4 v4, 0x0

    :goto_1
    const/16 v11, 0x9

    if-ge v4, v11, :cond_3

    .line 332
    aget-wide v12, p0, v4

    .line 334
    .local v12, "x":J
    long-to-int v5, v12

    .line 336
    .local v5, "j":I
    and-int/lit8 v11, v5, 0x1f

    aget-wide v14, v10, v11

    xor-long/2addr v8, v14

    .line 338
    const-wide/16 v2, 0x0

    .line 339
    .local v2, "h":J
    const/16 v6, 0x3c

    .line 342
    .local v6, "k":I
    :cond_1
    ushr-long v14, v12, v6

    long-to-int v5, v14

    .line 343
    and-int/lit8 v11, v5, 0x1f

    aget-wide v0, v10, v11

    .line 344
    .local v0, "g":J
    shl-long v14, v0, v6

    xor-long/2addr v8, v14

    .line 345
    neg-int v11, v6

    ushr-long v14, v0, v11

    xor-long/2addr v2, v14

    .line 347
    add-int/lit8 v6, v6, -0x5

    if-gtz v6, :cond_1

    .line 349
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_2
    const/4 v11, 0x4

    if-ge v7, v11, :cond_2

    .line 351
    const-wide v14, -0x1084210842108422L    # -1.0564009196602605E229

    and-long/2addr v14, v12

    const/4 v11, 0x1

    ushr-long v12, v14, v11

    .line 352
    shl-long v14, p1, v7

    const/16 v11, 0x3f

    shr-long/2addr v14, v11

    and-long/2addr v14, v12

    xor-long/2addr v2, v14

    .line 349
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 355
    :cond_2
    add-int v11, p4, v4

    aget-wide v14, p3, v11

    xor-long/2addr v14, v8

    aput-wide v14, p3, v11

    .line 357
    move-wide v8, v2

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 359
    .end local v0    # "g":J
    .end local v2    # "h":J
    .end local v5    # "j":I
    .end local v6    # "k":I
    .end local v7    # "p":I
    .end local v12    # "x":J
    :cond_3
    add-int/lit8 v11, p4, 0x9

    aget-wide v14, p3, v11

    xor-long/2addr v14, v8

    aput-wide v14, p3, v11

    .line 360
    return-void
.end method

.method protected static implSquare([J[J)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "zz"    # [J

    .prologue
    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 366
    aget-wide v2, p0, v0

    shl-int/lit8 v1, v0, 0x1

    invoke-static {v2, v3, p1, v1}, Lorg/spongycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    return-void
.end method

.method public static invert([J[J)V
    .locals 8
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    const/16 v7, 0xb4

    const/16 v6, 0x3c

    const/16 v5, 0x1e

    const/4 v4, 0x5

    .line 76
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 83
    :cond_0
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v0

    .line 84
    .local v0, "t0":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v1

    .line 85
    .local v1, "t1":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v2

    .line 87
    .local v2, "t2":[J
    invoke-static {p0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 90
    invoke-static {v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 91
    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 92
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 93
    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 94
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 95
    invoke-static {v0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 98
    invoke-static {v0, v4, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 99
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 100
    invoke-static {v1, v4, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 101
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 104
    const/16 v3, 0xf

    invoke-static {v0, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 105
    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 108
    invoke-static {v2, v5, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 109
    invoke-static {v0, v5, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 110
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 113
    invoke-static {v0, v6, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 114
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 115
    invoke-static {v1, v6, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 116
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 119
    invoke-static {v0, v7, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 120
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 121
    invoke-static {v1, v7, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 122
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 124
    invoke-static {v0, v2, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 125
    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J

    .prologue
    .line 129
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 130
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->implMultiply([J[J[J)V

    .line 131
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 132
    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "zz"    # [J

    .prologue
    .line 136
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 137
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->implMultiply([J[J[J)V

    .line 138
    invoke-static {p2, v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->addExt([J[J[J)V

    .line 139
    return-void
.end method

.method public static multiplyPrecomp([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "precomp"    # [J
    .param p2, "z"    # [J

    .prologue
    .line 143
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 144
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->implMultiplyPrecomp([J[J[J)V

    .line 145
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 146
    return-void
.end method

.method public static multiplyPrecompAddToExt([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "precomp"    # [J
    .param p2, "zz"    # [J

    .prologue
    .line 150
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 151
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->implMultiplyPrecomp([J[J[J)V

    .line 152
    invoke-static {p2, v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->addExt([J[J[J)V

    .line 153
    return-void
.end method

.method public static precompMultiplicand([J)[J
    .locals 19
    .param p0, "x"    # [J

    .prologue
    .line 160
    const/16 v10, 0x90

    .line 161
    .local v10, "len":I
    const/16 v2, 0x120

    new-array v4, v2, [J

    .line 162
    .local v4, "t":[J
    const/4 v2, 0x0

    const/16 v3, 0x9

    const/16 v5, 0x9

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    const/4 v9, 0x0

    .line 165
    .local v9, "tOff":I
    const/16 v18, 0x7

    .local v18, "i":I
    :goto_0
    if-lez v18, :cond_0

    .line 167
    add-int/lit8 v9, v9, 0x12

    .line 168
    const/16 v3, 0x9

    ushr-int/lit8 v5, v9, 0x1

    const-wide/16 v6, 0x0

    move-object v8, v4

    invoke-static/range {v3 .. v9}, Lorg/spongycastle/math/raw/Nat;->shiftUpBit64(I[JIJ[JI)J

    .line 169
    invoke-static {v4, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce5([JI)V

    .line 170
    const/16 v3, 0x9

    add-int/lit8 v7, v9, 0x9

    move-object v2, v4

    move v5, v9

    move-object v6, v4

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([JI[JI[JI)V

    .line 165
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 176
    :cond_0
    const/4 v12, 0x0

    const/4 v13, 0x4

    const-wide/16 v14, 0x0

    move-object v11, v4

    move-object/from16 v16, v4

    move/from16 v17, v10

    invoke-static/range {v10 .. v17}, Lorg/spongycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ[JI)J

    .line 178
    return-object v4
.end method

.method public static reduce([J[J)V
    .locals 16
    .param p0, "xx"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 183
    const/16 v1, 0x9

    aget-wide v10, p0, v1

    .line 184
    .local v10, "xx09":J
    const/16 v1, 0x11

    aget-wide v4, p0, v1

    .local v4, "u":J
    move-wide v6, v10

    .line 186
    .local v6, "v":J
    const/16 v1, 0x3b

    ushr-long v12, v4, v1

    xor-long/2addr v12, v6

    const/16 v1, 0x39

    ushr-long v14, v4, v1

    xor-long/2addr v12, v14

    const/16 v1, 0x36

    ushr-long v14, v4, v1

    xor-long/2addr v12, v14

    const/16 v1, 0x31

    ushr-long v14, v4, v1

    xor-long v10, v12, v14

    .line 187
    const/16 v1, 0x8

    aget-wide v12, p0, v1

    const/4 v1, 0x5

    shl-long v14, v4, v1

    xor-long/2addr v12, v14

    const/4 v1, 0x7

    shl-long v14, v4, v1

    xor-long/2addr v12, v14

    const/16 v1, 0xa

    shl-long v14, v4, v1

    xor-long/2addr v12, v14

    const/16 v1, 0xf

    shl-long v14, v4, v1

    xor-long v6, v12, v14

    .line 189
    const/16 v0, 0x10

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 191
    aget-wide v4, p0, v0

    .line 192
    add-int/lit8 v1, v0, -0x8

    const/16 v12, 0x3b

    ushr-long v12, v4, v12

    xor-long/2addr v12, v6

    const/16 v14, 0x39

    ushr-long v14, v4, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x36

    ushr-long v14, v4, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x31

    ushr-long v14, v4, v14

    xor-long/2addr v12, v14

    aput-wide v12, p1, v1

    .line 193
    add-int/lit8 v1, v0, -0x9

    aget-wide v12, p0, v1

    const/4 v1, 0x5

    shl-long v14, v4, v1

    xor-long/2addr v12, v14

    const/4 v1, 0x7

    shl-long v14, v4, v1

    xor-long/2addr v12, v14

    const/16 v1, 0xa

    shl-long v14, v4, v1

    xor-long/2addr v12, v14

    const/16 v1, 0xf

    shl-long v14, v4, v1

    xor-long v6, v12, v14

    .line 189
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 196
    :cond_0
    move-wide v4, v10

    .line 197
    const/4 v1, 0x1

    const/16 v12, 0x3b

    ushr-long v12, v4, v12

    xor-long/2addr v12, v6

    const/16 v14, 0x39

    ushr-long v14, v4, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x36

    ushr-long v14, v4, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x31

    ushr-long v14, v4, v14

    xor-long/2addr v12, v14

    aput-wide v12, p1, v1

    .line 198
    const/4 v1, 0x0

    aget-wide v12, p0, v1

    const/4 v1, 0x5

    shl-long v14, v4, v1

    xor-long/2addr v12, v14

    const/4 v1, 0x7

    shl-long v14, v4, v1

    xor-long/2addr v12, v14

    const/16 v1, 0xa

    shl-long v14, v4, v1

    xor-long/2addr v12, v14

    const/16 v1, 0xf

    shl-long v14, v4, v1

    xor-long v6, v12, v14

    .line 200
    const/16 v1, 0x8

    aget-wide v8, p1, v1

    .line 201
    .local v8, "x08":J
    const/16 v1, 0x3b

    ushr-long v2, v8, v1

    .line 202
    .local v2, "t":J
    const/4 v1, 0x0

    xor-long v12, v6, v2

    const/4 v14, 0x2

    shl-long v14, v2, v14

    xor-long/2addr v12, v14

    const/4 v14, 0x5

    shl-long v14, v2, v14

    xor-long/2addr v12, v14

    const/16 v14, 0xa

    shl-long v14, v2, v14

    xor-long/2addr v12, v14

    aput-wide v12, p1, v1

    .line 203
    const/16 v1, 0x8

    const-wide v12, 0x7ffffffffffffffL

    and-long/2addr v12, v8

    aput-wide v12, p1, v1

    .line 204
    return-void
.end method

.method public static reduce5([JI)V
    .locals 10
    .param p0, "z"    # [J
    .param p1, "zOff"    # I

    .prologue
    .line 208
    add-int/lit8 v4, p1, 0x8

    aget-wide v2, p0, v4

    .local v2, "z8":J
    const/16 v4, 0x3b

    ushr-long v0, v2, v4

    .line 209
    .local v0, "t":J
    aget-wide v4, p0, p1

    const/4 v6, 0x2

    shl-long v6, v0, v6

    xor-long/2addr v6, v0

    const/4 v8, 0x5

    shl-long v8, v0, v8

    xor-long/2addr v6, v8

    const/16 v8, 0xa

    shl-long v8, v0, v8

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, p0, p1

    .line 210
    add-int/lit8 v4, p1, 0x8

    const-wide v6, 0x7ffffffffffffffL

    and-long/2addr v6, v2

    aput-wide v6, p0, v4

    .line 211
    return-void
.end method

.method public static sqrt([J[J)V
    .locals 14
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 215
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v0

    .local v0, "evn":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v2

    .line 217
    .local v2, "odd":[J
    const/4 v3, 0x0

    .line 218
    .local v3, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v4, v3

    .end local v3    # "pos":I
    .local v4, "pos":I
    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_0

    .line 220
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    aget-wide v10, p0, v4

    invoke-static {v10, v11}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v6

    .line 221
    .local v6, "u0":J
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    aget-wide v10, p0, v3

    invoke-static {v10, v11}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v8

    .line 222
    .local v8, "u1":J
    const-wide v10, 0xffffffffL

    and-long/2addr v10, v6

    const/16 v5, 0x20

    shl-long v12, v8, v5

    or-long/2addr v10, v12

    aput-wide v10, v0, v1

    .line 223
    const/16 v5, 0x20

    ushr-long v10, v6, v5

    const-wide v12, -0x100000000L

    and-long/2addr v12, v8

    or-long/2addr v10, v12

    aput-wide v10, v2, v1

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v6    # "u0":J
    .end local v8    # "u1":J
    :cond_0
    aget-wide v10, p0, v4

    invoke-static {v10, v11}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v6

    .line 227
    .restart local v6    # "u0":J
    const/4 v5, 0x4

    const-wide v10, 0xffffffffL

    and-long/2addr v10, v6

    aput-wide v10, v0, v5

    .line 228
    const/4 v5, 0x4

    const/16 v10, 0x20

    ushr-long v10, v6, v10

    aput-wide v10, v2, v5

    .line 231
    sget-object v5, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->ROOT_Z:[J

    invoke-static {v2, v5, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 232
    invoke-static {p1, v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 233
    return-void
.end method

.method public static square([J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 237
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 238
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    .line 239
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 240
    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "zz"    # [J

    .prologue
    .line 244
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 245
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    .line 246
    invoke-static {p1, v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->addExt([J[J[J)V

    .line 247
    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "n"    # I
    .param p2, "z"    # [J

    .prologue
    .line 253
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 254
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    .line 255
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 257
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 259
    invoke-static {p2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    .line 260
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method public static trace([J)I
    .locals 6
    .param p0, "x"    # [J

    .prologue
    const/16 v5, 0x8

    .line 267
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    aget-wide v2, p0, v5

    const/16 v4, 0x31

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    aget-wide v2, p0, v5

    const/16 v4, 0x39

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method
