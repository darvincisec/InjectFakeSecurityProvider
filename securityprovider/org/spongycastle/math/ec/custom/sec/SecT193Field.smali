.class public Lorg/spongycastle/math/ec/custom/sec/SecT193Field;
.super Ljava/lang/Object;
.source "SecT193Field.java"


# static fields
.field private static final M01:J = 0x1L

.field private static final M49:J = 0x1ffffffffffffL


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

    .line 34
    aget-wide v0, p0, v4

    const-wide/16 v2, 0x1

    xor-long/2addr v0, v2

    aput-wide v0, p1, v4

    .line 35
    aget-wide v0, p0, v5

    aput-wide v0, p1, v5

    .line 36
    aget-wide v0, p0, v6

    aput-wide v0, p1, v6

    .line 37
    aget-wide v0, p0, v7

    aput-wide v0, p1, v7

    .line 38
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 2
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 42
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->fromBigInteger64(Ljava/math/BigInteger;)[J

    move-result-object v0

    .line 43
    .local v0, "z":[J
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->reduce63([JI)V

    .line 44
    return-object v0
.end method

.method protected static implCompactExt([J)V
    .locals 22
    .param p0, "zz"    # [J

    .prologue
    .line 191
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

    .line 192
    .local v14, "z7":J
    const/16 v16, 0x0

    const/16 v17, 0x31

    shl-long v18, v2, v17

    xor-long v18, v18, v0

    aput-wide v18, p0, v16

    .line 193
    const/16 v16, 0x1

    const/16 v17, 0xf

    ushr-long v18, v2, v17

    const/16 v17, 0x22

    shl-long v20, v4, v17

    xor-long v18, v18, v20

    aput-wide v18, p0, v16

    .line 194
    const/16 v16, 0x2

    const/16 v17, 0x1e

    ushr-long v18, v4, v17

    const/16 v17, 0x13

    shl-long v20, v6, v17

    xor-long v18, v18, v20

    aput-wide v18, p0, v16

    .line 195
    const/16 v16, 0x3

    const/16 v17, 0x2d

    ushr-long v18, v6, v17

    const/16 v17, 0x4

    shl-long v20, v8, v17

    xor-long v18, v18, v20

    const/16 v17, 0x35

    shl-long v20, v10, v17

    xor-long v18, v18, v20

    aput-wide v18, p0, v16

    .line 197
    const/16 v16, 0x4

    const/16 v17, 0x3c

    ushr-long v18, v8, v17

    const/16 v17, 0x26

    shl-long v20, v12, v17

    xor-long v18, v18, v20

    const/16 v17, 0xb

    ushr-long v20, v10, v17

    xor-long v18, v18, v20

    aput-wide v18, p0, v16

    .line 199
    const/16 v16, 0x5

    const/16 v17, 0x1a

    ushr-long v18, v12, v17

    const/16 v17, 0x17

    shl-long v20, v14, v17

    xor-long v18, v18, v20

    aput-wide v18, p0, v16

    .line 200
    const/16 v16, 0x6

    const/16 v17, 0x29

    ushr-long v18, v14, v17

    aput-wide v18, p0, v16

    .line 201
    const/16 v16, 0x7

    const-wide/16 v18, 0x0

    aput-wide v18, p0, v16

    .line 202
    return-void
.end method

.method protected static implExpand([J[J)V
    .locals 14
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 206
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

    .line 207
    .local v6, "x3":J
    const/4 v8, 0x0

    const-wide v10, 0x1ffffffffffffL

    and-long/2addr v10, v0

    aput-wide v10, p1, v8

    .line 208
    const/4 v8, 0x1

    const/16 v9, 0x31

    ushr-long v10, v0, v9

    const/16 v9, 0xf

    shl-long v12, v2, v9

    xor-long/2addr v10, v12

    const-wide v12, 0x1ffffffffffffL

    and-long/2addr v10, v12

    aput-wide v10, p1, v8

    .line 209
    const/4 v8, 0x2

    const/16 v9, 0x22

    ushr-long v10, v2, v9

    const/16 v9, 0x1e

    shl-long v12, v4, v9

    xor-long/2addr v10, v12

    const-wide v12, 0x1ffffffffffffL

    and-long/2addr v10, v12

    aput-wide v10, p1, v8

    .line 210
    const/4 v8, 0x3

    const/16 v9, 0x13

    ushr-long v10, v4, v9

    const/16 v9, 0x2d

    shl-long v12, v6, v9

    xor-long/2addr v10, v12

    aput-wide v10, p1, v8

    .line 211
    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 28
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "zz"    # [J

    .prologue
    .line 219
    const/4 v2, 0x4

    new-array v0, v2, [J

    move-object/from16 v16, v0

    .local v16, "f":[J
    const/4 v2, 0x4

    new-array v0, v2, [J

    move-object/from16 v17, v0

    .line 220
    .local v17, "g":[J
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implExpand([J[J)V

    .line 221
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implExpand([J[J)V

    .line 223
    const/4 v2, 0x0

    aget-wide v2, v16, v2

    const/4 v4, 0x0

    aget-wide v4, v17, v4

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    .line 224
    const/4 v2, 0x1

    aget-wide v2, v16, v2

    const/4 v4, 0x1

    aget-wide v4, v17, v4

    const/4 v7, 0x1

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    .line 225
    const/4 v2, 0x2

    aget-wide v2, v16, v2

    const/4 v4, 0x2

    aget-wide v4, v17, v4

    const/4 v7, 0x2

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    .line 226
    const/4 v2, 0x3

    aget-wide v2, v16, v2

    const/4 v4, 0x3

    aget-wide v4, v17, v4

    const/4 v7, 0x3

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    .line 229
    const/16 v18, 0x5

    .local v18, "i":I
    :goto_0
    if-lez v18, :cond_0

    .line 231
    aget-wide v2, p2, v18

    add-int/lit8 v4, v18, -0x1

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p2, v18

    .line 229
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 234
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

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    .line 235
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

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    .line 238
    const/16 v18, 0x7

    :goto_1
    const/4 v2, 0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_1

    .line 240
    aget-wide v2, p2, v18

    add-int/lit8 v4, v18, -0x2

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p2, v18

    .line 238
    add-int/lit8 v18, v18, -0x1

    goto :goto_1

    .line 245
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

    .line 246
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

    .line 247
    .local v14, "d1":J
    xor-long v2, v8, v10

    xor-long v4, v12, v14

    const/4 v7, 0x3

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    .line 248
    const/4 v2, 0x3

    new-array v6, v2, [J

    .line 249
    .local v6, "t":[J
    const/4 v7, 0x0

    move-wide v2, v8

    move-wide v4, v12

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    .line 250
    const/4 v7, 0x1

    move-wide v2, v10

    move-wide v4, v14

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc(JJ[JI)V

    .line 251
    const/4 v2, 0x0

    aget-wide v20, v6, v2

    .local v20, "t0":J
    const/4 v2, 0x1

    aget-wide v22, v6, v2

    .local v22, "t1":J
    const/4 v2, 0x2

    aget-wide v24, v6, v2

    .line 252
    .local v24, "t2":J
    const/4 v2, 0x2

    aget-wide v4, p2, v2

    xor-long v4, v4, v20

    aput-wide v4, p2, v2

    .line 253
    const/4 v2, 0x3

    aget-wide v4, p2, v2

    xor-long v26, v20, v22

    xor-long v4, v4, v26

    aput-wide v4, p2, v2

    .line 254
    const/4 v2, 0x4

    aget-wide v4, p2, v2

    xor-long v26, v24, v22

    xor-long v4, v4, v26

    aput-wide v4, p2, v2

    .line 255
    const/4 v2, 0x5

    aget-wide v4, p2, v2

    xor-long v4, v4, v24

    aput-wide v4, p2, v2

    .line 258
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implCompactExt([J)V

    .line 259
    return-void
.end method

.method protected static implMulwAcc(JJ[JI)V
    .locals 18
    .param p0, "x"    # J
    .param p2, "y"    # J
    .param p4, "z"    # [J
    .param p5, "zOff"    # I

    .prologue
    .line 266
    const/16 v11, 0x8

    new-array v10, v11, [J

    .line 268
    .local v10, "u":[J
    const/4 v11, 0x1

    aput-wide p2, v10, v11

    .line 269
    const/4 v11, 0x2

    const/4 v12, 0x1

    aget-wide v12, v10, v12

    const/4 v14, 0x1

    shl-long/2addr v12, v14

    aput-wide v12, v10, v11

    .line 270
    const/4 v11, 0x3

    const/4 v12, 0x2

    aget-wide v12, v10, v12

    xor-long v12, v12, p2

    aput-wide v12, v10, v11

    .line 271
    const/4 v11, 0x4

    const/4 v12, 0x2

    aget-wide v12, v10, v12

    const/4 v14, 0x1

    shl-long/2addr v12, v14

    aput-wide v12, v10, v11

    .line 272
    const/4 v11, 0x5

    const/4 v12, 0x4

    aget-wide v12, v10, v12

    xor-long v12, v12, p2

    aput-wide v12, v10, v11

    .line 273
    const/4 v11, 0x6

    const/4 v12, 0x3

    aget-wide v12, v10, v12

    const/4 v14, 0x1

    shl-long/2addr v12, v14

    aput-wide v12, v10, v11

    .line 274
    const/4 v11, 0x7

    const/4 v12, 0x6

    aget-wide v12, v10, v12

    xor-long v12, v12, p2

    aput-wide v12, v10, v11

    .line 276
    move-wide/from16 v0, p0

    long-to-int v6, v0

    .line 277
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

    .line 279
    .local v8, "l":J
    const/16 v7, 0x24

    .line 282
    .local v7, "k":I
    :cond_0
    ushr-long v12, p0, v7

    long-to-int v6, v12

    .line 283
    and-int/lit8 v11, v6, 0x7

    aget-wide v12, v10, v11

    ushr-int/lit8 v11, v6, 0x3

    and-int/lit8 v11, v11, 0x7

    aget-wide v14, v10, v11

    const/4 v11, 0x3

    shl-long/2addr v14, v11

    xor-long/2addr v12, v14

    ushr-int/lit8 v11, v6, 0x6

    and-int/lit8 v11, v11, 0x7

    aget-wide v14, v10, v11

    const/4 v11, 0x6

    shl-long/2addr v14, v11

    xor-long/2addr v12, v14

    ushr-int/lit8 v11, v6, 0x9

    and-int/lit8 v11, v11, 0x7

    aget-wide v14, v10, v11

    const/16 v11, 0x9

    shl-long/2addr v14, v11

    xor-long/2addr v12, v14

    ushr-int/lit8 v11, v6, 0xc

    and-int/lit8 v11, v11, 0x7

    aget-wide v14, v10, v11

    const/16 v11, 0xc

    shl-long/2addr v14, v11

    xor-long v2, v12, v14

    .line 288
    .local v2, "g":J
    shl-long v12, v2, v7

    xor-long/2addr v8, v12

    .line 289
    neg-int v11, v7

    ushr-long v12, v2, v11

    xor-long/2addr v4, v12

    .line 291
    add-int/lit8 v7, v7, -0xf

    if-gtz v7, :cond_0

    .line 295
    aget-wide v12, p4, p5

    const-wide v14, 0x1ffffffffffffL

    and-long/2addr v14, v8

    xor-long/2addr v12, v14

    aput-wide v12, p4, p5

    .line 296
    add-int/lit8 v11, p5, 0x1

    aget-wide v12, p4, v11

    const/16 v14, 0x31

    ushr-long v14, v8, v14

    const/16 v16, 0xf

    shl-long v16, v4, v16

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p4, v11

    .line 297
    return-void
.end method

.method protected static implSquare([J[J)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "zz"    # [J

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 301
    aget-wide v0, p0, v2

    invoke-static {v0, v1, p1, v2}, Lorg/spongycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 302
    const/4 v0, 0x1

    aget-wide v0, p0, v0

    invoke-static {v0, v1, p1, v3}, Lorg/spongycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 303
    aget-wide v0, p0, v3

    const/4 v2, 0x4

    invoke-static {v0, v1, p1, v2}, Lorg/spongycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 304
    const/4 v0, 0x6

    const/4 v1, 0x3

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    aput-wide v2, p1, v0

    .line 305
    return-void
.end method

.method public static invert([J[J)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    const/4 v3, 0x1

    .line 49
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->isZero64([J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 56
    :cond_0
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    .line 57
    .local v0, "t0":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create64()[J

    move-result-object v1

    .line 59
    .local v1, "t1":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->square([J[J)V

    .line 62
    invoke-static {v0, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 63
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 64
    invoke-static {v1, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 65
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 68
    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 69
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 72
    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 73
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 76
    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 77
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 80
    const/16 v2, 0x18

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 81
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 84
    const/16 v2, 0x30

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 85
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 88
    const/16 v2, 0x60

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 89
    invoke-static {v0, v1, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 90
    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J

    .prologue
    .line 94
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 95
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implMultiply([J[J[J)V

    .line 96
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->reduce([J[J)V

    .line 97
    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "zz"    # [J

    .prologue
    .line 101
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 102
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implMultiply([J[J[J)V

    .line 103
    invoke-static {p2, v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->addExt([J[J[J)V

    .line 104
    return-void
.end method

.method public static reduce([J[J)V
    .locals 22
    .param p0, "xx"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 108
    const/16 v16, 0x0

    aget-wide v2, p0, v16

    .local v2, "x0":J
    const/16 v16, 0x1

    aget-wide v4, p0, v16

    .local v4, "x1":J
    const/16 v16, 0x2

    aget-wide v6, p0, v16

    .local v6, "x2":J
    const/16 v16, 0x3

    aget-wide v8, p0, v16

    .local v8, "x3":J
    const/16 v16, 0x4

    aget-wide v10, p0, v16

    .local v10, "x4":J
    const/16 v16, 0x5

    aget-wide v12, p0, v16

    .local v12, "x5":J
    const/16 v16, 0x6

    aget-wide v14, p0, v16

    .line 110
    .local v14, "x6":J
    const/16 v16, 0x3f

    shl-long v16, v14, v16

    xor-long v6, v6, v16

    .line 111
    const/16 v16, 0x1

    ushr-long v16, v14, v16

    const/16 v18, 0xe

    shl-long v18, v14, v18

    xor-long v16, v16, v18

    xor-long v8, v8, v16

    .line 112
    const/16 v16, 0x32

    ushr-long v16, v14, v16

    xor-long v10, v10, v16

    .line 114
    const/16 v16, 0x3f

    shl-long v16, v12, v16

    xor-long v4, v4, v16

    .line 115
    const/16 v16, 0x1

    ushr-long v16, v12, v16

    const/16 v18, 0xe

    shl-long v18, v12, v18

    xor-long v16, v16, v18

    xor-long v6, v6, v16

    .line 116
    const/16 v16, 0x32

    ushr-long v16, v12, v16

    xor-long v8, v8, v16

    .line 118
    const/16 v16, 0x3f

    shl-long v16, v10, v16

    xor-long v2, v2, v16

    .line 119
    const/16 v16, 0x1

    ushr-long v16, v10, v16

    const/16 v18, 0xe

    shl-long v18, v10, v18

    xor-long v16, v16, v18

    xor-long v4, v4, v16

    .line 120
    const/16 v16, 0x32

    ushr-long v16, v10, v16

    xor-long v6, v6, v16

    .line 122
    const/16 v16, 0x1

    ushr-long v0, v8, v16

    .line 123
    .local v0, "t":J
    const/16 v16, 0x0

    xor-long v18, v2, v0

    const/16 v17, 0xf

    shl-long v20, v0, v17

    xor-long v18, v18, v20

    aput-wide v18, p1, v16

    .line 124
    const/16 v16, 0x1

    const/16 v17, 0x31

    ushr-long v18, v0, v17

    xor-long v18, v18, v4

    aput-wide v18, p1, v16

    .line 125
    const/16 v16, 0x2

    aput-wide v6, p1, v16

    .line 126
    const/16 v16, 0x3

    const-wide/16 v18, 0x1

    and-long v18, v18, v8

    aput-wide v18, p1, v16

    .line 127
    return-void
.end method

.method public static reduce63([JI)V
    .locals 10
    .param p0, "z"    # [J
    .param p1, "zOff"    # I

    .prologue
    .line 131
    add-int/lit8 v4, p1, 0x3

    aget-wide v2, p0, v4

    .local v2, "z3":J
    const/4 v4, 0x1

    ushr-long v0, v2, v4

    .line 132
    .local v0, "t":J
    aget-wide v4, p0, p1

    const/16 v6, 0xf

    shl-long v6, v0, v6

    xor-long/2addr v6, v0

    xor-long/2addr v4, v6

    aput-wide v4, p0, p1

    .line 133
    add-int/lit8 v4, p1, 0x1

    aget-wide v6, p0, v4

    const/16 v5, 0x31

    ushr-long v8, v0, v5

    xor-long/2addr v6, v8

    aput-wide v6, p0, v4

    .line 134
    add-int/lit8 v4, p1, 0x3

    const-wide/16 v6, 0x1

    and-long/2addr v6, v2

    aput-wide v6, p0, v4

    .line 135
    return-void
.end method

.method public static sqrt([J[J)V
    .locals 18
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 140
    const/4 v12, 0x0

    aget-wide v12, p0, v12

    invoke-static {v12, v13}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v8

    .local v8, "u0":J
    const/4 v12, 0x1

    aget-wide v12, p0, v12

    invoke-static {v12, v13}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v10

    .line 141
    .local v10, "u1":J
    const-wide v12, 0xffffffffL

    and-long/2addr v12, v8

    const/16 v14, 0x20

    shl-long v14, v10, v14

    or-long v4, v12, v14

    .line 142
    .local v4, "e0":J
    const/16 v12, 0x20

    ushr-long v12, v8, v12

    const-wide v14, -0x100000000L

    and-long/2addr v14, v10

    or-long v0, v12, v14

    .line 144
    .local v0, "c0":J
    const/4 v12, 0x2

    aget-wide v12, p0, v12

    invoke-static {v12, v13}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v8

    .line 145
    const-wide v12, 0xffffffffL

    and-long/2addr v12, v8

    const/4 v14, 0x3

    aget-wide v14, p0, v14

    const/16 v16, 0x20

    shl-long v14, v14, v16

    xor-long v6, v12, v14

    .line 146
    .local v6, "e1":J
    const/16 v12, 0x20

    ushr-long v2, v8, v12

    .line 148
    .local v2, "c1":J
    const/4 v12, 0x0

    const/16 v13, 0x8

    shl-long v14, v0, v13

    xor-long/2addr v14, v4

    aput-wide v14, p1, v12

    .line 149
    const/4 v12, 0x1

    const/16 v13, 0x8

    shl-long v14, v2, v13

    xor-long/2addr v14, v6

    const/16 v13, 0x38

    ushr-long v16, v0, v13

    xor-long v14, v14, v16

    const/16 v13, 0x21

    shl-long v16, v0, v13

    xor-long v14, v14, v16

    aput-wide v14, p1, v12

    .line 150
    const/4 v12, 0x2

    const/16 v13, 0x38

    ushr-long v14, v2, v13

    const/16 v13, 0x21

    shl-long v16, v2, v13

    xor-long v14, v14, v16

    const/16 v13, 0x1f

    ushr-long v16, v0, v13

    xor-long v14, v14, v16

    aput-wide v14, p1, v12

    .line 151
    const/4 v12, 0x3

    const/16 v13, 0x1f

    ushr-long v14, v2, v13

    aput-wide v14, p1, v12

    .line 152
    return-void
.end method

.method public static square([J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 156
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 157
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implSquare([J[J)V

    .line 158
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->reduce([J[J)V

    .line 159
    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "zz"    # [J

    .prologue
    .line 163
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 164
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implSquare([J[J)V

    .line 165
    invoke-static {p1, v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->addExt([J[J[J)V

    .line 166
    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "n"    # I
    .param p2, "z"    # [J

    .prologue
    .line 172
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 173
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implSquare([J[J)V

    .line 174
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->reduce([J[J)V

    .line 176
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 178
    invoke-static {p2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->implSquare([J[J)V

    .line 179
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT193Field;->reduce([J[J)V

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public static trace([J)I
    .locals 2
    .param p0, "x"    # [J

    .prologue
    .line 186
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method
