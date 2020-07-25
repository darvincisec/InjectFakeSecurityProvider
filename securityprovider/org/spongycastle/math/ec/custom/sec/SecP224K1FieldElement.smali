.class public Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SecP224K1FieldElement.java"


# static fields
.field private static final PRECOMP_POW2:[I

.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Curve;->q:Ljava/math/BigInteger;

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    .line 15
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->PRECOMP_POW2:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x33bfd202
        -0x23052ecd
        0x2287624a
        -0x3c7ee458
        -0x57aaa704
        0x1eaef5d7
        -0x7120eab4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 32
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 22
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid for SecP224K1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 28
    return-void
.end method

.method protected constructor <init>([I)V
    .locals 0
    .param p1, "x"    # [I

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 38
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 72
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 73
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->add([I[I[I)V

    .line 74
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public addOne()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 80
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->addOne([I[I)V

    .line 81
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 101
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 102
    .local v0, "z":[I
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/raw/Mod;->invert([I[I[I)V

    .line 103
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 104
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 225
    if-ne p1, p0, :cond_0

    .line 227
    const/4 v1, 0x1

    .line 236
    :goto_0
    return v1

    .line 230
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    if-nez v1, :cond_1

    .line 232
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 235
    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .line 236
    .local v0, "o":Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2}, Lorg/spongycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v1

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "SecP224K1Field"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 241
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lorg/spongycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .prologue
    .line 124
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 125
    .local v0, "z":[I
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/raw/Mod;->invert([I[I[I)V

    .line 126
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public isOne()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat224;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat224;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 93
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 94
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 95
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public negate()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 110
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->negate([I[I)V

    .line 111
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public sqrt()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 15

    .prologue
    .line 148
    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 149
    .local v2, "x1":[I
    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat224;->isZero([I)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat224;->isOne([I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 220
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;
    :cond_0
    :goto_0
    return-object p0

    .line 154
    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v7

    .line 155
    .local v7, "x2":[I
    invoke-static {v2, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 156
    invoke-static {v7, v2, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 157
    move-object v9, v7

    .line 158
    .local v9, "x3":[I
    invoke-static {v7, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 159
    invoke-static {v9, v2, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 160
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v10

    .line 161
    .local v10, "x4":[I
    invoke-static {v9, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 162
    invoke-static {v10, v2, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 163
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v12

    .line 164
    .local v12, "x8":[I
    const/4 v14, 0x4

    invoke-static {v10, v14, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 165
    invoke-static {v12, v10, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 166
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    .line 167
    .local v4, "x11":[I
    const/4 v14, 0x3

    invoke-static {v12, v14, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 168
    invoke-static {v4, v9, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 169
    move-object v5, v4

    .line 170
    .local v5, "x19":[I
    const/16 v14, 0x8

    invoke-static {v4, v14, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 171
    invoke-static {v5, v12, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 172
    move-object v8, v12

    .line 173
    .local v8, "x23":[I
    const/4 v14, 0x4

    invoke-static {v5, v14, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 174
    invoke-static {v8, v10, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 175
    move-object v11, v10

    .line 176
    .local v11, "x42":[I
    const/16 v14, 0x13

    invoke-static {v8, v14, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 177
    invoke-static {v11, v5, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 178
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v13

    .line 179
    .local v13, "x84":[I
    const/16 v14, 0x2a

    invoke-static {v11, v14, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 180
    invoke-static {v13, v11, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 181
    move-object v3, v11

    .line 182
    .local v3, "x107":[I
    const/16 v14, 0x17

    invoke-static {v13, v14, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 183
    invoke-static {v3, v8, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 184
    move-object v6, v8

    .line 185
    .local v6, "x191":[I
    const/16 v14, 0x54

    invoke-static {v3, v14, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 186
    invoke-static {v6, v13, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 188
    move-object v0, v6

    .line 189
    .local v0, "t1":[I
    const/16 v14, 0x14

    invoke-static {v0, v14, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 190
    invoke-static {v0, v5, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 191
    const/4 v14, 0x3

    invoke-static {v0, v14, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 192
    invoke-static {v0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 193
    const/4 v14, 0x2

    invoke-static {v0, v14, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 194
    invoke-static {v0, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 195
    const/4 v14, 0x4

    invoke-static {v0, v14, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 196
    invoke-static {v0, v9, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 197
    invoke-static {v0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 199
    move-object v1, v13

    .line 200
    .local v1, "t2":[I
    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 202
    invoke-static {v2, v1}, Lorg/spongycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 204
    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;
    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    goto/16 :goto_0

    .line 211
    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;
    :cond_2
    sget-object v14, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->PRECOMP_POW2:[I

    invoke-static {v0, v14, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 213
    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 215
    invoke-static {v2, v1}, Lorg/spongycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 217
    new-instance p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;
    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    goto/16 :goto_0

    .line 220
    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;
    :cond_3
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method public square()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 117
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 118
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 86
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 87
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    .line 88
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public testBitZero()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v2, v1}, Lorg/spongycastle/math/raw/Nat224;->getBit([II)I

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
    .line 57
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat224;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
