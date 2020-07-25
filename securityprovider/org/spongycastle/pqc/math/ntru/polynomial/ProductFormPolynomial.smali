.class public Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;
.super Ljava/lang/Object;
.source "ProductFormPolynomial.java"

# interfaces
.implements Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;


# instance fields
.field private f1:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

.field private f2:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

.field private f3:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;)V
    .locals 0
    .param p1, "f1"    # Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    .param p2, "f2"    # Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    .param p3, "f3"    # Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f1:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    .line 22
    iput-object p2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f2:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    .line 23
    iput-object p3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f3:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    .line 24
    return-void
.end method

.method public static fromBinary(Ljava/io/InputStream;IIIII)Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "N"    # I
    .param p2, "df1"    # I
    .param p3, "df2"    # I
    .param p4, "df3Ones"    # I
    .param p5, "df3NegOnes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->fromBinary(Ljava/io/InputStream;III)Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    move-result-object v0

    .line 46
    .local v0, "f1":Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    invoke-static {p0, p1, p3, p3}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->fromBinary(Ljava/io/InputStream;III)Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    move-result-object v1

    .line 47
    .local v1, "f2":Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    invoke-static {p0, p1, p4, p5}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->fromBinary(Ljava/io/InputStream;III)Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    move-result-object v2

    .line 48
    .local v2, "f3":Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    new-instance v3, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    invoke-direct {v3, v0, v1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;)V

    return-object v3
.end method

.method public static fromBinary([BIIIII)Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "N"    # I
    .param p2, "df1"    # I
    .param p3, "df2"    # I
    .param p4, "df3Ones"    # I
    .param p5, "df3NegOnes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->fromBinary(Ljava/io/InputStream;IIIII)Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public static generateRandom(IIIIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;
    .locals 4
    .param p0, "N"    # I
    .param p1, "df1"    # I
    .param p2, "df2"    # I
    .param p3, "df3Ones"    # I
    .param p4, "df3NegOnes"    # I
    .param p5, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 28
    invoke-static {p0, p1, p1, p5}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    move-result-object v0

    .line 29
    .local v0, "f1":Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    invoke-static {p0, p2, p2, p5}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    move-result-object v1

    .line 30
    .local v1, "f2":Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    invoke-static {p0, p3, p4, p5}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    move-result-object v2

    .line 31
    .local v2, "f3":Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    new-instance v3, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    invoke-direct {v3, v0, v1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;)V

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    if-ne p0, p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 115
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 117
    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    .line 118
    .local v0, "other":Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f1:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-nez v3, :cond_4

    .line 120
    iget-object v3, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f1:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-eqz v3, :cond_5

    move v1, v2

    .line 122
    goto :goto_0

    .line 125
    :cond_4
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f1:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v4, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f1:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 127
    goto :goto_0

    .line 129
    :cond_5
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f2:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-nez v3, :cond_6

    .line 131
    iget-object v3, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f2:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-eqz v3, :cond_7

    move v1, v2

    .line 133
    goto :goto_0

    .line 136
    :cond_6
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f2:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v4, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f2:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 138
    goto :goto_0

    .line 140
    :cond_7
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f3:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-nez v3, :cond_8

    .line 142
    iget-object v3, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f3:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-eqz v3, :cond_0

    move v1, v2

    .line 144
    goto :goto_0

    .line 147
    :cond_8
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f3:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v4, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f3:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 149
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 95
    const/16 v0, 0x1f

    .line 96
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 97
    .local v1, "result":I
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f1:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 98
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f2:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 99
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f3:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 100
    return v1

    .line 97
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f1:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->hashCode()I

    move-result v2

    goto :goto_0

    .line 98
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f2:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->hashCode()I

    move-result v2

    goto :goto_1

    .line 99
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f3:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public mult(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    .locals 2
    .param p1, "b"    # Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    .prologue
    .line 73
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f1:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v1, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v0

    .line 74
    .local v0, "c":Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f2:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f3:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v1, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 76
    return-object v0
.end method

.method public mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 2
    .param p1, "b"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .prologue
    .line 65
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f1:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v1, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 66
    .local v0, "c":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f2:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f3:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v1, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 68
    return-object v0
.end method

.method public mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 1
    .param p1, "poly2"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "modulus"    # I

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 89
    .local v0, "c":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod(I)V

    .line 90
    return-object v0
.end method

.method public toBinary()[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 53
    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f1:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->toBinary()[B

    move-result-object v1

    .line 54
    .local v1, "f1Bin":[B
    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f2:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->toBinary()[B

    move-result-object v2

    .line 55
    .local v2, "f2Bin":[B
    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f3:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->toBinary()[B

    move-result-object v3

    .line 57
    .local v3, "f3Bin":[B
    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, v3

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Lorg/spongycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 58
    .local v0, "all":[B
    array-length v4, v1

    array-length v5, v2

    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    array-length v5, v3

    invoke-static {v3, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    return-object v0
.end method

.method public toIntegerPolynomial()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f1:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f2:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->toIntegerPolynomial()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 82
    .local v0, "i":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;->f3:Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->toIntegerPolynomial()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 83
    return-object v0
.end method
