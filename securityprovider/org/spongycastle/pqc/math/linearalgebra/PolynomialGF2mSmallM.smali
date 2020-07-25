.class public Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
.super Ljava/lang/Object;
.source "PolynomialGF2mSmallM.java"


# static fields
.field public static final RANDOM_IRREDUCIBLE_POLYNOMIAL:C = 'I'


# instance fields
.field private coefficients:[I

.field private degree:I

.field private field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;)V
    .locals 1
    .param p1, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;I)V
    .locals 2
    .param p1, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .param p2, "degree"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 123
    iput p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    .line 124
    add-int/lit8 v0, p2, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 125
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    const/4 v1, 0x1

    aput v1, v0, p2

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;ICLjava/security/SecureRandom;)V
    .locals 3
    .param p1, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .param p2, "deg"    # I
    .param p3, "typeOfPolynomial"    # C
    .param p4, "sr"    # Ljava/security/SecureRandom;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 69
    packed-switch p3, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Error: type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not defined for GF2smallmPolynomial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :pswitch_0
    invoke-direct {p0, p2, p4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->createRandomIrreduciblePolynomial(ILjava/security/SecureRandom;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 79
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    .line 80
    return-void

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[B)V
    .locals 8
    .param p1, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .param p2, "enc"    # [B

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 153
    const/16 v2, 0x8

    .line 154
    .local v2, "d":I
    const/4 v0, 0x1

    .line 155
    .local v0, "count":I
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v5

    if-le v5, v2, :cond_0

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 158
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 161
    :cond_0
    array-length v5, p2

    rem-int/2addr v5, v0

    if-eqz v5, :cond_1

    .line 163
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, " Error: byte array is not encoded polynomial over given finite field GF2m"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 167
    :cond_1
    array-length v5, p2

    div-int/2addr v5, v0

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 168
    const/4 v0, 0x0

    .line 169
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v5, v5

    if-ge v3, v5, :cond_4

    .line 171
    const/4 v4, 0x0

    .local v4, "j":I
    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_2
    if-ge v4, v2, :cond_2

    .line 173
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v6, v5, v3

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    aget-byte v7, p2, v1

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v4

    xor-int/2addr v6, v7

    aput v6, v5, v3

    .line 171
    add-int/lit8 v4, v4, 0x8

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 175
    :cond_2
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 177
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, " Error: byte array is not encoded polynomial over given finite field GF2m"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 169
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 182
    .end local v4    # "j":I
    :cond_4
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v5, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    if-nez v5, :cond_5

    .line 185
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, " Error: byte array is not encoded polynomial over given finite field GF2m"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 188
    :cond_5
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    .line 189
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V
    .locals 1
    .param p1, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .param p2, "coeffs"    # [I

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 138
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 139
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;)V
    .locals 2
    .param p1, "vect"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    .prologue
    .line 213
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->getField()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->getIntArrayForm()[I

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    .line 214
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 1
    .param p1, "other"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 200
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    .line 201
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 202
    return-void
.end method

.method private add([I[I)[I
    .locals 6
    .param p1, "a"    # [I
    .param p2, "b"    # [I

    .prologue
    const/4 v5, 0x0

    .line 358
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 360
    array-length v3, p2

    new-array v2, v3, [I

    .line 361
    .local v2, "result":[I
    array-length v3, p2

    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    move-object v0, p1

    .line 371
    .local v0, "addend":[I
    :goto_0
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 373
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget v4, v2, v1

    aget v5, v0, v1

    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->add(II)I

    move-result v3

    aput v3, v2, v1

    .line 371
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 366
    .end local v0    # "addend":[I
    .end local v1    # "i":I
    .end local v2    # "result":[I
    :cond_0
    array-length v3, p1

    new-array v2, v3, [I

    .line 367
    .restart local v2    # "result":[I
    array-length v3, p1

    invoke-static {p1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    move-object v0, p2

    .restart local v0    # "addend":[I
    goto :goto_0

    .line 376
    .restart local v1    # "i":I
    :cond_1
    return-object v2
.end method

.method private static computeDegree([I)I
    .locals 2
    .param p0, "a"    # [I

    .prologue
    .line 1087
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "degree":I
    :goto_0
    if-ltz v0, :cond_0

    aget v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1091
    :cond_0
    return v0
.end method

.method private computeDegree()V
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    .line 1071
    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    goto :goto_0

    .line 1075
    :cond_0
    return-void
.end method

.method private createRandomIrreduciblePolynomial(ILjava/security/SecureRandom;)[I
    .locals 5
    .param p1, "deg"    # I
    .param p2, "sr"    # Ljava/security/SecureRandom;

    .prologue
    const/4 v4, 0x0

    .line 92
    add-int/lit8 v3, p1, 0x1

    new-array v2, v3, [I

    .line 93
    .local v2, "resCoeff":[I
    const/4 v3, 0x1

    aput v3, v2, p1

    .line 94
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v3, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getRandomNonZeroElement(Ljava/security/SecureRandom;)I

    move-result v3

    aput v3, v2, v4

    .line 95
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 97
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v3, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getRandomElement(Ljava/security/SecureRandom;)I

    move-result v3

    aput v3, v2, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    :goto_1
    invoke-direct {p0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->isIrreducible([I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    invoke-static {p2, p1}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v1

    .line 102
    .local v1, "n":I
    if-nez v1, :cond_1

    .line 104
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v3, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getRandomNonZeroElement(Ljava/security/SecureRandom;)I

    move-result v3

    aput v3, v2, v4

    goto :goto_1

    .line 108
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v3, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getRandomElement(Ljava/security/SecureRandom;)I

    move-result v3

    aput v3, v2, v1

    goto :goto_1

    .line 111
    .end local v1    # "n":I
    :cond_2
    return-object v2
.end method

.method private div([I[I)[[I
    .locals 11
    .param p1, "a"    # [I
    .param p2, "f"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 516
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v2

    .line 517
    .local v2, "df":I
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v7

    add-int/lit8 v1, v7, 0x1

    .line 518
    .local v1, "da":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    .line 520
    new-instance v7, Ljava/lang/ArithmeticException;

    const-string v8, "Division by zero."

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 522
    :cond_0
    const/4 v7, 0x2

    new-array v6, v7, [[I

    .line 523
    .local v6, "result":[[I
    new-array v7, v10, [I

    aput-object v7, v6, v9

    .line 524
    new-array v7, v1, [I

    aput-object v7, v6, v10

    .line 525
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->headCoefficient([I)I

    move-result v3

    .line 526
    .local v3, "hc":I
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v7, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v3

    .line 527
    aget-object v7, v6, v9

    aput v9, v7, v9

    .line 528
    aget-object v7, v6, v10

    aget-object v8, v6, v10

    array-length v8, v8

    invoke-static {p1, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    :goto_0
    aget-object v7, v6, v10

    invoke-static {v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v7

    if-gt v2, v7, :cond_1

    .line 532
    new-array v0, v10, [I

    .line 533
    .local v0, "coeff":[I
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget-object v8, v6, v10

    invoke-static {v8}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->headCoefficient([I)I

    move-result v8

    invoke-virtual {v7, v8, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v7

    aput v7, v0, v9

    .line 534
    aget v7, v0, v9

    invoke-direct {p0, p2, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v5

    .line 535
    .local v5, "q":[I
    aget-object v7, v6, v10

    invoke-static {v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v7

    sub-int v4, v7, v2

    .line 536
    .local v4, "n":I
    invoke-static {v5, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial([II)[I

    move-result-object v5

    .line 537
    invoke-static {v0, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial([II)[I

    move-result-object v0

    .line 538
    aget-object v7, v6, v9

    invoke-direct {p0, v0, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v7

    aput-object v7, v6, v9

    .line 539
    aget-object v7, v6, v10

    invoke-direct {p0, v5, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v7

    aput-object v7, v6, v10

    goto :goto_0

    .line 541
    .end local v0    # "coeff":[I
    .end local v4    # "n":I
    .end local v5    # "q":[I
    :cond_1
    return-object v6
.end method

.method private gcd([I[I)[I
    .locals 8
    .param p1, "f"    # [I
    .param p2, "g"    # [I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 566
    move-object v0, p1

    .line 567
    .local v0, "a":[I
    move-object v1, p2

    .line 568
    .local v1, "b":[I
    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v5

    if-ne v5, v7, :cond_0

    move-object v2, v1

    .end local v1    # "b":[I
    .local v2, "b":[I
    move-object v5, v1

    .line 581
    :goto_0
    return-object v5

    .line 572
    .end local v2    # "b":[I
    .restart local v1    # "b":[I
    :cond_0
    :goto_1
    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v5

    if-eq v5, v7, :cond_1

    .line 574
    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->mod([I[I)[I

    move-result-object v3

    .line 575
    .local v3, "c":[I
    array-length v5, v1

    new-array v0, v5, [I

    .line 576
    array-length v5, v0

    invoke-static {v1, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    array-length v5, v3

    new-array v1, v5, [I

    .line 578
    array-length v5, v1

    invoke-static {v3, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 580
    .end local v3    # "c":[I
    :cond_1
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->headCoefficient([I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v4

    .line 581
    .local v4, "coeff":I
    invoke-direct {p0, v0, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v5

    move-object v2, v1

    .end local v1    # "b":[I
    .restart local v2    # "b":[I
    goto :goto_0
.end method

.method private static headCoefficient([I)I
    .locals 2
    .param p0, "a"    # [I

    .prologue
    .line 256
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v0

    .line 257
    .local v0, "degree":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 259
    const/4 v1, 0x0

    .line 261
    :goto_0
    return v1

    :cond_0
    aget v1, p0, v0

    goto :goto_0
.end method

.method private static isEqual([I[I)Z
    .locals 6
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .prologue
    const/4 v3, 0x0

    .line 1017
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v0

    .line 1018
    .local v0, "da":I
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v1

    .line 1019
    .local v1, "db":I
    if-eq v0, v1, :cond_1

    .line 1030
    :cond_0
    :goto_0
    return v3

    .line 1023
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-gt v2, v0, :cond_2

    .line 1025
    aget v4, p0, v2

    aget v5, p1, v2

    if-ne v4, v5, :cond_0

    .line 1023
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1030
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isIrreducible([I)Z
    .locals 10
    .param p1, "a"    # [I

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    .line 689
    aget v8, p1, v7

    if-nez v8, :cond_1

    .line 710
    :cond_0
    :goto_0
    return v7

    .line 693
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v8

    shr-int/lit8 v1, v8, 0x1

    .line 694
    .local v1, "d":I
    new-array v6, v9, [I

    fill-array-data v6, :array_0

    .line 695
    .local v6, "u":[I
    new-array v0, v9, [I

    fill-array-data v0, :array_1

    .line 696
    .local v0, "Y":[I
    iget-object v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v2

    .line 697
    .local v2, "fieldDegree":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 699
    add-int/lit8 v5, v2, -0x1

    .local v5, "j":I
    :goto_2
    if-ltz v5, :cond_2

    .line 701
    invoke-direct {p0, v6, v6, p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modMultiply([I[I[I)[I

    move-result-object v6

    .line 699
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 703
    :cond_2
    invoke-static {v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v6

    .line 704
    invoke-direct {p0, v6, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v8

    invoke-direct {p0, v8, p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->gcd([I[I)[I

    move-result-object v3

    .line 705
    .local v3, "g":[I
    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v8

    if-nez v8, :cond_0

    .line 697
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 710
    .end local v3    # "g":[I
    .end local v5    # "j":I
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 694
    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    .line 695
    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private mod([I[I)[I
    .locals 7
    .param p1, "a"    # [I
    .param p2, "f"    # [I

    .prologue
    const/4 v6, 0x0

    .line 734
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v1

    .line 735
    .local v1, "df":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 737
    new-instance v5, Ljava/lang/ArithmeticException;

    const-string v6, "Division by zero"

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 739
    :cond_0
    array-length v5, p1

    new-array v4, v5, [I

    .line 740
    .local v4, "result":[I
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->headCoefficient([I)I

    move-result v2

    .line 741
    .local v2, "hc":I
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v5, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v2

    .line 742
    array-length v5, v4

    invoke-static {p1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 743
    :goto_0
    invoke-static {v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v5

    if-gt v1, v5, :cond_1

    .line 746
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-static {v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->headCoefficient([I)I

    move-result v6

    invoke-virtual {v5, v6, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v0

    .line 747
    .local v0, "coeff":I
    invoke-static {v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {p2, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial([II)[I

    move-result-object v3

    .line 748
    .local v3, "q":[I
    invoke-direct {p0, v3, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v3

    .line 749
    invoke-direct {p0, v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v4

    .line 750
    goto :goto_0

    .line 751
    .end local v0    # "coeff":I
    .end local v3    # "q":[I
    :cond_1
    return-object v4
.end method

.method private modDiv([I[I[I)[I
    .locals 11
    .param p1, "a"    # [I
    .param p2, "b"    # [I
    .param p3, "g"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 915
    invoke-static {p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v2

    .line 916
    .local v2, "r0":[I
    invoke-direct {p0, p2, p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->mod([I[I)[I

    move-result-object v3

    .line 917
    .local v3, "r1":[I
    new-array v4, v10, [I

    aput v9, v4, v9

    .line 918
    .local v4, "s0":[I
    invoke-direct {p0, p1, p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->mod([I[I)[I

    move-result-object v5

    .line 921
    .local v5, "s1":[I
    :goto_0
    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 923
    invoke-direct {p0, v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->div([I[I)[[I

    move-result-object v1

    .line 924
    .local v1, "q":[[I
    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v2

    .line 925
    aget-object v7, v1, v10

    invoke-static {v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v3

    .line 926
    aget-object v7, v1, v9

    invoke-direct {p0, v7, v5, p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modMultiply([I[I[I)[I

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v6

    .line 927
    .local v6, "s2":[I
    invoke-static {v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v4

    .line 928
    invoke-static {v6}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v5

    goto :goto_0

    .line 931
    .end local v1    # "q":[[I
    .end local v6    # "s2":[I
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->headCoefficient([I)I

    move-result v0

    .line 932
    .local v0, "hc":I
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v7, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v7

    invoke-direct {p0, v4, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v4

    .line 933
    return-object v4
.end method

.method private modMultiply([I[I[I)[I
    .locals 1
    .param p1, "a"    # [I
    .param p2, "b"    # [I
    .param p3, "g"    # [I

    .prologue
    .line 821
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply([I[I)[I

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->mod([I[I)[I

    move-result-object v0

    return-object v0
.end method

.method private multWithElement([II)[I
    .locals 5
    .param p1, "a"    # [I
    .param p2, "element"    # I

    .prologue
    const/4 v4, 0x1

    .line 440
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v0

    .line 441
    .local v0, "degree":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-nez p2, :cond_2

    .line 443
    :cond_0
    new-array v2, v4, [I

    .line 457
    :cond_1
    :goto_0
    return-object v2

    .line 446
    :cond_2
    if-ne p2, v4, :cond_3

    .line 448
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    goto :goto_0

    .line 451
    :cond_3
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [I

    .line 452
    .local v2, "result":[I
    move v1, v0

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 454
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget v4, p1, v1

    invoke-virtual {v3, v4, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v3

    aput v3, v2, v1

    .line 452
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private static multWithMonomial([II)[I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "k"    # I

    .prologue
    .line 481
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v0

    .line 482
    .local v0, "d":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 484
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 488
    :goto_0
    return-object v1

    .line 486
    :cond_0
    add-int v2, v0, p1

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 487
    .local v1, "result":[I
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v2, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private multiply([I[I)[I
    .locals 21
    .param p1, "a"    # [I
    .param p2, "b"    # [I

    .prologue
    .line 608
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v18

    invoke-static/range {p2 .. p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 610
    move-object/from16 v10, p2

    .line 611
    .local v10, "mult1":[I
    move-object/from16 v11, p1

    .line 619
    .local v11, "mult2":[I
    :goto_0
    invoke-static {v10}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v10

    .line 620
    invoke-static {v11}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v11

    .line 622
    array-length v0, v11

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 624
    const/16 v18, 0x0

    aget v18, v11, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v15

    .line 673
    :goto_1
    return-object v15

    .line 615
    .end local v10    # "mult1":[I
    .end local v11    # "mult2":[I
    :cond_0
    move-object/from16 v10, p1

    .line 616
    .restart local v10    # "mult1":[I
    move-object/from16 v11, p2

    .restart local v11    # "mult2":[I
    goto :goto_0

    .line 627
    :cond_1
    array-length v4, v10

    .line 628
    .local v4, "d1":I
    array-length v5, v11

    .line 629
    .local v5, "d2":I
    add-int v18, v4, v5

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    new-array v15, v0, [I

    .line 631
    .local v15, "result":[I
    if-eq v5, v4, :cond_2

    .line 633
    new-array v12, v5, [I

    .line 634
    .local v12, "res1":[I
    sub-int v18, v4, v5

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 635
    .local v13, "res2":[I
    const/16 v18, 0x0

    const/16 v19, 0x0

    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v10, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 636
    const/16 v18, 0x0

    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v10, v5, v13, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply([I[I)[I

    move-result-object v12

    .line 638
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply([I[I)[I

    move-result-object v13

    .line 639
    invoke-static {v13, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial([II)[I

    move-result-object v13

    .line 640
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v15

    .line 641
    goto :goto_1

    .line 644
    .end local v12    # "res1":[I
    .end local v13    # "res2":[I
    :cond_2
    add-int/lit8 v18, v4, 0x1

    ushr-int/lit8 v5, v18, 0x1

    .line 645
    sub-int v3, v4, v5

    .line 646
    .local v3, "d":I
    new-array v6, v5, [I

    .line 647
    .local v6, "firstPartMult1":[I
    new-array v7, v5, [I

    .line 648
    .local v7, "firstPartMult2":[I
    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 649
    .local v16, "secondPartMult1":[I
    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 650
    .local v17, "secondPartMult2":[I
    const/16 v18, 0x0

    const/16 v19, 0x0

    array-length v0, v6

    move/from16 v20, v0

    .line 651
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v10, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    const/16 v18, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v10, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 655
    const/16 v18, 0x0

    const/16 v19, 0x0

    array-length v0, v7

    move/from16 v20, v0

    .line 656
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v11, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 658
    const/16 v18, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v11, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v6, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v8

    .line 661
    .local v8, "helpPoly1":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v9

    .line 662
    .local v9, "helpPoly2":[I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply([I[I)[I

    move-result-object v12

    .line 663
    .restart local v12    # "res1":[I
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply([I[I)[I

    move-result-object v13

    .line 664
    .restart local v13    # "res2":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply([I[I)[I

    move-result-object v14

    .line 665
    .local v14, "res3":[I
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v13

    .line 666
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v13

    .line 667
    invoke-static {v14, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial([II)[I

    move-result-object v14

    .line 668
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v15

    .line 669
    invoke-static {v15, v5}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial([II)[I

    move-result-object v15

    .line 670
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v12}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v15

    goto/16 :goto_1
.end method

.method private static normalForm([I)[I
    .locals 5
    .param p0, "a"    # [I

    .prologue
    const/4 v4, 0x0

    .line 1102
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v0

    .line 1105
    .local v0, "d":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1108
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 1121
    :goto_0
    return-object v1

    .line 1112
    :cond_0
    array-length v2, p0

    add-int/lit8 v3, v0, 0x1

    if-ne v2, v3, :cond_1

    .line 1115
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v1

    goto :goto_0

    .line 1119
    :cond_1
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [I

    .line 1120
    .local v1, "result":[I
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3
    .param p1, "addend"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    .line 332
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v0

    .line 333
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public addMonomial(I)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 4
    .param p1, "degree"    # I

    .prologue
    .line 387
    add-int/lit8 v2, p1, 0x1

    new-array v0, v2, [I

    .line 388
    .local v0, "monomial":[I
    const/4 v2, 0x1

    aput v2, v0, p1

    .line 389
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v1

    .line 390
    .local v1, "resultCoeff":[I
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v2
.end method

.method public addToThis(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    .locals 2
    .param p1, "addend"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    .line 343
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 344
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    .line 345
    return-void
.end method

.method public div(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 7
    .param p1, "f"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 500
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->div([I[I)[[I

    move-result-object v0

    .line 501
    .local v0, "resultCoeffs":[[I
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget-object v4, v0, v5

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget-object v4, v0, v6

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    aput-object v2, v1, v6

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 991
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    if-nez v2, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 996
    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 998
    .local v0, "p":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v3, v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    iget v3, v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v3, v0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 999
    invoke-static {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->isEqual([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1001
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public evaluateAt(I)I
    .locals 4
    .param p1, "e"    # I

    .prologue
    .line 316
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    aget v1, v2, v3

    .line 317
    .local v1, "result":I
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 319
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v2, v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v2

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v3, v3, v0

    xor-int v1, v2, v3

    .line 317
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 321
    :cond_0
    return v1
.end method

.method public gcd(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3
    .param p1, "f"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    .line 552
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->gcd([I[I)[I

    move-result-object v0

    .line 553
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public getCoefficient(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 272
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    if-le p1, v0, :cond_1

    .line 274
    :cond_0
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getDegree()I
    .locals 2

    .prologue
    .line 228
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 229
    .local v0, "d":I
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 231
    const/4 v0, -0x1

    .line 233
    .end local v0    # "d":I
    :cond_0
    return v0
.end method

.method public getEncoded()[B
    .locals 7

    .prologue
    .line 286
    const/16 v2, 0x8

    .line 287
    .local v2, "d":I
    const/4 v0, 0x1

    .line 288
    .local v0, "count":I
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v6

    if-le v6, v2, :cond_0

    .line 290
    add-int/lit8 v0, v0, 0x1

    .line 291
    add-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 294
    :cond_0
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v6, v6

    mul-int/2addr v6, v0

    new-array v5, v6, [B

    .line 295
    .local v5, "res":[B
    const/4 v0, 0x0

    .line 296
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 298
    const/4 v4, 0x0

    .local v4, "j":I
    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_2
    if-ge v4, v2, :cond_1

    .line 300
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v6, v6, v3

    ushr-int/2addr v6, v4

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 298
    add-int/lit8 v4, v4, 0x8

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_2

    .line 296
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 304
    .end local v4    # "j":I
    :cond_2
    return-object v5
.end method

.method public getHeadCoefficient()I
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1038
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->hashCode()I

    move-result v0

    .line 1039
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1041
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1043
    :cond_0
    return v0
.end method

.method public mod(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3
    .param p1, "f"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    .line 721
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->mod([I[I)[I

    move-result-object v0

    .line 722
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public modDiv(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 4
    .param p1, "divisor"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .param p2, "modulus"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    .line 899
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v3, p2, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modDiv([I[I[I)[I

    move-result-object v0

    .line 901
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public modInverse(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 4
    .param p1, "a"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    const/4 v3, 0x1

    .line 944
    new-array v1, v3, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    .line 945
    .local v1, "unit":[I
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v3, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modDiv([I[I[I)[I

    move-result-object v0

    .line 946
    .local v0, "resultCoeff":[I
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v2
.end method

.method public modMultiply(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 4
    .param p1, "a"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .param p2, "b"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    .line 765
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v3, p2, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v1, v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modMultiply([I[I[I)[I

    move-result-object v0

    .line 767
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public modPolynomialToFracton(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 12
    .param p1, "g"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 959
    iget v7, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    shr-int/lit8 v5, v7, 0x1

    .line 960
    .local v5, "dg":I
    iget-object v7, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-static {v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v0

    .line 961
    .local v0, "a0":[I
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v8, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v7, v8}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->mod([I[I)[I

    move-result-object v1

    .line 962
    .local v1, "a1":[I
    new-array v2, v11, [I

    aput v10, v2, v10

    .line 963
    .local v2, "b0":[I
    new-array v3, v11, [I

    aput v11, v3, v10

    .line 964
    .local v3, "b1":[I
    :goto_0
    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v7

    if-le v7, v5, :cond_0

    .line 966
    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->div([I[I)[[I

    move-result-object v6

    .line 967
    .local v6, "q":[[I
    move-object v0, v1

    .line 968
    aget-object v1, v6, v11

    .line 969
    aget-object v7, v6, v10

    iget-object v8, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v7, v3, v8}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modMultiply([I[I[I)[I

    move-result-object v7

    invoke-direct {p0, v2, v7}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v4

    .line 970
    .local v4, "b2":[I
    move-object v2, v3

    .line 971
    move-object v3, v4

    .line 972
    goto :goto_0

    .line 974
    .end local v4    # "b2":[I
    .end local v6    # "q":[[I
    :cond_0
    const/4 v7, 0x2

    new-array v7, v7, [Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    new-instance v8, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v8, v9, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    aput-object v8, v7, v10

    new-instance v8, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v8, v9, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    aput-object v8, v7, v11

    return-object v7
.end method

.method public modSquareMatrix([Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 9
    .param p1, "matrix"    # [Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    .line 780
    array-length v2, p1

    .line 782
    .local v2, "length":I
    new-array v3, v2, [I

    .line 783
    .local v3, "resultCoeff":[I
    new-array v5, v2, [I

    .line 786
    .local v5, "thisSquare":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v6, v6

    if-ge v0, v6, :cond_0

    .line 788
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v7, v7, v0

    iget-object v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v8, v8, v0

    invoke-virtual {v6, v7, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v6

    aput v6, v5, v0

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 795
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 797
    aget-object v6, p1, v1

    iget-object v6, v6, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v6, v6

    if-lt v0, v6, :cond_1

    .line 795
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 801
    :cond_1
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget-object v7, p1, v1

    iget-object v7, v7, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v7, v7, v0

    aget v8, v5, v1

    invoke-virtual {v6, v7, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v4

    .line 803
    .local v4, "scalarTerm":I
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget v7, v3, v0

    invoke-virtual {v6, v7, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->add(II)I

    move-result v6

    aput v6, v3, v0

    goto :goto_3

    .line 792
    .end local v4    # "scalarTerm":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 807
    .end local v1    # "j":I
    :cond_3
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v6, v7, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v6
.end method

.method public modSquareRoot(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 4
    .param p1, "a"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    .line 832
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-static {v2}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v1

    .line 833
    .local v1, "resultCoeff":[I
    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v1, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modMultiply([I[I[I)[I

    move-result-object v0

    .line 834
    .local v0, "help":[I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-static {v0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->isEqual([I[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 836
    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->normalForm([I)[I

    move-result-object v1

    .line 837
    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v1, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->modMultiply([I[I[I)[I

    move-result-object v0

    goto :goto_0

    .line 840
    :cond_0
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v2
.end method

.method public modSquareRootMatrix([Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 8
    .param p1, "matrix"    # [Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    .line 856
    array-length v2, p1

    .line 858
    .local v2, "length":I
    new-array v3, v2, [I

    .line 861
    .local v3, "resultCoeff":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 864
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 866
    aget-object v5, p1, v1

    iget-object v5, v5, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v5, v5

    if-lt v0, v5, :cond_1

    .line 864
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 870
    :cond_1
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 872
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget-object v6, p1, v1

    iget-object v6, v6, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v6, v6, v0

    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v7, v7, v1

    invoke-virtual {v5, v6, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v4

    .line 874
    .local v4, "scalarTerm":I
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget v6, v3, v0

    invoke-virtual {v5, v6, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->add(II)I

    move-result v5

    aput v5, v3, v0

    goto :goto_2

    .line 861
    .end local v4    # "scalarTerm":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 880
    .end local v1    # "j":I
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_4

    .line 882
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    aget v6, v3, v0

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->sqRoot(I)I

    move-result v5

    aput v5, v3, v0

    .line 880
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 885
    :cond_4
    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v5, v6, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v5
.end method

.method public multThisWithElement(I)V
    .locals 2
    .param p1, "element"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Not an element of the finite field this polynomial is defined over."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    .line 427
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    .line 428
    return-void
.end method

.method public multWithElement(I)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3
    .param p1, "element"    # I

    .prologue
    .line 403
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Not an element of the finite field this polynomial is defined over."

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v0

    .line 409
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public multWithMonomial(I)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3
    .param p1, "k"    # I

    .prologue
    .line 468
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-static {v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multWithMonomial([II)[I

    move-result-object v0

    .line 469
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public multiply(Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 3
    .param p1, "factor"    # Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .prologue
    .line 593
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->multiply([I[I)[I

    move-result-object v0

    .line 594
    .local v0, "resultCoeff":[I
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Polynomial over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->elementToStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Y^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1055
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1059
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1061
    return-object v1
.end method
