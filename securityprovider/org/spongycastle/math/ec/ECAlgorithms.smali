.class public Lorg/spongycastle/math/ec/ECAlgorithms;
.super Ljava/lang/Object;
.source "ECAlgorithms.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static implShamirsTrickJsf(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 17
    .param p0, "P"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    .prologue
    .line 223
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v5

    .line 224
    .local v5, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 227
    .local v8, "infinity":Lorg/spongycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 228
    .local v2, "PaddQ":Lorg/spongycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->subtract(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 230
    .local v3, "PsubQ":Lorg/spongycastle/math/ec/ECPoint;
    const/4 v15, 0x4

    new-array v13, v15, [Lorg/spongycastle/math/ec/ECPoint;

    const/4 v15, 0x0

    aput-object p2, v13, v15

    const/4 v15, 0x1

    aput-object v3, v13, v15

    const/4 v15, 0x2

    aput-object p0, v13, v15

    const/4 v15, 0x3

    aput-object v2, v13, v15

    .line 231
    .local v13, "points":[Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v5, v13}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 233
    const/16 v15, 0x9

    new-array v14, v15, [Lorg/spongycastle/math/ec/ECPoint;

    const/4 v15, 0x0

    const/16 v16, 0x3

    aget-object v16, v13, v16

    .line 234
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x2

    aget-object v16, v13, v16

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x1

    aget-object v16, v13, v16

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    aget-object v16, v13, v16

    .line 235
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    aput-object v8, v14, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aget-object v16, v13, v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const/16 v16, 0x1

    aget-object v16, v13, v16

    aput-object v16, v14, v15

    const/4 v15, 0x7

    const/16 v16, 0x2

    aget-object v16, v13, v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const/16 v16, 0x3

    aget-object v16, v13, v16

    aput-object v16, v14, v15

    .line 238
    .local v14, "table":[Lorg/spongycastle/math/ec/ECPoint;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/WNafUtil;->generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v9

    .line 240
    .local v9, "jsf":[B
    move-object v4, v8

    .line 242
    .local v4, "R":Lorg/spongycastle/math/ec/ECPoint;
    array-length v6, v9

    .line 243
    .local v6, "i":I
    :goto_0
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_0

    .line 245
    aget-byte v10, v9, v6

    .line 248
    .local v10, "jsfi":I
    shl-int/lit8 v15, v10, 0x18

    shr-int/lit8 v11, v15, 0x1c

    .local v11, "kDigit":I
    shl-int/lit8 v15, v10, 0x1c

    shr-int/lit8 v12, v15, 0x1c

    .line 250
    .local v12, "lDigit":I
    mul-int/lit8 v15, v11, 0x3

    add-int/lit8 v15, v15, 0x4

    add-int v7, v15, v12

    .line 251
    .local v7, "index":I
    aget-object v15, v14, v7

    invoke-virtual {v4, v15}, Lorg/spongycastle/math/ec/ECPoint;->twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 252
    goto :goto_0

    .line 254
    .end local v7    # "index":I
    .end local v10    # "jsfi":I
    .end local v11    # "kDigit":I
    .end local v12    # "lDigit":I
    :cond_0
    return-object v4
.end method

.method static implShamirsTrickWNaf(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 16
    .param p0, "P"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    .prologue
    .line 260
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gez v13, :cond_0

    const/4 v9, 0x1

    .local v9, "negK":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gez v13, :cond_1

    const/4 v10, 0x1

    .line 262
    .local v10, "negL":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 263
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p3

    .line 265
    const/4 v13, 0x2

    const/16 v14, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    invoke-static {v15}, Lorg/spongycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 266
    .local v11, "widthP":I
    const/4 v13, 0x2

    const/16 v14, 0x10

    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    invoke-static {v15}, Lorg/spongycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 268
    .local v12, "widthQ":I
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11, v13}, Lorg/spongycastle/math/ec/WNafUtil;->precompute(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v7

    .line 269
    .local v7, "infoP":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lorg/spongycastle/math/ec/WNafUtil;->precompute(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    .line 271
    .local v8, "infoQ":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    if-eqz v9, :cond_2

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 272
    .local v1, "preCompP":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_2
    if-eqz v10, :cond_3

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 273
    .local v4, "preCompQ":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_3
    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 274
    .local v2, "preCompNegP":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_4
    if-eqz v10, :cond_5

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 276
    .local v5, "preCompNegQ":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_5
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lorg/spongycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v3

    .line 277
    .local v3, "wnafP":[B
    move-object/from16 v0, p3

    invoke-static {v12, v0}, Lorg/spongycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v6

    .line 279
    .local v6, "wnafQ":[B
    invoke-static/range {v1 .. v6}, Lorg/spongycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B[Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    return-object v13

    .line 260
    .end local v1    # "preCompP":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v2    # "preCompNegP":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v3    # "wnafP":[B
    .end local v4    # "preCompQ":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v5    # "preCompNegQ":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v6    # "wnafQ":[B
    .end local v7    # "infoP":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .end local v8    # "infoQ":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .end local v9    # "negK":Z
    .end local v10    # "negL":Z
    .end local v11    # "widthP":I
    .end local v12    # "widthQ":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .restart local v9    # "negK":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 271
    .restart local v7    # "infoP":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .restart local v8    # "infoQ":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .restart local v10    # "negL":Z
    .restart local v11    # "widthP":I
    .restart local v12    # "widthQ":I
    :cond_2
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_2

    .line 272
    .restart local v1    # "preCompP":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_3
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    goto :goto_3

    .line 273
    .restart local v4    # "preCompQ":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_4
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_4

    .line 274
    .restart local v2    # "preCompNegP":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_5
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    goto :goto_5
.end method

.method static implShamirsTrickWNaf(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPointMap;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 18
    .param p0, "P"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "pointMapQ"    # Lorg/spongycastle/math/ec/ECPointMap;
    .param p3, "l"    # Ljava/math/BigInteger;

    .prologue
    .line 284
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v14

    if-gez v14, :cond_0

    const/4 v11, 0x1

    .local v11, "negK":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    move-result v14

    if-gez v14, :cond_1

    const/4 v12, 0x1

    .line 286
    .local v12, "negL":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 287
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p3

    .line 289
    const/4 v14, 0x2

    const/16 v15, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v16

    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lorg/spongycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 291
    .local v13, "width":I
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v13, v14, v1}, Lorg/spongycastle/math/ec/WNafUtil;->mapPointWithPrecomp(Lorg/spongycastle/math/ec/ECPoint;IZLorg/spongycastle/math/ec/ECPointMap;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 292
    .local v8, "Q":Lorg/spongycastle/math/ec/ECPoint;
    invoke-static/range {p0 .. p0}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v9

    .line 293
    .local v9, "infoP":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    invoke-static {v8}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v10

    .line 295
    .local v10, "infoQ":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    if-eqz v11, :cond_2

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 296
    .local v2, "preCompP":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_2
    if-eqz v12, :cond_3

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 297
    .local v5, "preCompQ":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_3
    if-eqz v11, :cond_4

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 298
    .local v3, "preCompNegP":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_4
    if-eqz v12, :cond_5

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 300
    .local v6, "preCompNegQ":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_5
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lorg/spongycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v4

    .line 301
    .local v4, "wnafP":[B
    move-object/from16 v0, p3

    invoke-static {v13, v0}, Lorg/spongycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v7

    .line 303
    .local v7, "wnafQ":[B
    invoke-static/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B[Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v14

    return-object v14

    .line 284
    .end local v2    # "preCompP":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v3    # "preCompNegP":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v4    # "wnafP":[B
    .end local v5    # "preCompQ":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v6    # "preCompNegQ":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v7    # "wnafQ":[B
    .end local v8    # "Q":Lorg/spongycastle/math/ec/ECPoint;
    .end local v9    # "infoP":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .end local v10    # "infoQ":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .end local v11    # "negK":Z
    .end local v12    # "negL":Z
    .end local v13    # "width":I
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .restart local v11    # "negK":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 295
    .restart local v8    # "Q":Lorg/spongycastle/math/ec/ECPoint;
    .restart local v9    # "infoP":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .restart local v10    # "infoQ":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .restart local v12    # "negL":Z
    .restart local v13    # "width":I
    :cond_2
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_2

    .line 296
    .restart local v2    # "preCompP":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_3
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    goto :goto_3

    .line 297
    .restart local v5    # "preCompQ":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_4
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_4

    .line 298
    .restart local v3    # "preCompNegP":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_5
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    goto :goto_5
.end method

.method private static implShamirsTrickWNaf([Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B[Lorg/spongycastle/math/ec/ECPoint;[Lorg/spongycastle/math/ec/ECPoint;[B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 16
    .param p0, "preCompP"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "preCompNegP"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "wnafP"    # [B
    .param p3, "preCompQ"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p4, "preCompNegQ"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p5, "wnafQ"    # [B

    .prologue
    .line 309
    move-object/from16 v0, p2

    array-length v14, v0

    move-object/from16 v0, p5

    array-length v15, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 311
    .local v5, "len":I
    const/4 v14, 0x0

    aget-object v14, p0, v14

    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 312
    .local v2, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 314
    .local v4, "infinity":Lorg/spongycastle/math/ec/ECPoint;
    move-object v1, v4

    .line 315
    .local v1, "R":Lorg/spongycastle/math/ec/ECPoint;
    const/4 v13, 0x0

    .line 317
    .local v13, "zeroes":I
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_8

    .line 319
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v3, v14, :cond_0

    aget-byte v11, p2, v3

    .line 320
    .local v11, "wiP":I
    :goto_1
    move-object/from16 v0, p5

    array-length v14, v0

    if-ge v3, v14, :cond_1

    aget-byte v12, p5, v3

    .line 322
    .local v12, "wiQ":I
    :goto_2
    or-int v14, v11, v12

    if-nez v14, :cond_2

    .line 324
    add-int/lit8 v13, v13, 0x1

    .line 317
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 319
    .end local v11    # "wiP":I
    .end local v12    # "wiQ":I
    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 320
    .restart local v11    # "wiP":I
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 328
    .restart local v12    # "wiQ":I
    :cond_2
    move-object v8, v4

    .line 329
    .local v8, "r":Lorg/spongycastle/math/ec/ECPoint;
    if-eqz v11, :cond_3

    .line 331
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 332
    .local v6, "nP":I
    if-gez v11, :cond_6

    move-object/from16 v9, p1

    .line 333
    .local v9, "tableP":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_4
    ushr-int/lit8 v14, v6, 0x1

    aget-object v14, v9, v14

    invoke-virtual {v8, v14}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 335
    .end local v6    # "nP":I
    .end local v9    # "tableP":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_3
    if-eqz v12, :cond_4

    .line 337
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 338
    .local v7, "nQ":I
    if-gez v12, :cond_7

    move-object/from16 v10, p4

    .line 339
    .local v10, "tableQ":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_5
    ushr-int/lit8 v14, v7, 0x1

    aget-object v14, v10, v14

    invoke-virtual {v8, v14}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 342
    .end local v7    # "nQ":I
    .end local v10    # "tableQ":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_4
    if-lez v13, :cond_5

    .line 344
    invoke-virtual {v1, v13}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 345
    const/4 v13, 0x0

    .line 348
    :cond_5
    invoke-virtual {v1, v8}, Lorg/spongycastle/math/ec/ECPoint;->twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_3

    .restart local v6    # "nP":I
    :cond_6
    move-object/from16 v9, p0

    .line 332
    goto :goto_4

    .end local v6    # "nP":I
    .restart local v7    # "nQ":I
    :cond_7
    move-object/from16 v10, p3

    .line 338
    goto :goto_5

    .line 351
    .end local v7    # "nQ":I
    .end local v8    # "r":Lorg/spongycastle/math/ec/ECPoint;
    .end local v11    # "wiP":I
    .end local v12    # "wiQ":I
    :cond_8
    if-lez v13, :cond_9

    .line 353
    invoke-virtual {v1, v13}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 356
    :cond_9
    return-object v1
.end method

.method static implSumOfMultiplies([Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPointMap;[Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 18
    .param p0, "ps"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "pointMap"    # Lorg/spongycastle/math/ec/ECPointMap;
    .param p2, "ks"    # [Ljava/math/BigInteger;

    .prologue
    .line 412
    move-object/from16 v0, p0

    array-length v4, v0

    .local v4, "halfCount":I
    shl-int/lit8 v3, v4, 0x1

    .line 414
    .local v3, "fullCount":I
    new-array v11, v3, [Z

    .line 415
    .local v11, "negs":[Z
    new-array v6, v3, [Lorg/spongycastle/math/ec/WNafPreCompInfo;

    .line 416
    .local v6, "infos":[Lorg/spongycastle/math/ec/WNafPreCompInfo;
    new-array v13, v3, [[B

    .line 418
    .local v13, "wnafs":[[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 420
    shl-int/lit8 v7, v5, 0x1

    .local v7, "j0":I
    add-int/lit8 v8, v7, 0x1

    .line 422
    .local v8, "j1":I
    aget-object v9, p2, v7

    .local v9, "kj0":Ljava/math/BigInteger;
    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v14

    if-gez v14, :cond_0

    const/4 v14, 0x1

    :goto_1
    aput-boolean v14, v11, v7

    invoke-virtual {v9}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v9

    .line 423
    aget-object v10, p2, v8

    .local v10, "kj1":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v14

    if-gez v14, :cond_1

    const/4 v14, 0x1

    :goto_2
    aput-boolean v14, v11, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    .line 425
    const/4 v14, 0x2

    const/16 v15, 0x10

    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v16

    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-static/range {v16 .. v16}, Lorg/spongycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 427
    .local v12, "width":I
    aget-object v1, p0, v5

    .local v1, "P":Lorg/spongycastle/math/ec/ECPoint;
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-static {v1, v12, v14, v0}, Lorg/spongycastle/math/ec/WNafUtil;->mapPointWithPrecomp(Lorg/spongycastle/math/ec/ECPoint;IZLorg/spongycastle/math/ec/ECPointMap;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 428
    .local v2, "Q":Lorg/spongycastle/math/ec/ECPoint;
    invoke-static {v1}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v14

    aput-object v14, v6, v7

    .line 429
    invoke-static {v2}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v14

    aput-object v14, v6, v8

    .line 430
    invoke-static {v12, v9}, Lorg/spongycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v14

    aput-object v14, v13, v7

    .line 431
    invoke-static {v12, v10}, Lorg/spongycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v14

    aput-object v14, v13, v8

    .line 418
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 422
    .end local v1    # "P":Lorg/spongycastle/math/ec/ECPoint;
    .end local v2    # "Q":Lorg/spongycastle/math/ec/ECPoint;
    .end local v10    # "kj1":Ljava/math/BigInteger;
    .end local v12    # "width":I
    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .line 423
    .restart local v10    # "kj1":Ljava/math/BigInteger;
    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    .line 434
    .end local v7    # "j0":I
    .end local v8    # "j1":I
    .end local v9    # "kj0":Ljava/math/BigInteger;
    .end local v10    # "kj1":Ljava/math/BigInteger;
    :cond_2
    invoke-static {v11, v6, v13}, Lorg/spongycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lorg/spongycastle/math/ec/WNafPreCompInfo;[[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v14

    return-object v14
.end method

.method static implSumOfMultiplies([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 11
    .param p0, "ps"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;

    .prologue
    const/4 v8, 0x1

    .line 361
    array-length v0, p0

    .line 362
    .local v0, "count":I
    new-array v4, v0, [Z

    .line 363
    .local v4, "negs":[Z
    new-array v2, v0, [Lorg/spongycastle/math/ec/WNafPreCompInfo;

    .line 364
    .local v2, "infos":[Lorg/spongycastle/math/ec/WNafPreCompInfo;
    new-array v6, v0, [[B

    .line 366
    .local v6, "wnafs":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 368
    aget-object v3, p1, v1

    .local v3, "ki":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-gez v7, :cond_0

    move v7, v8

    :goto_1
    aput-boolean v7, v4, v1

    invoke-virtual {v3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    .line 370
    const/4 v7, 0x2

    const/16 v9, 0x10

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    invoke-static {v10}, Lorg/spongycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 371
    .local v5, "width":I
    aget-object v7, p0, v1

    invoke-static {v7, v5, v8}, Lorg/spongycastle/math/ec/WNafUtil;->precompute(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v7

    aput-object v7, v2, v1

    .line 372
    invoke-static {v5, v3}, Lorg/spongycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v7

    aput-object v7, v6, v1

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    .end local v5    # "width":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 375
    .end local v3    # "ki":Ljava/math/BigInteger;
    :cond_1
    invoke-static {v4, v2, v6}, Lorg/spongycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lorg/spongycastle/math/ec/WNafPreCompInfo;[[B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    return-object v7
.end method

.method private static implSumOfMultiplies([Z[Lorg/spongycastle/math/ec/WNafPreCompInfo;[[B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 17
    .param p0, "negs"    # [Z
    .param p1, "infos"    # [Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .param p2, "wnafs"    # [[B

    .prologue
    .line 439
    const/4 v8, 0x0

    .local v8, "len":I
    move-object/from16 v0, p2

    array-length v2, v0

    .line 440
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 442
    aget-object v15, p2, v4

    array-length v15, v15

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 440
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 445
    :cond_0
    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v15}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 446
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 448
    .local v5, "infinity":Lorg/spongycastle/math/ec/ECPoint;
    move-object v1, v5

    .line 449
    .local v1, "R":Lorg/spongycastle/math/ec/ECPoint;
    const/4 v14, 0x0

    .line 451
    .local v14, "zeroes":I
    add-int/lit8 v4, v8, -0x1

    :goto_1
    if-ltz v4, :cond_8

    .line 453
    move-object v10, v5

    .line 455
    .local v10, "r":Lorg/spongycastle/math/ec/ECPoint;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v2, :cond_5

    .line 457
    aget-object v13, p2, v7

    .line 458
    .local v13, "wnaf":[B
    array-length v15, v13

    if-ge v4, v15, :cond_2

    aget-byte v12, v13, v4

    .line 459
    .local v12, "wi":I
    :goto_3
    if-eqz v12, :cond_1

    .line 461
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 462
    .local v9, "n":I
    aget-object v6, p1, v7

    .line 463
    .local v6, "info":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    if-gez v12, :cond_3

    const/4 v15, 0x1

    :goto_4
    aget-boolean v16, p0, v7

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    .line 464
    .local v11, "table":[Lorg/spongycastle/math/ec/ECPoint;
    :goto_5
    ushr-int/lit8 v15, v9, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v10, v15}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    .line 455
    .end local v6    # "info":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .end local v9    # "n":I
    .end local v11    # "table":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 458
    .end local v12    # "wi":I
    :cond_2
    const/4 v12, 0x0

    goto :goto_3

    .line 463
    .restart local v6    # "info":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .restart local v9    # "n":I
    .restart local v12    # "wi":I
    :cond_3
    const/4 v15, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    goto :goto_5

    .line 468
    .end local v6    # "info":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .end local v9    # "n":I
    .end local v12    # "wi":I
    .end local v13    # "wnaf":[B
    :cond_5
    if-ne v10, v5, :cond_6

    .line 470
    add-int/lit8 v14, v14, 0x1

    .line 451
    :goto_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 474
    :cond_6
    if-lez v14, :cond_7

    .line 476
    invoke-virtual {v1, v14}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 477
    const/4 v14, 0x0

    .line 480
    :cond_7
    invoke-virtual {v1, v10}, Lorg/spongycastle/math/ec/ECPoint;->twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_6

    .line 483
    .end local v7    # "j":I
    .end local v10    # "r":Lorg/spongycastle/math/ec/ECPoint;
    :cond_8
    if-lez v14, :cond_9

    .line 485
    invoke-virtual {v1, v14}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 488
    :cond_9
    return-object v1
.end method

.method static implSumOfMultipliesGLV([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/spongycastle/math/ec/endo/GLVEndomorphism;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 13
    .param p0, "ps"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;
    .param p2, "glvEndomorphism"    # Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    .prologue
    const/4 v12, 0x0

    .line 380
    aget-object v11, p0, v12

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    .line 382
    .local v6, "n":Ljava/math/BigInteger;
    array-length v5, p0

    .line 384
    .local v5, "len":I
    shl-int/lit8 v11, v5, 0x1

    new-array v1, v11, [Ljava/math/BigInteger;

    .line 385
    .local v1, "abs":[Ljava/math/BigInteger;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 387
    aget-object v11, p1, v2

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-interface {p2, v11}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 388
    .local v0, "ab":[Ljava/math/BigInteger;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-object v11, v0, v12

    aput-object v11, v1, v4

    .line 389
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/4 v11, 0x1

    aget-object v11, v0, v11

    aput-object v11, v1, v3

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "ab":[Ljava/math/BigInteger;
    :cond_0
    invoke-interface {p2}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->getPointMap()Lorg/spongycastle/math/ec/ECPointMap;

    move-result-object v8

    .line 393
    .local v8, "pointMap":Lorg/spongycastle/math/ec/ECPointMap;
    invoke-interface {p2}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 395
    invoke-static {p0, v8, v1}, Lorg/spongycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPointMap;[Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    .line 406
    :goto_1
    return-object v11

    .line 398
    :cond_1
    shl-int/lit8 v11, v5, 0x1

    new-array v9, v11, [Lorg/spongycastle/math/ec/ECPoint;

    .line 399
    .local v9, "pqs":[Lorg/spongycastle/math/ec/ECPoint;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .end local v4    # "j":I
    .restart local v3    # "j":I
    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    :goto_2
    if-ge v2, v5, :cond_2

    .line 401
    aget-object v7, p0, v2

    .local v7, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-interface {v8, v7}, Lorg/spongycastle/math/ec/ECPointMap;->map(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    .line 402
    .local v10, "q":Lorg/spongycastle/math/ec/ECPoint;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aput-object v7, v9, v4

    .line 403
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aput-object v10, v9, v3

    .line 399
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 406
    .end local v7    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .end local v10    # "q":Lorg/spongycastle/math/ec/ECPoint;
    :cond_2
    invoke-static {v9, v1}, Lorg/spongycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    goto :goto_1
.end method

.method public static importPoint(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3
    .param p0, "c"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 126
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 127
    .local v0, "cp":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve;->equals(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Point must be on the same curve"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->importPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method public static isF2mCurve(Lorg/spongycastle/math/ec/ECCurve;)Z
    .locals 1
    .param p0, "c"    # Lorg/spongycastle/math/ec/ECCurve;

    .prologue
    .line 14
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->isF2mField(Lorg/spongycastle/math/field/FiniteField;)Z

    move-result v0

    return v0
.end method

.method public static isF2mField(Lorg/spongycastle/math/field/FiniteField;)Z
    .locals 3
    .param p0, "field"    # Lorg/spongycastle/math/field/FiniteField;

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-interface {p0}, Lorg/spongycastle/math/field/FiniteField;->getDimension()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-interface {p0}, Lorg/spongycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Lorg/spongycastle/math/field/PolynomialExtensionField;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFpCurve(Lorg/spongycastle/math/ec/ECCurve;)Z
    .locals 1
    .param p0, "c"    # Lorg/spongycastle/math/ec/ECCurve;

    .prologue
    .line 25
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->isFpField(Lorg/spongycastle/math/field/FiniteField;)Z

    move-result v0

    return v0
.end method

.method public static isFpField(Lorg/spongycastle/math/field/FiniteField;)Z
    .locals 2
    .param p0, "field"    # Lorg/spongycastle/math/field/FiniteField;

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-interface {p0}, Lorg/spongycastle/math/field/FiniteField;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static montgomeryTrick([Lorg/spongycastle/math/ec/ECFieldElement;II)V
    .locals 1
    .param p0, "zs"    # [Lorg/spongycastle/math/ec/ECFieldElement;
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lorg/spongycastle/math/ec/ECFieldElement;IILorg/spongycastle/math/ec/ECFieldElement;)V

    .line 137
    return-void
.end method

.method public static montgomeryTrick([Lorg/spongycastle/math/ec/ECFieldElement;IILorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 8
    .param p0, "zs"    # [Lorg/spongycastle/math/ec/ECFieldElement;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "scale"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 148
    new-array v0, p2, [Lorg/spongycastle/math/ec/ECFieldElement;

    .line 149
    .local v0, "c":[Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v6, 0x0

    aget-object v7, p0, p1

    aput-object v7, v0, v6

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_0

    .line 154
    add-int/lit8 v6, v1, -0x1

    aget-object v6, v0, v6

    add-int v7, p1, v1

    aget-object v7, p0, v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    aput-object v6, v0, v1

    goto :goto_0

    .line 157
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 159
    if-eqz p3, :cond_1

    .line 161
    aget-object v6, v0, v1

    invoke-virtual {v6, p3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    aput-object v6, v0, v1

    .line 164
    :cond_1
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .local v5, "u":Lorg/spongycastle/math/ec/ECFieldElement;
    move v2, v1

    .line 166
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_2

    .line 168
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int v3, p1, v2

    .line 169
    .local v3, "j":I
    aget-object v4, p0, v3

    .line 170
    .local v4, "tmp":Lorg/spongycastle/math/ec/ECFieldElement;
    aget-object v6, v0, v1

    invoke-virtual {v6, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    aput-object v6, p0, v3

    .line 171
    invoke-virtual {v5, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    move v2, v1

    .line 172
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 174
    .end local v3    # "j":I
    .end local v4    # "tmp":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_2
    aput-object v5, p0, p1

    .line 175
    return-void
.end method

.method public static referenceMultiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 5
    .param p0, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    .line 190
    .local v3, "x":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 191
    .local v1, "q":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 192
    .local v2, "t":I
    if-lez v2, :cond_2

    .line 194
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    move-object v1, p0

    .line 198
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 200
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    .line 201
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    invoke-virtual {v1, p0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 198
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-gez v4, :cond_3

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .end local v1    # "q":Lorg/spongycastle/math/ec/ECPoint;
    :cond_3
    return-object v1
.end method

.method public static shamirsTrick(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2
    .param p0, "P"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 119
    .local v0, "cp":Lorg/spongycastle/math/ec/ECCurve;
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/ECAlgorithms;->importPoint(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p2

    .line 121
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECAlgorithms;->implShamirsTrickJsf(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/math/ec/ECAlgorithms;->validatePoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method public static sumOfMultiplies([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 10
    .param p0, "ps"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 35
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v6, p0

    array-length v7, p1

    if-ne v6, v7, :cond_0

    array-length v6, p0

    if-ge v6, v9, :cond_1

    .line 37
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "point and scalar arrays should be non-null, and of equal, non-zero, length"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 40
    :cond_1
    array-length v1, p0

    .line 41
    .local v1, "count":I
    packed-switch v1, :pswitch_data_0

    .line 51
    aget-object v5, p0, v8

    .line 52
    .local v5, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 54
    .local v0, "c":Lorg/spongycastle/math/ec/ECCurve;
    new-array v4, v1, [Lorg/spongycastle/math/ec/ECPoint;

    .line 55
    .local v4, "imported":[Lorg/spongycastle/math/ec/ECPoint;
    aput-object v5, v4, v8

    .line 56
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 58
    aget-object v6, p0, v3

    invoke-static {v0, v6}, Lorg/spongycastle/math/ec/ECAlgorithms;->importPoint(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    aput-object v6, v4, v3

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "c":Lorg/spongycastle/math/ec/ECCurve;
    .end local v3    # "i":I
    .end local v4    # "imported":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v5    # "p":Lorg/spongycastle/math/ec/ECPoint;
    :pswitch_0
    aget-object v6, p0, v8

    aget-object v7, p1, v8

    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 67
    :goto_1
    return-object v6

    .line 46
    :pswitch_1
    aget-object v6, p0, v8

    aget-object v7, p1, v8

    aget-object v8, p0, v9

    aget-object v9, p1, v9

    invoke-static {v6, v7, v8, v9}, Lorg/spongycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    goto :goto_1

    .line 61
    .restart local v0    # "c":Lorg/spongycastle/math/ec/ECCurve;
    .restart local v3    # "i":I
    .restart local v4    # "imported":[Lorg/spongycastle/math/ec/ECPoint;
    .restart local v5    # "p":Lorg/spongycastle/math/ec/ECPoint;
    :cond_2
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getEndomorphism()Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    move-result-object v2

    .line 62
    .local v2, "endomorphism":Lorg/spongycastle/math/ec/endo/ECEndomorphism;
    instance-of v6, v2, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v6, :cond_3

    .line 64
    check-cast v2, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    .end local v2    # "endomorphism":Lorg/spongycastle/math/ec/endo/ECEndomorphism;
    invoke-static {v4, p1, v2}, Lorg/spongycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/spongycastle/math/ec/endo/GLVEndomorphism;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/math/ec/ECAlgorithms;->validatePoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    goto :goto_1

    .line 67
    .restart local v2    # "endomorphism":Lorg/spongycastle/math/ec/endo/ECEndomorphism;
    :cond_3
    invoke-static {v4, p1}, Lorg/spongycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/math/ec/ECAlgorithms;->validatePoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    goto :goto_1

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 7
    .param p0, "P"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "a"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "b"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 74
    .local v0, "cp":Lorg/spongycastle/math/ec/ECCurve;
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/ECAlgorithms;->importPoint(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p2

    .line 77
    instance-of v3, v0, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 79
    check-cast v2, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;

    .line 80
    .local v2, "f2mCurve":Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p2, p3}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/math/ec/ECAlgorithms;->validatePoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 93
    .end local v2    # "f2mCurve":Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;
    :goto_0
    return-object v3

    .line 86
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getEndomorphism()Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    move-result-object v1

    .line 87
    .local v1, "endomorphism":Lorg/spongycastle/math/ec/endo/ECEndomorphism;
    instance-of v3, v1, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v3, :cond_1

    .line 89
    new-array v3, v4, [Lorg/spongycastle/math/ec/ECPoint;

    aput-object p0, v3, v5

    aput-object p2, v3, v6

    new-array v4, v4, [Ljava/math/BigInteger;

    aput-object p1, v4, v5

    aput-object p3, v4, v6

    check-cast v1, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    .line 90
    .end local v1    # "endomorphism":Lorg/spongycastle/math/ec/endo/ECEndomorphism;
    invoke-static {v3, v4, v1}, Lorg/spongycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lorg/spongycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/spongycastle/math/ec/endo/GLVEndomorphism;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 89
    invoke-static {v3}, Lorg/spongycastle/math/ec/ECAlgorithms;->validatePoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0

    .line 93
    .restart local v1    # "endomorphism":Lorg/spongycastle/math/ec/endo/ECEndomorphism;
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/math/ec/ECAlgorithms;->validatePoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0
.end method

.method public static validatePoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2
    .param p0, "p"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    return-object p0
.end method
