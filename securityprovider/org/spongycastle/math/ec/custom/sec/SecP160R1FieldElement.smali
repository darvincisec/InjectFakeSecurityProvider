.class public Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SecP160R1FieldElement.java"


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Curve;->q:Ljava/math/BigInteger;

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->Q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 28
    invoke-static {}, Lorg/spongycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid for SecP160R1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    .line 24
    return-void
.end method

.method protected constructor <init>([I)V
    .locals 0
    .param p1, "x"    # [I

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    .line 34
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 68
    invoke-static {}, Lorg/spongycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 69
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->add([I[I[I)V

    .line 70
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public addOne()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lorg/spongycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 76
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->addOne([I[I)V

    .line 77
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 97
    invoke-static {}, Lorg/spongycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 98
    .local v0, "z":[I
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/raw/Mod;->invert([I[I[I)V

    .line 99
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 100
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 184
    if-ne p1, p0, :cond_0

    .line 186
    const/4 v1, 0x1

    .line 195
    :goto_0
    return v1

    .line 189
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    if-nez v1, :cond_1

    .line 191
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 194
    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    .line 195
    .local v0, "o":Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v2}, Lorg/spongycastle/math/raw/Nat160;->eq([I[I)Z

    move-result v1

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "SecP160R1Field"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 200
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lorg/spongycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lorg/spongycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 121
    .local v0, "z":[I
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/raw/Mod;->invert([I[I[I)V

    .line 122
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public isOne()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat160;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat160;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 89
    invoke-static {}, Lorg/spongycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 90
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 91
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public negate()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lorg/spongycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 106
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->negate([I[I)V

    .line 107
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public sqrt()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 12

    .prologue
    .line 142
    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    .line 143
    .local v2, "x1":[I
    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat160;->isZero([I)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat160;->isOne([I)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move-object v11, p0

    .line 179
    :goto_0
    return-object v11

    .line 148
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat160;->create()[I

    move-result-object v6

    .line 149
    .local v6, "x2":[I
    invoke-static {v2, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    .line 150
    invoke-static {v6, v2, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 151
    invoke-static {}, Lorg/spongycastle/math/raw/Nat160;->create()[I

    move-result-object v8

    .line 152
    .local v8, "x4":[I
    const/4 v11, 0x2

    invoke-static {v6, v11, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->squareN([II[I)V

    .line 153
    invoke-static {v8, v6, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 154
    move-object v10, v6

    .line 155
    .local v10, "x8":[I
    const/4 v11, 0x4

    invoke-static {v8, v11, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->squareN([II[I)V

    .line 156
    invoke-static {v10, v8, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 157
    move-object v5, v8

    .line 158
    .local v5, "x16":[I
    const/16 v11, 0x8

    invoke-static {v10, v11, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->squareN([II[I)V

    .line 159
    invoke-static {v5, v10, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 160
    move-object v7, v10

    .line 161
    .local v7, "x32":[I
    const/16 v11, 0x10

    invoke-static {v5, v11, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->squareN([II[I)V

    .line 162
    invoke-static {v7, v5, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 163
    move-object v9, v5

    .line 164
    .local v9, "x64":[I
    const/16 v11, 0x20

    invoke-static {v7, v11, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->squareN([II[I)V

    .line 165
    invoke-static {v9, v7, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 166
    move-object v3, v7

    .line 167
    .local v3, "x128":[I
    const/16 v11, 0x40

    invoke-static {v9, v11, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->squareN([II[I)V

    .line 168
    invoke-static {v3, v9, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 169
    move-object v4, v9

    .line 170
    .local v4, "x129":[I
    invoke-static {v3, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    .line 171
    invoke-static {v4, v2, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->multiply([I[I[I)V

    .line 173
    move-object v0, v4

    .line 174
    .local v0, "t1":[I
    const/16 v11, 0x1d

    invoke-static {v0, v11, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->squareN([II[I)V

    .line 176
    move-object v1, v3

    .line 177
    .local v1, "t2":[I
    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    .line 179
    invoke-static {v2, v1}, Lorg/spongycastle/math/raw/Nat160;->eq([I[I)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v11, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public square()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lorg/spongycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 113
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->square([I[I)V

    .line 114
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 82
    invoke-static {}, Lorg/spongycastle/math/raw/Nat160;->create()[I

    move-result-object v0

    .line 83
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1Field;->subtract([I[I[I)V

    .line 84
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public testBitZero()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v2, v1}, Lorg/spongycastle/math/raw/Nat160;->getBit([II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP160R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat160;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
