.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;
.super Lorg/spongycastle/pqc/math/linearalgebra/Vector;
.source "GF2mVector.java"


# instance fields
.field private field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field private vector:[I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[B)V
    .locals 8
    .param p1, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .param p2, "v"    # [B

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 32
    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v5, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;)V

    iput-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 35
    const/16 v2, 0x8

    .line 36
    .local v2, "d":I
    const/4 v0, 0x1

    .line 37
    .local v0, "count":I
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v5

    if-le v5, v2, :cond_0

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 43
    :cond_0
    array-length v5, p2

    rem-int/2addr v5, v0

    if-eqz v5, :cond_1

    .line 45
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Byte array is not an encoded vector over the given finite field."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 49
    :cond_1
    array-length v5, p2

    div-int/2addr v5, v0

    iput v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    .line 50
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    .line 51
    const/4 v0, 0x0

    .line 52
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 54
    const/4 v4, 0x0

    .local v4, "j":I
    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_2
    if-ge v4, v2, :cond_2

    .line 56
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v6, v5, v3

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    aget-byte v7, p2, v1

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v4

    or-int/2addr v6, v7

    aput v6, v5, v3

    .line 54
    add-int/lit8 v4, v4, 0x8

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 58
    :cond_2
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v5, v5, v3

    invoke-virtual {p1, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 60
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Byte array is not an encoded vector over the given finite field."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 52
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 64
    .end local v4    # "j":I
    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V
    .locals 3
    .param p1, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .param p2, "vector"    # [I

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 76
    array-length v1, p2

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    .line 77
    array-length v1, p2

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 79
    aget v1, p2, v0

    invoke-virtual {p1, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Element array is not specified over the given finite field."

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;)V
    .locals 2
    .param p1, "other"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 95
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 96
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    .line 97
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    .line 98
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    .locals 2
    .param p1, "addend"    # Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 205
    instance-of v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    if-nez v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 209
    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    .line 211
    .local v0, "otherVec":Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v3, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    iget-object v2, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v1

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 7

    .prologue
    .line 121
    const/16 v2, 0x8

    .line 122
    .local v2, "d":I
    const/4 v0, 0x1

    .line 123
    .local v0, "count":I
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v6

    if-le v6, v2, :cond_0

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 126
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 129
    :cond_0
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v6, v6

    mul-int/2addr v6, v0

    new-array v5, v6, [B

    .line 130
    .local v5, "res":[B
    const/4 v0, 0x0

    .line 131
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 133
    const/4 v4, 0x0

    .local v4, "j":I
    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_2
    if-ge v4, v2, :cond_1

    .line 135
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v6, v6, v3

    ushr-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 133
    add-int/lit8 v4, v4, 0x8

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 131
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 139
    .end local v4    # "j":I
    :cond_2
    return-object v5
.end method

.method public getField()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public getIntArrayForm()[I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->hashCode()I

    move-result v0

    .line 225
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 226
    return v0
.end method

.method public isZero()Z
    .locals 2

    .prologue
    .line 147
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 149
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 154
    :goto_1
    return v1

    .line 147
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 154
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public multiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    .locals 5
    .param p1, "p"    # Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    .prologue
    .line 180
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v1

    .line 181
    .local v1, "pVec":[I
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    array-length v4, v1

    if-eq v3, v4, :cond_0

    .line 183
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "permutation size and vector size mismatch"

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    :cond_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    new-array v2, v3, [I

    .line 188
    .local v2, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 190
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v3, v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 234
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 237
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 239
    and-int/lit8 v5, v4, 0x1f

    .line 240
    .local v5, "r":I
    const/4 v6, 0x1

    shl-int v0, v6, v5

    .line 241
    .local v0, "bitMask":I
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->vector:[I

    aget v6, v6, v3

    and-int v2, v6, v0

    .line 242
    .local v2, "coeff":I
    if-eqz v2, :cond_0

    .line 244
    const/16 v6, 0x31

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 248
    :cond_0
    const/16 v6, 0x30

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 251
    .end local v0    # "bitMask":I
    .end local v2    # "coeff":I
    .end local v5    # "r":I
    :cond_1
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    .end local v4    # "j":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
