.class public Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;
.super Ljava/lang/Object;
.source "SecP521R1Field.java"


# static fields
.field static final P:[I

.field private static final P16:I = 0x1ff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1ff
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
    .locals 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/16 v4, 0x1ff

    const/16 v3, 0x10

    .line 17
    invoke-static {v3, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    aget v2, p0, v3

    add-int/2addr v1, v2

    aget v2, p1, v3

    add-int v0, v1, v2

    .line 18
    .local v0, "c":I
    if-gt v0, v4, :cond_0

    if-ne v0, v4, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v3, p2, v1}, Lorg/spongycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    :cond_0
    invoke-static {v3, p2}, Lorg/spongycastle/math/raw/Nat;->inc(I[I)I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    and-int/lit16 v0, v0, 0x1ff

    .line 23
    :cond_1
    aput v0, p2, v3

    .line 24
    return-void
.end method

.method public static addOne([I[I)V
    .locals 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v4, 0x1ff

    const/16 v3, 0x10

    .line 28
    invoke-static {v3, p0, p1}, Lorg/spongycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    aget v2, p0, v3

    add-int v0, v1, v2

    .line 29
    .local v0, "c":I
    if-gt v0, v4, :cond_0

    if-ne v0, v4, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v3, p1, v1}, Lorg/spongycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    :cond_0
    invoke-static {v3, p1}, Lorg/spongycastle/math/raw/Nat;->inc(I[I)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    and-int/lit16 v0, v0, 0x1ff

    .line 34
    :cond_1
    aput v0, p1, v3

    .line 35
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    const/16 v2, 0x11

    .line 39
    const/16 v1, 0x209

    invoke-static {v1, p0}, Lorg/spongycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v0

    .line 40
    .local v0, "z":[I
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {v2, v0}, Lorg/spongycastle/math/raw/Nat;->zero(I[I)V

    .line 44
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v4, 0x10

    .line 49
    aget v1, p0, v4

    .line 50
    .local v1, "x16":I
    invoke-static {v4, p0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    move-result v0

    .line 51
    .local v0, "c":I
    ushr-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, v0, 0x17

    or-int/2addr v2, v3

    aput v2, p1, v4

    .line 52
    return-void
.end method

.method protected static implMultiply([I[I[I)V
    .locals 8
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v0, 0x10

    .line 143
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat512;->mul([I[I[I)V

    .line 145
    aget v1, p0, v0

    .local v1, "x16":I
    aget v3, p1, v0

    .line 146
    .local v3, "y16":I
    const/16 v7, 0x20

    move-object v2, p1

    move-object v4, p0

    move-object v5, p2

    move v6, v0

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/raw/Nat;->mul31BothAdd(II[II[I[II)I

    move-result v0

    mul-int v2, v1, v3

    add-int/2addr v0, v2

    aput v0, p2, v7

    .line 147
    return-void
.end method

.method protected static implSquare([I[I)V
    .locals 8
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .prologue
    const/16 v0, 0x10

    .line 151
    invoke-static {p0, p1}, Lorg/spongycastle/math/raw/Nat512;->square([I[I)V

    .line 153
    aget v6, p0, v0

    .line 154
    .local v6, "x16":I
    const/16 v7, 0x20

    shl-int/lit8 v1, v6, 0x1

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, v0

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    mul-int v1, v6, v6

    add-int/2addr v0, v1

    aput v0, p1, v7

    .line 155
    return-void
.end method

.method public static multiply([I[I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 56
    const/16 v1, 0x21

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 57
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->implMultiply([I[I[I)V

    .line 58
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 59
    return-void
.end method

.method public static negate([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v1, 0x11

    .line 63
    invoke-static {v1, p0}, Lorg/spongycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {v1, p1}, Lorg/spongycastle/math/raw/Nat;->zero(I[I)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v1, v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->sub(I[I[I[I)I

    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 9
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v8, 0x1ff

    const/16 v0, 0x10

    .line 77
    const/16 v1, 0x20

    aget v4, p0, v1

    .line 78
    .local v4, "xx32":I
    const/16 v3, 0x9

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/raw/Nat;->shiftDownBits(I[IIII[II)I

    move-result v1

    ushr-int/lit8 v7, v1, 0x17

    .line 79
    .local v7, "c":I
    ushr-int/lit8 v1, v4, 0x9

    add-int/2addr v7, v1

    .line 80
    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v1

    add-int/2addr v7, v1

    .line 81
    if-gt v7, v8, :cond_0

    if-ne v7, v8, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p1, v1}, Lorg/spongycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    invoke-static {v0, p1}, Lorg/spongycastle/math/raw/Nat;->inc(I[I)I

    move-result v1

    add-int/2addr v7, v1

    .line 84
    and-int/lit16 v7, v7, 0x1ff

    .line 86
    :cond_1
    aput v7, p1, v0

    .line 87
    return-void
.end method

.method public static reduce23([I)V
    .locals 6
    .param p0, "z"    # [I

    .prologue
    const/16 v5, 0x1ff

    const/16 v4, 0x10

    .line 91
    aget v1, p0, v4

    .line 92
    .local v1, "z16":I
    ushr-int/lit8 v2, v1, 0x9

    invoke-static {v4, v2, p0}, Lorg/spongycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result v2

    and-int/lit16 v3, v1, 0x1ff

    add-int v0, v2, v3

    .line 93
    .local v0, "c":I
    if-gt v0, v5, :cond_0

    if-ne v0, v5, :cond_1

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v4, p0, v2}, Lorg/spongycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    :cond_0
    invoke-static {v4, p0}, Lorg/spongycastle/math/raw/Nat;->inc(I[I)I

    move-result v2

    add-int/2addr v0, v2

    .line 96
    and-int/lit16 v0, v0, 0x1ff

    .line 98
    :cond_1
    aput v0, p0, v4

    .line 99
    return-void
.end method

.method public static square([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 103
    const/16 v1, 0x21

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 104
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 105
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 106
    return-void
.end method

.method public static squareN([II[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .prologue
    .line 112
    const/16 v1, 0x21

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 113
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 114
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 116
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 118
    invoke-static {p2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 119
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/16 v3, 0x10

    .line 125
    invoke-static {v3, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    aget v2, p0, v3

    add-int/2addr v1, v2

    aget v2, p1, v3

    sub-int v0, v1, v2

    .line 126
    .local v0, "c":I
    if-gez v0, :cond_0

    .line 128
    invoke-static {v3, p2}, Lorg/spongycastle/math/raw/Nat;->dec(I[I)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    and-int/lit16 v0, v0, 0x1ff

    .line 131
    :cond_0
    aput v0, p2, v3

    .line 132
    return-void
.end method

.method public static twice([I[I)V
    .locals 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v4, 0x10

    .line 136
    aget v1, p0, v4

    .line 137
    .local v1, "x16":I
    shl-int/lit8 v2, v1, 0x17

    invoke-static {v4, p0, v2, p1}, Lorg/spongycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v2

    shl-int/lit8 v3, v1, 0x1

    or-int v0, v2, v3

    .line 138
    .local v0, "c":I
    and-int/lit16 v2, v0, 0x1ff

    aput v2, p1, v4

    .line 139
    return-void
.end method
