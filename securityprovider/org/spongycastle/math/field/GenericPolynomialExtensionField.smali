.class Lorg/spongycastle/math/field/GenericPolynomialExtensionField;
.super Ljava/lang/Object;
.source "GenericPolynomialExtensionField.java"

# interfaces
.implements Lorg/spongycastle/math/field/PolynomialExtensionField;


# instance fields
.field protected final minimalPolynomial:Lorg/spongycastle/math/field/Polynomial;

.field protected final subfield:Lorg/spongycastle/math/field/FiniteField;


# direct methods
.method constructor <init>(Lorg/spongycastle/math/field/FiniteField;Lorg/spongycastle/math/field/Polynomial;)V
    .locals 0
    .param p1, "subfield"    # Lorg/spongycastle/math/field/FiniteField;
    .param p2, "polynomial"    # Lorg/spongycastle/math/field/Polynomial;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/spongycastle/math/field/FiniteField;

    .line 15
    iput-object p2, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/spongycastle/math/field/Polynomial;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    if-ne p0, p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    instance-of v3, p1, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;

    if-nez v3, :cond_2

    move v1, v2

    .line 51
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 53
    check-cast v0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;

    .line 54
    .local v0, "other":Lorg/spongycastle/math/field/GenericPolynomialExtensionField;
    iget-object v3, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/spongycastle/math/field/FiniteField;

    iget-object v4, v0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/spongycastle/math/field/FiniteField;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/spongycastle/math/field/Polynomial;

    iget-object v4, v0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/spongycastle/math/field/Polynomial;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCharacteristic()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/spongycastle/math/field/FiniteField;

    invoke-interface {v0}, Lorg/spongycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDegree()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/spongycastle/math/field/Polynomial;

    invoke-interface {v0}, Lorg/spongycastle/math/field/Polynomial;->getDegree()I

    move-result v0

    return v0
.end method

.method public getDimension()I
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/spongycastle/math/field/FiniteField;

    invoke-interface {v0}, Lorg/spongycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/spongycastle/math/field/Polynomial;

    invoke-interface {v1}, Lorg/spongycastle/math/field/Polynomial;->getDegree()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getMinimalPolynomial()Lorg/spongycastle/math/field/Polynomial;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/spongycastle/math/field/Polynomial;

    return-object v0
.end method

.method public getSubfield()Lorg/spongycastle/math/field/FiniteField;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/spongycastle/math/field/FiniteField;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->subfield:Lorg/spongycastle/math/field/FiniteField;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lorg/spongycastle/math/field/Polynomial;

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/spongycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 59
    return v0
.end method
