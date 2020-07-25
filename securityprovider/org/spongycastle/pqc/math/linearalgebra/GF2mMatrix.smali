.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;
.super Lorg/spongycastle/pqc/math/linearalgebra/Matrix;
.source "GF2mMatrix.java"


# instance fields
.field protected field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field protected matrix:[[I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[B)V
    .locals 10
    .param p1, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .param p2, "enc"    # [B

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 37
    const/16 v2, 0x8

    .line 38
    .local v2, "d":I
    const/4 v0, 0x1

    .line 39
    .local v0, "count":I
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v7

    if-le v7, v2, :cond_0

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 45
    :cond_0
    array-length v7, p2

    const/4 v8, 0x5

    if-ge v7, v8, :cond_1

    .line 47
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, " Error: given array is not encoded matrix over GF(2^m)"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 51
    :cond_1
    const/4 v7, 0x3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    const/4 v8, 0x2

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    xor-int/2addr v7, v8

    const/4 v8, 0x1

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    xor-int/2addr v7, v8

    const/4 v8, 0x0

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v7, v8

    iput v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    .line 54
    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    mul-int v6, v0, v7

    .line 56
    .local v6, "n":I
    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-lez v7, :cond_2

    array-length v7, p2

    add-int/lit8 v7, v7, -0x4

    rem-int/2addr v7, v6

    if-eqz v7, :cond_3

    .line 58
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, " Error: given array is not encoded matrix over GF(2^m)"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 62
    :cond_3
    array-length v7, p2

    add-int/lit8 v7, v7, -0x4

    div-int/2addr v7, v6

    iput v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    .line 64
    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    filled-new-array {v7, v8}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    iput-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    .line 65
    const/4 v0, 0x4

    .line 66
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v3, v7, :cond_7

    .line 68
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v4, v7, :cond_6

    .line 70
    const/4 v5, 0x0

    .local v5, "jj":I
    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_3
    if-ge v5, v2, :cond_4

    .line 72
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v7, v7, v3

    aget v8, v7, v4

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    aget-byte v9, p2, v1

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v5

    xor-int/2addr v8, v9

    aput v8, v7, v4

    .line 70
    add-int/lit8 v5, v5, 0x8

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_3

    .line 74
    :cond_4
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v8, v8, v3

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v7

    if-nez v7, :cond_5

    .line 76
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, " Error: given array is not encoded matrix over GF(2^m)"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 68
    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_2

    .line 66
    .end local v5    # "jj":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 81
    .end local v4    # "j":I
    :cond_7
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[[I)V
    .locals 1
    .param p1, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .param p2, "matrix"    # [[I

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 109
    iput-object p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    .line 110
    array-length v0, p2

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    .line 111
    const/4 v0, 0x0

    aget-object v0, p2, v0

    array-length v0, v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;)V
    .locals 3
    .param p1, "other"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Matrix;-><init>()V

    .line 90
    iget v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    .line 91
    iget v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    .line 92
    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 93
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    new-array v1, v1, [[I

    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v2, v2, v0

    invoke-static {v2}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    aput-object v2, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method private addToRow([I[I)V
    .locals 4
    .param p1, "fromRow"    # [I
    .param p2, "toRow"    # [I

    .prologue
    .line 283
    array-length v1, p2

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 285
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->add(II)I

    move-result v1

    aput v1, p2, v0

    .line 283
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method private multRowWithElement([II)[I
    .locals 4
    .param p1, "row"    # [I
    .param p2, "element"    # I

    .prologue
    .line 267
    array-length v2, p1

    new-array v1, v2, [I

    .line 268
    .local v1, "result":[I
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 270
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget v3, p1, v0

    invoke-virtual {v2, v3, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v2

    aput v2, v1, v0

    .line 268
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 272
    :cond_0
    return-object v1
.end method

.method private multRowWithElementThis([II)V
    .locals 3
    .param p1, "row"    # [I
    .param p2, "element"    # I

    .prologue
    .line 259
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 261
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget v2, p1, v0

    invoke-virtual {v1, v2, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v1

    aput v1, p1, v0

    .line 259
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method private static swapColumns([[III)V
    .locals 2
    .param p0, "matrix"    # [[I
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    .line 252
    aget-object v0, p0, p1

    .line 253
    .local v0, "tmp":[I
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 254
    aput-object v0, p0, p2

    .line 255
    return-void
.end method


# virtual methods
.method public computeInverse()Lorg/spongycastle/pqc/math/linearalgebra/Matrix;
    .locals 11

    .prologue
    .line 175
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v10, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-eq v9, v10, :cond_0

    .line 177
    new-instance v9, Ljava/lang/ArithmeticException;

    const-string v10, "Matrix is not invertible."

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 181
    :cond_0
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v10, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 182
    .local v7, "tmpMatrix":[[I
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 184
    iget-object v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v9, v9, v2

    invoke-static {v9}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v9

    aput-object v9, v7, v2

    .line 182
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 188
    :cond_1
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v10, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    filled-new-array {v9, v10}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 189
    .local v4, "invMatrix":[[I
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    add-int/lit8 v2, v9, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 191
    aget-object v9, v4, v2

    const/4 v10, 0x1

    aput v10, v9, v2

    .line 189
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 196
    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v2, v9, :cond_8

    .line 199
    aget-object v9, v7, v2

    aget v9, v9, v2

    if-nez v9, :cond_5

    .line 201
    const/4 v1, 0x0

    .line 203
    .local v1, "foundNonZero":Z
    add-int/lit8 v5, v2, 0x1

    .local v5, "j":I
    :goto_3
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v5, v9, :cond_4

    .line 205
    aget-object v9, v7, v5

    aget v9, v9, v2

    if-eqz v9, :cond_3

    .line 208
    const/4 v1, 0x1

    .line 209
    invoke-static {v7, v2, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->swapColumns([[III)V

    .line 210
    invoke-static {v4, v2, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->swapColumns([[III)V

    .line 212
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    .line 203
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 217
    :cond_4
    if-nez v1, :cond_5

    .line 220
    new-instance v9, Ljava/lang/ArithmeticException;

    const-string v10, "Matrix is not invertible."

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 225
    .end local v1    # "foundNonZero":Z
    .end local v5    # "j":I
    :cond_5
    aget-object v9, v7, v2

    aget v0, v9, v2

    .line 226
    .local v0, "coef":I
    iget-object v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v9, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v3

    .line 227
    .local v3, "invCoef":I
    aget-object v9, v7, v2

    invoke-direct {p0, v9, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->multRowWithElementThis([II)V

    .line 228
    aget-object v9, v4, v2

    invoke-direct {p0, v9, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->multRowWithElementThis([II)V

    .line 231
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_4
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v5, v9, :cond_7

    .line 233
    if-eq v5, v2, :cond_6

    .line 235
    aget-object v9, v7, v5

    aget v0, v9, v2

    .line 236
    if-eqz v0, :cond_6

    .line 238
    aget-object v9, v7, v2

    invoke-direct {p0, v9, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->multRowWithElement([II)[I

    move-result-object v8

    .line 239
    .local v8, "tmpRow":[I
    aget-object v9, v4, v2

    invoke-direct {p0, v9, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->multRowWithElement([II)[I

    move-result-object v6

    .line 240
    .local v6, "tmpInvRow":[I
    aget-object v9, v7, v5

    invoke-direct {p0, v8, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->addToRow([I[I)V

    .line 241
    aget-object v9, v4, v5

    invoke-direct {p0, v6, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->addToRow([I[I)V

    .line 231
    .end local v6    # "tmpInvRow":[I
    .end local v8    # "tmpRow":[I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 196
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 247
    .end local v0    # "coef":I
    .end local v3    # "invCoef":I
    .end local v5    # "j":I
    :cond_8
    new-instance v9, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;

    iget-object v10, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v9, v10, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[[I)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 319
    if-eqz p1, :cond_0

    instance-of v4, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;

    if-nez v4, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 324
    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;

    .line 326
    .local v2, "otherMatrix":Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v5, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ne v4, v5, :cond_0

    iget v4, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ne v4, v5, :cond_0

    .line 333
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v0, v4, :cond_3

    .line 335
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v1, v4, :cond_2

    .line 337
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    iget-object v5, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    if-ne v4, v5, :cond_0

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 333
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    .end local v1    # "j":I
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 9

    .prologue
    .line 119
    const/16 v3, 0x8

    .line 120
    .local v3, "d":I
    const/4 v1, 0x1

    .line 121
    .local v1, "count":I
    :goto_0
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v7

    if-le v7, v3, :cond_0

    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    add-int/lit8 v3, v3, 0x8

    goto :goto_0

    .line 127
    :cond_0
    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    iget v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    mul-int/2addr v7, v8

    mul-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x4

    new-array v0, v7, [B

    .line 128
    .local v0, "bf":[B
    const/4 v7, 0x0

    iget v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 129
    const/4 v7, 0x1

    iget v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    ushr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 130
    const/4 v7, 0x2

    iget v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    ushr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 131
    const/4 v7, 0x3

    iget v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    ushr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 133
    const/4 v1, 0x4

    .line 134
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v4, v7, :cond_3

    .line 136
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v5, v7, :cond_2

    .line 138
    const/4 v6, 0x0

    .local v6, "jj":I
    move v2, v1

    .end local v1    # "count":I
    .local v2, "count":I
    :goto_3
    if-ge v6, v3, :cond_1

    .line 140
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v7, v7, v4

    aget v7, v7, v5

    ushr-int/2addr v7, v6

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 138
    add-int/lit8 v6, v6, 0x8

    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_3

    .line 136
    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 134
    .end local v6    # "jj":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 145
    .end local v5    # "j":I
    :cond_3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 349
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1f

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x1f

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    add-int v0, v3, v4

    .line 350
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v1, v3, :cond_1

    .line 352
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v2, v3, :cond_0

    .line 354
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    add-int v0, v3, v4

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 350
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v2    # "j":I
    :cond_1
    return v0
.end method

.method public isZero()Z
    .locals 3

    .prologue
    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v0, v2, :cond_2

    .line 157
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v1, v2, :cond_1

    .line 159
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-eqz v2, :cond_0

    .line 161
    const/4 v2, 0x0

    .line 165
    .end local v1    # "j":I
    :goto_2
    return v2

    .line 157
    .restart local v1    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "j":I
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public leftMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    .locals 2
    .param p1, "vector"    # Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    .prologue
    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rightMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Matrix;)Lorg/spongycastle/pqc/math/linearalgebra/Matrix;
    .locals 2
    .param p1, "a"    # Lorg/spongycastle/pqc/math/linearalgebra/Matrix;

    .prologue
    .line 291
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rightMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Matrix;
    .locals 2
    .param p1, "perm"    # Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    .prologue
    .line 296
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rightMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    .locals 2
    .param p1, "vector"    # Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    .prologue
    .line 306
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Matrix over "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 363
    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numRows:I

    if-ge v0, v3, :cond_1

    .line 367
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->numColumns:I

    if-ge v1, v3, :cond_0

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mMatrix;->matrix:[[I

    aget-object v5, v5, v0

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->elementToStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 371
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "j":I
    :cond_1
    return-object v2
.end method
