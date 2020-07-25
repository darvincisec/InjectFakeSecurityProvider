.class public Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "SecP224R1FieldElement.java"


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Curve;->q:Ljava/math/BigInteger;

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 29
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 19
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid for SecP224R1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 25
    return-void
.end method

.method protected constructor <init>([I)V
    .locals 0
    .param p1, "x"    # [I

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 35
    return-void
.end method

.method private static RM([I[I[I[I[I[I[I)V
    .locals 0
    .param p0, "nc"    # [I
    .param p1, "d0"    # [I
    .param p2, "e0"    # [I
    .param p3, "d1"    # [I
    .param p4, "e1"    # [I
    .param p5, "f1"    # [I
    .param p6, "t"    # [I

    .prologue
    .line 199
    invoke-static {p4, p2, p6}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 200
    invoke-static {p6, p0, p6}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 201
    invoke-static {p3, p1, p5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 202
    invoke-static {p5, p6, p5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 203
    invoke-static {p3, p2, p6}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 204
    invoke-static {p5, p3}, Lorg/spongycastle/math/raw/Nat224;->copy([I[I)V

    .line 205
    invoke-static {p4, p1, p4}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 206
    invoke-static {p4, p6, p4}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 207
    invoke-static {p4, p5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 208
    invoke-static {p5, p0, p5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 209
    return-void
.end method

.method private static RP([I[I[I[I[I)V
    .locals 9
    .param p0, "nc"    # [I
    .param p1, "d1"    # [I
    .param p2, "e1"    # [I
    .param p3, "f1"    # [I
    .param p4, "t"    # [I

    .prologue
    .line 213
    invoke-static {p0, p3}, Lorg/spongycastle/math/raw/Nat224;->copy([I[I)V

    .line 215
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    .line 216
    .local v1, "d0":[I
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    .line 218
    .local v2, "e0":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v0, 0x7

    if-ge v7, v0, :cond_1

    .line 220
    invoke-static {p1, v1}, Lorg/spongycastle/math/raw/Nat224;->copy([I[I)V

    .line 221
    invoke-static {p2, v2}, Lorg/spongycastle/math/raw/Nat224;->copy([I[I)V

    .line 223
    const/4 v0, 0x1

    shl-int v8, v0, v7

    .line 224
    .local v8, "j":I
    :goto_1
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_0

    .line 226
    invoke-static {p1, p2, p3, p4}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->RS([I[I[I[I)V

    goto :goto_1

    :cond_0
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 229
    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->RM([I[I[I[I[I[I[I)V

    .line 218
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 231
    .end local v8    # "j":I
    :cond_1
    return-void
.end method

.method private static RS([I[I[I[I)V
    .locals 4
    .param p0, "d"    # [I
    .param p1, "e"    # [I
    .param p2, "f"    # [I
    .param p3, "t"    # [I

    .prologue
    .line 235
    invoke-static {p1, p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 236
    invoke-static {p1, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->twice([I[I)V

    .line 237
    invoke-static {p0, p3}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 238
    invoke-static {p2, p3, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 239
    invoke-static {p2, p3, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 240
    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, v3}, Lorg/spongycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v0

    .line 241
    .local v0, "c":I
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 242
    return-void
.end method

.method private static isSquare([I)Z
    .locals 4
    .param p0, "x"    # [I

    .prologue
    .line 182
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    .line 183
    .local v1, "t1":[I
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    .line 184
    .local v2, "t2":[I
    invoke-static {p0, v1}, Lorg/spongycastle/math/raw/Nat224;->copy([I[I)V

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_0

    .line 188
    invoke-static {v1, v2}, Lorg/spongycastle/math/raw/Nat224;->copy([I[I)V

    .line 189
    const/4 v3, 0x1

    shl-int/2addr v3, v0

    invoke-static {v1, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->squareN([II[I)V

    .line 190
    invoke-static {v1, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    const/16 v3, 0x5f

    invoke-static {v1, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->squareN([II[I)V

    .line 194
    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat224;->isOne([I)Z

    move-result v3

    return v3
.end method

.method private static trySqrt([I[I[I)Z
    .locals 9
    .param p0, "nc"    # [I
    .param p1, "r"    # [I
    .param p2, "t"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 246
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    .line 247
    .local v1, "d1":[I
    invoke-static {p1, v1}, Lorg/spongycastle/math/raw/Nat224;->copy([I[I)V

    .line 248
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v3

    .line 249
    .local v3, "e1":[I
    aput v6, v3, v7

    .line 250
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    .line 251
    .local v4, "f1":[I
    invoke-static {p0, v1, v3, v4, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->RP([I[I[I[I[I)V

    .line 253
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 254
    .local v0, "d0":[I
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    .line 256
    .local v2, "e0":[I
    const/4 v5, 0x1

    .local v5, "k":I
    :goto_0
    const/16 v8, 0x60

    if-ge v5, v8, :cond_1

    .line 258
    invoke-static {v1, v0}, Lorg/spongycastle/math/raw/Nat224;->copy([I[I)V

    .line 259
    invoke-static {v3, v2}, Lorg/spongycastle/math/raw/Nat224;->copy([I[I)V

    .line 261
    invoke-static {v1, v3, v4, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->RS([I[I[I[I)V

    .line 263
    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat224;->isZero([I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 265
    sget-object v7, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v7, v2, p2}, Lorg/spongycastle/math/raw/Mod;->invert([I[I[I)V

    .line 266
    invoke-static {p2, v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 271
    :goto_1
    return v6

    .line 256
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    .line 271
    goto :goto_1
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 69
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 70
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 71
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public addOne()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 77
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->addOne([I[I)V

    .line 78
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 98
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 99
    .local v0, "z":[I
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/raw/Mod;->invert([I[I[I)V

    .line 100
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 101
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 161
    if-ne p1, p0, :cond_0

    .line 163
    const/4 v1, 0x1

    .line 172
    :goto_0
    return v1

    .line 166
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    if-nez v1, :cond_1

    .line 168
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 171
    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 172
    .local v0, "o":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2}, Lorg/spongycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v1

    goto :goto_0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "SecP224R1Field"

    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 177
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

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
    .line 121
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 122
    .local v0, "z":[I
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/raw/Mod;->invert([I[I[I)V

    .line 123
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public isOne()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat224;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat224;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 90
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 91
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 92
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public negate()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 107
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    .line 108
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public sqrt()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 132
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 133
    .local v0, "c":[I
    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat224;->isZero([I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat224;->isOne([I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v4, p0

    .line 156
    :cond_1
    :goto_0
    return-object v4

    .line 138
    :cond_2
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v1

    .line 139
    .local v1, "nc":[I
    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    .line 141
    sget-object v5, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v5}, Lorg/spongycastle/math/raw/Mod;->random([I)[I

    move-result-object v2

    .line 142
    .local v2, "r":[I
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v3

    .line 144
    .local v3, "t":[I
    invoke-static {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->isSquare([I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    :goto_1
    invoke-static {v1, v2, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->trySqrt([I[I[I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 151
    invoke-static {v2, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->addOne([I[I)V

    goto :goto_1

    .line 154
    :cond_3
    invoke-static {v3, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 156
    invoke-static {v0, v2}, Lorg/spongycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v4, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v4, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    goto :goto_0
.end method

.method public square()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 114
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 115
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 83
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 84
    .local v0, "z":[I
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    check-cast p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 85
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public testBitZero()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 49
    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

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
    .line 54
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat224;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
