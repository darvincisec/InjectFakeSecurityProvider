.class public final Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode;
.super Ljava/lang/Object;
.source "GoppaCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MatrixSet;,
        Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static computeSystematicForm(Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Ljava/security/SecureRandom;)Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;
    .locals 11
    .param p0, "h"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .param p1, "sr"    # Ljava/security/SecureRandom;

    .prologue
    .line 216
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getNumColumns()I

    move-result v5

    .line 218
    .local v5, "n":I
    const/4 v7, 0x0

    .line 220
    .local v7, "s":Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    const/4 v2, 0x0

    .line 224
    .local v2, "found":Z
    :cond_0
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    invoke-direct {v6, v5, p1}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;-><init>(ILjava/security/SecureRandom;)V

    .line 225
    .local v6, "p":Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    invoke-virtual {p0, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 226
    .local v3, "hp":Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getLeftSubMatrix()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v8

    .line 229
    .local v8, "sInv":Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    const/4 v2, 0x1

    .line 230
    :try_start_0
    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->computeInverse()Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {v7, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Matrix;)Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 240
    .local v9, "shp":Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    invoke-virtual {v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getRightSubMatrix()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v4

    .line 242
    .local v4, "m":Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    new-instance v10, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;

    invoke-direct {v10, v8, v4, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode$MaMaPe;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)V

    return-object v10

    .line 232
    .end local v4    # "m":Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .end local v9    # "shp":Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    :catch_0
    move-exception v1

    .line 234
    .local v1, "ae":Ljava/lang/ArithmeticException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createCanonicalCheckMatrix(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 22
    .param p0, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .param p1, "gp"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    .line 139
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v10

    .line 140
    .local v10, "m":I
    const/16 v18, 0x1

    shl-int v11, v18, v10

    .line 141
    .local v11, "n":I
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getDegree()I

    move-result v15

    .line 145
    .local v15, "t":I
    filled-new-array {v15, v11}, [I

    move-result-object v18

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    .line 148
    .local v5, "hArray":[[I
    filled-new-array {v15, v11}, [I

    move-result-object v18

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [[I

    .line 149
    .local v17, "yz":[[I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    if-ge v8, v11, :cond_0

    .line 152
    const/16 v18, 0x0

    aget-object v18, v17, v18

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->evaluateAt(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v19

    aput v19, v18, v8

    .line 149
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 155
    :cond_0
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    if-ge v6, v15, :cond_2

    .line 157
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_1

    .line 160
    aget-object v18, v17, v6

    add-int/lit8 v19, v6, -0x1

    aget-object v19, v17, v19

    aget v19, v19, v8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v19

    aput v19, v18, v8

    .line 157
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 155
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 165
    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v15, :cond_5

    .line 167
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v11, :cond_4

    .line 169
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_5
    if-gt v9, v6, :cond_3

    .line 171
    aget-object v18, v5, v6

    aget-object v19, v5, v6

    aget v19, v19, v8

    aget-object v20, v17, v9

    aget v20, v20, v8

    add-int v21, v15, v9

    sub-int v21, v21, v6

    .line 172
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v21

    .line 171
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->add(II)I

    move-result v19

    aput v19, v18, v8

    .line 169
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 167
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 165
    .end local v9    # "k":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 179
    :cond_5
    mul-int v18, v15, v10

    add-int/lit8 v19, v11, 0x1f

    ushr-int/lit8 v19, v19, 0x5

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v18

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[I

    .line 181
    .local v14, "result":[[I
    const/4 v8, 0x0

    :goto_6
    if-ge v8, v11, :cond_9

    .line 183
    ushr-int/lit8 v12, v8, 0x5

    .line 184
    .local v12, "q":I
    const/16 v18, 0x1

    and-int/lit8 v19, v8, 0x1f

    shl-int v13, v18, v19

    .line 185
    .local v13, "r":I
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v15, :cond_8

    .line 187
    aget-object v18, v5, v6

    aget v4, v18, v8

    .line 188
    .local v4, "e":I
    const/16 v16, 0x0

    .local v16, "u":I
    :goto_8
    move/from16 v0, v16

    if-ge v0, v10, :cond_7

    .line 190
    ushr-int v18, v4, v16

    and-int/lit8 v3, v18, 0x1

    .line 191
    .local v3, "b":I
    if-eqz v3, :cond_6

    .line 193
    add-int/lit8 v18, v6, 0x1

    mul-int v18, v18, v10

    sub-int v18, v18, v16

    add-int/lit8 v7, v18, -0x1

    .line 194
    .local v7, "ind":I
    aget-object v18, v14, v7

    aget v19, v18, v12

    xor-int v19, v19, v13

    aput v19, v18, v12

    .line 188
    .end local v7    # "ind":I
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 185
    .end local v3    # "b":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 181
    .end local v4    # "e":I
    .end local v16    # "u":I
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 200
    .end local v12    # "q":I
    .end local v13    # "r":I
    :cond_9
    new-instance v18, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-object/from16 v0, v18

    invoke-direct {v0, v11, v14}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(I[[I)V

    return-object v18
.end method

.method public static syndromeDecode(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 18
    .param p0, "syndVec"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .param p1, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .param p2, "gp"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .param p3, "sqRootMatrix"    # [Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    .line 260
    const/16 v16, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v17

    shl-int v10, v16, v17

    .line 263
    .local v10, "n":I
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v6, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 266
    .local v6, "errors":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->isZero()Z

    move-result v16

    if-nez v16, :cond_1

    .line 269
    new-instance v11, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 270
    invoke-virtual/range {p0 .. p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->toExtensionFieldVector(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;)V

    .line 273
    .local v11, "syndrome":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modInverse(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v12

    .line 276
    .local v12, "t":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->addMonomial(I)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v13

    .line 277
    .local v13, "tau":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modSquareRootMatrix([Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v13

    .line 280
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modPolynomialToFracton(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v3

    .line 283
    .local v3, "ab":[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    const/16 v16, 0x0

    aget-object v16, v3, v16

    const/16 v17, 0x0

    aget-object v17, v3, v17

    invoke-virtual/range {v16 .. v17}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v1

    .line 284
    .local v1, "a2":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    const/16 v16, 0x1

    aget-object v16, v3, v16

    const/16 v17, 0x1

    aget-object v17, v3, v17

    invoke-virtual/range {v16 .. v17}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v4

    .line 285
    .local v4, "b2":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial(I)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v14

    .line 286
    .local v14, "xb2":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v1, v14}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v2

    .line 289
    .local v2, "a2plusXb2":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->getHeadCoefficient()I

    move-result v7

    .line 290
    .local v7, "headCoeff":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v9

    .line 291
    .local v9, "invHeadCoeff":I
    invoke-virtual {v2, v9}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement(I)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    .line 294
    .local v5, "elp":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_1

    .line 297
    invoke-virtual {v5, v8}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->evaluateAt(I)I

    move-result v15

    .line 299
    .local v15, "z":I
    if-nez v15, :cond_0

    .line 302
    invoke-virtual {v6, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->setBit(I)V

    .line 294
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "a2":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v2    # "a2plusXb2":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v3    # "ab":[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v4    # "b2":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v5    # "elp":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v7    # "headCoeff":I
    .end local v8    # "i":I
    .end local v9    # "invHeadCoeff":I
    .end local v11    # "syndrome":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v12    # "t":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v13    # "tau":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v14    # "xb2":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .end local v15    # "z":I
    :cond_1
    return-object v6
.end method
