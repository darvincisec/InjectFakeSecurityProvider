.class public Lorg/spongycastle/math/ec/custom/sec/SecT409Field;
.super Ljava/lang/Object;
.source "SecT409Field.java"


# static fields
.field private static final M25:J = 0x1ffffffL

.field private static final M59:J = 0x7ffffffffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([J[J[J)V
    .locals 9
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    xor-long/2addr v0, v2

    aput-wide v0, p2, v4

    .line 17
    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    xor-long/2addr v0, v2

    aput-wide v0, p2, v5

    .line 18
    aget-wide v0, p0, v6

    aget-wide v2, p1, v6

    xor-long/2addr v0, v2

    aput-wide v0, p2, v6

    .line 19
    aget-wide v0, p0, v7

    aget-wide v2, p1, v7

    xor-long/2addr v0, v2

    aput-wide v0, p2, v7

    .line 20
    aget-wide v0, p0, v8

    aget-wide v2, p1, v8

    xor-long/2addr v0, v2

    aput-wide v0, p2, v8

    .line 21
    const/4 v0, 0x5

    const/4 v1, 0x5

    aget-wide v2, p0, v1

    const/4 v1, 0x5

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    .line 22
    const/4 v0, 0x6

    const/4 v1, 0x6

    aget-wide v2, p0, v1

    const/4 v1, 0x6

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    .line 23
    return-void
.end method

.method public static addExt([J[J[J)V
    .locals 6
    .param p0, "xx"    # [J
    .param p1, "yy"    # [J
    .param p2, "zz"    # [J

    .prologue
    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 29
    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public static addOne([J[J)V
    .locals 9
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    aget-wide v0, p0, v4

    const-wide/16 v2, 0x1

    xor-long/2addr v0, v2

    aput-wide v0, p1, v4

    .line 36
    aget-wide v0, p0, v5

    aput-wide v0, p1, v5

    .line 37
    aget-wide v0, p0, v6

    aput-wide v0, p1, v6

    .line 38
    aget-wide v0, p0, v7

    aput-wide v0, p1, v7

    .line 39
    aget-wide v0, p0, v8

    aput-wide v0, p1, v8

    .line 40
    const/4 v0, 0x5

    const/4 v1, 0x5

    aget-wide v2, p0, v1

    aput-wide v2, p1, v0

    .line 41
    const/4 v0, 0x6

    const/4 v1, 0x6

    aget-wide v2, p0, v1

    aput-wide v2, p1, v0

    .line 42
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 2
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 46
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat448;->fromBigInteger64(Ljava/math/BigInteger;)[J

    move-result-object v0

    .line 47
    .local v0, "z":[J
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->reduce39([JI)V

    .line 48
    return-object v0
.end method

.method protected static implCompactExt([J)V
    .locals 34
    .param p0, "zz"    # [J

    .prologue
    .line 238
    const/16 v28, 0x0

    aget-wide v0, p0, v28

    .local v0, "z00":J
    const/16 v28, 0x1

    aget-wide v2, p0, v28

    .local v2, "z01":J
    const/16 v28, 0x2

    aget-wide v4, p0, v28

    .local v4, "z02":J
    const/16 v28, 0x3

    aget-wide v6, p0, v28

    .local v6, "z03":J
    const/16 v28, 0x4

    aget-wide v8, p0, v28

    .local v8, "z04":J
    const/16 v28, 0x5

    aget-wide v10, p0, v28

    .local v10, "z05":J
    const/16 v28, 0x6

    aget-wide v12, p0, v28

    .line 239
    .local v12, "z06":J
    const/16 v28, 0x7

    aget-wide v14, p0, v28

    .local v14, "z07":J
    const/16 v28, 0x8

    aget-wide v16, p0, v28

    .local v16, "z08":J
    const/16 v28, 0x9

    aget-wide v18, p0, v28

    .local v18, "z09":J
    const/16 v28, 0xa

    aget-wide v20, p0, v28

    .local v20, "z10":J
    const/16 v28, 0xb

    aget-wide v22, p0, v28

    .local v22, "z11":J
    const/16 v28, 0xc

    aget-wide v24, p0, v28

    .local v24, "z12":J
    const/16 v28, 0xd

    aget-wide v26, p0, v28

    .line 240
    .local v26, "z13":J
    const/16 v28, 0x0

    const/16 v29, 0x3b

    shl-long v30, v2, v29

    xor-long v30, v30, v0

    aput-wide v30, p0, v28

    .line 241
    const/16 v28, 0x1

    const/16 v29, 0x5

    ushr-long v30, v2, v29

    const/16 v29, 0x36

    shl-long v32, v4, v29

    xor-long v30, v30, v32

    aput-wide v30, p0, v28

    .line 242
    const/16 v28, 0x2

    const/16 v29, 0xa

    ushr-long v30, v4, v29

    const/16 v29, 0x31

    shl-long v32, v6, v29

    xor-long v30, v30, v32

    aput-wide v30, p0, v28

    .line 243
    const/16 v28, 0x3

    const/16 v29, 0xf

    ushr-long v30, v6, v29

    const/16 v29, 0x2c

    shl-long v32, v8, v29

    xor-long v30, v30, v32

    aput-wide v30, p0, v28

    .line 244
    const/16 v28, 0x4

    const/16 v29, 0x14

    ushr-long v30, v8, v29

    const/16 v29, 0x27

    shl-long v32, v10, v29

    xor-long v30, v30, v32

    aput-wide v30, p0, v28

    .line 245
    const/16 v28, 0x5

    const/16 v29, 0x19

    ushr-long v30, v10, v29

    const/16 v29, 0x22

    shl-long v32, v12, v29

    xor-long v30, v30, v32

    aput-wide v30, p0, v28

    .line 246
    const/16 v28, 0x6

    const/16 v29, 0x1e

    ushr-long v30, v12, v29

    const/16 v29, 0x1d

    shl-long v32, v14, v29

    xor-long v30, v30, v32

    aput-wide v30, p0, v28

    .line 247
    const/16 v28, 0x7

    const/16 v29, 0x23

    ushr-long v30, v14, v29

    const/16 v29, 0x18

    shl-long v32, v16, v29

    xor-long v30, v30, v32

    aput-wide v30, p0, v28

    .line 248
    const/16 v28, 0x8

    const/16 v29, 0x28

    ushr-long v30, v16, v29

    const/16 v29, 0x13

    shl-long v32, v18, v29

    xor-long v30, v30, v32

    aput-wide v30, p0, v28

    .line 249
    const/16 v28, 0x9

    const/16 v29, 0x2d

    ushr-long v30, v18, v29

    const/16 v29, 0xe

    shl-long v32, v20, v29

    xor-long v30, v30, v32

    aput-wide v30, p0, v28

    .line 250
    const/16 v28, 0xa

    const/16 v29, 0x32

    ushr-long v30, v20, v29

    const/16 v29, 0x9

    shl-long v32, v22, v29

    xor-long v30, v30, v32

    aput-wide v30, p0, v28

    .line 251
    const/16 v28, 0xb

    const/16 v29, 0x37

    ushr-long v30, v22, v29

    const/16 v29, 0x4

    shl-long v32, v24, v29

    xor-long v30, v30, v32

    const/16 v29, 0x3f

    shl-long v32, v26, v29

    xor-long v30, v30, v32

    aput-wide v30, p0, v28

    .line 253
    const/16 v28, 0xc

    const/16 v29, 0x3c

    ushr-long v30, v24, v29

    const/16 v29, 0x1

    ushr-long v32, v26, v29

    xor-long v30, v30, v32

    aput-wide v30, p0, v28

    .line 255
    const/16 v28, 0xd

    const-wide/16 v30, 0x0

    aput-wide v30, p0, v28

    .line 256
    return-void
.end method

.method protected static implExpand([J[J)V
    .locals 20
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 260
    const/4 v14, 0x0

    aget-wide v0, p0, v14

    .local v0, "x0":J
    const/4 v14, 0x1

    aget-wide v2, p0, v14

    .local v2, "x1":J
    const/4 v14, 0x2

    aget-wide v4, p0, v14

    .local v4, "x2":J
    const/4 v14, 0x3

    aget-wide v6, p0, v14

    .local v6, "x3":J
    const/4 v14, 0x4

    aget-wide v8, p0, v14

    .local v8, "x4":J
    const/4 v14, 0x5

    aget-wide v10, p0, v14

    .local v10, "x5":J
    const/4 v14, 0x6

    aget-wide v12, p0, v14

    .line 261
    .local v12, "x6":J
    const/4 v14, 0x0

    const-wide v16, 0x7ffffffffffffffL

    and-long v16, v16, v0

    aput-wide v16, p1, v14

    .line 262
    const/4 v14, 0x1

    const/16 v15, 0x3b

    ushr-long v16, v0, v15

    const/4 v15, 0x5

    shl-long v18, v2, v15

    xor-long v16, v16, v18

    const-wide v18, 0x7ffffffffffffffL

    and-long v16, v16, v18

    aput-wide v16, p1, v14

    .line 263
    const/4 v14, 0x2

    const/16 v15, 0x36

    ushr-long v16, v2, v15

    const/16 v15, 0xa

    shl-long v18, v4, v15

    xor-long v16, v16, v18

    const-wide v18, 0x7ffffffffffffffL

    and-long v16, v16, v18

    aput-wide v16, p1, v14

    .line 264
    const/4 v14, 0x3

    const/16 v15, 0x31

    ushr-long v16, v4, v15

    const/16 v15, 0xf

    shl-long v18, v6, v15

    xor-long v16, v16, v18

    const-wide v18, 0x7ffffffffffffffL

    and-long v16, v16, v18

    aput-wide v16, p1, v14

    .line 265
    const/4 v14, 0x4

    const/16 v15, 0x2c

    ushr-long v16, v6, v15

    const/16 v15, 0x14

    shl-long v18, v8, v15

    xor-long v16, v16, v18

    const-wide v18, 0x7ffffffffffffffL

    and-long v16, v16, v18

    aput-wide v16, p1, v14

    .line 266
    const/4 v14, 0x5

    const/16 v15, 0x27

    ushr-long v16, v8, v15

    const/16 v15, 0x19

    shl-long v18, v10, v15

    xor-long v16, v16, v18

    const-wide v18, 0x7ffffffffffffffL

    and-long v16, v16, v18

    aput-wide v16, p1, v14

    .line 267
    const/4 v14, 0x6

    const/16 v15, 0x22

    ushr-long v16, v10, v15

    const/16 v15, 0x1e

    shl-long v18, v12, v15

    xor-long v16, v16, v18

    aput-wide v16, p1, v14

    .line 268
    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "zz"    # [J

    .prologue
    const/4 v3, 0x7

    .line 272
    new-array v0, v3, [J

    .local v0, "a":[J
    new-array v1, v3, [J

    .line 273
    .local v1, "b":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->implExpand([J[J)V

    .line 274
    invoke-static {p1, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->implExpand([J[J)V

    .line 276
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 278
    aget-wide v4, v1, v2

    invoke-static {v0, v4, v5, p2, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJ[JI)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->implCompactExt([J)V

    .line 282
    return-void
.end method

.method protected static implMulwAcc([JJ[JI)V
    .locals 21
    .param p0, "xs"    # [J
    .param p1, "y"    # J
    .param p3, "z"    # [J
    .param p4, "zOff"    # I

    .prologue
    .line 288
    const/16 v12, 0x8

    new-array v7, v12, [J

    .line 290
    .local v7, "u":[J
    const/4 v12, 0x1

    aput-wide p1, v7, v12

    .line 291
    const/4 v12, 0x2

    const/4 v13, 0x1

    aget-wide v14, v7, v13

    const/4 v13, 0x1

    shl-long/2addr v14, v13

    aput-wide v14, v7, v12

    .line 292
    const/4 v12, 0x3

    const/4 v13, 0x2

    aget-wide v14, v7, v13

    xor-long v14, v14, p1

    aput-wide v14, v7, v12

    .line 293
    const/4 v12, 0x4

    const/4 v13, 0x2

    aget-wide v14, v7, v13

    const/4 v13, 0x1

    shl-long/2addr v14, v13

    aput-wide v14, v7, v12

    .line 294
    const/4 v12, 0x5

    const/4 v13, 0x4

    aget-wide v14, v7, v13

    xor-long v14, v14, p1

    aput-wide v14, v7, v12

    .line 295
    const/4 v12, 0x6

    const/4 v13, 0x3

    aget-wide v14, v7, v13

    const/4 v13, 0x1

    shl-long/2addr v14, v13

    aput-wide v14, v7, v12

    .line 296
    const/4 v12, 0x7

    const/4 v13, 0x6

    aget-wide v14, v7, v13

    xor-long v14, v14, p1

    aput-wide v14, v7, v12

    .line 298
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v12, 0x7

    if-ge v4, v12, :cond_1

    .line 300
    aget-wide v10, p0, v4

    .line 304
    .local v10, "x":J
    long-to-int v5, v10

    .line 305
    .local v5, "j":I
    const-wide/16 v2, 0x0

    .local v2, "h":J
    and-int/lit8 v12, v5, 0x7

    aget-wide v12, v7, v12

    ushr-int/lit8 v14, v5, 0x3

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v7, v14

    const/16 v16, 0x3

    shl-long v14, v14, v16

    xor-long v8, v12, v14

    .line 307
    .local v8, "l":J
    const/16 v6, 0x36

    .line 310
    .local v6, "k":I
    :cond_0
    ushr-long v12, v10, v6

    long-to-int v5, v12

    .line 311
    and-int/lit8 v12, v5, 0x7

    aget-wide v12, v7, v12

    ushr-int/lit8 v14, v5, 0x3

    and-int/lit8 v14, v14, 0x7

    aget-wide v14, v7, v14

    const/16 v16, 0x3

    shl-long v14, v14, v16

    xor-long v0, v12, v14

    .line 313
    .local v0, "g":J
    shl-long v12, v0, v6

    xor-long/2addr v8, v12

    .line 314
    neg-int v12, v6

    ushr-long v12, v0, v12

    xor-long/2addr v2, v12

    .line 316
    add-int/lit8 v6, v6, -0x6

    if-gtz v6, :cond_0

    .line 320
    add-int v12, p4, v4

    aget-wide v14, p3, v12

    const-wide v16, 0x7ffffffffffffffL

    and-long v16, v16, v8

    xor-long v14, v14, v16

    aput-wide v14, p3, v12

    .line 321
    add-int v12, p4, v4

    add-int/lit8 v12, v12, 0x1

    aget-wide v14, p3, v12

    const/16 v13, 0x3b

    ushr-long v16, v8, v13

    const/4 v13, 0x5

    shl-long v18, v2, v13

    xor-long v16, v16, v18

    xor-long v14, v14, v16

    aput-wide v14, p3, v12

    .line 298
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "g":J
    .end local v2    # "h":J
    .end local v5    # "j":I
    .end local v6    # "k":I
    .end local v8    # "l":J
    .end local v10    # "x":J
    :cond_1
    return-void
.end method

.method protected static implSquare([J[J)V
    .locals 5
    .param p0, "x"    # [J
    .param p1, "zz"    # [J

    .prologue
    const/4 v4, 0x6

    .line 327
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 329
    aget-wide v2, p0, v0

    shl-int/lit8 v1, v0, 0x1

    invoke-static {v2, v3, p1, v1}, Lorg/spongycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_0
    const/16 v1, 0xc

    aget-wide v2, p0, v4

    long-to-int v2, v2

    invoke-static {v2}, Lorg/spongycastle/math/raw/Interleave;->expand32to64(I)J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 332
    return-void
.end method

.method public static invert([J[J)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    const/16 v5, 0x18

    const/4 v4, 0x1

    .line 53
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat448;->isZero64([J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 60
    :cond_0
    invoke-static {}, Lorg/spongycastle/math/raw/Nat448;->create64()[J

    move-result-object v0

    .line 61
    .local v0, "t0":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat448;->create64()[J

    move-result-object v1

    .line 62
    .local v1, "t1":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat448;->create64()[J

    move-result-object v2

    .line 64
    .local v2, "t2":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->square([J[J)V

    .line 67
    invoke-static {v0, v4, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 68
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 69
    invoke-static {v1, v4, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 70
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 73
    const/4 v3, 0x3

    invoke-static {v0, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 74
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 77
    const/4 v3, 0x6

    invoke-static {v0, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 78
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 81
    const/16 v3, 0xc

    invoke-static {v0, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 82
    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 85
    invoke-static {v2, v5, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 86
    invoke-static {v0, v5, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 87
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 90
    const/16 v3, 0x30

    invoke-static {v0, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 91
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 94
    const/16 v3, 0x60

    invoke-static {v0, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 95
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 98
    const/16 v3, 0xc0

    invoke-static {v0, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 99
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 101
    invoke-static {v0, v2, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 102
    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J

    .prologue
    .line 106
    invoke-static {}, Lorg/spongycastle/math/raw/Nat448;->createExt64()[J

    move-result-object v0

    .line 107
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->implMultiply([J[J[J)V

    .line 108
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    .line 109
    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "zz"    # [J

    .prologue
    .line 113
    invoke-static {}, Lorg/spongycastle/math/raw/Nat448;->createExt64()[J

    move-result-object v0

    .line 114
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->implMultiply([J[J[J)V

    .line 115
    invoke-static {p2, v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->addExt([J[J[J)V

    .line 116
    return-void
.end method

.method public static reduce([J[J)V
    .locals 24
    .param p0, "xx"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 120
    const/16 v20, 0x0

    aget-wide v4, p0, v20

    .local v4, "x00":J
    const/16 v20, 0x1

    aget-wide v6, p0, v20

    .local v6, "x01":J
    const/16 v20, 0x2

    aget-wide v8, p0, v20

    .local v8, "x02":J
    const/16 v20, 0x3

    aget-wide v10, p0, v20

    .line 121
    .local v10, "x03":J
    const/16 v20, 0x4

    aget-wide v12, p0, v20

    .local v12, "x04":J
    const/16 v20, 0x5

    aget-wide v14, p0, v20

    .local v14, "x05":J
    const/16 v20, 0x6

    aget-wide v16, p0, v20

    .local v16, "x06":J
    const/16 v20, 0x7

    aget-wide v18, p0, v20

    .line 123
    .local v18, "x07":J
    const/16 v20, 0xc

    aget-wide v2, p0, v20

    .line 124
    .local v2, "u":J
    const/16 v20, 0x27

    shl-long v20, v2, v20

    xor-long v14, v14, v20

    .line 125
    const/16 v20, 0x19

    ushr-long v20, v2, v20

    const/16 v22, 0x3e

    shl-long v22, v2, v22

    xor-long v20, v20, v22

    xor-long v16, v16, v20

    .line 126
    const/16 v20, 0x2

    ushr-long v20, v2, v20

    xor-long v18, v18, v20

    .line 128
    const/16 v20, 0xb

    aget-wide v2, p0, v20

    .line 129
    const/16 v20, 0x27

    shl-long v20, v2, v20

    xor-long v12, v12, v20

    .line 130
    const/16 v20, 0x19

    ushr-long v20, v2, v20

    const/16 v22, 0x3e

    shl-long v22, v2, v22

    xor-long v20, v20, v22

    xor-long v14, v14, v20

    .line 131
    const/16 v20, 0x2

    ushr-long v20, v2, v20

    xor-long v16, v16, v20

    .line 133
    const/16 v20, 0xa

    aget-wide v2, p0, v20

    .line 134
    const/16 v20, 0x27

    shl-long v20, v2, v20

    xor-long v10, v10, v20

    .line 135
    const/16 v20, 0x19

    ushr-long v20, v2, v20

    const/16 v22, 0x3e

    shl-long v22, v2, v22

    xor-long v20, v20, v22

    xor-long v12, v12, v20

    .line 136
    const/16 v20, 0x2

    ushr-long v20, v2, v20

    xor-long v14, v14, v20

    .line 138
    const/16 v20, 0x9

    aget-wide v2, p0, v20

    .line 139
    const/16 v20, 0x27

    shl-long v20, v2, v20

    xor-long v8, v8, v20

    .line 140
    const/16 v20, 0x19

    ushr-long v20, v2, v20

    const/16 v22, 0x3e

    shl-long v22, v2, v22

    xor-long v20, v20, v22

    xor-long v10, v10, v20

    .line 141
    const/16 v20, 0x2

    ushr-long v20, v2, v20

    xor-long v12, v12, v20

    .line 143
    const/16 v20, 0x8

    aget-wide v2, p0, v20

    .line 144
    const/16 v20, 0x27

    shl-long v20, v2, v20

    xor-long v6, v6, v20

    .line 145
    const/16 v20, 0x19

    ushr-long v20, v2, v20

    const/16 v22, 0x3e

    shl-long v22, v2, v22

    xor-long v20, v20, v22

    xor-long v8, v8, v20

    .line 146
    const/16 v20, 0x2

    ushr-long v20, v2, v20

    xor-long v10, v10, v20

    .line 148
    move-wide/from16 v2, v18

    .line 149
    const/16 v20, 0x27

    shl-long v20, v2, v20

    xor-long v4, v4, v20

    .line 150
    const/16 v20, 0x19

    ushr-long v20, v2, v20

    const/16 v22, 0x3e

    shl-long v22, v2, v22

    xor-long v20, v20, v22

    xor-long v6, v6, v20

    .line 151
    const/16 v20, 0x2

    ushr-long v20, v2, v20

    xor-long v8, v8, v20

    .line 153
    const/16 v20, 0x19

    ushr-long v0, v16, v20

    .line 154
    .local v0, "t":J
    const/16 v20, 0x0

    xor-long v22, v4, v0

    aput-wide v22, p1, v20

    .line 155
    const/16 v20, 0x1

    const/16 v21, 0x17

    shl-long v22, v0, v21

    xor-long v22, v22, v6

    aput-wide v22, p1, v20

    .line 156
    const/16 v20, 0x2

    aput-wide v8, p1, v20

    .line 157
    const/16 v20, 0x3

    aput-wide v10, p1, v20

    .line 158
    const/16 v20, 0x4

    aput-wide v12, p1, v20

    .line 159
    const/16 v20, 0x5

    aput-wide v14, p1, v20

    .line 160
    const/16 v20, 0x6

    const-wide/32 v22, 0x1ffffff

    and-long v22, v22, v16

    aput-wide v22, p1, v20

    .line 161
    return-void
.end method

.method public static reduce39([JI)V
    .locals 10
    .param p0, "z"    # [J
    .param p1, "zOff"    # I

    .prologue
    .line 165
    add-int/lit8 v4, p1, 0x6

    aget-wide v2, p0, v4

    .local v2, "z6":J
    const/16 v4, 0x19

    ushr-long v0, v2, v4

    .line 166
    .local v0, "t":J
    aget-wide v4, p0, p1

    xor-long/2addr v4, v0

    aput-wide v4, p0, p1

    .line 167
    add-int/lit8 v4, p1, 0x1

    aget-wide v6, p0, v4

    const/16 v5, 0x17

    shl-long v8, v0, v5

    xor-long/2addr v6, v8

    aput-wide v6, p0, v4

    .line 168
    add-int/lit8 v4, p1, 0x6

    const-wide/32 v6, 0x1ffffff

    and-long/2addr v6, v2

    aput-wide v6, p0, v4

    .line 169
    return-void
.end method

.method public static sqrt([J[J)V
    .locals 26
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 174
    const/16 v20, 0x0

    aget-wide v20, p0, v20

    invoke-static/range {v20 .. v21}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v16

    .local v16, "u0":J
    const/16 v20, 0x1

    aget-wide v20, p0, v20

    invoke-static/range {v20 .. v21}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v18

    .line 175
    .local v18, "u1":J
    const-wide v20, 0xffffffffL

    and-long v20, v20, v16

    const/16 v22, 0x20

    shl-long v22, v18, v22

    or-long v8, v20, v22

    .line 176
    .local v8, "e0":J
    const/16 v20, 0x20

    ushr-long v20, v16, v20

    const-wide v22, -0x100000000L

    and-long v22, v22, v18

    or-long v0, v20, v22

    .line 178
    .local v0, "c0":J
    const/16 v20, 0x2

    aget-wide v20, p0, v20

    invoke-static/range {v20 .. v21}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v16

    const/16 v20, 0x3

    aget-wide v20, p0, v20

    invoke-static/range {v20 .. v21}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v18

    .line 179
    const-wide v20, 0xffffffffL

    and-long v20, v20, v16

    const/16 v22, 0x20

    shl-long v22, v18, v22

    or-long v10, v20, v22

    .line 180
    .local v10, "e1":J
    const/16 v20, 0x20

    ushr-long v20, v16, v20

    const-wide v22, -0x100000000L

    and-long v22, v22, v18

    or-long v2, v20, v22

    .line 182
    .local v2, "c1":J
    const/16 v20, 0x4

    aget-wide v20, p0, v20

    invoke-static/range {v20 .. v21}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v16

    const/16 v20, 0x5

    aget-wide v20, p0, v20

    invoke-static/range {v20 .. v21}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v18

    .line 183
    const-wide v20, 0xffffffffL

    and-long v20, v20, v16

    const/16 v22, 0x20

    shl-long v22, v18, v22

    or-long v12, v20, v22

    .line 184
    .local v12, "e2":J
    const/16 v20, 0x20

    ushr-long v20, v16, v20

    const-wide v22, -0x100000000L

    and-long v22, v22, v18

    or-long v4, v20, v22

    .line 186
    .local v4, "c2":J
    const/16 v20, 0x6

    aget-wide v20, p0, v20

    invoke-static/range {v20 .. v21}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v16

    .line 187
    const-wide v20, 0xffffffffL

    and-long v14, v16, v20

    .line 188
    .local v14, "e3":J
    const/16 v20, 0x20

    ushr-long v6, v16, v20

    .line 190
    .local v6, "c3":J
    const/16 v20, 0x0

    const/16 v21, 0x2c

    shl-long v22, v0, v21

    xor-long v22, v22, v8

    aput-wide v22, p1, v20

    .line 191
    const/16 v20, 0x1

    const/16 v21, 0x2c

    shl-long v22, v2, v21

    xor-long v22, v22, v10

    const/16 v21, 0x14

    ushr-long v24, v0, v21

    xor-long v22, v22, v24

    aput-wide v22, p1, v20

    .line 192
    const/16 v20, 0x2

    const/16 v21, 0x2c

    shl-long v22, v4, v21

    xor-long v22, v22, v12

    const/16 v21, 0x14

    ushr-long v24, v2, v21

    xor-long v22, v22, v24

    aput-wide v22, p1, v20

    .line 193
    const/16 v20, 0x3

    const/16 v21, 0x2c

    shl-long v22, v6, v21

    xor-long v22, v22, v14

    const/16 v21, 0x14

    ushr-long v24, v4, v21

    xor-long v22, v22, v24

    const/16 v21, 0xd

    shl-long v24, v0, v21

    xor-long v22, v22, v24

    aput-wide v22, p1, v20

    .line 194
    const/16 v20, 0x4

    const/16 v21, 0x14

    ushr-long v22, v6, v21

    const/16 v21, 0xd

    shl-long v24, v2, v21

    xor-long v22, v22, v24

    const/16 v21, 0x33

    ushr-long v24, v0, v21

    xor-long v22, v22, v24

    aput-wide v22, p1, v20

    .line 195
    const/16 v20, 0x5

    const/16 v21, 0xd

    shl-long v22, v4, v21

    const/16 v21, 0x33

    ushr-long v24, v2, v21

    xor-long v22, v22, v24

    aput-wide v22, p1, v20

    .line 196
    const/16 v20, 0x6

    const/16 v21, 0xd

    shl-long v22, v6, v21

    const/16 v21, 0x33

    ushr-long v24, v4, v21

    xor-long v22, v22, v24

    aput-wide v22, p1, v20

    .line 199
    return-void
.end method

.method public static square([J[J)V
    .locals 2
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 203
    const/16 v1, 0xd

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 204
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    .line 205
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    .line 206
    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 2
    .param p0, "x"    # [J
    .param p1, "zz"    # [J

    .prologue
    .line 210
    const/16 v1, 0xd

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 211
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    .line 212
    invoke-static {p1, v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->addExt([J[J[J)V

    .line 213
    return-void
.end method

.method public static squareN([JI[J)V
    .locals 2
    .param p0, "x"    # [J
    .param p1, "n"    # I
    .param p2, "z"    # [J

    .prologue
    .line 219
    const/16 v1, 0xd

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 220
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    .line 221
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    .line 223
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 225
    invoke-static {p2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    .line 226
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method public static trace([J)I
    .locals 2
    .param p0, "x"    # [J

    .prologue
    .line 233
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method
