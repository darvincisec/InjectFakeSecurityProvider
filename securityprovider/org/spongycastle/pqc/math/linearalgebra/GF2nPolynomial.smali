.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
.super Ljava/lang/Object;
.source "GF2nPolynomial.java"


# instance fields
.field private coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

.field private size:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "deg"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    .line 44
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    new-array v0, v0, [Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    .line 45
    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/pqc/math/linearalgebra/GF2nElement;)V
    .locals 3
    .param p1, "deg"    # I
    .param p2, "elem"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    .line 29
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    new-array v1, v1, [Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_0

    .line 32
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v1, v2, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;)V
    .locals 3
    .param p1, "polynomial"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .param p2, "B1"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    .line 73
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    new-array v1, v1, [Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    .line 75
    instance-of v1, p2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    if-eqz v1, :cond_1

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_4

    .line 79
    invoke-virtual {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-object v1, p2

    check-cast v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->ONE(Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v1

    aput-object v1, v2, v0

    .line 77
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-object v1, p2

    check-cast v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_1

    .line 89
    .end local v0    # "i":I
    :cond_1
    instance-of v1, p2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    if-eqz v1, :cond_3

    .line 91
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_4

    .line 93
    invoke-virtual {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-object v1, p2

    check-cast v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    .line 96
    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ONE(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v1

    aput-object v1, v2, v0

    .line 91
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 100
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-object v1, p2

    check-cast v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    .line 101
    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_3

    .line 107
    .end local v0    # "i":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PolynomialGF2n(Bitstring, GF2nField): B1 must be an instance of GF2nONBField or GF2nPolynomialField!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    .restart local v0    # "i":I
    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)V
    .locals 3
    .param p1, "a"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    new-array v1, v1, [Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    .line 56
    iget v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_0

    .line 59
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v1, v2, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 5
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 299
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    .line 301
    .local v1, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 303
    iget-object v3, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v2, v2, v0

    iget-object v4, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->add(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v2, v3, v0

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 307
    iget-object v2, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    .end local v0    # "i":I
    .end local v1    # "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    :cond_1
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    .line 314
    .restart local v1    # "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 316
    iget-object v3, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v2, v2, v0

    iget-object v4, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->add(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v2, v3, v0

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 318
    :cond_2
    :goto_3
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 320
    iget-object v2, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    iget-object v3, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 323
    :cond_3
    return-object v1
.end method

.method public final assignZeroToElements()V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->assignZero()V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method public final at(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final divide(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 11
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 487
    const/4 v7, 0x2

    new-array v5, v7, [Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    .line 488
    .local v5, "result":[Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    .line 489
    .local v0, "a":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->shrink()V

    .line 492
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v1

    .line 493
    .local v1, "bDegree":I
    iget-object v7, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->invert()Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    .line 494
    .local v4, "inv":Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v7

    if-ge v7, v1, :cond_0

    .line 496
    new-instance v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v7, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    aput-object v7, v5, v9

    .line 497
    aget-object v7, v5, v9

    invoke-virtual {v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->assignZeroToElements()V

    .line 498
    aget-object v7, v5, v9

    invoke-virtual {v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->shrink()V

    .line 499
    new-instance v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v7, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    aput-object v7, v5, v10

    .line 500
    aget-object v7, v5, v10

    invoke-virtual {v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->shrink()V

    .line 518
    :goto_0
    return-object v5

    .line 503
    :cond_0
    new-instance v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v7, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    aput-object v7, v5, v9

    .line 504
    aget-object v7, v5, v9

    invoke-virtual {v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->assignZeroToElements()V

    .line 505
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v7

    sub-int v3, v7, v1

    .line 506
    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_1

    .line 508
    iget-object v7, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    .line 509
    .local v2, "factor":Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    invoke-virtual {p1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->scalarMultiply(Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v6

    .line 510
    .local v6, "shift":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v6, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->shiftThisLeft(I)V

    .line 511
    invoke-virtual {v0, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->add(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->shrink()V

    .line 513
    aget-object v7, v5, v9

    iget-object v8, v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v7, v8, v3

    .line 514
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v7

    sub-int v3, v7, v1

    goto :goto_1

    .line 516
    .end local v2    # "factor":Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .end local v6    # "shift":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    :cond_1
    aput-object v0, v5, v10

    .line 517
    aget-object v7, v5, v9

    invoke-virtual {v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->shrink()V

    goto :goto_0
.end method

.method public final enlarge(I)V
    .locals 6
    .param p1, "k"    # I

    .prologue
    const/4 v5, 0x0

    .line 158
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-gt p1, v3, :cond_0

    .line 182
    :goto_0
    return-void

    .line 163
    :cond_0
    new-array v2, p1, [Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    .line 164
    .local v2, "res":[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->getField()Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    move-result-object v0

    .line 166
    .local v0, "f":Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v5

    instance-of v3, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-eqz v3, :cond_1

    .line 168
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_2

    move-object v3, v0

    .line 170
    check-cast v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v3

    aput-object v3, v2, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 173
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v5

    instance-of v3, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-eqz v3, :cond_2

    .line 175
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, p1, :cond_2

    move-object v3, v0

    .line 177
    check-cast v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v3

    aput-object v3, v2, v1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 180
    .end local v1    # "i":I
    :cond_2
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    .line 181
    iput-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 253
    if-eqz p1, :cond_0

    instance-of v3, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    if-nez v3, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 258
    check-cast v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    .line 260
    .local v1, "otherPol":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v3

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v3, :cond_2

    .line 267
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v0

    iget-object v4, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final gcd(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 7
    .param p1, "g"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 569
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    .line 570
    .local v0, "a":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v2, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    .line 571
    .local v2, "b":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->shrink()V

    .line 572
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->shrink()V

    .line 576
    :goto_0
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->isZero()Z

    move-result v5

    if-nez v5, :cond_0

    .line 578
    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->remainder(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v3

    .line 579
    .local v3, "c":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    move-object v0, v2

    .line 580
    move-object v2, v3

    goto :goto_0

    .line 582
    .end local v3    # "c":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    :cond_0
    iget-object v5, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v6

    aget-object v1, v5, v6

    .line 583
    .local v1, "alpha":Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->invert()Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->scalarMultiply(Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v4

    .line 584
    .local v4, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    return-object v4
.end method

.method public final getDegree()I
    .locals 2

    .prologue
    .line 141
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 143
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 141
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 148
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isZero()Z
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v1, :cond_1

    .line 240
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    const/4 v1, 0x0

    .line 248
    :goto_1
    return v1

    .line 238
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public final multiply(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 10
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v0

    .line 363
    .local v0, "aDegree":I
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v1

    .line 364
    .local v1, "bDegree":I
    if-eq v0, v1, :cond_0

    .line 366
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "PolynomialGF2n.multiply: this and b must have the same size!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 370
    :cond_0
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    shl-int/lit8 v5, v0, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-direct {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    .line 371
    .local v4, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 373
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 375
    iget-object v5, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    add-int v6, v2, v3

    aget-object v5, v5, v6

    if-nez v5, :cond_1

    .line 377
    iget-object v6, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    add-int v7, v2, v3

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v5, v5, v2

    iget-object v8, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v8, v8, v3

    .line 378
    invoke-virtual {v5, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v5, v6, v7

    .line 373
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 382
    :cond_1
    iget-object v6, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    add-int v7, v2, v3

    iget-object v5, v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    add-int v8, v2, v3

    aget-object v5, v5, v8

    iget-object v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v8, v8, v2

    iget-object v9, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v9, v9, v3

    .line 383
    invoke-virtual {v8, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->add(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v5, v6, v7

    goto :goto_2

    .line 371
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    .end local v3    # "j":I
    :cond_3
    return-object v4
.end method

.method public final multiplyAndReduce(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .param p2, "g"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->reduce(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public final quotient(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 2
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 550
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    .line 551
    .local v0, "result":[Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->divide(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    .line 552
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public final reduce(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 1
    .param p1, "g"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->remainder(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public final remainder(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 2
    .param p1, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 533
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    .line 534
    .local v0, "result":[Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->divide(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object v0

    .line 535
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method public final scalarMultiply(Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 4
    .param p1, "s"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(I)V

    .line 340
    .local v1, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 342
    iget-object v3, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v2, v3, v0

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    return-object v1
.end method

.method public final set(ILorg/spongycastle/pqc/math/linearalgebra/GF2nElement;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "elem"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    .prologue
    .line 209
    instance-of v0, p2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PolynomialGF2n.set f must be an instance of either GF2nPolynomialElement or GF2nONBElement!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v0, v1, p1

    .line 217
    return-void
.end method

.method public final shiftLeft(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    .locals 5
    .param p1, "amount"    # I

    .prologue
    .line 462
    if-gtz p1, :cond_1

    .line 464
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v1, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    .line 472
    :cond_0
    return-object v1

    .line 466
    :cond_1
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(ILorg/spongycastle/pqc/math/linearalgebra/GF2nElement;)V

    .line 467
    .local v1, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->assignZeroToElements()V

    .line 468
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v2, :cond_0

    .line 470
    iget-object v2, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    add-int v3, v0, p1

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final shiftThisLeft(I)V
    .locals 7
    .param p1, "amount"    # I

    .prologue
    const/4 v6, 0x0

    .line 432
    if-lez p1, :cond_2

    .line 435
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    .line 436
    .local v2, "oldSize":I
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->getField()Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    move-result-object v0

    .line 437
    .local v0, "f":Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->enlarge(I)V

    .line 438
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 440
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    add-int v4, v1, p1

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v5, v5, v1

    aput-object v5, v3, v4

    .line 438
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 442
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v6

    instance-of v3, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-eqz v3, :cond_1

    .line 444
    add-int/lit8 v1, p1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 446
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-object v3, v0

    check-cast v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    .line 447
    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v3

    aput-object v3, v4, v1

    .line 444
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 450
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v3, v3, v6

    instance-of v3, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-eqz v3, :cond_2

    .line 452
    add-int/lit8 v1, p1, -0x1

    :goto_2
    if-ltz v1, :cond_2

    .line 454
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-object v3, v0

    check-cast v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v3

    aput-object v3, v4, v1

    .line 452
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 458
    .end local v0    # "f":Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;
    .end local v1    # "i":I
    .end local v2    # "oldSize":I
    :cond_2
    return-void
.end method

.method public final shrink()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    add-int/lit8 v0, v2, -0x1

    .line 187
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 189
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 192
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    if-ge v0, v2, :cond_1

    .line 194
    new-array v1, v0, [Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    .line 195
    .local v1, "res":[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->coeff:[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    .line 197
    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    .line 199
    .end local v1    # "res":[Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    :cond_1
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->size:I

    return v0
.end method
