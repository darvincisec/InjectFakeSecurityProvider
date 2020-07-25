.class public Lorg/spongycastle/math/ec/custom/sec/SecT283Field;
.super Ljava/lang/Object;
.source "SecT283Field.java"


# static fields
.field private static final M27:J = 0x7ffffffL

.field private static final M57:J = 0x1ffffffffffffffL

.field private static final ROOT_Z:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->ROOT_Z:[J

    return-void

    nop

    :array_0
    .array-data 8
        0xc30c30c30c30808L    # 5.85284437198306E-250
        0x30c30c30c30c30c3L    # 8.42232057182544E-74
        -0x7df7df7df7df7cf4L    # -7.205387683174334E-299
        0x820820820820820L
        0x2082082
    .end array-data
.end method

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

    .line 18
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    xor-long/2addr v0, v2

    aput-wide v0, p2, v4

    .line 19
    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    xor-long/2addr v0, v2

    aput-wide v0, p2, v5

    .line 20
    aget-wide v0, p0, v6

    aget-wide v2, p1, v6

    xor-long/2addr v0, v2

    aput-wide v0, p2, v6

    .line 21
    aget-wide v0, p0, v7

    aget-wide v2, p1, v7

    xor-long/2addr v0, v2

    aput-wide v0, p2, v7

    .line 22
    aget-wide v0, p0, v8

    aget-wide v2, p1, v8

    xor-long/2addr v0, v2

    aput-wide v0, p2, v8

    .line 23
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

    .line 27
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    xor-long/2addr v0, v2

    aput-wide v0, p2, v4

    .line 28
    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    xor-long/2addr v0, v2

    aput-wide v0, p2, v5

    .line 29
    aget-wide v0, p0, v6

    aget-wide v2, p1, v6

    xor-long/2addr v0, v2

    aput-wide v0, p2, v6

    .line 30
    aget-wide v0, p0, v7

    aget-wide v2, p1, v7

    xor-long/2addr v0, v2

    aput-wide v0, p2, v7

    .line 31
    aget-wide v0, p0, v8

    aget-wide v2, p1, v8

    xor-long/2addr v0, v2

    aput-wide v0, p2, v8

    .line 32
    const/4 v0, 0x5

    const/4 v1, 0x5

    aget-wide v2, p0, v1

    const/4 v1, 0x5

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    .line 33
    const/4 v0, 0x6

    const/4 v1, 0x6

    aget-wide v2, p0, v1

    const/4 v1, 0x6

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    .line 34
    const/4 v0, 0x7

    const/4 v1, 0x7

    aget-wide v2, p0, v1

    const/4 v1, 0x7

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    .line 35
    const/16 v0, 0x8

    const/16 v1, 0x8

    aget-wide v2, p0, v1

    const/16 v1, 0x8

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    .line 36
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

    .line 40
    aget-wide v0, p0, v4

    const-wide/16 v2, 0x1

    xor-long/2addr v0, v2

    aput-wide v0, p1, v4

    .line 41
    aget-wide v0, p0, v5

    aput-wide v0, p1, v5

    .line 42
    aget-wide v0, p0, v6

    aput-wide v0, p1, v6

    .line 43
    aget-wide v0, p0, v7

    aput-wide v0, p1, v7

    .line 44
    aget-wide v0, p0, v8

    aput-wide v0, p1, v8

    .line 45
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 2
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 49
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat320;->fromBigInteger64(Ljava/math/BigInteger;)[J

    move-result-object v0

    .line 50
    .local v0, "z":[J
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->reduce37([JI)V

    .line 51
    return-object v0
.end method

.method protected static implCompactExt([J)V
    .locals 26
    .param p0, "zz"    # [J

    .prologue
    .line 198
    const/16 v20, 0x0

    aget-wide v0, p0, v20

    .local v0, "z0":J
    const/16 v20, 0x1

    aget-wide v2, p0, v20

    .local v2, "z1":J
    const/16 v20, 0x2

    aget-wide v4, p0, v20

    .local v4, "z2":J
    const/16 v20, 0x3

    aget-wide v6, p0, v20

    .local v6, "z3":J
    const/16 v20, 0x4

    aget-wide v8, p0, v20

    .line 199
    .local v8, "z4":J
    const/16 v20, 0x5

    aget-wide v10, p0, v20

    .local v10, "z5":J
    const/16 v20, 0x6

    aget-wide v12, p0, v20

    .local v12, "z6":J
    const/16 v20, 0x7

    aget-wide v14, p0, v20

    .local v14, "z7":J
    const/16 v20, 0x8

    aget-wide v16, p0, v20

    .local v16, "z8":J
    const/16 v20, 0x9

    aget-wide v18, p0, v20

    .line 200
    .local v18, "z9":J
    const/16 v20, 0x0

    const/16 v21, 0x39

    shl-long v22, v2, v21

    xor-long v22, v22, v0

    aput-wide v22, p0, v20

    .line 201
    const/16 v20, 0x1

    const/16 v21, 0x7

    ushr-long v22, v2, v21

    const/16 v21, 0x32

    shl-long v24, v4, v21

    xor-long v22, v22, v24

    aput-wide v22, p0, v20

    .line 202
    const/16 v20, 0x2

    const/16 v21, 0xe

    ushr-long v22, v4, v21

    const/16 v21, 0x2b

    shl-long v24, v6, v21

    xor-long v22, v22, v24

    aput-wide v22, p0, v20

    .line 203
    const/16 v20, 0x3

    const/16 v21, 0x15

    ushr-long v22, v6, v21

    const/16 v21, 0x24

    shl-long v24, v8, v21

    xor-long v22, v22, v24

    aput-wide v22, p0, v20

    .line 204
    const/16 v20, 0x4

    const/16 v21, 0x1c

    ushr-long v22, v8, v21

    const/16 v21, 0x1d

    shl-long v24, v10, v21

    xor-long v22, v22, v24

    aput-wide v22, p0, v20

    .line 205
    const/16 v20, 0x5

    const/16 v21, 0x23

    ushr-long v22, v10, v21

    const/16 v21, 0x16

    shl-long v24, v12, v21

    xor-long v22, v22, v24

    aput-wide v22, p0, v20

    .line 206
    const/16 v20, 0x6

    const/16 v21, 0x2a

    ushr-long v22, v12, v21

    const/16 v21, 0xf

    shl-long v24, v14, v21

    xor-long v22, v22, v24

    aput-wide v22, p0, v20

    .line 207
    const/16 v20, 0x7

    const/16 v21, 0x31

    ushr-long v22, v14, v21

    const/16 v21, 0x8

    shl-long v24, v16, v21

    xor-long v22, v22, v24

    aput-wide v22, p0, v20

    .line 208
    const/16 v20, 0x8

    const/16 v21, 0x38

    ushr-long v22, v16, v21

    const/16 v21, 0x1

    shl-long v24, v18, v21

    xor-long v22, v22, v24

    aput-wide v22, p0, v20

    .line 209
    const/16 v20, 0x9

    const/16 v21, 0x3f

    ushr-long v22, v18, v21

    aput-wide v22, p0, v20

    .line 210
    return-void
.end method

.method protected static implExpand([J[J)V
    .locals 16
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 214
    const/4 v10, 0x0

    aget-wide v0, p0, v10

    .local v0, "x0":J
    const/4 v10, 0x1

    aget-wide v2, p0, v10

    .local v2, "x1":J
    const/4 v10, 0x2

    aget-wide v4, p0, v10

    .local v4, "x2":J
    const/4 v10, 0x3

    aget-wide v6, p0, v10

    .local v6, "x3":J
    const/4 v10, 0x4

    aget-wide v8, p0, v10

    .line 215
    .local v8, "x4":J
    const/4 v10, 0x0

    const-wide v12, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v12, v0

    aput-wide v12, p1, v10

    .line 216
    const/4 v10, 0x1

    const/16 v11, 0x39

    ushr-long v12, v0, v11

    const/4 v11, 0x7

    shl-long v14, v2, v11

    xor-long/2addr v12, v14

    const-wide v14, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v12, v14

    aput-wide v12, p1, v10

    .line 217
    const/4 v10, 0x2

    const/16 v11, 0x32

    ushr-long v12, v2, v11

    const/16 v11, 0xe

    shl-long v14, v4, v11

    xor-long/2addr v12, v14

    const-wide v14, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v12, v14

    aput-wide v12, p1, v10

    .line 218
    const/4 v10, 0x3

    const/16 v11, 0x2b

    ushr-long v12, v4, v11

    const/16 v11, 0x15

    shl-long v14, v6, v11

    xor-long/2addr v12, v14

    const-wide v14, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v12, v14

    aput-wide v12, p1, v10

    .line 219
    const/4 v10, 0x4

    const/16 v11, 0x24

    ushr-long v12, v6, v11

    const/16 v11, 0x1c

    shl-long v14, v8, v11

    xor-long/2addr v12, v14

    aput-wide v12, p1, v10

    .line 220
    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 118
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "zz"    # [J

    .prologue
    .line 243
    const/4 v7, 0x5

    new-array v0, v7, [J

    move-object/from16 v30, v0

    .local v30, "a":[J
    const/4 v7, 0x5

    new-array v0, v7, [J

    move-object/from16 v31, v0

    .line 244
    .local v31, "b":[J
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implExpand([J[J)V

    .line 245
    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implExpand([J[J)V

    .line 247
    const/16 v7, 0x1a

    new-array v6, v7, [J

    .line 249
    .local v6, "p":[J
    const/4 v7, 0x0

    aget-wide v2, v30, v7

    const/4 v7, 0x0

    aget-wide v4, v31, v7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    .line 250
    const/4 v7, 0x1

    aget-wide v2, v30, v7

    const/4 v7, 0x1

    aget-wide v4, v31, v7

    const/4 v7, 0x2

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    .line 251
    const/4 v7, 0x2

    aget-wide v2, v30, v7

    const/4 v7, 0x2

    aget-wide v4, v31, v7

    const/4 v7, 0x4

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    .line 252
    const/4 v7, 0x3

    aget-wide v2, v30, v7

    const/4 v7, 0x3

    aget-wide v4, v31, v7

    const/4 v7, 0x6

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    .line 253
    const/4 v7, 0x4

    aget-wide v2, v30, v7

    const/4 v7, 0x4

    aget-wide v4, v31, v7

    const/16 v7, 0x8

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    .line 255
    const/4 v7, 0x0

    aget-wide v12, v30, v7

    const/4 v7, 0x1

    aget-wide v16, v30, v7

    xor-long v110, v12, v16

    .local v110, "u0":J
    const/4 v7, 0x0

    aget-wide v12, v31, v7

    const/4 v7, 0x1

    aget-wide v16, v31, v7

    xor-long v14, v12, v16

    .line 256
    .local v14, "v0":J
    const/4 v7, 0x0

    aget-wide v12, v30, v7

    const/4 v7, 0x2

    aget-wide v16, v30, v7

    xor-long v112, v12, v16

    .local v112, "u1":J
    const/4 v7, 0x0

    aget-wide v12, v31, v7

    const/4 v7, 0x2

    aget-wide v16, v31, v7

    xor-long v18, v12, v16

    .line 257
    .local v18, "v1":J
    const/4 v7, 0x2

    aget-wide v12, v30, v7

    const/4 v7, 0x4

    aget-wide v16, v30, v7

    xor-long v114, v12, v16

    .local v114, "u2":J
    const/4 v7, 0x2

    aget-wide v12, v31, v7

    const/4 v7, 0x4

    aget-wide v16, v31, v7

    xor-long v22, v12, v16

    .line 258
    .local v22, "v2":J
    const/4 v7, 0x3

    aget-wide v12, v30, v7

    const/4 v7, 0x4

    aget-wide v16, v30, v7

    xor-long v116, v12, v16

    .local v116, "u3":J
    const/4 v7, 0x3

    aget-wide v12, v31, v7

    const/4 v7, 0x4

    aget-wide v16, v31, v7

    xor-long v26, v12, v16

    .line 260
    .local v26, "v3":J
    const/4 v7, 0x3

    aget-wide v12, v30, v7

    xor-long v2, v112, v12

    const/4 v7, 0x3

    aget-wide v12, v31, v7

    xor-long v4, v18, v12

    const/16 v7, 0x12

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    .line 261
    const/4 v7, 0x1

    aget-wide v12, v30, v7

    xor-long v2, v114, v12

    const/4 v7, 0x1

    aget-wide v12, v31, v7

    xor-long v4, v22, v12

    const/16 v7, 0x14

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    .line 263
    xor-long v2, v110, v116

    .local v2, "A4":J
    xor-long v4, v14, v26

    .line 264
    .local v4, "B4":J
    const/4 v7, 0x2

    aget-wide v12, v30, v7

    xor-long v8, v2, v12

    .local v8, "A5":J
    const/4 v7, 0x2

    aget-wide v12, v31, v7

    xor-long v10, v4, v12

    .line 266
    .local v10, "B5":J
    const/16 v7, 0x16

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    .line 267
    const/16 v13, 0x18

    move-object v12, v6

    invoke-static/range {v8 .. v13}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    .line 269
    const/16 v17, 0xa

    move-wide/from16 v12, v110

    move-object/from16 v16, v6

    invoke-static/range {v12 .. v17}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    .line 270
    const/16 v21, 0xc

    move-wide/from16 v16, v112

    move-object/from16 v20, v6

    invoke-static/range {v16 .. v21}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    .line 271
    const/16 v25, 0xe

    move-wide/from16 v20, v114

    move-object/from16 v24, v6

    invoke-static/range {v20 .. v25}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    .line 272
    const/16 v29, 0x10

    move-wide/from16 v24, v116

    move-object/from16 v28, v6

    invoke-static/range {v24 .. v29}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMulw(JJ[JI)V

    .line 289
    const/4 v7, 0x0

    const/4 v12, 0x0

    aget-wide v12, v6, v12

    aput-wide v12, p2, v7

    .line 290
    const/16 v7, 0x9

    const/16 v12, 0x9

    aget-wide v12, v6, v12

    aput-wide v12, p2, v7

    .line 292
    const/4 v7, 0x0

    aget-wide v12, v6, v7

    const/4 v7, 0x1

    aget-wide v16, v6, v7

    xor-long v32, v12, v16

    .line 293
    .local v32, "t1":J
    const/4 v7, 0x2

    aget-wide v12, v6, v7

    xor-long v54, v32, v12

    .line 294
    .local v54, "t2":J
    const/16 v7, 0xa

    aget-wide v12, v6, v7

    xor-long v76, v54, v12

    .line 296
    .local v76, "t3":J
    const/4 v7, 0x1

    aput-wide v76, p2, v7

    .line 298
    const/4 v7, 0x3

    aget-wide v12, v6, v7

    const/4 v7, 0x4

    aget-wide v16, v6, v7

    xor-long v98, v12, v16

    .line 299
    .local v98, "t4":J
    const/16 v7, 0xb

    aget-wide v12, v6, v7

    const/16 v7, 0xc

    aget-wide v16, v6, v7

    xor-long v100, v12, v16

    .line 300
    .local v100, "t5":J
    xor-long v102, v98, v100

    .line 301
    .local v102, "t6":J
    xor-long v104, v54, v102

    .line 303
    .local v104, "t7":J
    const/4 v7, 0x2

    aput-wide v104, p2, v7

    .line 305
    xor-long v106, v32, v98

    .line 306
    .local v106, "t8":J
    const/4 v7, 0x5

    aget-wide v12, v6, v7

    const/4 v7, 0x6

    aget-wide v16, v6, v7

    xor-long v108, v12, v16

    .line 307
    .local v108, "t9":J
    xor-long v34, v106, v108

    .line 308
    .local v34, "t10":J
    const/16 v7, 0x8

    aget-wide v12, v6, v7

    xor-long v36, v34, v12

    .line 309
    .local v36, "t11":J
    const/16 v7, 0xd

    aget-wide v12, v6, v7

    const/16 v7, 0xe

    aget-wide v16, v6, v7

    xor-long v38, v12, v16

    .line 310
    .local v38, "t12":J
    xor-long v40, v36, v38

    .line 311
    .local v40, "t13":J
    const/16 v7, 0x12

    aget-wide v12, v6, v7

    const/16 v7, 0x16

    aget-wide v16, v6, v7

    xor-long v42, v12, v16

    .line 312
    .local v42, "t14":J
    const/16 v7, 0x18

    aget-wide v12, v6, v7

    xor-long v44, v42, v12

    .line 313
    .local v44, "t15":J
    xor-long v46, v40, v44

    .line 315
    .local v46, "t16":J
    const/4 v7, 0x3

    aput-wide v46, p2, v7

    .line 317
    const/4 v7, 0x7

    aget-wide v12, v6, v7

    const/16 v7, 0x8

    aget-wide v16, v6, v7

    xor-long v48, v12, v16

    .line 318
    .local v48, "t17":J
    const/16 v7, 0x9

    aget-wide v12, v6, v7

    xor-long v50, v48, v12

    .line 319
    .local v50, "t18":J
    const/16 v7, 0x11

    aget-wide v12, v6, v7

    xor-long v52, v50, v12

    .line 321
    .local v52, "t19":J
    const/16 v7, 0x8

    aput-wide v52, p2, v7

    .line 323
    xor-long v56, v50, v108

    .line 324
    .local v56, "t20":J
    const/16 v7, 0xf

    aget-wide v12, v6, v7

    const/16 v7, 0x10

    aget-wide v16, v6, v7

    xor-long v58, v12, v16

    .line 325
    .local v58, "t21":J
    xor-long v60, v56, v58

    .line 327
    .local v60, "t22":J
    const/4 v7, 0x7

    aput-wide v60, p2, v7

    .line 329
    xor-long v62, v60, v76

    .line 330
    .local v62, "t23":J
    const/16 v7, 0x13

    aget-wide v12, v6, v7

    const/16 v7, 0x14

    aget-wide v16, v6, v7

    xor-long v64, v12, v16

    .line 332
    .local v64, "t24":J
    const/16 v7, 0x19

    aget-wide v12, v6, v7

    const/16 v7, 0x18

    aget-wide v16, v6, v7

    xor-long v66, v12, v16

    .line 333
    .local v66, "t25":J
    const/16 v7, 0x12

    aget-wide v12, v6, v7

    const/16 v7, 0x17

    aget-wide v16, v6, v7

    xor-long v68, v12, v16

    .line 334
    .local v68, "t26":J
    xor-long v70, v64, v66

    .line 335
    .local v70, "t27":J
    xor-long v72, v70, v68

    .line 336
    .local v72, "t28":J
    xor-long v74, v72, v62

    .line 338
    .local v74, "t29":J
    const/4 v7, 0x4

    aput-wide v74, p2, v7

    .line 340
    xor-long v78, v104, v52

    .line 341
    .local v78, "t30":J
    xor-long v80, v70, v78

    .line 342
    .local v80, "t31":J
    const/16 v7, 0x15

    aget-wide v12, v6, v7

    const/16 v7, 0x16

    aget-wide v16, v6, v7

    xor-long v82, v12, v16

    .line 343
    .local v82, "t32":J
    xor-long v84, v80, v82

    .line 345
    .local v84, "t33":J
    const/4 v7, 0x5

    aput-wide v84, p2, v7

    .line 347
    const/4 v7, 0x0

    aget-wide v12, v6, v7

    xor-long v86, v36, v12

    .line 348
    .local v86, "t34":J
    const/16 v7, 0x9

    aget-wide v12, v6, v7

    xor-long v88, v86, v12

    .line 349
    .local v88, "t35":J
    xor-long v90, v88, v38

    .line 350
    .local v90, "t36":J
    const/16 v7, 0x15

    aget-wide v12, v6, v7

    xor-long v92, v90, v12

    .line 351
    .local v92, "t37":J
    const/16 v7, 0x17

    aget-wide v12, v6, v7

    xor-long v94, v92, v12

    .line 352
    .local v94, "t38":J
    const/16 v7, 0x19

    aget-wide v12, v6, v7

    xor-long v96, v94, v12

    .line 354
    .local v96, "t39":J
    const/4 v7, 0x6

    aput-wide v96, p2, v7

    .line 356
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implCompactExt([J)V

    .line 357
    return-void
.end method

.method protected static implMulw(JJ[JI)V
    .locals 14
    .param p0, "x"    # J
    .param p2, "y"    # J
    .param p4, "z"    # [J
    .param p5, "zOff"    # I

    .prologue
    .line 364
    const/16 v9, 0x8

    new-array v8, v9, [J

    .line 366
    .local v8, "u":[J
    const/4 v9, 0x1

    aput-wide p2, v8, v9

    .line 367
    const/4 v9, 0x2

    const/4 v10, 0x1

    aget-wide v10, v8, v10

    const/4 v12, 0x1

    shl-long/2addr v10, v12

    aput-wide v10, v8, v9

    .line 368
    const/4 v9, 0x3

    const/4 v10, 0x2

    aget-wide v10, v8, v10

    xor-long v10, v10, p2

    aput-wide v10, v8, v9

    .line 369
    const/4 v9, 0x4

    const/4 v10, 0x2

    aget-wide v10, v8, v10

    const/4 v12, 0x1

    shl-long/2addr v10, v12

    aput-wide v10, v8, v9

    .line 370
    const/4 v9, 0x5

    const/4 v10, 0x4

    aget-wide v10, v8, v10

    xor-long v10, v10, p2

    aput-wide v10, v8, v9

    .line 371
    const/4 v9, 0x6

    const/4 v10, 0x3

    aget-wide v10, v8, v10

    const/4 v12, 0x1

    shl-long/2addr v10, v12

    aput-wide v10, v8, v9

    .line 372
    const/4 v9, 0x7

    const/4 v10, 0x6

    aget-wide v10, v8, v10

    xor-long v10, v10, p2

    aput-wide v10, v8, v9

    .line 374
    long-to-int v4, p0

    .line 375
    .local v4, "j":I
    const-wide/16 v2, 0x0

    .local v2, "h":J
    and-int/lit8 v9, v4, 0x7

    aget-wide v6, v8, v9

    .line 376
    .local v6, "l":J
    const/16 v5, 0x30

    .line 379
    .local v5, "k":I
    :cond_0
    ushr-long v10, p0, v5

    long-to-int v4, v10

    .line 380
    and-int/lit8 v9, v4, 0x7

    aget-wide v10, v8, v9

    ushr-int/lit8 v9, v4, 0x3

    and-int/lit8 v9, v9, 0x7

    aget-wide v12, v8, v9

    const/4 v9, 0x3

    shl-long/2addr v12, v9

    xor-long/2addr v10, v12

    ushr-int/lit8 v9, v4, 0x6

    and-int/lit8 v9, v9, 0x7

    aget-wide v12, v8, v9

    const/4 v9, 0x6

    shl-long/2addr v12, v9

    xor-long v0, v10, v12

    .line 383
    .local v0, "g":J
    shl-long v10, v0, v5

    xor-long/2addr v6, v10

    .line 384
    neg-int v9, v5

    ushr-long v10, v0, v9

    xor-long/2addr v2, v10

    .line 386
    add-int/lit8 v5, v5, -0x9

    if-gtz v5, :cond_0

    .line 388
    const-wide v10, 0x100804020100800L

    and-long/2addr v10, p0

    const/4 v9, 0x7

    shl-long v12, p2, v9

    const/16 v9, 0x3f

    shr-long/2addr v12, v9

    and-long/2addr v10, v12

    const/16 v9, 0x8

    ushr-long/2addr v10, v9

    xor-long/2addr v2, v10

    .line 392
    const-wide v10, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v10, v6

    aput-wide v10, p4, p5

    .line 393
    add-int/lit8 v9, p5, 0x1

    const/16 v10, 0x39

    ushr-long v10, v6, v10

    const/4 v12, 0x7

    shl-long v12, v2, v12

    xor-long/2addr v10, v12

    aput-wide v10, p4, v9

    .line 394
    return-void
.end method

.method protected static implSquare([J[J)V
    .locals 5
    .param p0, "x"    # [J
    .param p1, "zz"    # [J

    .prologue
    const/4 v4, 0x4

    .line 398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 400
    aget-wide v2, p0, v0

    shl-int/lit8 v1, v0, 0x1

    invoke-static {v2, v3, p1, v1}, Lorg/spongycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    const/16 v1, 0x8

    aget-wide v2, p0, v4

    long-to-int v2, v2

    invoke-static {v2}, Lorg/spongycastle/math/raw/Interleave;->expand32to64(I)J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 403
    return-void
.end method

.method public static invert([J[J)V
    .locals 3
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 56
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat320;->isZero64([J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 63
    :cond_0
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    .line 64
    .local v0, "t0":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v1

    .line 66
    .local v1, "t1":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    .line 67
    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 68
    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 69
    invoke-static {v1, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 70
    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 71
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 72
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 73
    invoke-static {v1, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 74
    invoke-static {v1, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    .line 75
    invoke-static {v1, p0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 76
    const/16 v2, 0x11

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 77
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 78
    invoke-static {v0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    .line 79
    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 80
    const/16 v2, 0x23

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 81
    invoke-static {v1, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 82
    const/16 v2, 0x46

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 83
    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 84
    invoke-static {v0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    .line 85
    invoke-static {v0, p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 86
    const/16 v2, 0x8d

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 87
    invoke-static {v1, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 88
    invoke-static {v1, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    .line 89
    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J

    .prologue
    .line 93
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->createExt64()[J

    move-result-object v0

    .line 94
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMultiply([J[J[J)V

    .line 95
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    .line 96
    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "zz"    # [J

    .prologue
    .line 100
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->createExt64()[J

    move-result-object v0

    .line 101
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implMultiply([J[J[J)V

    .line 102
    invoke-static {p2, v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->addExt([J[J[J)V

    .line 103
    return-void
.end method

.method public static reduce([J[J)V
    .locals 26
    .param p0, "xx"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 107
    const/16 v20, 0x0

    aget-wide v2, p0, v20

    .local v2, "x0":J
    const/16 v20, 0x1

    aget-wide v4, p0, v20

    .local v4, "x1":J
    const/16 v20, 0x2

    aget-wide v6, p0, v20

    .local v6, "x2":J
    const/16 v20, 0x3

    aget-wide v8, p0, v20

    .local v8, "x3":J
    const/16 v20, 0x4

    aget-wide v10, p0, v20

    .line 108
    .local v10, "x4":J
    const/16 v20, 0x5

    aget-wide v12, p0, v20

    .local v12, "x5":J
    const/16 v20, 0x6

    aget-wide v14, p0, v20

    .local v14, "x6":J
    const/16 v20, 0x7

    aget-wide v16, p0, v20

    .local v16, "x7":J
    const/16 v20, 0x8

    aget-wide v18, p0, v20

    .line 110
    .local v18, "x8":J
    const/16 v20, 0x25

    shl-long v20, v18, v20

    const/16 v22, 0x2a

    shl-long v22, v18, v22

    xor-long v20, v20, v22

    const/16 v22, 0x2c

    shl-long v22, v18, v22

    xor-long v20, v20, v22

    const/16 v22, 0x31

    shl-long v22, v18, v22

    xor-long v20, v20, v22

    xor-long v8, v8, v20

    .line 111
    const/16 v20, 0x1b

    ushr-long v20, v18, v20

    const/16 v22, 0x16

    ushr-long v22, v18, v22

    xor-long v20, v20, v22

    const/16 v22, 0x14

    ushr-long v22, v18, v22

    xor-long v20, v20, v22

    const/16 v22, 0xf

    ushr-long v22, v18, v22

    xor-long v20, v20, v22

    xor-long v10, v10, v20

    .line 113
    const/16 v20, 0x25

    shl-long v20, v16, v20

    const/16 v22, 0x2a

    shl-long v22, v16, v22

    xor-long v20, v20, v22

    const/16 v22, 0x2c

    shl-long v22, v16, v22

    xor-long v20, v20, v22

    const/16 v22, 0x31

    shl-long v22, v16, v22

    xor-long v20, v20, v22

    xor-long v6, v6, v20

    .line 114
    const/16 v20, 0x1b

    ushr-long v20, v16, v20

    const/16 v22, 0x16

    ushr-long v22, v16, v22

    xor-long v20, v20, v22

    const/16 v22, 0x14

    ushr-long v22, v16, v22

    xor-long v20, v20, v22

    const/16 v22, 0xf

    ushr-long v22, v16, v22

    xor-long v20, v20, v22

    xor-long v8, v8, v20

    .line 116
    const/16 v20, 0x25

    shl-long v20, v14, v20

    const/16 v22, 0x2a

    shl-long v22, v14, v22

    xor-long v20, v20, v22

    const/16 v22, 0x2c

    shl-long v22, v14, v22

    xor-long v20, v20, v22

    const/16 v22, 0x31

    shl-long v22, v14, v22

    xor-long v20, v20, v22

    xor-long v4, v4, v20

    .line 117
    const/16 v20, 0x1b

    ushr-long v20, v14, v20

    const/16 v22, 0x16

    ushr-long v22, v14, v22

    xor-long v20, v20, v22

    const/16 v22, 0x14

    ushr-long v22, v14, v22

    xor-long v20, v20, v22

    const/16 v22, 0xf

    ushr-long v22, v14, v22

    xor-long v20, v20, v22

    xor-long v6, v6, v20

    .line 119
    const/16 v20, 0x25

    shl-long v20, v12, v20

    const/16 v22, 0x2a

    shl-long v22, v12, v22

    xor-long v20, v20, v22

    const/16 v22, 0x2c

    shl-long v22, v12, v22

    xor-long v20, v20, v22

    const/16 v22, 0x31

    shl-long v22, v12, v22

    xor-long v20, v20, v22

    xor-long v2, v2, v20

    .line 120
    const/16 v20, 0x1b

    ushr-long v20, v12, v20

    const/16 v22, 0x16

    ushr-long v22, v12, v22

    xor-long v20, v20, v22

    const/16 v22, 0x14

    ushr-long v22, v12, v22

    xor-long v20, v20, v22

    const/16 v22, 0xf

    ushr-long v22, v12, v22

    xor-long v20, v20, v22

    xor-long v4, v4, v20

    .line 122
    const/16 v20, 0x1b

    ushr-long v0, v10, v20

    .line 123
    .local v0, "t":J
    const/16 v20, 0x0

    xor-long v22, v2, v0

    const/16 v21, 0x5

    shl-long v24, v0, v21

    xor-long v22, v22, v24

    const/16 v21, 0x7

    shl-long v24, v0, v21

    xor-long v22, v22, v24

    const/16 v21, 0xc

    shl-long v24, v0, v21

    xor-long v22, v22, v24

    aput-wide v22, p1, v20

    .line 124
    const/16 v20, 0x1

    aput-wide v4, p1, v20

    .line 125
    const/16 v20, 0x2

    aput-wide v6, p1, v20

    .line 126
    const/16 v20, 0x3

    aput-wide v8, p1, v20

    .line 127
    const/16 v20, 0x4

    const-wide/32 v22, 0x7ffffff

    and-long v22, v22, v10

    aput-wide v22, p1, v20

    .line 128
    return-void
.end method

.method public static reduce37([JI)V
    .locals 10
    .param p0, "z"    # [J
    .param p1, "zOff"    # I

    .prologue
    .line 132
    add-int/lit8 v4, p1, 0x4

    aget-wide v2, p0, v4

    .local v2, "z4":J
    const/16 v4, 0x1b

    ushr-long v0, v2, v4

    .line 133
    .local v0, "t":J
    aget-wide v4, p0, p1

    const/4 v6, 0x5

    shl-long v6, v0, v6

    xor-long/2addr v6, v0

    const/4 v8, 0x7

    shl-long v8, v0, v8

    xor-long/2addr v6, v8

    const/16 v8, 0xc

    shl-long v8, v0, v8

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, p0, p1

    .line 134
    add-int/lit8 v4, p1, 0x4

    const-wide/32 v6, 0x7ffffff

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
    .line 139
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v8

    .line 142
    .local v8, "odd":[J
    const/4 v9, 0x0

    aget-wide v14, p0, v9

    invoke-static {v14, v15}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v10

    .local v10, "u0":J
    const/4 v9, 0x1

    aget-wide v14, p0, v9

    invoke-static {v14, v15}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v12

    .line 143
    .local v12, "u1":J
    const-wide v14, 0xffffffffL

    and-long/2addr v14, v10

    const/16 v9, 0x20

    shl-long v16, v12, v9

    or-long v2, v14, v16

    .line 144
    .local v2, "e0":J
    const/4 v9, 0x0

    const/16 v14, 0x20

    ushr-long v14, v10, v14

    const-wide v16, -0x100000000L

    and-long v16, v16, v12

    or-long v14, v14, v16

    aput-wide v14, v8, v9

    .line 146
    const/4 v9, 0x2

    aget-wide v14, p0, v9

    invoke-static {v14, v15}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v10

    const/4 v9, 0x3

    aget-wide v14, p0, v9

    invoke-static {v14, v15}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v12

    .line 147
    const-wide v14, 0xffffffffL

    and-long/2addr v14, v10

    const/16 v9, 0x20

    shl-long v16, v12, v9

    or-long v4, v14, v16

    .line 148
    .local v4, "e1":J
    const/4 v9, 0x1

    const/16 v14, 0x20

    ushr-long v14, v10, v14

    const-wide v16, -0x100000000L

    and-long v16, v16, v12

    or-long v14, v14, v16

    aput-wide v14, v8, v9

    .line 150
    const/4 v9, 0x4

    aget-wide v14, p0, v9

    invoke-static {v14, v15}, Lorg/spongycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v10

    .line 151
    const-wide v14, 0xffffffffL

    and-long v6, v10, v14

    .line 152
    .local v6, "e2":J
    const/4 v9, 0x2

    const/16 v14, 0x20

    ushr-long v14, v10, v14

    aput-wide v14, v8, v9

    .line 154
    sget-object v9, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->ROOT_Z:[J

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 156
    const/4 v9, 0x0

    aget-wide v14, p1, v9

    xor-long/2addr v14, v2

    aput-wide v14, p1, v9

    .line 157
    const/4 v9, 0x1

    aget-wide v14, p1, v9

    xor-long/2addr v14, v4

    aput-wide v14, p1, v9

    .line 158
    const/4 v9, 0x2

    aget-wide v14, p1, v9

    xor-long/2addr v14, v6

    aput-wide v14, p1, v9

    .line 159
    return-void
.end method

.method public static square([J[J)V
    .locals 2
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    .line 163
    const/16 v1, 0x9

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 164
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implSquare([J[J)V

    .line 165
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    .line 166
    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 2
    .param p0, "x"    # [J
    .param p1, "zz"    # [J

    .prologue
    .line 170
    const/16 v1, 0x9

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 171
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implSquare([J[J)V

    .line 172
    invoke-static {p1, v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->addExt([J[J[J)V

    .line 173
    return-void
.end method

.method public static squareN([JI[J)V
    .locals 2
    .param p0, "x"    # [J
    .param p1, "n"    # I
    .param p2, "z"    # [J

    .prologue
    .line 179
    const/16 v1, 0x9

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 180
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implSquare([J[J)V

    .line 181
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    .line 183
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 185
    invoke-static {p2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->implSquare([J[J)V

    .line 186
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method public static trace([J)I
    .locals 5
    .param p0, "x"    # [J

    .prologue
    .line 193
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x4

    aget-wide v2, p0, v2

    const/16 v4, 0xf

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method
