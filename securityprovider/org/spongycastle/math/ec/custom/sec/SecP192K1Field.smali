.class public Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;
.super Ljava/lang/Object;
.source "SecP192K1Field.java"


# static fields
.field static final P:[I

.field private static final P5:I = -0x1

.field static final PExt:[I

.field private static final PExt11:I = -0x1

.field private static final PExtInv:[I

.field private static final PInv33:I = 0x11c9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    .line 12
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    return-void

    .line 11
    nop

    :array_0
    .array-data 4
        -0x11c9
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 12
    :array_1
    .array-data 4
        0x13c4fd1
        0x2392
        0x1
        0x0
        0x0
        0x0
        -0x2392
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 14
    :array_2
    .array-data 4
        -0x13c4fd1
        -0x2393
        -0x2
        -0x1
        -0x1
        -0x1
        0x2391
        0x2
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
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 22
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    .line 23
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x5

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p2, v1}, Lorg/spongycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    :cond_0
    const/4 v1, 0x6

    const/16 v2, 0x11c9

    invoke-static {v1, v2, p2}, Lorg/spongycastle/math/raw/Nat;->add33To(II[I)I

    .line 27
    :cond_1
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 4
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v3, 0xc

    .line 31
    invoke-static {v3, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    .line 32
    .local v0, "c":I
    if-nez v0, :cond_0

    const/16 v1, 0xb

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    invoke-static {v3, p2, v1}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    :cond_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lorg/spongycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v1, v1

    invoke-static {v3, p2, v1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    .line 39
    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v3, 0x6

    .line 43
    invoke-static {v3, p0, p1}, Lorg/spongycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 44
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p1, v1}, Lorg/spongycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    const/16 v1, 0x11c9

    invoke-static {v3, v1, p1}, Lorg/spongycastle/math/raw/Nat;->add33To(II[I)I

    .line 48
    :cond_1
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 52
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat192;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 53
    .local v0, "z":[I
    const/4 v1, 0x5

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/raw/Nat192;->subFrom([I[I)I

    .line 57
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 62
    aget v1, p0, v2

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 64
    invoke-static {v3, p0, v2, p1}, Lorg/spongycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p0, v1, p1}, Lorg/spongycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    .line 69
    .local v0, "c":I
    invoke-static {v3, p1, v0}, Lorg/spongycastle/math/raw/Nat;->shiftDownBit(I[II)I

    goto :goto_0
.end method

.method public static multiply([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 75
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 76
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 77
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    .line 78
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v3, 0xc

    .line 82
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat192;->mulAddTo([I[I[I)I

    move-result v0

    .line 83
    .local v0, "c":I
    if-nez v0, :cond_0

    const/16 v1, 0xb

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    invoke-static {v3, p2, v1}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    :cond_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lorg/spongycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v1, v1

    invoke-static {v3, p2, v1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    .line 90
    :cond_1
    return-void
.end method

.method public static negate([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 94
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat192;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat192;->zero([I)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat192;->sub([I[I[I)I

    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 10
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v2, 0x6

    const/16 v0, 0x11c9

    const/4 v4, 0x0

    .line 106
    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/raw/Nat192;->mul33Add(I[II[II[II)J

    move-result-wide v8

    .line 107
    .local v8, "cc":J
    invoke-static {v0, v8, v9, p1, v4}, Lorg/spongycastle/math/raw/Nat192;->mul33DWordAdd(IJ[II)I

    move-result v7

    .line 111
    .local v7, "c":I
    if-nez v7, :cond_0

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p1, v1}, Lorg/spongycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    invoke-static {v2, v0, p1}, Lorg/spongycastle/math/raw/Nat;->add33To(II[I)I

    .line 115
    :cond_1
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .prologue
    const/16 v2, 0x11c9

    .line 119
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v2, p0, p1, v0}, Lorg/spongycastle/math/raw/Nat192;->mul33WordAdd(II[II)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    aget v0, p1, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    .line 120
    invoke-static {p1, v0}, Lorg/spongycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    :cond_1
    const/4 v0, 0x6

    invoke-static {v0, v2, p1}, Lorg/spongycastle/math/raw/Nat;->add33To(II[I)I

    .line 124
    :cond_2
    return-void
.end method

.method public static square([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 128
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 129
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat192;->square([I[I)V

    .line 130
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    .line 131
    return-void
.end method

.method public static squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .prologue
    .line 137
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 138
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat192;->square([I[I)V

    .line 139
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    .line 141
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 143
    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat192;->square([I[I)V

    .line 144
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 150
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat192;->sub([I[I[I)I

    move-result v0

    .line 151
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 153
    const/4 v1, 0x6

    const/16 v2, 0x11c9

    invoke-static {v1, v2, p2}, Lorg/spongycastle/math/raw/Nat;->sub33From(II[I)I

    .line 155
    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 4
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v3, 0xc

    .line 159
    invoke-static {v3, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 160
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 162
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lorg/spongycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v1, v1

    invoke-static {v3, p2, v1}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    .line 167
    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v3, 0x6

    .line 171
    const/4 v1, 0x0

    invoke-static {v3, p0, v1, p1}, Lorg/spongycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 172
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p1, v1}, Lorg/spongycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    const/16 v1, 0x11c9

    invoke-static {v3, v1, p1}, Lorg/spongycastle/math/raw/Nat;->add33To(II[I)I

    .line 176
    :cond_1
    return-void
.end method
