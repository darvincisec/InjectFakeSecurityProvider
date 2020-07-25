.class public Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "McElieceKeyGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final DEFAULT_M:I = 0xb

.field public static final DEFAULT_T:I = 0x32


# instance fields
.field private fieldPoly:I

.field private m:I

.field private n:I

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;-><init>(II)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "keysize"    # I

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-ge p1, v1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->m:I

    .line 67
    iput v1, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->n:I

    .line 68
    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->n:I

    if-ge v0, p1, :cond_1

    .line 70
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->n:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->n:I

    .line 71
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->m:I

    goto :goto_0

    .line 73
    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->n:I

    ushr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->t:I

    .line 74
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->t:I

    iget v1, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->m:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->t:I

    .line 75
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->m:I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->fieldPoly:I

    .line 76
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-ge p1, v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    iput p1, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->m:I

    .line 98
    shl-int v0, v1, p1

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->n:I

    .line 99
    if-gez p2, :cond_2

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->n:I

    if-le p2, v0, :cond_3

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be less than n = 2^m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_3
    iput p2, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->t:I

    .line 108
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->fieldPoly:I

    .line 109
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "m"    # I
    .param p2, "t"    # I
    .param p3, "poly"    # I

    .prologue
    const/4 v1, 0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput p1, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->m:I

    .line 124
    if-ge p1, v1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " m is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    shl-int v0, v1, p1

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->n:I

    .line 133
    iput p2, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->t:I

    .line 134
    if-gez p2, :cond_2

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_2
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->n:I

    if-le p2, v0, :cond_3

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be less than n = 2^m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_3
    invoke-static {p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    if-ne v0, p1, :cond_4

    .line 143
    invoke-static {p3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    iput p3, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->fieldPoly:I

    .line 152
    return-void

    .line 149
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "polynomial is not a field polynomial for GF(2^m)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFieldPoly()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->fieldPoly:I

    return v0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->m:I

    return v0
.end method

.method public getN()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->n:I

    return v0
.end method

.method public getT()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/McElieceKeyGenParameterSpec;->t:I

    return v0
.end method
