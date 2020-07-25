.class public Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
.super Ljava/lang/Object;
.source "SparseTernaryPolynomial.java"

# interfaces
.implements Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;


# static fields
.field private static final BITS_PER_INDEX:I = 0xb


# instance fields
.field private N:I

.field private negOnes:[I

.field private ones:[I


# direct methods
.method constructor <init>(I[I[I)V
    .locals 0
    .param p1, "N"    # I
    .param p2, "ones"    # [I
    .param p3, "negOnes"    # [I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    .line 37
    iput-object p2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    .line 38
    iput-object p3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 1
    .param p1, "intPoly"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .prologue
    .line 49
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 50
    return-void
.end method

.method public constructor <init>([I)V
    .locals 9
    .param p1, "coeffs"    # [I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    array-length v6, p1

    iput v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    .line 60
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    new-array v6, v6, [I

    iput-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    .line 61
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    new-array v6, v6, [I

    iput-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    .line 62
    const/4 v4, 0x0

    .line 63
    .local v4, "onesIdx":I
    const/4 v2, 0x0

    .line 64
    .local v2, "negOnesIdx":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ge v1, v6, :cond_0

    .line 66
    aget v0, p1, v1

    .line 67
    .local v0, "c":I
    packed-switch v0, :pswitch_data_0

    .line 78
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", must be one of {-1, 0, 1}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 70
    :pswitch_0
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "onesIdx":I
    .local v5, "onesIdx":I
    aput v1, v6, v4

    move v4, v5

    .line 64
    .end local v5    # "onesIdx":I
    .restart local v4    # "onesIdx":I
    :goto_1
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "negOnesIdx":I
    .local v3, "negOnesIdx":I
    aput v1, v6, v2

    move v2, v3

    .line 74
    .end local v3    # "negOnesIdx":I
    .restart local v2    # "negOnesIdx":I
    goto :goto_1

    .line 81
    .end local v0    # "c":I
    :cond_0
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {v6, v4}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    .line 82
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v6, v2}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    .line 83
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fromBinary(Ljava/io/InputStream;III)Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "N"    # I
    .param p2, "numOnes"    # I
    .param p3, "numNegOnes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/16 v5, 0x800

    .line 99
    .local v5, "maxIndex":I
    const/16 v8, 0x7ff

    invoke-static {v8}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v8

    rsub-int/lit8 v0, v8, 0x20

    .line 101
    .local v0, "bitsPerIndex":I
    mul-int v8, p2, v0

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v2, v8, 0x8

    .line 102
    .local v2, "data1Len":I
    invoke-static {p0, v2}, Lorg/spongycastle/pqc/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object v1

    .line 103
    .local v1, "data1":[B
    invoke-static {v1, p2, v5}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object v7

    .line 105
    .local v7, "ones":[I
    mul-int v8, p3, v0

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v4, v8, 0x8

    .line 106
    .local v4, "data2Len":I
    invoke-static {p0, v4}, Lorg/spongycastle/pqc/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object v3

    .line 107
    .local v3, "data2":[B
    invoke-static {v3, p3, v5}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object v6

    .line 109
    .local v6, "negOnes":[I
    new-instance v8, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {v8, p1, v7, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>(I[I[I)V

    return-object v8
.end method

.method public static generateRandom(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    .locals 2
    .param p0, "N"    # I
    .param p1, "numOnes"    # I
    .param p2, "numNegOnes"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 122
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/pqc/math/ntru/util/Util;->generateRandomTernary(IIILjava/security/SecureRandom;)[I

    move-result-object v0

    .line 123
    .local v0, "coeffs":[I
    new-instance v1, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 271
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 273
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    aput v2, v1, v0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 277
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    aput v2, v1, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    if-ne p0, p1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v1

    .line 297
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 299
    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 303
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 305
    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    .line 306
    .local v0, "other":Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    iget v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    iget v4, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 308
    goto :goto_0

    .line 310
    :cond_4
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    iget-object v4, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v3, v4}, Lorg/spongycastle/util/Arrays;->areEqual([I[I)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 312
    goto :goto_0

    .line 314
    :cond_5
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    iget-object v4, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {v3, v4}, Lorg/spongycastle/util/Arrays;->areEqual([I[I)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 316
    goto :goto_0
.end method

.method public getNegOnes()[I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    return-object v0
.end method

.method public getOnes()[I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 283
    const/16 v0, 0x1f

    .line 284
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 285
    .local v1, "result":I
    iget v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v1, v2, 0x1f

    .line 286
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v3}, Lorg/spongycastle/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 287
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {v3}, Lorg/spongycastle/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 288
    return v1
.end method

.method public mult(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    .locals 8
    .param p1, "poly2"    # Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    .prologue
    .line 177
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    .line 178
    .local v0, "b":[Ljava/math/BigInteger;
    array-length v6, v0

    iget v7, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-eq v6, v7, :cond_0

    .line 180
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Number of coefficients must be the same"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 183
    :cond_0
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    new-array v1, v6, [Ljava/math/BigInteger;

    .line 184
    .local v1, "c":[Ljava/math/BigInteger;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-ge v2, v6, :cond_1

    .line 186
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v6, v1, v2

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_1
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_1
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v6, v6

    if-eq v3, v6, :cond_4

    .line 191
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    aget v2, v6, v3

    .line 192
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v6, v6, -0x1

    sub-int v4, v6, v2

    .line 193
    .local v4, "j":I
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v5, v6, -0x1

    .local v5, "k":I
    :goto_2
    if-ltz v5, :cond_3

    .line 195
    aget-object v6, v1, v5

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v1, v5

    .line 196
    add-int/lit8 v4, v4, -0x1

    .line 197
    if-gez v4, :cond_2

    .line 199
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v4, v6, -0x1

    .line 193
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 189
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 204
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_4
    const/4 v3, 0x0

    :goto_3
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v6, v6

    if-eq v3, v6, :cond_7

    .line 206
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    aget v2, v6, v3

    .line 207
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v6, v6, -0x1

    sub-int v4, v6, v2

    .line 208
    .restart local v4    # "j":I
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v5, v6, -0x1

    .restart local v5    # "k":I
    :goto_4
    if-ltz v5, :cond_6

    .line 210
    aget-object v6, v1, v5

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v1, v5

    .line 211
    add-int/lit8 v4, v4, -0x1

    .line 212
    if-gez v4, :cond_5

    .line 214
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v4, v6, -0x1

    .line 208
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 204
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 219
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_7
    new-instance v6, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-direct {v6, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>([Ljava/math/BigInteger;)V

    return-object v6
.end method

.method public mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 8
    .param p1, "poly2"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .prologue
    .line 128
    iget-object v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    .line 129
    .local v0, "b":[I
    array-length v6, v0

    iget v7, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    if-eq v6, v7, :cond_0

    .line 131
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Number of coefficients must be the same"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 134
    :cond_0
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    new-array v1, v6, [I

    .line 135
    .local v1, "c":[I
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v6, v6

    if-eq v3, v6, :cond_3

    .line 137
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    aget v2, v6, v3

    .line 138
    .local v2, "i":I
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v6, v6, -0x1

    sub-int v4, v6, v2

    .line 139
    .local v4, "j":I
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v5, v6, -0x1

    .local v5, "k":I
    :goto_1
    if-ltz v5, :cond_2

    .line 141
    aget v6, v1, v5

    aget v7, v0, v4

    add-int/2addr v6, v7

    aput v6, v1, v5

    .line 142
    add-int/lit8 v4, v4, -0x1

    .line 143
    if-gez v4, :cond_1

    .line 145
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v4, v6, -0x1

    .line 139
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 135
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_3
    const/4 v3, 0x0

    :goto_2
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v6, v6

    if-eq v3, v6, :cond_6

    .line 152
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    aget v2, v6, v3

    .line 153
    .restart local v2    # "i":I
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v6, v6, -0x1

    sub-int v4, v6, v2

    .line 154
    .restart local v4    # "j":I
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v5, v6, -0x1

    .restart local v5    # "k":I
    :goto_3
    if-ltz v5, :cond_5

    .line 156
    aget v6, v1, v5

    aget v7, v0, v4

    sub-int/2addr v6, v7

    aput v6, v1, v5

    .line 157
    add-int/lit8 v4, v4, -0x1

    .line 158
    if-gez v4, :cond_4

    .line 160
    iget v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    add-int/lit8 v4, v6, -0x1

    .line 154
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 150
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 165
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    :cond_6
    new-instance v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v6, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v6
.end method

.method public mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 1
    .param p1, "poly2"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "modulus"    # I

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 171
    .local v0, "c":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod(I)V

    .line 172
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    return v0
.end method

.method public toBinary()[B
    .locals 7

    .prologue
    .line 239
    const/16 v3, 0x800

    .line 240
    .local v3, "maxIndex":I
    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    invoke-static {v4, v3}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->encodeModQ([II)[B

    move-result-object v1

    .line 241
    .local v1, "bin1":[B
    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    invoke-static {v4, v3}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->encodeModQ([II)[B

    move-result-object v2

    .line 243
    .local v2, "bin2":[B
    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Lorg/spongycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 244
    .local v0, "bin":[B
    const/4 v4, 0x0

    array-length v5, v1

    array-length v6, v2

    invoke-static {v2, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    return-object v0
.end method

.method public toIntegerPolynomial()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 4

    .prologue
    .line 250
    iget v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->N:I

    new-array v0, v3, [I

    .line 251
    .local v0, "coeffs":[I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 253
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ones:[I

    aget v1, v3, v2

    .line 254
    .local v1, "i":I
    const/4 v3, 0x1

    aput v3, v0, v1

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    array-length v3, v3

    if-eq v2, v3, :cond_1

    .line 258
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->negOnes:[I

    aget v1, v3, v2

    .line 259
    .restart local v1    # "i":I
    const/4 v3, -0x1

    aput v3, v0, v1

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 261
    .end local v1    # "i":I
    :cond_1
    new-instance v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v3, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v3
.end method
