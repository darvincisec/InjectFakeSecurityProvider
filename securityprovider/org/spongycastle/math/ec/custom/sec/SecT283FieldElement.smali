.class public Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SecT283FieldElement.java"


# instance fields
.field protected x:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 26
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 16
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x11b

    if-le v0, v1, :cond_1

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid for SecT283FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->fromBigInteger(Ljava/math/BigInteger;)[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    .line 22
    return-void
.end method

.method protected constructor <init>([J)V
    .locals 0
    .param p1, "x"    # [J

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    .line 32
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 71
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    .line 72
    .local v0, "z":[J
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->add([J[J[J)V

    .line 73
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object v1
.end method

.method public addOne()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    .line 79
    .local v0, "z":[J
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->addOne([J[J)V

    .line 80
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object v1
.end method

.method public divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 117
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 204
    if-ne p1, p0, :cond_0

    .line 206
    const/4 v1, 0x1

    .line 215
    :goto_0
    return v1

    .line 209
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    if-nez v1, :cond_1

    .line 211
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 214
    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    .line 215
    .local v0, "o":Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {v1, v2}, Lorg/spongycastle/math/raw/Nat320;->eq64([J[J)Z

    move-result v1

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "SecT283Field"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x11b

    return v0
.end method

.method public getK1()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x5

    return v0
.end method

.method public getK2()I
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x7

    return v0
.end method

.method public getK3()I
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0xc

    return v0
.end method

.method public getM()I
    .locals 1

    .prologue
    .line 184
    const/16 v0, 0x11b

    return v0
.end method

.method public getRepresentation()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x3

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 220
    const v0, 0x2b33ab

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lorg/spongycastle/util/Arrays;->hashCode([JII)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 165
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    .line 166
    .local v0, "z":[J
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->invert([J[J)V

    .line 167
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object v1
.end method

.method public isOne()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat320;->isOne64([J)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat320;->isZero64([J)Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 91
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    .line 92
    .local v0, "z":[J
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 93
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object v1
.end method

.method public multiplyMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 7
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    .local v0, "ax":[J
    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v1, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    .line 104
    .local v1, "bx":[J
    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    .end local p2    # "x":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v3, p2, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    .local v3, "xx":[J
    check-cast p3, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    .end local p3    # "y":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v4, p3, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    .line 106
    .local v4, "yx":[J
    const/16 v6, 0x9

    invoke-static {v6}, Lorg/spongycastle/math/raw/Nat;->create64(I)[J

    move-result-object v2

    .line 107
    .local v2, "tt":[J
    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiplyAddToExt([J[J[J)V

    .line 108
    invoke-static {v3, v4, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiplyAddToExt([J[J[J)V

    .line 110
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v5

    .line 111
    .local v5, "z":[J
    invoke-static {v2, v5}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    .line 112
    new-instance v6, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {v6, v5}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object v6
.end method

.method public negate()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    .prologue
    .line 122
    return-object p0
.end method

.method public sqrt()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    .line 173
    .local v0, "z":[J
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->sqrt([J[J)V

    .line 174
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object v1
.end method

.method public square()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    .line 128
    .local v0, "z":[J
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    .line 129
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object v1
.end method

.method public squareMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    .line 140
    .local v0, "ax":[J
    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    .end local p1    # "x":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    .local v2, "xx":[J
    check-cast p2, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    .end local p2    # "y":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v3, p2, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    .line 142
    .local v3, "yx":[J
    const/16 v5, 0x9

    invoke-static {v5}, Lorg/spongycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    .line 143
    .local v1, "tt":[J
    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->squareAddToExt([J[J)V

    .line 144
    invoke-static {v2, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->multiplyAddToExt([J[J[J)V

    .line 146
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v4

    .line 147
    .local v4, "z":[J
    invoke-static {v1, v4}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    .line 148
    new-instance v5, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    invoke-direct {v5, v4}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    return-object v5
.end method

.method public squarePow(I)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "pow"    # I

    .prologue
    .line 153
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 160
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;
    :goto_0
    return-object p0

    .line 158
    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;
    :cond_0
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    .line 159
    .local v0, "z":[J
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {v1, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 160
    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;

    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;
    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;-><init>([J)V

    goto :goto_0
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public testBitZero()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 51
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT283FieldElement;->x:[J

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat320;->toBigInteger64([J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
