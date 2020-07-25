.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
.super Ljava/lang/Object;
.source "GF2mField.java"


# instance fields
.field private degree:I

.field private polynomial:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "degree"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    .line 36
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Error: the degree of field is too large "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Error: the degree of field is non-positive "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    .line 47
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "degree"    # I
    .param p2, "poly"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    .line 58
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Error: the degree is not correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Error: given polynomial is reducible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    .line 69
    iput p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;)V
    .locals 1
    .param p1, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    .line 92
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    .line 93
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    .line 94
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "enc"    # [B

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    .line 75
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte array is not an encoded finite field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([B)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    .line 81
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte array is not an encoded finite field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    .line 88
    return-void
.end method

.method private static polyToString(I)Ljava/lang/String;
    .locals 6
    .param p0, "p"    # I

    .prologue
    const/4 v5, 0x1

    .line 341
    const-string v2, ""

    .line 342
    .local v2, "str":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 344
    const-string v2, "0"

    .line 366
    :cond_0
    return-object v2

    .line 348
    :cond_1
    and-int/lit8 v3, p0, 0x1

    int-to-byte v0, v3

    .line 349
    .local v0, "b":B
    if-ne v0, v5, :cond_2

    .line 351
    const-string v2, "1"

    .line 353
    :cond_2
    ushr-int/lit8 p0, p0, 0x1

    .line 354
    const/4 v1, 0x1

    .line 355
    .local v1, "i":I
    :goto_0
    if-eqz p0, :cond_0

    .line 357
    and-int/lit8 v3, p0, 0x1

    int-to-byte v0, v3

    .line 358
    if-ne v0, v5, :cond_3

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+x^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    :cond_3
    ushr-int/lit8 p0, p0, 0x1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(II)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 135
    xor-int v0, p1, p2

    return v0
.end method

.method public elementToStr(I)Ljava/lang/String;
    .locals 4
    .param p1, "a"    # I

    .prologue
    .line 280
    const-string v1, ""

    .line 281
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    if-ge v0, v2, :cond_1

    .line 283
    int-to-byte v2, p1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    :goto_1
    ushr-int/lit8 p1, p1, 0x1

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 293
    :cond_1
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 306
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    if-nez v2, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 311
    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 313
    .local v0, "otherField":Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iget v3, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    iget v3, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    if-ne v2, v3, :cond_0

    .line 316
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public exp(II)I
    .locals 3
    .param p1, "a"    # I
    .param p2, "k"    # I

    .prologue
    const/4 v1, 0x1

    .line 159
    if-nez p2, :cond_1

    move v0, v1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    if-nez p1, :cond_2

    .line 165
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :cond_2
    if-ne p1, v1, :cond_3

    move v0, v1

    .line 169
    goto :goto_0

    .line 171
    :cond_3
    const/4 v0, 0x1

    .line 172
    .local v0, "result":I
    if-gez p2, :cond_4

    .line 174
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result p1

    .line 175
    neg-int p2, p2

    .line 177
    :cond_4
    :goto_1
    if-eqz p2, :cond_0

    .line 179
    and-int/lit8 v2, p2, 0x1

    if-ne v2, v1, :cond_5

    .line 181
    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v0

    .line 183
    :cond_5
    invoke-virtual {p0, p1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result p1

    .line 184
    ushr-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method public getDegree()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    return v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getPolynomial()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return v0
.end method

.method public getRandomElement(Ljava/security/SecureRandom;)I
    .locals 3
    .param p1, "sr"    # Ljava/security/SecureRandom;

    .prologue
    .line 225
    const/4 v1, 0x1

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int/2addr v1, v2

    invoke-static {p1, v1}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v0

    .line 226
    .local v0, "result":I
    return v0
.end method

.method public getRandomNonZeroElement()I
    .locals 1

    .prologue
    .line 236
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getRandomNonZeroElement(Ljava/security/SecureRandom;)I

    move-result v0

    return v0
.end method

.method public getRandomNonZeroElement(Ljava/security/SecureRandom;)I
    .locals 5
    .param p1, "sr"    # Ljava/security/SecureRandom;

    .prologue
    const/4 v4, 0x1

    .line 247
    const/high16 v0, 0x100000

    .line 248
    .local v0, "controltime":I
    const/4 v1, 0x0

    .line 249
    .local v1, "count":I
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int v3, v4, v3

    invoke-static {p1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v2

    .line 250
    .local v2, "result":I
    :goto_0
    if-nez v2, :cond_0

    if-ge v1, v0, :cond_0

    .line 252
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int v3, v4, v3

    invoke-static {p1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v2

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_0
    if-ne v1, v0, :cond_1

    .line 257
    const/4 v2, 0x1

    .line 259
    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return v0
.end method

.method public inverse(I)I
    .locals 3
    .param p1, "a"    # I

    .prologue
    .line 197
    const/4 v1, 0x1

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x2

    .line 199
    .local v0, "d":I
    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->exp(II)I

    move-result v1

    return v1
.end method

.method public isElementOfThisField(I)Z
    .locals 4
    .param p1, "e"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 268
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_2

    .line 270
    if-ltz p1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 270
    goto :goto_0

    .line 272
    :cond_2
    if-ltz p1, :cond_3

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int v2, v0, v2

    if-lt p1, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public mult(II)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 147
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {p1, p2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result v0

    return v0
.end method

.method public sqRoot(I)I
    .locals 2
    .param p1, "a"    # I

    .prologue
    .line 210
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    if-ge v0, v1, :cond_0

    .line 212
    invoke-virtual {p0, p1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result p1

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finite Field GF(2^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") = GF(2)[X]/<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    .line 335
    invoke-static {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method
