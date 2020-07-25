.class public Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;
.super Ljava/lang/Object;
.source "SM2P256V1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P7s1:I = 0x7fffffff

.field static final PExt:[I

.field private static final PExt15s1:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->PExt:[I

    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
    .end array-data

    .line 15
    :array_1
    .array-data 4
        0x1
        0x0
        -0x2
        0x1
        0x1
        -0x2
        0x0
        0x2
        -0x2
        -0x3
        0x3
        -0x2
        -0x1
        -0x1
        0x0
        -0x2
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
    .line 23
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 24
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p2, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {p2, v1}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->addPInvTo([I)V

    .line 28
    :cond_1
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 4
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v3, 0x10

    .line 32
    invoke-static {v3, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    .line 33
    .local v0, "c":I
    if-nez v0, :cond_0

    const/16 v1, 0xf

    aget v1, p2, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->PExt:[I

    invoke-static {v3, p2, v1}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    :cond_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->PExt:[I

    invoke-static {v3, v1, p2}, Lorg/spongycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 37
    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 41
    const/16 v1, 0x8

    invoke-static {v1, p0, p1}, Lorg/spongycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 42
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p1, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {p1, v1}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->addPInvTo([I)V

    .line 46
    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 11
    .param p0, "z"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    .line 243
    aget v2, p0, v7

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long v0, v2, v8

    .line 244
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v7

    .line 245
    shr-long/2addr v0, v6

    .line 246
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 248
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 249
    long-to-int v2, v0

    aput v2, p0, v10

    .line 250
    shr-long/2addr v0, v6

    .line 252
    :cond_0
    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 253
    const/4 v2, 0x2

    long-to-int v3, v0

    aput v3, p0, v2

    .line 254
    shr-long/2addr v0, v6

    .line 255
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 256
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    .line 257
    shr-long/2addr v0, v6

    .line 258
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 260
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 261
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p0, v2

    .line 262
    shr-long/2addr v0, v6

    .line 263
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 264
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p0, v2

    .line 265
    shr-long/2addr v0, v6

    .line 266
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 267
    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p0, v2

    .line 268
    shr-long/2addr v0, v6

    .line 270
    :cond_1
    const/4 v2, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 271
    const/4 v2, 0x7

    long-to-int v3, v0

    aput v3, p0, v2

    .line 273
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 50
    invoke-static {p0}, Lorg/spongycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 51
    .local v0, "z":[I
    const/4 v1, 0x7

    aget v1, v0, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_0

    sget-object v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {v1, v0}, Lorg/spongycastle/math/raw/Nat256;->subFrom([I[I)I

    .line 55
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 60
    aget v1, p0, v2

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 62
    invoke-static {v3, p0, v2, p1}, Lorg/spongycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {p0, v1, p1}, Lorg/spongycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 67
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
    .line 73
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 74
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 75
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->reduce([I[I)V

    .line 76
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v3, 0x10

    .line 80
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result v0

    .line 81
    .local v0, "c":I
    if-nez v0, :cond_0

    const/16 v1, 0xf

    aget v1, p2, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->PExt:[I

    invoke-static {v3, p2, v1}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    sget-object v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->PExt:[I

    invoke-static {v3, v1, p2}, Lorg/spongycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 85
    :cond_1
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
    sget-object v0, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/spongycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_0
.end method

.method public static reduce([I[I)V
    .locals 38
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 101
    const/16 v34, 0x8

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v18, v34, v36

    .local v18, "xx08":J
    const/16 v34, 0x9

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v20, v34, v36

    .local v20, "xx09":J
    const/16 v34, 0xa

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v22, v34, v36

    .local v22, "xx10":J
    const/16 v34, 0xb

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v24, v34, v36

    .line 102
    .local v24, "xx11":J
    const/16 v34, 0xc

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v26, v34, v36

    .local v26, "xx12":J
    const/16 v34, 0xd

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v28, v34, v36

    .local v28, "xx13":J
    const/16 v34, 0xe

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v30, v34, v36

    .local v30, "xx14":J
    const/16 v34, 0xf

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v32, v34, v36

    .line 104
    .local v32, "xx15":J
    add-long v4, v18, v20

    .line 105
    .local v4, "t0":J
    add-long v6, v22, v24

    .line 106
    .local v6, "t1":J
    add-long v8, v26, v32

    .line 107
    .local v8, "t2":J
    add-long v10, v28, v30

    .line 108
    .local v10, "t3":J
    const/16 v34, 0x1

    shl-long v34, v32, v34

    add-long v12, v10, v34

    .line 110
    .local v12, "t4":J
    add-long v14, v4, v10

    .line 111
    .local v14, "ts":J
    add-long v34, v6, v8

    add-long v16, v34, v14

    .line 113
    .local v16, "tt":J
    const-wide/16 v2, 0x0

    .line 114
    .local v2, "cc":J
    const/16 v34, 0x0

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v34, v34, v36

    add-long v34, v34, v16

    add-long v34, v34, v28

    add-long v34, v34, v30

    add-long v34, v34, v32

    add-long v2, v2, v34

    .line 115
    const/16 v34, 0x0

    long-to-int v0, v2

    move/from16 v35, v0

    aput v35, p1, v34

    .line 116
    const/16 v34, 0x20

    shr-long v2, v2, v34

    .line 117
    const/16 v34, 0x1

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v34, v34, v36

    add-long v34, v34, v16

    sub-long v34, v34, v18

    add-long v34, v34, v30

    add-long v34, v34, v32

    add-long v2, v2, v34

    .line 118
    const/16 v34, 0x1

    long-to-int v0, v2

    move/from16 v35, v0

    aput v35, p1, v34

    .line 119
    const/16 v34, 0x20

    shr-long v2, v2, v34

    .line 120
    const/16 v34, 0x2

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v34, v34, v36

    sub-long v34, v34, v14

    add-long v2, v2, v34

    .line 121
    const/16 v34, 0x2

    long-to-int v0, v2

    move/from16 v35, v0

    aput v35, p1, v34

    .line 122
    const/16 v34, 0x20

    shr-long v2, v2, v34

    .line 123
    const/16 v34, 0x3

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v34, v34, v36

    add-long v34, v34, v16

    sub-long v34, v34, v20

    sub-long v34, v34, v22

    add-long v34, v34, v28

    add-long v2, v2, v34

    .line 124
    const/16 v34, 0x3

    long-to-int v0, v2

    move/from16 v35, v0

    aput v35, p1, v34

    .line 125
    const/16 v34, 0x20

    shr-long v2, v2, v34

    .line 126
    const/16 v34, 0x4

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v34, v34, v36

    add-long v34, v34, v16

    sub-long v34, v34, v6

    sub-long v34, v34, v18

    add-long v34, v34, v30

    add-long v2, v2, v34

    .line 127
    const/16 v34, 0x4

    long-to-int v0, v2

    move/from16 v35, v0

    aput v35, p1, v34

    .line 128
    const/16 v34, 0x20

    shr-long v2, v2, v34

    .line 129
    const/16 v34, 0x5

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v34, v34, v36

    add-long v34, v34, v12

    add-long v34, v34, v22

    add-long v2, v2, v34

    .line 130
    const/16 v34, 0x5

    long-to-int v0, v2

    move/from16 v35, v0

    aput v35, p1, v34

    .line 131
    const/16 v34, 0x20

    shr-long v2, v2, v34

    .line 132
    const/16 v34, 0x6

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v34, v34, v36

    add-long v34, v34, v24

    add-long v34, v34, v30

    add-long v34, v34, v32

    add-long v2, v2, v34

    .line 133
    const/16 v34, 0x6

    long-to-int v0, v2

    move/from16 v35, v0

    aput v35, p1, v34

    .line 134
    const/16 v34, 0x20

    shr-long v2, v2, v34

    .line 135
    const/16 v34, 0x7

    aget v34, p0, v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v34, v34, v36

    add-long v34, v34, v16

    add-long v34, v34, v12

    add-long v34, v34, v26

    add-long v2, v2, v34

    .line 136
    const/16 v34, 0x7

    long-to-int v0, v2

    move/from16 v35, v0

    aput v35, p1, v34

    .line 137
    const/16 v34, 0x20

    shr-long v2, v2, v34

    .line 141
    long-to-int v0, v2

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->reduce32(I[I)V

    .line 142
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 13
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    const/4 v9, 0x7

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 146
    const-wide/16 v0, 0x0

    .line 148
    .local v0, "cc":J
    if-eqz p0, :cond_2

    .line 150
    int-to-long v4, p0

    and-long v2, v4, v6

    .line 152
    .local v2, "xx08":J
    aget v4, p1, v12

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 153
    long-to-int v4, v0

    aput v4, p1, v12

    .line 154
    shr-long/2addr v0, v8

    .line 155
    cmp-long v4, v0, v10

    if-eqz v4, :cond_0

    .line 157
    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 158
    const/4 v4, 0x1

    long-to-int v5, v0

    aput v5, p1, v4

    .line 159
    shr-long/2addr v0, v8

    .line 161
    :cond_0
    const/4 v4, 0x2

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 162
    const/4 v4, 0x2

    long-to-int v5, v0

    aput v5, p1, v4

    .line 163
    shr-long/2addr v0, v8

    .line 164
    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 165
    const/4 v4, 0x3

    long-to-int v5, v0

    aput v5, p1, v4

    .line 166
    shr-long/2addr v0, v8

    .line 167
    cmp-long v4, v0, v10

    if-eqz v4, :cond_1

    .line 169
    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 170
    const/4 v4, 0x4

    long-to-int v5, v0

    aput v5, p1, v4

    .line 171
    shr-long/2addr v0, v8

    .line 172
    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 173
    const/4 v4, 0x5

    long-to-int v5, v0

    aput v5, p1, v4

    .line 174
    shr-long/2addr v0, v8

    .line 175
    const/4 v4, 0x6

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 176
    const/4 v4, 0x6

    long-to-int v5, v0

    aput v5, p1, v4

    .line 177
    shr-long/2addr v0, v8

    .line 179
    :cond_1
    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 180
    long-to-int v4, v0

    aput v4, p1, v9

    .line 181
    shr-long/2addr v0, v8

    .line 186
    .end local v2    # "xx08":J
    :cond_2
    cmp-long v4, v0, v10

    if-nez v4, :cond_3

    aget v4, p1, v9

    ushr-int/lit8 v4, v4, 0x1

    const v5, 0x7fffffff

    if-lt v4, v5, :cond_4

    sget-object v4, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {p1, v4}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 188
    :cond_3
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->addPInvTo([I)V

    .line 190
    :cond_4
    return-void
.end method

.method public static square([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 194
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 195
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->square([I[I)V

    .line 196
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->reduce([I[I)V

    .line 197
    return-void
.end method

.method public static squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .prologue
    .line 203
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 204
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/spongycastle/math/raw/Nat256;->square([I[I)V

    .line 205
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->reduce([I[I)V

    .line 207
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 209
    invoke-static {p2, v0}, Lorg/spongycastle/math/raw/Nat256;->square([I[I)V

    .line 210
    invoke-static {v0, p2}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->reduce([I[I)V

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 11
    .param p0, "z"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    .line 277
    aget v2, p0, v7

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long v0, v2, v8

    .line 278
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v7

    .line 279
    shr-long/2addr v0, v6

    .line 280
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 282
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 283
    long-to-int v2, v0

    aput v2, p0, v10

    .line 284
    shr-long/2addr v0, v6

    .line 286
    :cond_0
    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 287
    const/4 v2, 0x2

    long-to-int v3, v0

    aput v3, p0, v2

    .line 288
    shr-long/2addr v0, v6

    .line 289
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 290
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    .line 291
    shr-long/2addr v0, v6

    .line 292
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 294
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 295
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p0, v2

    .line 296
    shr-long/2addr v0, v6

    .line 297
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 298
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p0, v2

    .line 299
    shr-long/2addr v0, v6

    .line 300
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 301
    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p0, v2

    .line 302
    shr-long/2addr v0, v6

    .line 304
    :cond_1
    const/4 v2, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 305
    const/4 v2, 0x7

    long-to-int v3, v0

    aput v3, p0, v2

    .line 307
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 216
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    .line 217
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 219
    invoke-static {p2}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->subPInvFrom([I)V

    .line 221
    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 3
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v2, 0x10

    .line 225
    invoke-static {v2, p0, p1, p2}, Lorg/spongycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 226
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 228
    sget-object v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->PExt:[I

    invoke-static {v2, v1, p2}, Lorg/spongycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 230
    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 234
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1}, Lorg/spongycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 235
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p1, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {p1, v1}, Lorg/spongycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/gm/SM2P256V1Field;->addPInvTo([I)V

    .line 239
    :cond_1
    return-void
.end method
