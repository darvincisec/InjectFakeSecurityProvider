.class public Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;
.super Ljava/lang/Object;
.source "RainbowSigner.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageSigner;


# static fields
.field private static final MAXITS:I = 0x10000


# instance fields
.field private cf:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

.field key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

.field private random:Ljava/security/SecureRandom;

.field signableDocumentLength:I

.field private x:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    return-void
.end method

.method private initSign([Lorg/spongycastle/pqc/crypto/rainbow/Layer;[S)[S
    .locals 5
    .param p1, "layer"    # [Lorg/spongycastle/pqc/crypto/rainbow/Layer;
    .param p2, "msg"    # [S

    .prologue
    .line 81
    array-length v3, p2

    new-array v2, v3, [S

    .line 83
    .local v2, "tmpVec":[S
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v3, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getB1()[S

    move-result-object v3

    invoke-virtual {v4, v3, p2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v2

    .line 86
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v3, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA1()[[S

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v0

    .line 89
    .local v0, "Y_":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getVi()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 91
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v1

    .line 92
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    aget-short v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v3, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-object v0
.end method

.method private makeMessageRepresentative([B)[S
    .locals 4
    .param p1, "message"    # [B

    .prologue
    .line 291
    iget v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    new-array v2, v3, [S

    .line 293
    .local v2, "output":[S
    const/4 v0, 0x0

    .line 294
    .local v0, "h":I
    const/4 v1, 0x0

    .line 297
    .local v1, "i":I
    :cond_0
    array-length v3, p1

    if-lt v1, v3, :cond_1

    .line 308
    :goto_0
    return-object v2

    .line 301
    :cond_1
    aget-byte v3, p1, v0

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 302
    aget-short v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v1

    .line 303
    add-int/lit8 v0, v0, 0x1

    .line 304
    add-int/lit8 v1, v1, 0x1

    .line 306
    array-length v3, v2

    if-lt v1, v3, :cond_0

    goto :goto_0
.end method

.method private verifySignatureIntern([S)[S
    .locals 13
    .param p1, "signature"    # [S

    .prologue
    .line 248
    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v10, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v10}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffQuadratic()[[S

    move-result-object v0

    .line 249
    .local v0, "coeff_quadratic":[[S
    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v10, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v10}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffSingular()[[S

    move-result-object v2

    .line 250
    .local v2, "coeff_singular":[[S
    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v10, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v10}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getCoeffScalar()[S

    move-result-object v1

    .line 252
    .local v1, "coeff_scalar":[S
    array-length v10, v0

    new-array v6, v10, [S

    .line 253
    .local v6, "rslt":[S
    const/4 v10, 0x0

    aget-object v10, v2, v10

    array-length v3, v10

    .line 254
    .local v3, "n":I
    const/4 v4, 0x0

    .line 255
    .local v4, "offset":I
    const/4 v7, 0x0

    .line 257
    .local v7, "tmp":S
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_0
    array-length v10, v0

    if-ge v5, v10, :cond_2

    .line 259
    const/4 v4, 0x0

    .line 260
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_1
    if-ge v8, v3, :cond_1

    .line 263
    move v9, v8

    .local v9, "y":I
    :goto_2
    if-ge v9, v3, :cond_0

    .line 265
    aget-object v10, v0, v5

    aget-short v10, v10, v4

    aget-short v11, p1, v8

    aget-short v12, p1, v9

    .line 266
    invoke-static {v11, v12}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v11

    .line 265
    invoke-static {v10, v11}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v7

    .line 267
    aget-short v10, v6, v5

    invoke-static {v10, v7}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v10

    aput-short v10, v6, v5

    .line 268
    add-int/lit8 v4, v4, 0x1

    .line 263
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 271
    :cond_0
    aget-object v10, v2, v5

    aget-short v10, v10, v8

    aget-short v11, p1, v8

    invoke-static {v10, v11}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v7

    .line 272
    aget-short v10, v6, v5

    invoke-static {v10, v7}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v10

    aput-short v10, v6, v5

    .line 260
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 275
    .end local v9    # "y":I
    :cond_1
    aget-short v10, v6, v5

    aget-short v11, v1, v5

    invoke-static {v10, v11}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v10

    aput-short v10, v6, v5

    .line 257
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 278
    .end local v8    # "x":I
    :cond_2
    return-object v6
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 22
    .param p1, "message"    # [B

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    move-object/from16 v19, v0

    check-cast v19, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getLayers()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-result-object v10

    .line 113
    .local v10, "layer":[Lorg/spongycastle/pqc/crypto/rainbow/Layer;
    array-length v12, v10

    .line 115
    .local v12, "numberOfLayers":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    move-object/from16 v19, v0

    check-cast v19, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA2()[[S

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [S

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    .line 127
    add-int/lit8 v19, v12, -0x1

    aget-object v19, v10, v19

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getViNext()I

    move-result v19

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 129
    .local v3, "S":[B
    invoke-direct/range {p0 .. p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object v11

    .line 130
    .local v11, "msgHashVals":[S
    const/4 v7, 0x0

    .line 136
    .local v7, "itCount":I
    :cond_0
    const/4 v13, 0x1

    .line 137
    .local v13, "ok":Z
    const/4 v5, 0x0

    .line 140
    .local v5, "counter":I
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->initSign([Lorg/spongycastle/pqc/crypto/rainbow/Layer;[S)[S

    move-result-object v4

    .line 142
    .local v4, "Y_":[S
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v12, :cond_6

    .line 145
    aget-object v19, v10, v6

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [S

    move-object/from16 v18, v0

    .line 146
    .local v18, "y_i":[S
    aget-object v19, v10, v6

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [S

    move-object/from16 v16, v0

    .line 149
    .local v16, "solVec":[S
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_1
    aget-object v19, v10, v6

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getOi()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_1

    .line 151
    aget-short v19, v4, v5

    aput-short v19, v18, v9

    .line 152
    add-int/lit8 v5, v5, 0x1

    .line 149
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 159
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    move-object/from16 v19, v0

    aget-object v20, v10, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->plugInVinegars([S)[[S

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->solveEquation([[S[S)[S

    move-result-object v16

    .line 161
    if-nez v16, :cond_4

    .line 163
    new-instance v19, Ljava/lang/Exception;

    const-string v20, "LES is not solveable!"

    invoke-direct/range {v19 .. v20}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v4    # "Y_":[S
    .end local v6    # "i":I
    .end local v9    # "k":I
    .end local v16    # "solVec":[S
    .end local v18    # "y_i":[S
    :catch_0
    move-exception v14

    .line 186
    .local v14, "se":Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 189
    .end local v14    # "se":Ljava/lang/Exception;
    :cond_2
    if-nez v13, :cond_3

    add-int/lit8 v7, v7, 0x1

    const/high16 v19, 0x10000

    move/from16 v0, v19

    if-lt v7, v0, :cond_0

    .line 192
    :cond_3
    const/high16 v19, 0x10000

    move/from16 v0, v19

    if-ne v7, v0, :cond_7

    .line 194
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "unable to generate signature - LES not solvable"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 167
    .restart local v4    # "Y_":[S
    .restart local v6    # "i":I
    .restart local v9    # "k":I
    .restart local v16    # "solVec":[S
    .restart local v18    # "y_i":[S
    :cond_4
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    :try_start_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_5

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    move-object/from16 v19, v0

    aget-object v20, v10, v6

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->getVi()I

    move-result v20

    add-int v20, v20, v8

    aget-short v21, v16, v8

    aput-short v21, v19, v20

    .line 167
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 142
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 174
    .end local v8    # "j":I
    .end local v9    # "k":I
    .end local v16    # "solVec":[S
    .end local v18    # "y_i":[S
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    move-object/from16 v19, v0

    check-cast v19, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getB2()[S

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->x:[S

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v17

    .line 175
    .local v17, "tmpVec":[S
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    move-object/from16 v19, v0

    check-cast v19, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getInvA2()[[S

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v15

    .line 178
    .local v15, "signature":[S
    const/4 v6, 0x0

    :goto_3
    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_2

    .line 180
    aget-short v19, v15, v6

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v3, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 197
    .end local v4    # "Y_":[S
    .end local v6    # "i":I
    .end local v15    # "signature":[S
    .end local v17    # "tmpVec":[S
    :cond_7
    return-object v3
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 42
    if-eqz p1, :cond_1

    .line 44
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 46
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 48
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    .line 49
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    .line 64
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getDocLength()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    .line 65
    return-void

    .line 55
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    .line 56
    check-cast p2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    goto :goto_0

    .line 61
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/spongycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([B[B)Z
    .locals 10
    .param p1, "message"    # [B
    .param p2, "signature"    # [B

    .prologue
    const/4 v7, 0x0

    .line 210
    array-length v8, p2

    new-array v2, v8, [S

    .line 213
    .local v2, "sigInt":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v8, p2

    if-ge v0, v8, :cond_0

    .line 215
    aget-byte v8, p2, v0

    int-to-short v3, v8

    .line 216
    .local v3, "tmp":S
    and-int/lit16 v8, v3, 0xff

    int-to-short v3, v8

    .line 217
    aput-short v3, v2, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    .end local v3    # "tmp":S
    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object v1

    .line 223
    .local v1, "msgHashVal":[S
    invoke-direct {p0, v2}, Lorg/spongycastle/pqc/crypto/rainbow/RainbowSigner;->verifySignatureIntern([S)[S

    move-result-object v4

    .line 226
    .local v4, "verificationResult":[S
    const/4 v5, 0x1

    .line 227
    .local v5, "verified":Z
    array-length v8, v1

    array-length v9, v4

    if-eq v8, v9, :cond_1

    move v6, v5

    .line 236
    .end local v5    # "verified":Z
    .local v6, "verified":I
    :goto_1
    return v7

    .line 231
    .end local v6    # "verified":I
    .restart local v5    # "verified":Z
    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v8, v1

    if-ge v0, v8, :cond_3

    .line 233
    if-eqz v5, :cond_2

    aget-short v8, v1, v0

    aget-short v9, v4, v0

    if-ne v8, v9, :cond_2

    const/4 v5, 0x1

    .line 231
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v5, v7

    .line 233
    goto :goto_3

    :cond_3
    move v6, v5

    .restart local v6    # "verified":I
    move v7, v5

    .line 236
    goto :goto_1
.end method
