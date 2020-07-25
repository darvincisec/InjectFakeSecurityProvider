.class public Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;
.super Ljava/lang/Object;
.source "ComputeInField.java"


# instance fields
.field private A:[[S

.field x:[S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private computeZerosAbove()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 243
    const/4 v5, 0x0

    .line 244
    .local v5, "tmp":S
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v6, v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "k":I
    :goto_0
    if-lez v4, :cond_3

    .line 246
    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 248
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v2

    aget-short v0, v6, v4

    .line 249
    .local v0, "factor1":S
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v4

    aget-short v6, v6, v4

    invoke-static {v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v1

    .line 250
    .local v1, "factor2":S
    if-nez v1, :cond_0

    .line 252
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "The matrix is not invertible"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 254
    :cond_0
    move v3, v4

    .local v3, "j":I
    :goto_2
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_1

    .line 257
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v4

    aget-short v6, v6, v3

    invoke-static {v6, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    .line 259
    invoke-static {v0, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    .line 261
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v2

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v2

    aget-short v7, v7, v3

    invoke-static {v7, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v7

    aput-short v7, v6, v3

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 246
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 244
    .end local v0    # "factor1":S
    .end local v1    # "factor2":S
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 265
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private computeZerosUnder(Z)V
    .locals 9
    .param p1, "usedForInverse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v6, 0x0

    .line 191
    .local v6, "tmp":S
    if-eqz p1, :cond_0

    .line 193
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v7, v7

    mul-int/lit8 v5, v7, 0x2

    .line 202
    .local v5, "length":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_4

    .line 204
    add-int/lit8 v2, v4, 0x1

    .local v2, "i":I
    :goto_2
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v7, v7

    if-ge v2, v7, :cond_3

    .line 206
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v2

    aget-short v0, v7, v4

    .line 207
    .local v0, "factor1":S
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v4

    aget-short v7, v7, v4

    invoke-static {v7}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v1

    .line 211
    .local v1, "factor2":S
    if-nez v1, :cond_1

    .line 213
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Matrix not invertible! We have to choose another one!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 198
    .end local v0    # "factor1":S
    .end local v1    # "factor2":S
    .end local v2    # "i":I
    .end local v4    # "k":I
    .end local v5    # "length":I
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v7, v7

    add-int/lit8 v5, v7, 0x1

    .restart local v5    # "length":I
    goto :goto_0

    .line 216
    .restart local v0    # "factor1":S
    .restart local v1    # "factor2":S
    .restart local v2    # "i":I
    .restart local v4    # "k":I
    :cond_1
    move v3, v4

    .local v3, "j":I
    :goto_3
    if-ge v3, v5, :cond_2

    .line 219
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v4

    aget-short v7, v7, v3

    invoke-static {v7, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    .line 221
    invoke-static {v0, v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    .line 223
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v8, v8, v2

    aget-short v8, v8, v3

    invoke-static {v8, v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v8

    aput-short v8, v7, v3

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 204
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 202
    .end local v0    # "factor1":S
    .end local v1    # "factor2":S
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 227
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private substitute()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-short v4, v4, v5

    invoke-static {v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v2

    .line 288
    .local v2, "temp":S
    if-nez v2, :cond_0

    .line 290
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "The equation system is not solvable"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 294
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v7, v7

    aget-short v6, v6, v7

    invoke-static {v6, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    aput-short v6, v4, v5

    .line 295
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v4

    add-int/lit8 v0, v4, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 297
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v5, v5

    aget-short v3, v4, v5

    .line 298
    .local v3, "tmp":S
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_1
    if-le v1, v0, :cond_1

    .line 300
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v0

    aget-short v4, v4, v1

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    aget-short v5, v5, v1

    invoke-static {v4, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v2

    .line 301
    invoke-static {v3, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v3

    .line 298
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 304
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v0

    aget-short v4, v4, v0

    invoke-static {v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v2

    .line 305
    if-nez v2, :cond_2

    .line 307
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Not solvable equation system"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 309
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    invoke-static {v3, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    aput-short v5, v4, v0

    .line 295
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 311
    .end local v1    # "j":I
    .end local v3    # "tmp":S
    :cond_3
    return-void
.end method


# virtual methods
.method public addSquareMatrix([[S[[S)[[S
    .locals 6
    .param p1, "matrix1"    # [[S
    .param p2, "matrix2"    # [[S

    .prologue
    const/4 v5, 0x0

    .line 477
    array-length v3, p1

    array-length v4, p2

    if-ne v3, v4, :cond_0

    aget-object v3, p1, v5

    array-length v3, v3

    aget-object v4, p2, v5

    array-length v4, v4

    if-eq v3, v4, :cond_1

    .line 479
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Addition is not possible!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 482
    :cond_1
    array-length v3, p1

    array-length v4, p1

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    .line 483
    .local v2, "rslt":[[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 485
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_2

    .line 487
    aget-object v3, v2, v0

    aget-object v4, p1, v0

    aget-short v4, v4, v1

    aget-object v5, p2, v0

    aget-short v5, v5, v1

    invoke-static {v4, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v3, v1

    .line 485
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 483
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "j":I
    :cond_3
    return-object v2
.end method

.method public addVect([S[S)[S
    .locals 4
    .param p1, "vector1"    # [S
    .param p2, "vector2"    # [S

    .prologue
    .line 391
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_0

    .line 393
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Multiplication is not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 395
    :cond_0
    array-length v2, p1

    new-array v1, v2, [S

    .line 396
    .local v1, "rslt":[S
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 398
    aget-short v2, p1, v0

    aget-short v3, p2, v0

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v2

    aput-short v2, v1, v0

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_1
    return-object v1
.end method

.method public inverse([[S)[[S
    .locals 8
    .param p1, "coef"    # [[S

    .prologue
    .line 106
    :try_start_0
    array-length v5, p1

    array-length v6, p1

    mul-int/lit8 v6, v6, 0x2

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    .line 107
    array-length v5, p1

    const/4 v6, 0x0

    aget-object v6, p1, v6

    array-length v6, v6

    if-eq v5, v6, :cond_1

    .line 109
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "The matrix is not invertible. Please choose another one!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :catch_0
    move-exception v4

    .line 161
    .local v4, "rte":Ljava/lang/RuntimeException;
    const/4 v5, 0x0

    check-cast v5, [[S

    move-object v2, v5

    .end local v4    # "rte":Ljava/lang/RuntimeException;
    :cond_0
    return-object v2

    .line 114
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_1
    array-length v5, p1

    if-ge v1, v5, :cond_4

    .line 116
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_2

    .line 119
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v1

    aget-object v6, p1, v1

    aget-short v6, v6, v3

    aput-short v6, v5, v3

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    :cond_2
    array-length v3, p1

    :goto_2
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_3

    .line 124
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aput-short v6, v5, v3

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 126
    :cond_3
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v6, v6

    add-int/2addr v6, v1

    const/4 v7, 0x1

    aput-short v7, v5, v6

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v3    # "j":I
    :cond_4
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosUnder(Z)V

    .line 134
    const/4 v1, 0x0

    :goto_3
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v5, v5

    if-ge v1, v5, :cond_6

    .line 136
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v1

    aget-short v5, v5, v1

    invoke-static {v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v0

    .line 137
    .local v0, "factor":S
    move v3, v1

    .restart local v3    # "j":I
    :goto_4
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_5

    .line 139
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v1

    aget-short v6, v6, v3

    invoke-static {v6, v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    aput-short v6, v5, v3

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 134
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 144
    .end local v0    # "factor":S
    .end local v3    # "j":I
    :cond_6
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosAbove()V

    .line 147
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v5, v5

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v6, v6

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    .line 148
    .local v2, "inverse":[[S
    const/4 v1, 0x0

    :goto_5
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 150
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v5

    .restart local v3    # "j":I
    :goto_6
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_7

    .line 152
    aget-object v5, v2, v1

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v6, v6

    sub-int v6, v3, v6

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v1

    aget-short v7, v7, v3

    aput-short v7, v5, v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 148
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public multMatrix(S[[S)[[S
    .locals 6
    .param p1, "scalar"    # S
    .param p2, "matrix"    # [[S

    .prologue
    const/4 v5, 0x0

    .line 455
    array-length v3, p2

    aget-object v4, p2, v5

    array-length v4, v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    .line 456
    .local v2, "rslt":[[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 458
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    aget-object v3, p2, v5

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 460
    aget-object v3, v2, v0

    aget-object v4, p2, v0

    aget-short v4, v4, v1

    invoke-static {p1, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    aput-short v4, v3, v1

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 456
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "j":I
    :cond_1
    return-object v2
.end method

.method public multVect(S[S)[S
    .locals 3
    .param p1, "scalar"    # S
    .param p2, "vector"    # [S

    .prologue
    .line 438
    array-length v2, p2

    new-array v1, v2, [S

    .line 439
    .local v1, "rslt":[S
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 441
    aget-short v2, p2, v0

    invoke-static {p1, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v2

    aput-short v2, v1, v0

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_0
    return-object v1
.end method

.method public multVects([S[S)[[S
    .locals 6
    .param p1, "vector1"    # [S
    .param p2, "vector2"    # [S

    .prologue
    .line 414
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_0

    .line 416
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Multiplication is not possible!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 418
    :cond_0
    array-length v3, p1

    array-length v4, p2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    .line 419
    .local v2, "rslt":[[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 421
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 423
    aget-object v3, v2, v0

    aget-short v4, p1, v0

    aget-short v5, p2, v1

    invoke-static {v4, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    aput-short v4, v3, v1

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 419
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    .end local v1    # "j":I
    :cond_2
    return-object v2
.end method

.method public multiplyMatrix([[S[S)[S
    .locals 6
    .param p1, "M1"    # [[S
    .param p2, "m"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v4, 0x0

    aget-object v4, p1, v4

    array-length v4, v4

    array-length v5, p2

    if-eq v4, v5, :cond_0

    .line 365
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Multiplication is not possible!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 367
    :cond_0
    const/4 v3, 0x0

    .line 368
    .local v3, "tmp":S
    array-length v4, p1

    new-array v0, v4, [S

    .line 369
    .local v0, "B":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 371
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v4, p2

    if-ge v2, v4, :cond_1

    .line 373
    aget-object v4, p1, v1

    aget-short v4, v4, v2

    aget-short v5, p2, v2

    invoke-static {v4, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v3

    .line 374
    aget-short v4, v0, v1

    invoke-static {v4, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v0, v1

    .line 371
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 369
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v2    # "j":I
    :cond_2
    return-object v0
.end method

.method public multiplyMatrix([[S[[S)[[S
    .locals 7
    .param p1, "M1"    # [[S
    .param p2, "M2"    # [[S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 329
    aget-object v4, p1, v6

    array-length v4, v4

    array-length v5, p2

    if-eq v4, v5, :cond_0

    .line 331
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Multiplication is not possible!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 333
    :cond_0
    const/4 v3, 0x0

    .line 334
    .local v3, "tmp":S
    array-length v4, p1

    aget-object v5, p2, v6

    array-length v5, v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[S

    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 337
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, p2

    if-ge v1, v4, :cond_2

    .line 339
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2
    aget-object v4, p2, v6

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 341
    aget-object v4, p1, v0

    aget-short v4, v4, v1

    aget-object v5, p2, v1

    aget-short v5, v5, v2

    invoke-static {v4, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v3

    .line 342
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v0

    aget-short v5, v5, v2

    invoke-static {v5, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v4, v2

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 337
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 335
    .end local v2    # "k":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    .end local v1    # "j":I
    :cond_3
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    return-object v4
.end method

.method public solveEquation([[S[S)[S
    .locals 9
    .param p1, "B"    # [[S
    .param p2, "b"    # [S

    .prologue
    const/4 v4, 0x0

    .line 40
    array-length v3, p1

    array-length v5, p2

    if-eq v3, v5, :cond_0

    move-object v3, v4

    .line 84
    :goto_0
    return-object v3

    .line 54
    :cond_0
    :try_start_0
    array-length v3, p1

    array-length v5, p1

    add-int/lit8 v5, v5, 0x1

    filled-new-array {v3, v5}, [I

    move-result-object v3

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    .line 56
    array-length v3, p1

    new-array v3, v3, [S

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 61
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    const/4 v3, 0x0

    aget-object v3, p1, v3

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 63
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v0

    aget-object v5, p1, v0

    aget-short v5, v5, v1

    aput-short v5, v3, v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 59
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    .end local v1    # "j":I
    :cond_2
    const/4 v0, 0x0

    :goto_3
    array-length v3, p2

    if-ge v0, v3, :cond_3

    .line 72
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v0

    array-length v5, p2

    aget-short v6, p2, v0

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v0

    array-length v8, p2

    aget-short v7, v7, v8

    invoke-static {v6, v7}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v3, v5

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 76
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosUnder(Z)V

    .line 77
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->substitute()V

    .line 79
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0    # "i":I
    :catch_0
    move-exception v2

    .local v2, "rte":Ljava/lang/RuntimeException;
    move-object v3, v4

    .line 84
    goto :goto_0
.end method
