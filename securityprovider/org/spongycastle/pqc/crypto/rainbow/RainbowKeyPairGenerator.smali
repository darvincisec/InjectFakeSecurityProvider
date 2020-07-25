.class public Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;
.super Ljava/lang/Object;
.source "RainbowKeyPairGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private A1:[[S

.field private A1inv:[[S

.field private A2:[[S

.field private A2inv:[[S

.field private b1:[S

.field private b2:[S

.field private initialized:Z

.field private layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

.field private numOfLayers:I

.field private pub_quadratic:[[S

.field private pub_scalar:[S

.field private pub_singular:[[S

.field private rainbowParams:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

.field private sr:Ljava/security/SecureRandom;

.field private vi:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initialized:Z

    .line 55
    return-void
.end method

.method private compactPublicKey([[[S)V
    .locals 10
    .param p1, "coeff_quadratic_to_compact"    # [[[S

    .prologue
    .line 379
    array-length v4, p1

    .line 380
    .local v4, "polynomials":I
    const/4 v7, 0x0

    aget-object v7, p1, v7

    array-length v1, v7

    .line 381
    .local v1, "n":I
    add-int/lit8 v7, v1, 0x1

    mul-int/2addr v7, v1

    div-int/lit8 v0, v7, 0x2

    .line 382
    .local v0, "entries":I
    filled-new-array {v4, v0}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[S

    iput-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_quadratic:[[S

    .line 383
    const/4 v2, 0x0

    .line 385
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 387
    const/4 v2, 0x0

    .line 388
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 390
    move v6, v5

    .local v6, "y":I
    :goto_2
    if-ge v6, v1, :cond_1

    .line 392
    if-ne v6, v5, :cond_0

    .line 394
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_quadratic:[[S

    aget-object v7, v7, v3

    aget-object v8, p1, v3

    aget-object v8, v8, v5

    aget-short v8, v8, v6

    aput-short v8, v7, v2

    .line 402
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 390
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 398
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_quadratic:[[S

    aget-object v7, v7, v3

    aget-object v8, p1, v3

    aget-object v8, v8, v5

    aget-short v8, v8, v6

    aget-object v9, p1, v3

    aget-object v9, v9, v6

    aget-short v9, v9, v5

    invoke-static {v8, v9}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v8

    aput-short v8, v7, v2

    goto :goto_3

    .line 388
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 385
    .end local v6    # "y":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    .end local v5    # "x":I
    :cond_3
    return-void
.end method

.method private computePublicKey()V
    .locals 30

    .prologue
    .line 228
    new-instance v2, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;-><init>()V

    .line 229
    .local v2, "c":Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    sub-int v15, v25, v26

    .line 230
    .local v15, "rows":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    aget v20, v25, v26

    .line 232
    .local v20, "vars":I
    move/from16 v0, v20

    move/from16 v1, v20

    filled-new-array {v15, v0, v1}, [I

    move-result-object v25

    sget-object v26, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[[S

    .line 233
    .local v7, "coeff_quadratic_3dim":[[[S
    move/from16 v0, v20

    filled-new-array {v15, v0}, [I

    move-result-object v25

    sget-object v26, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [[S

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    .line 234
    new-array v0, v15, [S

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    .line 243
    const/4 v11, 0x0

    .line 244
    .local v11, "oils":I
    const/16 v22, 0x0

    .line 245
    .local v22, "vins":I
    const/4 v8, 0x0

    .line 247
    .local v8, "crnt_row":I
    move/from16 v0, v20

    new-array v0, v0, [S

    move-object/from16 v21, v0

    .line 248
    .local v21, "vect_tmp":[S
    const/16 v16, 0x0

    .line 251
    .local v16, "sclr_tmp":S
    const/4 v9, 0x0

    .local v9, "l":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_6

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object/from16 v25, v0

    aget-object v25, v25, v9

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getCoeffAlpha()[[[S

    move-result-object v3

    .line 255
    .local v3, "coeff_alpha":[[[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object/from16 v25, v0

    aget-object v25, v25, v9

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getCoeffBeta()[[[S

    move-result-object v4

    .line 256
    .local v4, "coeff_beta":[[[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object/from16 v25, v0

    aget-object v25, v25, v9

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getCoeffGamma()[[S

    move-result-object v6

    .line 257
    .local v6, "coeff_gamma":[[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object/from16 v25, v0

    aget-object v25, v25, v9

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getCoeffEta()[S

    move-result-object v5

    .line 258
    .local v5, "coeff_eta":[S
    const/16 v25, 0x0

    aget-object v25, v3, v25

    move-object/from16 v0, v25

    array-length v11, v0

    .line 259
    const/16 v25, 0x0

    aget-object v25, v4, v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v22, v0

    .line 261
    const/4 v12, 0x0

    .local v12, "p":I
    :goto_1
    if-ge v12, v11, :cond_5

    .line 264
    const/16 v23, 0x0

    .local v23, "x1":I
    :goto_2
    move/from16 v0, v23

    if-ge v0, v11, :cond_1

    .line 266
    const/16 v24, 0x0

    .local v24, "x2":I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 269
    aget-object v25, v3, v12

    aget-object v25, v25, v23

    aget-short v25, v25, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object/from16 v26, v0

    add-int v27, v23, v22

    aget-object v26, v26, v27

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v21

    .line 271
    add-int v25, v8, v12

    add-int v26, v8, v12

    aget-object v26, v7, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object/from16 v27, v0

    aget-object v27, v27, v24

    .line 273
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multVects([S[S)[[S

    move-result-object v27

    .line 271
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->addSquareMatrix([[S[[S)[[S

    move-result-object v26

    aput-object v26, v7, v25

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v25, v0

    aget-short v25, v25, v24

    move/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v21

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v25, v0

    add-int v26, v8, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v27, v0

    add-int v28, v8, v12

    aget-object v27, v27, v28

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v27

    aput-object v27, v25, v26

    .line 279
    aget-object v25, v3, v12

    aget-object v25, v25, v23

    aget-short v25, v25, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object/from16 v26, v0

    aget-object v26, v26, v24

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v21

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v25, v0

    add-int v26, v23, v22

    aget-short v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v21

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v25, v0

    add-int v26, v8, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v27, v0

    add-int v28, v8, v12

    aget-object v27, v27, v28

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v27

    aput-object v27, v25, v26

    .line 285
    aget-object v25, v3, v12

    aget-object v25, v25, v23

    aget-short v25, v25, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v26, v0

    add-int v27, v23, v22

    aget-short v26, v26, v27

    invoke-static/range {v25 .. v26}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v16

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v25, v0

    add-int v26, v8, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v27, v0

    add-int v28, v8, v12

    aget-short v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v28, v0

    aget-short v28, v28, v24

    .line 289
    move/from16 v0, v16

    move/from16 v1, v28

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v28

    .line 287
    invoke-static/range {v27 .. v28}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v27

    aput-short v27, v25, v26

    .line 266
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_3

    .line 264
    :cond_0
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 293
    .end local v24    # "x2":I
    :cond_1
    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 295
    const/16 v24, 0x0

    .restart local v24    # "x2":I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 298
    aget-object v25, v4, v12

    aget-object v25, v25, v23

    aget-short v25, v25, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object/from16 v26, v0

    aget-object v26, v26, v23

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v21

    .line 300
    add-int v25, v8, v12

    add-int v26, v8, v12

    aget-object v26, v7, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object/from16 v27, v0

    aget-object v27, v27, v24

    .line 302
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multVects([S[S)[[S

    move-result-object v27

    .line 300
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->addSquareMatrix([[S[[S)[[S

    move-result-object v26

    aput-object v26, v7, v25

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v25, v0

    aget-short v25, v25, v24

    move/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v21

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v25, v0

    add-int v26, v8, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v27, v0

    add-int v28, v8, v12

    aget-object v27, v27, v28

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v27

    aput-object v27, v25, v26

    .line 308
    aget-object v25, v4, v12

    aget-object v25, v25, v23

    aget-short v25, v25, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object/from16 v26, v0

    aget-object v26, v26, v24

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v21

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v25, v0

    aget-short v25, v25, v23

    move/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v21

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v25, v0

    add-int v26, v8, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v27, v0

    add-int v28, v8, v12

    aget-object v27, v27, v28

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v27

    aput-object v27, v25, v26

    .line 314
    aget-object v25, v4, v12

    aget-object v25, v25, v23

    aget-short v25, v25, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v26, v0

    aget-short v26, v26, v23

    invoke-static/range {v25 .. v26}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v16

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v25, v0

    add-int v26, v8, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v27, v0

    add-int v28, v8, v12

    aget-short v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v28, v0

    aget-short v28, v28, v24

    .line 318
    move/from16 v0, v16

    move/from16 v1, v28

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v28

    .line 316
    invoke-static/range {v27 .. v28}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v27

    aput-short v27, v25, v26

    .line 295
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_5

    .line 293
    :cond_2
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    .line 322
    .end local v24    # "x2":I
    :cond_3
    const/4 v10, 0x0

    .local v10, "n":I
    :goto_6
    add-int v25, v22, v11

    move/from16 v0, v25

    if-ge v10, v0, :cond_4

    .line 325
    aget-object v25, v6, v12

    aget-short v25, v25, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    move-object/from16 v26, v0

    aget-object v26, v26, v10

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v21

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v25, v0

    add-int v26, v8, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v27, v0

    add-int v28, v8, v12

    aget-object v27, v27, v28

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v27

    aput-object v27, v25, v26

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v25, v0

    add-int v26, v8, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v27, v0

    add-int v28, v8, v12

    aget-short v27, v27, v28

    aget-object v28, v6, v12

    aget-short v28, v28, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    move-object/from16 v29, v0

    aget-short v29, v29, v10

    .line 330
    invoke-static/range {v28 .. v29}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v28

    .line 329
    invoke-static/range {v27 .. v28}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v27

    aput-short v27, v25, v26

    .line 322
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 334
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v25, v0

    add-int v26, v8, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v27, v0

    add-int v28, v8, v12

    aget-short v27, v27, v28

    aget-short v28, v5, v12

    invoke-static/range {v27 .. v28}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v27

    aput-short v27, v25, v26

    .line 261
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 337
    .end local v10    # "n":I
    .end local v23    # "x1":I
    :cond_5
    add-int/2addr v8, v11

    .line 251
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 343
    .end local v3    # "coeff_alpha":[[[S
    .end local v4    # "coeff_beta":[[[S
    .end local v5    # "coeff_eta":[S
    .end local v6    # "coeff_gamma":[[S
    .end local v12    # "p":I
    :cond_6
    move/from16 v0, v20

    move/from16 v1, v20

    filled-new-array {v15, v0, v1}, [I

    move-result-object v25

    sget-object v26, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [[[S

    .line 344
    .local v17, "tmp_c_quad":[[[S
    move/from16 v0, v20

    filled-new-array {v15, v0}, [I

    move-result-object v25

    sget-object v26, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[S

    .line 345
    .local v19, "tmp_c_sing":[[S
    new-array v0, v15, [S

    move-object/from16 v18, v0

    .line 346
    .local v18, "tmp_c_scal":[S
    const/4 v14, 0x0

    .local v14, "r":I
    :goto_7
    if-ge v14, v15, :cond_8

    .line 348
    const/4 v13, 0x0

    .local v13, "q":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v13, v0, :cond_7

    .line 350
    aget-object v25, v17, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    move-object/from16 v26, v0

    aget-object v26, v26, v14

    aget-short v26, v26, v13

    aget-object v27, v7, v13

    .line 351
    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multMatrix(S[[S)[[S

    move-result-object v26

    .line 350
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->addSquareMatrix([[S[[S)[[S

    move-result-object v25

    aput-object v25, v17, v14

    .line 352
    aget-object v25, v19, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    move-object/from16 v26, v0

    aget-object v26, v26, v14

    aget-short v26, v26, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    move-object/from16 v27, v0

    aget-object v27, v27, v13

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v25

    aput-object v25, v19, v14

    .line 354
    aget-short v25, v18, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    move-object/from16 v26, v0

    aget-object v26, v26, v14

    aget-short v26, v26, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    move-object/from16 v27, v0

    aget-short v27, v27, v13

    .line 355
    invoke-static/range {v26 .. v27}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v26

    .line 354
    invoke-static/range {v25 .. v26}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v25

    aput-short v25, v18, v14

    .line 348
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 357
    :cond_7
    aget-short v25, v18, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b1:[S

    move-object/from16 v26, v0

    aget-short v26, v26, v14

    invoke-static/range {v25 .. v26}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v25

    aput-short v25, v18, v14

    .line 346
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    .line 360
    .end local v13    # "q":I
    :cond_8
    move-object/from16 v7, v17

    .line 361
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    .line 362
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    .line 364
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->compactPublicKey([[[S)V

    .line 365
    return-void
.end method

.method private generateF()V
    .locals 6

    .prologue
    .line 209
    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->numOfLayers:I

    new-array v1, v1, [Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->numOfLayers:I

    if-ge v0, v1, :cond_0

    .line 212
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    new-instance v2, Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    aget v3, v3, v0

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v4, v5}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;-><init>(IILjava/security/SecureRandom;)V

    aput-object v2, v1, v0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method

.method private generateL1()V
    .locals 7

    .prologue
    .line 133
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int v1, v4, v5

    .line 134
    .local v1, "dim":I
    filled-new-array {v1, v1}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[S

    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    .line 135
    const/4 v4, 0x0

    check-cast v4, [[S

    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1inv:[[S

    .line 136
    new-instance v0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;-><init>()V

    .line 139
    .local v0, "c":Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1inv:[[S

    if-nez v4, :cond_2

    .line 141
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 143
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v1, :cond_0

    .line 145
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v3

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 141
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 148
    .end local v3    # "j":I
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->inverse([[S)[[S

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1inv:[[S

    goto :goto_0

    .line 152
    .end local v2    # "i":I
    :cond_2
    new-array v4, v1, [S

    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b1:[S

    .line 153
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 155
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b1:[S

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v2

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 157
    :cond_3
    return-void
.end method

.method private generateL2()V
    .locals 6

    .prologue
    .line 172
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v1, v4, v5

    .line 173
    .local v1, "dim":I
    filled-new-array {v1, v1}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[S

    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    .line 174
    const/4 v4, 0x0

    check-cast v4, [[S

    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2inv:[[S

    .line 175
    new-instance v0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;-><init>()V

    .line 178
    .local v0, "c":Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2inv:[[S

    if-nez v4, :cond_2

    .line 180
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 182
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v1, :cond_0

    .line 184
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v3

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 180
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 187
    .end local v3    # "j":I
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->inverse([[S)[[S

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2inv:[[S

    goto :goto_0

    .line 190
    .end local v2    # "i":I
    :cond_2
    new-array v4, v1, [S

    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    .line 191
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 193
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v2

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 196
    :cond_3
    return-void
.end method

.method private initializeDefault()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    new-instance v2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;)V

    .line 105
    .local v0, "rbKGParams":Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;
    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initialize(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 106
    return-void
.end method

.method private keygen()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->generateL1()V

    .line 115
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->generateL2()V

    .line 116
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->generateF()V

    .line 117
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->computePublicKey()V

    .line 118
    return-void
.end method


# virtual methods
.method public genKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 8

    .prologue
    .line 68
    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initialized:Z

    if-nez v1, :cond_0

    .line 70
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initializeDefault()V

    .line 74
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->keygen()V

    .line 77
    new-instance v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A1inv:[[S

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b1:[S

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->A2inv:[[S

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V

    .line 81
    .local v0, "privKey":Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;
    new-instance v7, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_quadratic:[[S

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    invoke-direct {v7, v1, v2, v3, v4}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;-><init>(I[[S[[S[S)V

    .line 83
    .local v7, "pubKey":Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
    new-instance v1, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v1, v7, v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v1
.end method

.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->genKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initialize(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 411
    return-void
.end method

.method public initialize(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 1
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 90
    check-cast p1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/KeyGenerationParameters;
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rainbowParams:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    .line 93
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rainbowParams:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    .line 96
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rainbowParams:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;->getParameters()Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;->getVi()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    .line 97
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->rainbowParams:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyGenerationParameters;->getParameters()Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowParameters;->getNumOfLayers()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->numOfLayers:I

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyPairGenerator;->initialized:Z

    .line 100
    return-void
.end method
