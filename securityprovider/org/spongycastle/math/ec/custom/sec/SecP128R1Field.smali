.class public Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;
.super Ljava/lang/Object;
.source "SecP128R1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P3s1:I = 0x7ffffffe

.field static final PExt:[I

.field private static final PExt7s1:I = 0x7ffffffe

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    .line 15
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->PExt:[I

    .line 17
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    return-void

    .line 14
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x3
    .end array-data

    .line 15
    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x4
        -0x2
        -0x1
        0x3
        -0x4
    .end array-data

    .line 17
    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x5
        0x1
        0x0
        -0x4
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat128;->add([I[I[I)I

    move-result v0

    .line 25
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x3

    aget v1, p2, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7ffffffe

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {p2, v1}, Lorg/spongycastle/math/raw/Nat128;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->addPInvTo([I)V

    .line 29
    :cond_1
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 3
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 34
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p2, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7ffffffe

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->PExt:[I

    invoke-static {p2, v1}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lorg/spongycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 38
    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 42
    const/4 v1, 0x4

    invoke-static {v1, p0, p1}, Lorg/spongycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 43
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x3

    aget v1, p1, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7ffffffe

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {p1, v1}, Lorg/spongycastle/math/raw/Nat128;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->addPInvTo([I)V

    .line 47
    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 12
    .param p0, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 193
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 194
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v9

    shr-long/2addr v0, v8

    .line 195
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 197
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 198
    long-to-int v2, v0

    aput v2, p0, v10

    shr-long/2addr v0, v8

    .line 199
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 200
    long-to-int v2, v0

    aput v2, p0, v11

    shr-long/2addr v0, v8

    .line 202
    :cond_0
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 203
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    .line 204
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 51
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat128;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 52
    .local v0, "z":[I
    const/4 v1, 0x3

    aget v1, v0, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7ffffffe

    if-lt v1, v2, :cond_0

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat128;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/raw/Nat128;->subFrom([I[I)I

    .line 56
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 61
    aget v1, p0, v2

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 63
    invoke-static {v3, p0, v2, p1}, Lorg/spongycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {p0, v1, p1}, Lorg/spongycastle/math/raw/Nat128;->add([I[I[I)I

    move-result v0

    .line 68
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
    .line 74
    invoke-static {}, Lorg/spongycastle/math/raw/Nat128;->createExt()[I

    move-result-object v0

    .line 75
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/raw/Nat128;->mul([I[I[I)V

    .line 76
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->reduce([I[I)V

    .line 77
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 81
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat128;->mulAddTo([I[I[I)I

    move-result v0

    .line 82
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p2, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7ffffffe

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->PExt:[I

    invoke-static {p2, v1}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lorg/spongycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 86
    :cond_1
    return-void
.end method

.method public static negate([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 90
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat128;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p1}, Lorg/spongycastle/math/raw/Nat128;->zero([I)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat128;->sub([I[I[I)I

    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 22
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 102
    const/16 v18, 0x0

    aget v18, p0, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v2, v18, v20

    .local v2, "x0":J
    const/16 v18, 0x1

    aget v18, p0, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v4, v18, v20

    .local v4, "x1":J
    const/16 v18, 0x2

    aget v18, p0, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v6, v18, v20

    .local v6, "x2":J
    const/16 v18, 0x3

    aget v18, p0, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v8, v18, v20

    .line 103
    .local v8, "x3":J
    const/16 v18, 0x4

    aget v18, p0, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v10, v18, v20

    .local v10, "x4":J
    const/16 v18, 0x5

    aget v18, p0, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v12, v18, v20

    .local v12, "x5":J
    const/16 v18, 0x6

    aget v18, p0, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v14, v18, v20

    .local v14, "x6":J
    const/16 v18, 0x7

    aget v18, p0, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v16, v18, v20

    .line 105
    .local v16, "x7":J
    add-long v8, v8, v16

    const/16 v18, 0x1

    shl-long v18, v16, v18

    add-long v14, v14, v18

    .line 106
    add-long/2addr v6, v14

    const/16 v18, 0x1

    shl-long v18, v14, v18

    add-long v12, v12, v18

    .line 107
    add-long/2addr v4, v12

    const/16 v18, 0x1

    shl-long v18, v12, v18

    add-long v10, v10, v18

    .line 108
    add-long/2addr v2, v10

    const/16 v18, 0x1

    shl-long v18, v10, v18

    add-long v8, v8, v18

    .line 110
    const/16 v18, 0x0

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p1, v18

    const/16 v18, 0x20

    ushr-long v18, v2, v18

    add-long v4, v4, v18

    .line 111
    const/16 v18, 0x1

    long-to-int v0, v4

    move/from16 v19, v0

    aput v19, p1, v18

    const/16 v18, 0x20

    ushr-long v18, v4, v18

    add-long v6, v6, v18

    .line 112
    const/16 v18, 0x2

    long-to-int v0, v6

    move/from16 v19, v0

    aput v19, p1, v18

    const/16 v18, 0x20

    ushr-long v18, v6, v18

    add-long v8, v8, v18

    .line 113
    const/16 v18, 0x3

    long-to-int v0, v8

    move/from16 v19, v0

    aput v19, p1, v18

    .line 115
    const/16 v18, 0x20

    ushr-long v18, v8, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->reduce32(I[I)V

    .line 116
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 14
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x20

    const-wide v8, 0xffffffffL

    .line 120
    :goto_0
    if-eqz p0, :cond_1

    .line 122
    int-to-long v4, p0

    and-long v2, v4, v8

    .line 124
    .local v2, "x4":J
    aget v4, p1, v12

    int-to-long v4, v4

    and-long/2addr v4, v8

    add-long v0, v4, v2

    .line 125
    .local v0, "c":J
    long-to-int v4, v0

    aput v4, p1, v12

    shr-long/2addr v0, v10

    .line 126
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 128
    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v8

    add-long/2addr v0, v4

    .line 129
    long-to-int v4, v0

    aput v4, p1, v11

    shr-long/2addr v0, v10

    .line 130
    aget v4, p1, v13

    int-to-long v4, v4

    and-long/2addr v4, v8

    add-long/2addr v0, v4

    .line 131
    long-to-int v4, v0

    aput v4, p1, v13

    shr-long/2addr v0, v10

    .line 133
    :cond_0
    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    shl-long v6, v2, v11

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 134
    const/4 v4, 0x3

    long-to-int v5, v0

    aput v5, p1, v4

    shr-long/2addr v0, v10

    .line 138
    long-to-int p0, v0

    .line 139
    goto :goto_0

    .line 140
    .end local v0    # "c":J
    .end local v2    # "x4":J
    :cond_1
    return-void
.end method

.method public static square([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 144
    invoke-static {}, Lorg/spongycastle/math/raw/Nat128;->createExt()[I

    move-result-object v0

    .line 145
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat128;->square([I[I)V

    .line 146
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->reduce([I[I)V

    .line 147
    return-void
.end method

.method public static squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .prologue
    .line 153
    invoke-static {}, Lorg/spongycastle/math/raw/Nat128;->createExt()[I

    move-result-object v0

    .line 154
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat128;->square([I[I)V

    .line 155
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->reduce([I[I)V

    .line 157
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 159
    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat128;->square([I[I)V

    .line 160
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->reduce([I[I)V

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 12
    .param p0, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 208
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x1

    sub-long v0, v2, v4

    .line 209
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v9

    shr-long/2addr v0, v8

    .line 210
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 212
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 213
    long-to-int v2, v0

    aput v2, p0, v10

    shr-long/2addr v0, v8

    .line 214
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 215
    long-to-int v2, v0

    aput v2, p0, v11

    shr-long/2addr v0, v8

    .line 217
    :cond_0
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x2

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 218
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    .line 219
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 166
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat128;->sub([I[I[I)I

    move-result v0

    .line 167
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 169
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->subPInvFrom([I)V

    .line 171
    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 3
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 175
    const/16 v1, 0xa

    invoke-static {v1, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 176
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 178
    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lorg/spongycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 180
    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 184
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1}, Lorg/spongycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 185
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x3

    aget v1, p1, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7ffffffe

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {p1, v1}, Lorg/spongycastle/math/raw/Nat128;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP128R1Field;->addPInvTo([I)V

    .line 189
    :cond_1
    return-void
.end method
