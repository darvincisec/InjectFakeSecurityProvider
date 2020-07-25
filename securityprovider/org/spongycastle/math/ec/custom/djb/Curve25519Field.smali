.class public Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;
.super Ljava/lang/Object;
.source "Curve25519Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P7:I = 0x7fffffff

.field private static final PExt:[I

.field private static final PInv:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffffff
    .end array-data

    .line 16
    :array_1
    .array-data 4
        0x169
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->add([I[I[I)I

    .line 24
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    .line 28
    :cond_0
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 2
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v1, 0x10

    .line 32
    invoke-static {v1, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->add(I[I[I[I)I

    .line 33
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    invoke-static {v1, p2, v0}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subPExtFrom([I)I

    .line 37
    :cond_0
    return-void
.end method

.method public static addOne([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 41
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->inc(I[I[I)I

    .line 42
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    .line 46
    :cond_0
    return-void
.end method

.method private static addPExtTo([I)I
    .locals 12
    .param p0, "zz"    # [I

    .prologue
    const/16 v11, 0x20

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/16 v8, 0xf

    const-wide v6, 0xffffffffL

    .line 198
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    sget-object v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v4, v4, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long v0, v2, v4

    .line 199
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v9

    .line 200
    shr-long/2addr v0, v11

    .line 201
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 203
    const/4 v2, 0x1

    invoke-static {v10, p0, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    int-to-long v0, v2

    .line 205
    :cond_0
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x13

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 206
    long-to-int v2, v0

    aput v2, p0, v10

    .line 207
    shr-long/2addr v0, v11

    .line 208
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 210
    const/16 v2, 0x9

    invoke-static {v8, p0, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    int-to-long v0, v2

    .line 212
    :cond_1
    aget v2, p0, v8

    int-to-long v2, v2

    and-long/2addr v2, v6

    sget-object v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v4, v4, v8

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 213
    long-to-int v2, v0

    aput v2, p0, v8

    .line 214
    shr-long/2addr v0, v11

    .line 215
    long-to-int v2, v0

    return v2
.end method

.method private static addPTo([I)I
    .locals 12
    .param p0, "z"    # [I

    .prologue
    const-wide v10, 0xffffffffL

    const/16 v8, 0x20

    const/4 v7, 0x0

    const/4 v6, 0x7

    .line 183
    aget v2, p0, v7

    int-to-long v2, v2

    and-long/2addr v2, v10

    const-wide/16 v4, 0x13

    sub-long v0, v2, v4

    .line 184
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v7

    .line 185
    shr-long/2addr v0, v8

    .line 186
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 188
    const/4 v2, 0x1

    invoke-static {v6, p0, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    int-to-long v0, v2

    .line 190
    :cond_0
    aget v2, p0, v6

    int-to-long v2, v2

    and-long/2addr v2, v10

    const-wide v4, 0x80000000L

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 191
    long-to-int v2, v0

    aput v2, p0, v6

    .line 192
    shr-long/2addr v0, v8

    .line 193
    long-to-int v2, v0

    return v2
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 2
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 50
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 51
    .local v0, "z":[I
    :goto_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/raw/Nat256;->subFrom([I[I)I

    goto :goto_0

    .line 55
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 60
    aget v0, p0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 62
    invoke-static {v2, p0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p0, v0, p1}, Lorg/spongycastle/math/raw/Nat256;->add([I[I[I)I

    .line 67
    invoke-static {v2, p1, v1}, Lorg/spongycastle/math/raw/Nat;->shiftDownBit(I[II)I

    goto :goto_0
.end method

.method public static multiply([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 73
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 74
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 75
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    .line 76
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    .line 81
    const/16 v0, 0x10

    sget-object v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    invoke-static {v0, p2, v1}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subPExtFrom([I)I

    .line 85
    :cond_0
    return-void
.end method

.method public static negate([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 89
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat256;->zero([I)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 9
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v0, 0x8

    const/4 v8, 0x7

    .line 103
    aget v3, p0, v8

    .line 104
    .local v3, "xx07":I
    const/4 v5, 0x0

    move-object v1, p0

    move v2, v0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat;->shiftUpBit(I[III[II)I

    .line 105
    const/16 v0, 0x13

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat256;->mulByWordAddTo(I[I[I)I

    move-result v0

    shl-int/lit8 v6, v0, 0x1

    .line 106
    .local v6, "c":I
    aget v7, p1, v8

    .line 107
    .local v7, "z7":I
    ushr-int/lit8 v0, v7, 0x1f

    ushr-int/lit8 v1, v3, 0x1f

    sub-int/2addr v0, v1

    add-int/2addr v6, v0

    .line 108
    const v0, 0x7fffffff

    and-int/2addr v7, v0

    .line 109
    mul-int/lit8 v0, v6, 0x13

    invoke-static {v8, v0, p1}, Lorg/spongycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result v0

    add-int/2addr v7, v0

    .line 110
    aput v7, p1, v8

    .line 111
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    .line 115
    :cond_0
    return-void
.end method

.method public static reduce27(I[I)V
    .locals 5
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .prologue
    const/4 v4, 0x7

    .line 121
    aget v1, p1, v4

    .line 122
    .local v1, "z7":I
    shl-int/lit8 v2, p0, 0x1

    ushr-int/lit8 v3, v1, 0x1f

    or-int v0, v2, v3

    .line 123
    .local v0, "c":I
    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 124
    mul-int/lit8 v2, v0, 0x13

    invoke-static {v4, v2, p1}, Lorg/spongycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result v2

    add-int/2addr v1, v2

    .line 125
    aput v1, p1, v4

    .line 126
    sget-object v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, v2}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    .line 130
    :cond_0
    return-void
.end method

.method public static square([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 134
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 135
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->square([I[I)V

    .line 136
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    .line 137
    return-void
.end method

.method public static squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .prologue
    .line 143
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 144
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->square([I[I)V

    .line 145
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    .line 147
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 149
    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat256;->square([I[I)V

    .line 150
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    goto :goto_0

    .line 152
    :cond_0
    return-void
.end method

.method private static subPExtFrom([I)I
    .locals 12
    .param p0, "zz"    # [I

    .prologue
    const/16 v11, 0x20

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/16 v8, 0xf

    const-wide v6, 0xffffffffL

    .line 235
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    sget-object v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v4, v4, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 236
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v9

    .line 237
    shr-long/2addr v0, v11

    .line 238
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 240
    const/4 v2, 0x1

    invoke-static {v10, p0, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    int-to-long v0, v2

    .line 242
    :cond_0
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x13

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 243
    long-to-int v2, v0

    aput v2, p0, v10

    .line 244
    shr-long/2addr v0, v11

    .line 245
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 247
    const/16 v2, 0x9

    invoke-static {v8, p0, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    int-to-long v0, v2

    .line 249
    :cond_1
    aget v2, p0, v8

    int-to-long v2, v2

    and-long/2addr v2, v6

    sget-object v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v4, v4, v8

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 250
    long-to-int v2, v0

    aput v2, p0, v8

    .line 251
    shr-long/2addr v0, v11

    .line 252
    long-to-int v2, v0

    return v2
.end method

.method private static subPFrom([I)I
    .locals 12
    .param p0, "z"    # [I

    .prologue
    const-wide v10, 0xffffffffL

    const/16 v8, 0x20

    const/4 v7, 0x0

    const/4 v6, 0x7

    .line 220
    aget v2, p0, v7

    int-to-long v2, v2

    and-long/2addr v2, v10

    const-wide/16 v4, 0x13

    add-long v0, v2, v4

    .line 221
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v7

    .line 222
    shr-long/2addr v0, v8

    .line 223
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 225
    const/4 v2, 0x1

    invoke-static {v6, p0, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    int-to-long v0, v2

    .line 227
    :cond_0
    aget v2, p0, v6

    int-to-long v2, v2

    and-long/2addr v2, v10

    const-wide v4, 0x80000000L

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 228
    long-to-int v2, v0

    aput v2, p0, v6

    .line 229
    shr-long/2addr v0, v8

    .line 230
    long-to-int v2, v0

    return v2
.end method

.method public static subtract([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 156
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    .line 157
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 159
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->addPTo([I)I

    .line 161
    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 2
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 165
    const/16 v1, 0x10

    invoke-static {v1, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 166
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 168
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->addPExtTo([I)I

    .line 170
    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 174
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    .line 175
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    .line 179
    :cond_0
    return-void
.end method
