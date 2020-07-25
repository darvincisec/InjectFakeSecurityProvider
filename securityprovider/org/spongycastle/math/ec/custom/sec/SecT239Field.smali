.class public Lorg/spongycastle/math/ec/custom/sec/SecT239Field;
.super Ljava/lang/Object;
.source "SecT239Field.java"


# static fields
.field private static final M47:J = 0x7fffffffffffL

.field private static final M60:J = 0xfffffffffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([J[J[J)V
    .locals 8
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    xor-long/2addr v0, v2

    aput-wide v0, p2, v4

    .line 16
    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    xor-long/2addr v0, v2

    aput-wide v0, p2, v5

    .line 17
    aget-wide v0, p0, v6

    aget-wide v2, p1, v6

    xor-long/2addr v0, v2

    aput-wide v0, p2, v6

    .line 18
    aget-wide v0, p0, v7

    aget-wide v2, p1, v7

    xor-long/2addr v0, v2

    aput-wide v0, p2, v7

    .line 19
    return-void
.end method

.method public static addExt([J[J[J)V
    .locals 9
    .param p0, "xx"    # [J
    .param p1, "yy"    # [J
    .param p2, "zz"    # [J

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    xor-long/2addr v0, v2

    aput-wide v0, p2, v4

    .line 24
    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    xor-long/2addr v0, v2

    aput-wide v0, p2, v5

    .line 25
    aget-wide v0, p0, v6

    aget-wide v2, p1, v6

    xor-long/2addr v0, v2

    aput-wide v0, p2, v6

    .line 26
    aget-wide v0, p0, v7

    aget-wide v2, p1, v7

    xor-long/2addr v0, v2

    aput-wide v0, p2, v7

    .line 27
    aget-wide v0, p0, v8

    aget-wide v2, p1, v8

    xor-long/2addr v0, v2

    aput-wide v0, p2, v8

    .line 28
    const/4 v0, 0x5

    const/4 v1, 0x5

    aget-wide v2, p0, v1

    const/4 v1, 0x5

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    .line 29
    const/4 v0, 0x6

    const/4 v1, 0x6

    aget-wide v2, p0, v1

    const/4 v1, 0x6

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    .line 30
    const/4 v0, 0x7

    const/4 v1, 0x7

    aget-wide v2, p0, v1

    const/4 v1, 0x7

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    .line 31
    return-void
.end method

.method public static addOne([J[J)V
    .locals 8
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
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
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 2
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 43
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->fromBigInteger64(Ljava/math/BigInteger;)[J

    move-result-object v0

    .line 44
    .local v0, "z":[J
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->reduce17([JI)V

    .line 45
    return-object v0
.end method

.method protected static implCompactExt([J)V
    .locals 22
    .param p0, "zz"    # [J

    .prologue
    .line 214
    const/16 v16, 0x0

    aget-wide v0, p0, v16

    .local v0, "z0":J
    const/16 v16, 0x1

    aget-wide v2, p0, v16

    .local v2, "z1":J
    const/16 v16, 0x2

    aget-wide v4, p0, v16

    .local v4, "z2":J
    const/16 v16, 0x3

    aget-wide v6, p0, v16

    .local v6, "z3":J
    const/16 v16, 0x4

    aget-wide v8, p0, v16

    .local v8, "z4":J
    const/16 v16, 0x5

    aget-wide v10, p0, v16

    .local v10, "z5":J
    const/16 v16, 0x6

    aget-wide v12, p0, v16

    .local v12, "z6":J
    const/16 v16, 0x7

    aget-wide v14, p0, v16

    .line 215
    .local v14, "z7":J
    const/16 v16, 0x0

    const/16 v17, 0x3c

    shl-long v18, v2, v17

    xor-long v18, v18, v0

    aput-wide v18, p0, v16

    .line 216
    const/16 v16, 0x1

    const/16 v17, 0x4

    ushr-long v18, v2, v17

    const/16 v17, 0x38

    shl-long v20, v4, v17

    xor-long v18, v18, v20

    aput-wide v18, p0, v16

    .line 217
    const/16 v16, 0x2

    const/16 v17, 0x8

    ushr-long v18, v4, v17

    const/16 v17, 0x34

    shl-long v20, v6, v17

    xor-long v18, v18, v20

    aput-wide v18, p0, v16

    .line 218
    const/16 v16, 0x3

    const/16 v17, 0xc

    ushr-long v18, v6, v17

    const/16 v17, 0x30

    shl-long v20, v8, v17

    xor-long v18, v18, v20

    aput-wide v18, p0, v16

    .line 219
    const/16 v16, 0x4

    const/16 v17, 0x10

    ushr-long v18, v8, v17

    const/16 v17, 0x2c

    shl-long v20, v10, v17

    xor-long v18, v18, v20

    aput-wide v18, p0, v16

    .line 220
    const/16 v16, 0x5

    const/16 v17, 0x14

    ushr-long v18, v10, v17

    const/16 v17, 0x28

    shl-long v20, v12, v17

    xor-long v18, v18, v20

    aput-wide v18, p0, v16

    .line 221
    const/16 v16, 0x6

    const/16 v17, 0x18

    ushr-long v18, v12, v17

    const/16 v17, 0x24

    shl-long v20, v14, v17

    xor-long v18, v18, v20

    aput-wide v18, p0, v16

    .line 222
    const/16 v16, 0x7

    const/16 v17, 0x1c

    ushr-long v18, v14, v17

    aput-wide v18, p0, v16

    .line 223
    return-void
.end method

.method protected static implExpand([J[J)V
    .locals 14
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 227
    const/4 v8, 0x0

    aget-wide v0, p0, v8

    .local v0, "x0":J
    const/4 v8, 0x1

    aget-wide v2, p0, v8

    .local v2, "x1":J
    const/4 v8, 0x2

    aget-wide v4, p0, v8

    .local v4, "x2":J
    const/4 v8, 0x3

    aget-wide v6, p0, v8

    .line 228
    .local v6, "x3":J
    const/4 v8, 0x0

    const-wide v10, 0xfffffffffffffffL

    and-long/2addr v10, v0

    aput-wide v10, p1, v8

    .line 229
    const/4 v8, 0x1

    const/16 v9, 0x3c

    ushr-long v10, v0, v9

    const/4 v9, 0x4

    shl-long v12, v2, v9

    xor-long/2addr v10, v12

    const-wide v12, 0xfffffffffffffffL

    and-long/2addr v10, v12

    aput-wide v10, p1, v8

    .line 230
    const/4 v8, 0x2

    const/16 v9, 0x38

    ushr-long v10, v2, v9

    const/16 v9, 0x8

    shl-long v12, v4, v9

    xor-long/2addr v10, v12

    const-wide v12, 0xfffffffffffffffL

    and-long/2addr v10, v12

    aput-wide v10, p1, v8

    .line 231
    const/4 v8, 0x3

    const/16 v9, 0x34

    ushr-long v10, v4, v9

    const/16 v9, 0xc

    shl-long v12, v6, v9

    xor-long/2addr v10, v12

    aput-wide v10, p1, v8

    .line 232
    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 28
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "zz"    # [J

    .prologue
    .line 240
    const/4 v2, 0x4

    new-array v0, v2, [J

    move-object/from16 v16, v0

    .local v16, "f":[J
    const/4 v2, 0x4

    new-array v0, v2, [J

    move-object/from16 v17, v0

    .line 241
    .local v17, "g":[J
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implExpand([J[J)V

    .line 242
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implExpand([J[J)V

    .line 244
    const/4 v2, 0x0

    aget-wide v2, v16, v2

    const/4 v4, 0x0

    aget-wide v4, v17, v4

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    .line 245
    const/4 v2, 0x1

    aget-wide v2, v16, v2

    const/4 v4, 0x1

    aget-wide v4, v17, v4

    const/4 v7, 0x1

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    .line 246
    const/4 v2, 0x2

    aget-wide v2, v16, v2

    const/4 v4, 0x2

    aget-wide v4, v17, v4

    const/4 v7, 0x2

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    .line 247
    const/4 v2, 0x3

    aget-wide v2, v16, v2

    const/4 v4, 0x3

    aget-wide v4, v17, v4

    const/4 v7, 0x3

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    .line 250
    const/16 v18, 0x5

    .local v18, "i":I
    :goto_0
    if-lez v18, :cond_0

    .line 252
    aget-wide v2, p2, v18

    add-int/lit8 v4, v18, -0x1

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p2, v18

    .line 250
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 255
    :cond_0
    const/4 v2, 0x0

    aget-wide v2, v16, v2

    const/4 v4, 0x1

    aget-wide v4, v16, v4

    xor-long/2addr v2, v4

    const/4 v4, 0x0

    aget-wide v4, v17, v4

    const/4 v7, 0x1

    aget-wide v26, v17, v7

    xor-long v4, v4, v26

    const/4 v7, 0x1

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    .line 256
    const/4 v2, 0x2

    aget-wide v2, v16, v2

    const/4 v4, 0x3

    aget-wide v4, v16, v4

    xor-long/2addr v2, v4

    const/4 v4, 0x2

    aget-wide v4, v17, v4

    const/4 v7, 0x3

    aget-wide v26, v17, v7

    xor-long v4, v4, v26

    const/4 v7, 0x3

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    .line 259
    const/16 v18, 0x7

    :goto_1
    const/4 v2, 0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_1

    .line 261
    aget-wide v2, p2, v18

    add-int/lit8 v4, v18, -0x2

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p2, v18

    .line 259
    add-int/lit8 v18, v18, -0x1

    goto :goto_1

    .line 266
    :cond_1
    const/4 v2, 0x0

    aget-wide v2, v16, v2

    const/4 v4, 0x2

    aget-wide v4, v16, v4

    xor-long v8, v2, v4

    .local v8, "c0":J
    const/4 v2, 0x1

    aget-wide v2, v16, v2

    const/4 v4, 0x3

    aget-wide v4, v16, v4

    xor-long v10, v2, v4

    .line 267
    .local v10, "c1":J
    const/4 v2, 0x0

    aget-wide v2, v17, v2

    const/4 v4, 0x2

    aget-wide v4, v17, v4

    xor-long v12, v2, v4

    .local v12, "d0":J
    const/4 v2, 0x1

    aget-wide v2, v17, v2

    const/4 v4, 0x3

    aget-wide v4, v17, v4

    xor-long v14, v2, v4

    .line 268
    .local v14, "d1":J
    xor-long v2, v8, v10

    xor-long v4, v12, v14

    const/4 v7, 0x3

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    .line 269
    const/4 v2, 0x3

    new-array v6, v2, [J

    .line 270
    .local v6, "t":[J
    const/4 v7, 0x0

    move-wide v2, v8

    move-wide v4, v12

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    .line 271
    const/4 v7, 0x1

    move-wide v2, v10

    move-wide v4, v14

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc(JJ[JI)V

    .line 272
    const/4 v2, 0x0

    aget-wide v20, v6, v2

    .local v20, "t0":J
    const/4 v2, 0x1

    aget-wide v22, v6, v2

    .local v22, "t1":J
    const/4 v2, 0x2

    aget-wide v24, v6, v2

    .line 273
    .local v24, "t2":J
    const/4 v2, 0x2

    aget-wide v4, p2, v2

    xor-long v4, v4, v20

    aput-wide v4, p2, v2

    .line 274
    const/4 v2, 0x3

    aget-wide v4, p2, v2

    xor-long v26, v20, v22

    xor-long v4, v4, v26

    aput-wide v4, p2, v2

    .line 275
    const/4 v2, 0x4

    aget-wide v4, p2, v2

    xor-long v26, v24, v22

    xor-long v4, v4, v26

    aput-wide v4, p2, v2

    .line 276
    const/4 v2, 0x5

    aget-wide v4, p2, v2

    xor-long v4, v4, v24

    aput-wide v4, p2, v2

    .line 279
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implCompactExt([J)V

    .line 280
    return-void
.end method

.method protected static implMulwAcc(JJ[JI)V
    .locals 18
    .param p0, "x"    # J
    .param p2, "y"    # J
    .param p4, "z"    # [J
    .param p5, "zOff"    # I

    .prologue
    .line 287
    const/16 v11, 0x8

    new-array v10, v11, [J

    .line 289
    .local v10, "u":[J
    const/4 v11, 0x1

    aput-wide p2, v10, v11

    .line 290
    const/4 v11, 0x2

    const/4 v12, 0x1

    aget-wide v12, v10, v12

    const/4 v14, 0x1

    shl-long/2addr v12, v14

    aput-wide v12, v10, v11

    .line 291
    const/4 v11, 0x3

    const/4 v12, 0x2

    aget-wide v12, v10, v12

    xor-long v12, v12, p2

    aput-wide v12, v10, v11

    .line 292
    const/4 v11, 0x4

    const/4 v12, 0x2

    aget-wide v12, v10, v12

    const/4 v14, 0x1

    shl-long/2addr v12, v14

    aput-wide v12, v10, v11

    .line 293
    const/4 v11, 0x5

    const/4 v12, 0x4

    aget-wide v12, v10, v12

    xor-long v12, v12, p2

    aput-wide v12, v10, v11

    .line 294
    const/4 v11, 0x6

    const/4 v12, 0x3

    aget-wide v12, v10, v12

    const/4 v14, 0x1

    shl-long/2addr v12, v14

    aput-wide v12, v10, v11

    .line 295
    const/4 v11, 0x7

    const/4 v12, 0x6

    aget-wide v12, v10, v12

    xor-long v12, v12, p2

    aput-wide v12, v10, v11

    .line 297
    move-wide/from16 v0, p0

    long-to-int v6, v0

    .line 298
    .local v6, "j":I
    const-wide/16 v4, 0x0

    .local v4, "h":J
    and-int/lit8 v11, v6, 0x7

    aget-wide v12, v10, v11

    ushr-int/lit8 v11, v6, 0x3

    and-int/lit8 v11, v11, 0x7

    aget-wide v14, v10, v11

    const/4 v11, 0x3

    shl-long/2addr v14, v11

    xor-long v8, v12, v14

    .line 300
    .local v8, "l":J
    const/16 v7, 0x36

    .line 303
    .local v7, "k":I
    :cond_0
    ushr-long v12, p0, v7

    long-to-int v6, v12

    .line 304
    and-int/lit8 v11, v6, 0x7

    aget-wide v12, v10, v11

    ushr-int/lit8 v11, v6, 0x3

    and-int/lit8 v11, v11, 0x7

    aget-wide v14, v10, v11

    const/4 v11, 0x3

    shl-long/2addr v14, v11

    xor-long v2, v12, v14

    .line 306
    .local v2, "g":J
    shl-long v12, v2, v7

    xor-long/2addr v8, v12

    .line 307
    neg-int v11, v7

    ushr-long v12, v2, v11

    xor-long/2addr v4, v12

    .line 309
    add-int/lit8 v7, v7, -0x6

    if-gtz v7, :cond_0

    .line 311
    const-wide v12, 0x820820820820820L

    and-long v12, v12, p0

    const/4 v11, 0x4

    shl-long v14, p2, v11

    const/16 v11, 0x3f

    shr-long/2addr v14, v11

    and-long/2addr v12, v14

    const/4 v11, 0x5

    ushr-long/2addr v12, v11

    xor-long/2addr v4, v12

    .line 315
    aget-wide v12, p4, p5

    const-wide v14, 0xfffffffffffffffL

    and-long/2addr v14, v8

    xor-long/2addr v12, v14

    aput-wide v12, p4, p5

    .line 316
    add-int/lit8 v11, p5, 0x1

    aget-wide v12, p4, v11

    const/16 v14, 0x3c

    ushr-long v14, v8, v14

    const/16 v16, 0x4

    shl-long v16, v4, v16

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p4, v11

    .line 317
    return-void
.end method

.method protected static implSquare([J[J)V
    .locals 8
    .param p0, "x"    # [J
    .param p1, "zz"    # [J

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 321
    aget-wide v2, p0, v4

    invoke-static {v2, v3, p1, v4}, Lorg/spongycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 322
    const/4 v2, 0x1

    aget-wide v2, p0, v2

    invoke-static {v2, v3, p1, v5}, Lorg/spongycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 323
    aget-wide v2, p0, v5

    const/4 v4, 0x4

    invoke-static {v2, v3, p1, v4}, Lorg/spongycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 325
    const/4 v2, 0x3

    aget-wide v0, p0, v2

    .line 326
    .local v0, "x3":J
    const/4 v2, 0x6

    long-to-int v3, v0

    invoke-static {v3}, Lorg/spongycastle/math/raw/Interleave;->expand32to64(I)J

    move-result-wide v4

    aput-wide v4, p1, v2

    .line 327
    const/4 v2, 0x7

    const/16 v3, 0x20

    ushr-long v4, v0, v3

    long-to-int v3, v4

    invoke-static {v3}, Lorg/spongycastle/math/raw/Interleave;->expand16to32(I)I

    move-result v3

    int-to-long v4, v3

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    aput-wide v4, p1, v2

    .line 328
    return-void
.end method

.method public static invert([J[J)V
    .locals 3
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 50
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->isZero64([J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 57
    :cond_0
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    .line 58
    .local v0, "t0":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create64()[J

    move-result-object v1

    .line 60
    .local v1, "t1":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 61
    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 62
    invoke-static {v0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 63
    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 64
    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 65
    invoke-static {v1, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 66
    invoke-static {v1, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 67
    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 68
    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 69
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 70
    const/16 v2, 0xe

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 71
    invoke-static {v1, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 72
    invoke-static {v1, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 73
    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 74
    const/16 v2, 0x1d

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 75
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 76
    invoke-static {v0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 77
    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 78
    const/16 v2, 0x3b

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 79
    invoke-static {v1, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 80
    invoke-static {v1, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 81
    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 82
    const/16 v2, 0x77

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 83
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 84
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 85
    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J

    .prologue
    .line 89
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 90
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implMultiply([J[J[J)V

    .line 91
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    .line 92
    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "zz"    # [J

    .prologue
    .line 96
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 97
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implMultiply([J[J[J)V

    .line 98
    invoke-static {p2, v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->addExt([J[J[J)V

    .line 99
    return-void
.end method

.method public static reduce([J[J)V
    .locals 22
    .param p0, "xx"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 103
    const/16 v18, 0x0

    aget-wide v2, p0, v18

    .local v2, "x0":J
    const/16 v18, 0x1

    aget-wide v4, p0, v18

    .local v4, "x1":J
    const/16 v18, 0x2

    aget-wide v6, p0, v18

    .local v6, "x2":J
    const/16 v18, 0x3

    aget-wide v8, p0, v18

    .line 104
    .local v8, "x3":J
    const/16 v18, 0x4

    aget-wide v10, p0, v18

    .local v10, "x4":J
    const/16 v18, 0x5

    aget-wide v12, p0, v18

    .local v12, "x5":J
    const/16 v18, 0x6

    aget-wide v14, p0, v18

    .local v14, "x6":J
    const/16 v18, 0x7

    aget-wide v16, p0, v18

    .line 106
    .local v16, "x7":J
    const/16 v18, 0x11

    shl-long v18, v16, v18

    xor-long v8, v8, v18

    .line 107
    const/16 v18, 0x2f

    ushr-long v18, v16, v18

    xor-long v10, v10, v18

    .line 108
    const/16 v18, 0x2f

    shl-long v18, v16, v18

    xor-long v12, v12, v18

    .line 109
    const/16 v18, 0x11

    ushr-long v18, v16, v18

    xor-long v14, v14, v18

    .line 111
    const/16 v18, 0x11

    shl-long v18, v14, v18

    xor-long v6, v6, v18

    .line 112
    const/16 v18, 0x2f

    ushr-long v18, v14, v18

    xor-long v8, v8, v18

    .line 113
    const/16 v18, 0x2f

    shl-long v18, v14, v18

    xor-long v10, v10, v18

    .line 114
    const/16 v18, 0x11

    ushr-long v18, v14, v18

    xor-long v12, v12, v18

    .line 116
    const/16 v18, 0x11

    shl-long v18, v12, v18

    xor-long v4, v4, v18

    .line 117
    const/16 v18, 0x2f

    ushr-long v18, v12, v18

    xor-long v6, v6, v18

    .line 118
    const/16 v18, 0x2f

    shl-long v18, v12, v18

    xor-long v8, v8, v18

    .line 119
    const/16 v18, 0x11

    ushr-long v18, v12, v18

    xor-long v10, v10, v18

    .line 121
    const/16 v18, 0x11

    shl-long v18, v10, v18

    xor-long v2, v2, v18

    .line 122
    const/16 v18, 0x2f

    ushr-long v18, v10, v18

    xor-long v4, v4, v18

    .line 123
    const/16 v18, 0x2f

    shl-long v18, v10, v18

    xor-long v6, v6, v18

    .line 124
    const/16 v18, 0x11

    ushr-long v18, v10, v18

    xor-long v8, v8, v18

    .line 126
    const/16 v18, 0x2f

    ushr-long v0, v8, v18

    .line 127
    .local v0, "t":J
    const/16 v18, 0x0

    xor-long v20, v2, v0

    aput-wide v20, p1, v18

    .line 128
    const/16 v18, 0x1

    aput-wide v4, p1, v18

    .line 129
    const/16 v18, 0x2

    const/16 v19, 0x1e

    shl-long v20, v0, v19

    xor-long v20, v20, v6

    aput-wide v20, p1, v18

    .line 130
    const/16 v18, 0x3

    const-wide v20, 0x7fffffffffffL

    and-long v20, v20, v8

    aput-wide v20, p1, v18

    .line 131
    return-void
.end method

.method public static reduce17([JI)V
    .locals 10
    .param p0, "z"    # [J
    .param p1, "zOff"    # I

    .prologue
    .line 135
    add-int/lit8 v4, p1, 0x3

    aget-wide v2, p0, v4

    .local v2, "z3":J
    const/16 v4, 0x2f

    ushr-long v0, v2, v4

    .line 136
    .local v0, "t":J
    aget-wide v4, p0, p1

    xor-long/2addr v4, v0

    aput-wide v4, p0, p1

    .line 137
    add-int/lit8 v4, p1, 0x2

    aget-wide v6, p0, v4

    const/16 v5, 0x1e

    shl-long v8, v0, v5

    xor-long/2addr v6, v8

    aput-wide v6, p0, v4

    .line 138
    add-int/lit8 v4, p1, 0x3

    const-wide v6, 0x7fffffffffffL

    and-long/2addr v6, v2

    aput-wide v6, p0, v4

    .line 139
    return-void
.end method

.method public static sqrt([J[J)V
    .locals 30
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 144
    const/16 v23, 0x0

    aget-wide v24, p0, v23

    invoke-static/range {v24 .. v25}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v18

    .local v18, "u0":J
    const/16 v23, 0x1

    aget-wide v24, p0, v23

    invoke-static/range {v24 .. v25}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v20

    .line 145
    .local v20, "u1":J
    const-wide v24, 0xffffffffL

    and-long v24, v24, v18

    const/16 v23, 0x20

    shl-long v26, v20, v23

    or-long v10, v24, v26

    .line 146
    .local v10, "e0":J
    const/16 v23, 0x20

    ushr-long v24, v18, v23

    const-wide v26, -0x100000000L

    and-long v26, v26, v20

    or-long v2, v24, v26

    .line 148
    .local v2, "c0":J
    const/16 v23, 0x2

    aget-wide v24, p0, v23

    invoke-static/range {v24 .. v25}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v18

    const/16 v23, 0x3

    aget-wide v24, p0, v23

    invoke-static/range {v24 .. v25}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v20

    .line 149
    const-wide v24, 0xffffffffL

    and-long v24, v24, v18

    const/16 v23, 0x20

    shl-long v26, v20, v23

    or-long v12, v24, v26

    .line 150
    .local v12, "e1":J
    const/16 v23, 0x20

    ushr-long v24, v18, v23

    const-wide v26, -0x100000000L

    and-long v26, v26, v20

    or-long v4, v24, v26

    .line 153
    .local v4, "c1":J
    const/16 v23, 0x31

    ushr-long v8, v4, v23

    .line 154
    .local v8, "c3":J
    const/16 v23, 0x31

    ushr-long v24, v2, v23

    const/16 v23, 0xf

    shl-long v26, v4, v23

    or-long v6, v24, v26

    .line 155
    .local v6, "c2":J
    const/16 v23, 0xf

    shl-long v24, v2, v23

    xor-long v4, v4, v24

    .line 157
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v17

    .line 159
    .local v17, "tt":[J
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 160
    .local v16, "shifts":[I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v14, v0, :cond_0

    .line 162
    aget v23, v16, v14

    ushr-int/lit8 v22, v23, 0x6

    .local v22, "w":I
    aget v23, v16, v14

    and-int/lit8 v15, v23, 0x3f

    .line 164
    .local v15, "s":I
    aget-wide v24, v17, v22

    shl-long v26, v2, v15

    xor-long v24, v24, v26

    aput-wide v24, v17, v22

    .line 165
    add-int/lit8 v23, v22, 0x1

    aget-wide v24, v17, v23

    shl-long v26, v4, v15

    neg-int v0, v15

    move/from16 v28, v0

    ushr-long v28, v2, v28

    or-long v26, v26, v28

    xor-long v24, v24, v26

    aput-wide v24, v17, v23

    .line 166
    add-int/lit8 v23, v22, 0x2

    aget-wide v24, v17, v23

    shl-long v26, v6, v15

    neg-int v0, v15

    move/from16 v28, v0

    ushr-long v28, v4, v28

    or-long v26, v26, v28

    xor-long v24, v24, v26

    aput-wide v24, v17, v23

    .line 167
    add-int/lit8 v23, v22, 0x3

    aget-wide v24, v17, v23

    shl-long v26, v8, v15

    neg-int v0, v15

    move/from16 v28, v0

    ushr-long v28, v6, v28

    or-long v26, v26, v28

    xor-long v24, v24, v26

    aput-wide v24, v17, v23

    .line 168
    add-int/lit8 v23, v22, 0x4

    aget-wide v24, v17, v23

    neg-int v0, v15

    move/from16 v26, v0

    ushr-long v26, v8, v26

    xor-long v24, v24, v26

    aput-wide v24, v17, v23

    .line 160
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 171
    .end local v15    # "s":I
    .end local v22    # "w":I
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    .line 173
    const/16 v23, 0x0

    aget-wide v24, p1, v23

    xor-long v24, v24, v10

    aput-wide v24, p1, v23

    .line 174
    const/16 v23, 0x1

    aget-wide v24, p1, v23

    xor-long v24, v24, v12

    aput-wide v24, p1, v23

    .line 175
    return-void

    .line 159
    :array_0
    .array-data 4
        0x27
        0x78
    .end array-data
.end method

.method public static square([J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 179
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 180
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implSquare([J[J)V

    .line 181
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    .line 182
    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "zz"    # [J

    .prologue
    .line 186
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 187
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implSquare([J[J)V

    .line 188
    invoke-static {p1, v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->addExt([J[J[J)V

    .line 189
    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "n"    # I
    .param p2, "z"    # [J

    .prologue
    .line 195
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 196
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implSquare([J[J)V

    .line 197
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    .line 199
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 201
    invoke-static {p2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->implSquare([J[J)V

    .line 202
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method public static trace([J)I
    .locals 5
    .param p0, "x"    # [J

    .prologue
    .line 209
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    const/16 v4, 0x11

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    const/16 v4, 0x22

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method
