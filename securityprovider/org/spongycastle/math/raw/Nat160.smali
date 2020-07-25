.class public abstract Lorg/spongycastle/math/raw/Nat160;
.super Ljava/lang/Object;
.source "Nat160.java"


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 15
    long-to-int v2, v0

    aput v2, p2, v9

    .line 16
    ushr-long/2addr v0, v8

    .line 17
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 18
    long-to-int v2, v0

    aput v2, p2, v10

    .line 19
    ushr-long/2addr v0, v8

    .line 20
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 21
    long-to-int v2, v0

    aput v2, p2, v11

    .line 22
    ushr-long/2addr v0, v8

    .line 23
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 24
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 25
    ushr-long/2addr v0, v8

    .line 26
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 27
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 28
    ushr-long/2addr v0, v8

    .line 29
    long-to-int v2, v0

    return v2
.end method

.method public static addBothTo([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    aget v4, p2, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 36
    long-to-int v2, v0

    aput v2, p2, v9

    .line 37
    ushr-long/2addr v0, v8

    .line 38
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    aget v4, p2, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 39
    long-to-int v2, v0

    aput v2, p2, v10

    .line 40
    ushr-long/2addr v0, v8

    .line 41
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    aget v4, p2, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 42
    long-to-int v2, v0

    aput v2, p2, v11

    .line 43
    ushr-long/2addr v0, v8

    .line 44
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 45
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 46
    ushr-long/2addr v0, v8

    .line 47
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 48
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 49
    ushr-long/2addr v0, v8

    .line 50
    long-to-int v2, v0

    return v2
.end method

.method public static addTo([II[III)I
    .locals 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "cIn"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 76
    int-to-long v2, p4

    and-long v0, v2, v6

    .line 77
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 78
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 79
    ushr-long/2addr v0, v8

    .line 80
    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 81
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 82
    ushr-long/2addr v0, v8

    .line 83
    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x2

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 84
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 85
    ushr-long/2addr v0, v8

    .line 86
    add-int/lit8 v2, p1, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 87
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 88
    ushr-long/2addr v0, v8

    .line 89
    add-int/lit8 v2, p1, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 90
    add-int/lit8 v2, p3, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 91
    ushr-long/2addr v0, v8

    .line 92
    long-to-int v2, v0

    return v2
.end method

.method public static addTo([I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 55
    const-wide/16 v0, 0x0

    .line 56
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 57
    long-to-int v2, v0

    aput v2, p1, v9

    .line 58
    ushr-long/2addr v0, v8

    .line 59
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 60
    long-to-int v2, v0

    aput v2, p1, v10

    .line 61
    ushr-long/2addr v0, v8

    .line 62
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 63
    long-to-int v2, v0

    aput v2, p1, v11

    .line 64
    ushr-long/2addr v0, v8

    .line 65
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 66
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p1, v2

    .line 67
    ushr-long/2addr v0, v8

    .line 68
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 69
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p1, v2

    .line 70
    ushr-long/2addr v0, v8

    .line 71
    long-to-int v2, v0

    return v2
.end method

.method public static addToEachOther([II[II)I
    .locals 9
    .param p0, "u"    # [I
    .param p1, "uOff"    # I
    .param p2, "v"    # [I
    .param p3, "vOff"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 97
    const-wide/16 v0, 0x0

    .line 98
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 99
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 100
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 101
    ushr-long/2addr v0, v8

    .line 102
    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 103
    add-int/lit8 v2, p1, 0x1

    long-to-int v3, v0

    aput v3, p0, v2

    .line 104
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 105
    ushr-long/2addr v0, v8

    .line 106
    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x2

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 107
    add-int/lit8 v2, p1, 0x2

    long-to-int v3, v0

    aput v3, p0, v2

    .line 108
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 109
    ushr-long/2addr v0, v8

    .line 110
    add-int/lit8 v2, p1, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 111
    add-int/lit8 v2, p1, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    .line 112
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 113
    ushr-long/2addr v0, v8

    .line 114
    add-int/lit8 v2, p1, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 115
    add-int/lit8 v2, p1, 0x4

    long-to-int v3, v0

    aput v3, p0, v2

    .line 116
    add-int/lit8 v2, p3, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 117
    ushr-long/2addr v0, v8

    .line 118
    long-to-int v2, v0

    return v2
.end method

.method public static copy([I[I)V
    .locals 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    aget v0, p0, v1

    aput v0, p1, v1

    .line 124
    aget v0, p0, v2

    aput v0, p1, v2

    .line 125
    aget v0, p0, v3

    aput v0, p1, v3

    .line 126
    aget v0, p0, v4

    aput v0, p1, v4

    .line 127
    aget v0, p0, v5

    aput v0, p1, v5

    .line 128
    return-void
.end method

.method public static create()[I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    .prologue
    .line 137
    const/16 v0, 0xa

    new-array v0, v0, [I

    return-object v0
.end method

.method public static diff([II[II[II)Z
    .locals 7
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .prologue
    .line 142
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/raw/Nat160;->gte([II[II)Z

    move-result v6

    .line 143
    .local v6, "pos":Z
    if-eqz v6, :cond_0

    .line 145
    invoke-static/range {p0 .. p5}, Lorg/spongycastle/math/raw/Nat160;->sub([II[II[II)I

    .line 151
    :goto_0
    return v6

    :cond_0
    move-object v0, p2

    move v1, p3

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move v5, p5

    .line 149
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat160;->sub([II[II[II)I

    goto :goto_0
.end method

.method public static eq([I[I)Z
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    .line 156
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 158
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 160
    const/4 v1, 0x0

    .line 163
    :goto_1
    return v1

    .line 156
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 163
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 5
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 168
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0xa0

    if-le v3, v4, :cond_1

    .line 170
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 173
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat160;->create()[I

    move-result-object v2

    .line 174
    .local v2, "z":[I
    const/4 v0, 0x0

    .line 175
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 178
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 180
    :cond_2
    return-object v2
.end method

.method public static getBit([II)I
    .locals 4
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .prologue
    const/4 v2, 0x0

    .line 185
    if-nez p1, :cond_1

    .line 187
    aget v2, p0, v2

    and-int/lit8 v2, v2, 0x1

    .line 195
    :cond_0
    :goto_0
    return v2

    .line 189
    :cond_1
    shr-int/lit8 v1, p1, 0x5

    .line 190
    .local v1, "w":I
    if-ltz v1, :cond_0

    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 194
    and-int/lit8 v0, p1, 0x1f

    .line 195
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static gte([II[II)Z
    .locals 6
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v5, -0x80000000

    .line 214
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 216
    add-int v4, p1, v0

    aget v4, p0, v4

    xor-int v1, v4, v5

    .line 217
    .local v1, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int v2, v4, v5

    .line 218
    .local v2, "y_i":I
    if-ge v1, v2, :cond_1

    .line 219
    const/4 v3, 0x0

    .line 223
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_0
    return v3

    .line 220
    .restart local v1    # "x_i":I
    .restart local v2    # "y_i":I
    :cond_1
    if-gt v1, v2, :cond_0

    .line 214
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static gte([I[I)Z
    .locals 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    const/4 v3, 0x1

    const/high16 v5, -0x80000000

    .line 200
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 202
    aget v4, p0, v0

    xor-int v1, v4, v5

    .line 203
    .local v1, "x_i":I
    aget v4, p1, v0

    xor-int v2, v4, v5

    .line 204
    .local v2, "y_i":I
    if-ge v1, v2, :cond_1

    .line 205
    const/4 v3, 0x0

    .line 209
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_0
    return v3

    .line 206
    .restart local v1    # "x_i":I
    .restart local v2    # "y_i":I
    :cond_1
    if-gt v1, v2, :cond_0

    .line 200
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static isOne([I)Z
    .locals 4
    .param p0, "x"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    aget v3, p0, v1

    if-eq v3, v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    .line 234
    aget v3, p0, v0

    if-nez v3, :cond_0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 239
    goto :goto_0
.end method

.method public static isZero([I)Z
    .locals 2
    .param p0, "x"    # [I

    .prologue
    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 246
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 248
    const/4 v1, 0x0

    .line 251
    :goto_1
    return v1

    .line 244
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static mul([II[II[II)V
    .locals 26
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .prologue
    .line 306
    add-int/lit8 v5, p3, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v10, v20, v22

    .line 307
    .local v10, "y_0":J
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v12, v20, v22

    .line 308
    .local v12, "y_1":J
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v14, v20, v22

    .line 309
    .local v14, "y_2":J
    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v16, v20, v22

    .line 310
    .local v16, "y_3":J
    add-int/lit8 v5, p3, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v18, v20, v22

    .line 313
    .local v18, "y_4":J
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int/lit8 v5, p1, 0x0

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v6, v20, v22

    .line 314
    .local v6, "x_0":J
    mul-long v20, v6, v10

    add-long v2, v2, v20

    .line 315
    add-int/lit8 v5, p5, 0x0

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 316
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 317
    mul-long v20, v6, v12

    add-long v2, v2, v20

    .line 318
    add-int/lit8 v5, p5, 0x1

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 319
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 320
    mul-long v20, v6, v14

    add-long v2, v2, v20

    .line 321
    add-int/lit8 v5, p5, 0x2

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 322
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 323
    mul-long v20, v6, v16

    add-long v2, v2, v20

    .line 324
    add-int/lit8 v5, p5, 0x3

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 325
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 326
    mul-long v20, v6, v18

    add-long v2, v2, v20

    .line 327
    add-int/lit8 v5, p5, 0x4

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 328
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 329
    add-int/lit8 v5, p5, 0x5

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 332
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 334
    add-int/lit8 p5, p5, 0x1

    .line 335
    const-wide/16 v2, 0x0

    add-int v5, p1, v4

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v8, v20, v22

    .line 336
    .local v8, "x_i":J
    mul-long v20, v8, v10

    add-int/lit8 v5, p5, 0x0

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 337
    add-int/lit8 v5, p5, 0x0

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 338
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 339
    mul-long v20, v8, v12

    add-int/lit8 v5, p5, 0x1

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 340
    add-int/lit8 v5, p5, 0x1

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 341
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 342
    mul-long v20, v8, v14

    add-int/lit8 v5, p5, 0x2

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 343
    add-int/lit8 v5, p5, 0x2

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 344
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 345
    mul-long v20, v8, v16

    add-int/lit8 v5, p5, 0x3

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 346
    add-int/lit8 v5, p5, 0x3

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 347
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 348
    mul-long v20, v8, v18

    add-int/lit8 v5, p5, 0x4

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 349
    add-int/lit8 v5, p5, 0x4

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 350
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 351
    add-int/lit8 v5, p5, 0x5

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 332
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 353
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 26
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 256
    const/4 v5, 0x0

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v10, v20, v22

    .line 257
    .local v10, "y_0":J
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v12, v20, v22

    .line 258
    .local v12, "y_1":J
    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v14, v20, v22

    .line 259
    .local v14, "y_2":J
    const/4 v5, 0x3

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v16, v20, v22

    .line 260
    .local v16, "y_3":J
    const/4 v5, 0x4

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v18, v20, v22

    .line 263
    .local v18, "y_4":J
    const-wide/16 v2, 0x0

    .local v2, "c":J
    const/4 v5, 0x0

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v6, v20, v22

    .line 264
    .local v6, "x_0":J
    mul-long v20, v6, v10

    add-long v2, v2, v20

    .line 265
    const/4 v5, 0x0

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 266
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 267
    mul-long v20, v6, v12

    add-long v2, v2, v20

    .line 268
    const/4 v5, 0x1

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 269
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 270
    mul-long v20, v6, v14

    add-long v2, v2, v20

    .line 271
    const/4 v5, 0x2

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 272
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 273
    mul-long v20, v6, v16

    add-long v2, v2, v20

    .line 274
    const/4 v5, 0x3

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 275
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 276
    mul-long v20, v6, v18

    add-long v2, v2, v20

    .line 277
    const/4 v5, 0x4

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 278
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 279
    const/4 v5, 0x5

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 282
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 284
    const-wide/16 v2, 0x0

    aget v5, p0, v4

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v8, v20, v22

    .line 285
    .local v8, "x_i":J
    mul-long v20, v8, v10

    add-int/lit8 v5, v4, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 286
    add-int/lit8 v5, v4, 0x0

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 287
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 288
    mul-long v20, v8, v12

    add-int/lit8 v5, v4, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 289
    add-int/lit8 v5, v4, 0x1

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 290
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 291
    mul-long v20, v8, v14

    add-int/lit8 v5, v4, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 292
    add-int/lit8 v5, v4, 0x2

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 293
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 294
    mul-long v20, v8, v16

    add-int/lit8 v5, v4, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 295
    add-int/lit8 v5, v4, 0x3

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 296
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 297
    mul-long v20, v8, v18

    add-int/lit8 v5, v4, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 298
    add-int/lit8 v5, v4, 0x4

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 299
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 300
    add-int/lit8 v5, v4, 0x5

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 302
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 22
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .prologue
    .line 428
    const-wide/16 v2, 0x0

    .local v2, "c":J
    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v4, v16, v18

    .line 429
    .local v4, "wVal":J
    add-int/lit8 v16, p2, 0x0

    aget v16, p1, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v6, v16, v18

    .line 430
    .local v6, "x0":J
    mul-long v16, v4, v6

    add-int/lit8 v18, p4, 0x0

    aget v18, p3, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v16, v16, v18

    add-long v2, v2, v16

    .line 431
    add-int/lit8 v16, p6, 0x0

    long-to-int v0, v2

    move/from16 v17, v0

    aput v17, p5, v16

    .line 432
    const/16 v16, 0x20

    ushr-long v2, v2, v16

    .line 433
    add-int/lit8 v16, p2, 0x1

    aget v16, p1, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v8, v16, v18

    .line 434
    .local v8, "x1":J
    mul-long v16, v4, v8

    add-long v16, v16, v6

    add-int/lit8 v18, p4, 0x1

    aget v18, p3, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v16, v16, v18

    add-long v2, v2, v16

    .line 435
    add-int/lit8 v16, p6, 0x1

    long-to-int v0, v2

    move/from16 v17, v0

    aput v17, p5, v16

    .line 436
    const/16 v16, 0x20

    ushr-long v2, v2, v16

    .line 437
    add-int/lit8 v16, p2, 0x2

    aget v16, p1, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v10, v16, v18

    .line 438
    .local v10, "x2":J
    mul-long v16, v4, v10

    add-long v16, v16, v8

    add-int/lit8 v18, p4, 0x2

    aget v18, p3, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v16, v16, v18

    add-long v2, v2, v16

    .line 439
    add-int/lit8 v16, p6, 0x2

    long-to-int v0, v2

    move/from16 v17, v0

    aput v17, p5, v16

    .line 440
    const/16 v16, 0x20

    ushr-long v2, v2, v16

    .line 441
    add-int/lit8 v16, p2, 0x3

    aget v16, p1, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v12, v16, v18

    .line 442
    .local v12, "x3":J
    mul-long v16, v4, v12

    add-long v16, v16, v10

    add-int/lit8 v18, p4, 0x3

    aget v18, p3, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v16, v16, v18

    add-long v2, v2, v16

    .line 443
    add-int/lit8 v16, p6, 0x3

    long-to-int v0, v2

    move/from16 v17, v0

    aput v17, p5, v16

    .line 444
    const/16 v16, 0x20

    ushr-long v2, v2, v16

    .line 445
    add-int/lit8 v16, p2, 0x4

    aget v16, p1, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v14, v16, v18

    .line 446
    .local v14, "x4":J
    mul-long v16, v4, v14

    add-long v16, v16, v12

    add-int/lit8 v18, p4, 0x4

    aget v18, p3, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v16, v16, v18

    add-long v2, v2, v16

    .line 447
    add-int/lit8 v16, p6, 0x4

    long-to-int v0, v2

    move/from16 v17, v0

    aput v17, p5, v16

    .line 448
    const/16 v16, 0x20

    ushr-long v2, v2, v16

    .line 449
    add-long/2addr v2, v14

    .line 450
    return-wide v2
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 17
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    .line 481
    const-wide/16 v2, 0x0

    .local v2, "c":J
    move/from16 v0, p0

    int-to-long v10, v0

    const-wide v12, 0xffffffffL

    and-long v4, v10, v12

    .line 482
    .local v4, "xVal":J
    const-wide v10, 0xffffffffL

    and-long v6, p1, v10

    .line 483
    .local v6, "y00":J
    mul-long v10, v4, v6

    add-int/lit8 v12, p4, 0x0

    aget v12, p3, v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 484
    add-int/lit8 v10, p4, 0x0

    long-to-int v11, v2

    aput v11, p3, v10

    .line 485
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 486
    const/16 v10, 0x20

    ushr-long v8, p1, v10

    .line 487
    .local v8, "y01":J
    mul-long v10, v4, v8

    add-long/2addr v10, v6

    add-int/lit8 v12, p4, 0x1

    aget v12, p3, v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 488
    add-int/lit8 v10, p4, 0x1

    long-to-int v11, v2

    aput v11, p3, v10

    .line 489
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 490
    add-int/lit8 v10, p4, 0x2

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v10, v8

    add-long/2addr v2, v10

    .line 491
    add-int/lit8 v10, p4, 0x2

    long-to-int v11, v2

    aput v11, p3, v10

    .line 492
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 493
    add-int/lit8 v10, p4, 0x3

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 494
    add-int/lit8 v10, p4, 0x3

    long-to-int v11, v2

    aput v11, p3, v10

    .line 495
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 496
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    const/4 v10, 0x5

    const/4 v11, 0x4

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v10, v0, v1, v11}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v10

    goto :goto_0
.end method

.method public static mul33WordAdd(II[II)I
    .locals 12
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .prologue
    .line 504
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p0

    const-wide v8, 0xffffffffL

    and-long v2, v6, v8

    .local v2, "xVal":J
    int-to-long v6, p1

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    .line 505
    .local v4, "yVal":J
    mul-long v6, v4, v2

    add-int/lit8 v8, p3, 0x0

    aget v8, p2, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 506
    add-int/lit8 v6, p3, 0x0

    long-to-int v7, v0

    aput v7, p2, v6

    .line 507
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 508
    add-int/lit8 v6, p3, 0x1

    aget v6, p2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 509
    add-int/lit8 v6, p3, 0x1

    long-to-int v7, v0

    aput v7, p2, v6

    .line 510
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 511
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 512
    add-int/lit8 v6, p3, 0x2

    long-to-int v7, v0

    aput v7, p2, v6

    .line 513
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 514
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x5

    const/4 v7, 0x3

    invoke-static {v6, p2, p3, v7}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v6

    goto :goto_0
.end method

.method public static mulAddTo([II[II[II)I
    .locals 26
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .prologue
    .line 391
    add-int/lit8 v5, p3, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v8, v20, v22

    .line 392
    .local v8, "y_0":J
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v10, v20, v22

    .line 393
    .local v10, "y_1":J
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v12, v20, v22

    .line 394
    .local v12, "y_2":J
    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v14, v20, v22

    .line 395
    .local v14, "y_3":J
    add-int/lit8 v5, p3, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v16, v20, v22

    .line 397
    .local v16, "y_4":J
    const-wide/16 v18, 0x0

    .line 398
    .local v18, "zc":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 400
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int v5, p1, v4

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v6, v20, v22

    .line 401
    .local v6, "x_i":J
    mul-long v20, v6, v8

    add-int/lit8 v5, p5, 0x0

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 402
    add-int/lit8 v5, p5, 0x0

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 403
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 404
    mul-long v20, v6, v10

    add-int/lit8 v5, p5, 0x1

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 405
    add-int/lit8 v5, p5, 0x1

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 406
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 407
    mul-long v20, v6, v12

    add-int/lit8 v5, p5, 0x2

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 408
    add-int/lit8 v5, p5, 0x2

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 409
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 410
    mul-long v20, v6, v14

    add-int/lit8 v5, p5, 0x3

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 411
    add-int/lit8 v5, p5, 0x3

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 412
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 413
    mul-long v20, v6, v16

    add-int/lit8 v5, p5, 0x4

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 414
    add-int/lit8 v5, p5, 0x4

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 415
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 416
    add-int/lit8 v5, p5, 0x5

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v20, v20, v18

    add-long v2, v2, v20

    .line 417
    add-int/lit8 v5, p5, 0x5

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p4, v5

    .line 418
    const/16 v5, 0x20

    ushr-long v18, v2, v5

    .line 419
    add-int/lit8 p5, p5, 0x1

    .line 398
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 421
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v18

    long-to-int v5, v0

    return v5
.end method

.method public static mulAddTo([I[I[I)I
    .locals 26
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 357
    const/4 v5, 0x0

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v8, v20, v22

    .line 358
    .local v8, "y_0":J
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v10, v20, v22

    .line 359
    .local v10, "y_1":J
    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v12, v20, v22

    .line 360
    .local v12, "y_2":J
    const/4 v5, 0x3

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v14, v20, v22

    .line 361
    .local v14, "y_3":J
    const/4 v5, 0x4

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v16, v20, v22

    .line 363
    .local v16, "y_4":J
    const-wide/16 v18, 0x0

    .line 364
    .local v18, "zc":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v4, v5, :cond_0

    .line 366
    const-wide/16 v2, 0x0

    .local v2, "c":J
    aget v5, p0, v4

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v6, v20, v22

    .line 367
    .local v6, "x_i":J
    mul-long v20, v6, v8

    add-int/lit8 v5, v4, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 368
    add-int/lit8 v5, v4, 0x0

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 369
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 370
    mul-long v20, v6, v10

    add-int/lit8 v5, v4, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 371
    add-int/lit8 v5, v4, 0x1

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 372
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 373
    mul-long v20, v6, v12

    add-int/lit8 v5, v4, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 374
    add-int/lit8 v5, v4, 0x2

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 375
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 376
    mul-long v20, v6, v14

    add-int/lit8 v5, v4, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 377
    add-int/lit8 v5, v4, 0x3

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 378
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 379
    mul-long v20, v6, v16

    add-int/lit8 v5, v4, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v20, v20, v22

    add-long v2, v2, v20

    .line 380
    add-int/lit8 v5, v4, 0x4

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 381
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 382
    add-int/lit8 v5, v4, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v20, v20, v18

    add-long v2, v2, v20

    .line 383
    add-int/lit8 v5, v4, 0x5

    long-to-int v0, v2

    move/from16 v20, v0

    aput v20, p2, v5

    .line 384
    const/16 v5, 0x20

    ushr-long v18, v2, v5

    .line 364
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 386
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v18

    long-to-int v5, v0

    return v5
.end method

.method public static mulWord(I[I[II)I
    .locals 10
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .prologue
    const-wide v8, 0xffffffffL

    .line 549
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p0

    and-long v4, v6, v8

    .line 550
    .local v4, "xVal":J
    const/4 v2, 0x0

    .line 553
    .local v2, "i":I
    :cond_0
    aget v3, p1, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 554
    add-int v3, p3, v2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 555
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 557
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 558
    long-to-int v3, v0

    return v3
.end method

.method public static mulWordAddExt(I[II[II)I
    .locals 11
    .param p0, "x"    # I
    .param p1, "yy"    # [I
    .param p2, "yyOff"    # I
    .param p3, "zz"    # [I
    .param p4, "zzOff"    # I

    .prologue
    const/16 v10, 0x20

    const-wide v8, 0xffffffffL

    .line 457
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v4, p0

    and-long v2, v4, v8

    .line 458
    .local v2, "xVal":J
    add-int/lit8 v4, p2, 0x0

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x0

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 459
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 460
    ushr-long/2addr v0, v10

    .line 461
    add-int/lit8 v4, p2, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x1

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 462
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v0

    aput v5, p3, v4

    .line 463
    ushr-long/2addr v0, v10

    .line 464
    add-int/lit8 v4, p2, 0x2

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x2

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 465
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 466
    ushr-long/2addr v0, v10

    .line 467
    add-int/lit8 v4, p2, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x3

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 468
    add-int/lit8 v4, p4, 0x3

    long-to-int v5, v0

    aput v5, p3, v4

    .line 469
    ushr-long/2addr v0, v10

    .line 470
    add-int/lit8 v4, p2, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x4

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 471
    add-int/lit8 v4, p4, 0x4

    long-to-int v5, v0

    aput v5, p3, v4

    .line 472
    ushr-long/2addr v0, v10

    .line 473
    long-to-int v4, v0

    return v4
.end method

.method public static mulWordDwordAdd(IJ[II)I
    .locals 11
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    const/16 v10, 0x20

    const-wide v8, 0xffffffffL

    .line 520
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v4, p0

    and-long v2, v4, v8

    .line 521
    .local v2, "xVal":J
    and-long v4, p1, v8

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x0

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 522
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 523
    ushr-long/2addr v0, v10

    .line 524
    ushr-long v4, p1, v10

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x1

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 525
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v0

    aput v5, p3, v4

    .line 526
    ushr-long/2addr v0, v10

    .line 527
    add-int/lit8 v4, p4, 0x2

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    add-long/2addr v0, v4

    .line 528
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 529
    ushr-long/2addr v0, v10

    .line 530
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x5

    const/4 v5, 0x3

    invoke-static {v4, p3, p4, v5}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    goto :goto_0
.end method

.method public static mulWordsAdd(II[II)I
    .locals 12
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .prologue
    .line 537
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p0

    const-wide v8, 0xffffffffL

    and-long v2, v6, v8

    .local v2, "xVal":J
    int-to-long v6, p1

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    .line 538
    .local v4, "yVal":J
    mul-long v6, v4, v2

    add-int/lit8 v8, p3, 0x0

    aget v8, p2, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 539
    add-int/lit8 v6, p3, 0x0

    long-to-int v7, v0

    aput v7, p2, v6

    .line 540
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 541
    add-int/lit8 v6, p3, 0x1

    aget v6, p2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 542
    add-int/lit8 v6, p3, 0x1

    long-to-int v7, v0

    aput v7, p2, v6

    .line 543
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 544
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x5

    const/4 v7, 0x2

    invoke-static {v6, p2, p3, v7}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v6

    goto :goto_0
.end method

.method public static square([II[II)V
    .locals 42
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I

    .prologue
    .line 658
    add-int/lit8 v9, p1, 0x0

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v12, v38, v40

    .line 661
    .local v12, "x_0":J
    const/4 v2, 0x0

    .line 663
    .local v2, "c":I
    const/4 v3, 0x4

    .local v3, "i":I
    const/16 v5, 0xa

    .line 666
    .local v5, "j":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    add-int v9, p1, v3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v10, v38, v40

    .line 667
    .local v10, "xVal":J
    mul-long v6, v10, v10

    .line 668
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    add-int v9, p3, v5

    shl-int/lit8 v38, v2, 0x1f

    const/16 v39, 0x21

    ushr-long v40, v6, v39

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v39, v0

    or-int v38, v38, v39

    aput v38, p2, v9

    .line 669
    add-int/lit8 v5, v5, -0x1

    add-int v9, p3, v5

    const/16 v38, 0x1

    ushr-long v38, v6, v38

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v38, v0

    aput v38, p2, v9

    .line 670
    long-to-int v2, v6

    .line 672
    if-gtz v4, :cond_0

    .line 675
    mul-long v6, v12, v12

    .line 676
    shl-int/lit8 v9, v2, 0x1f

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v9, 0x21

    ushr-long v40, v6, v9

    or-long v22, v38, v40

    .line 677
    .local v22, "zz_1":J
    add-int/lit8 v9, p3, 0x0

    long-to-int v0, v6

    move/from16 v38, v0

    aput v38, p2, v9

    .line 678
    const/16 v9, 0x20

    ushr-long v38, v6, v9

    move-wide/from16 v0, v38

    long-to-int v9, v0

    and-int/lit8 v2, v9, 0x1

    .line 682
    add-int/lit8 v9, p1, 0x1

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v14, v38, v40

    .line 683
    .local v14, "x_1":J
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v24, v38, v40

    .line 686
    .local v24, "zz_2":J
    mul-long v38, v14, v12

    add-long v22, v22, v38

    .line 687
    move-wide/from16 v0, v22

    long-to-int v8, v0

    .line 688
    .local v8, "w":I
    add-int/lit8 v9, p3, 0x1

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p2, v9

    .line 689
    ushr-int/lit8 v2, v8, 0x1f

    .line 690
    const/16 v9, 0x20

    ushr-long v38, v22, v9

    add-long v24, v24, v38

    .line 693
    add-int/lit8 v9, p1, 0x2

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v16, v38, v40

    .line 694
    .local v16, "x_2":J
    add-int/lit8 v9, p3, 0x3

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v26, v38, v40

    .line 695
    .local v26, "zz_3":J
    add-int/lit8 v9, p3, 0x4

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v28, v38, v40

    .line 697
    .local v28, "zz_4":J
    mul-long v38, v16, v12

    add-long v24, v24, v38

    .line 698
    move-wide/from16 v0, v24

    long-to-int v8, v0

    .line 699
    add-int/lit8 v9, p3, 0x2

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p2, v9

    .line 700
    ushr-int/lit8 v2, v8, 0x1f

    .line 701
    const/16 v9, 0x20

    ushr-long v38, v24, v9

    mul-long v40, v16, v14

    add-long v38, v38, v40

    add-long v26, v26, v38

    .line 702
    const/16 v9, 0x20

    ushr-long v38, v26, v9

    add-long v28, v28, v38

    .line 703
    const-wide v38, 0xffffffffL

    and-long v26, v26, v38

    .line 706
    add-int/lit8 v9, p1, 0x3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v18, v38, v40

    .line 707
    .local v18, "x_3":J
    add-int/lit8 v9, p3, 0x5

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v9, 0x20

    ushr-long v40, v28, v9

    add-long v30, v38, v40

    .local v30, "zz_5":J
    const-wide v38, 0xffffffffL

    and-long v28, v28, v38

    .line 708
    add-int/lit8 v9, p3, 0x6

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v9, 0x20

    ushr-long v40, v30, v9

    add-long v32, v38, v40

    .local v32, "zz_6":J
    const-wide v38, 0xffffffffL

    and-long v30, v30, v38

    .line 710
    mul-long v38, v18, v12

    add-long v26, v26, v38

    .line 711
    move-wide/from16 v0, v26

    long-to-int v8, v0

    .line 712
    add-int/lit8 v9, p3, 0x3

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p2, v9

    .line 713
    ushr-int/lit8 v2, v8, 0x1f

    .line 714
    const/16 v9, 0x20

    ushr-long v38, v26, v9

    mul-long v40, v18, v14

    add-long v38, v38, v40

    add-long v28, v28, v38

    .line 715
    const/16 v9, 0x20

    ushr-long v38, v28, v9

    mul-long v40, v18, v16

    add-long v38, v38, v40

    add-long v30, v30, v38

    .line 716
    const-wide v38, 0xffffffffL

    and-long v28, v28, v38

    .line 717
    const/16 v9, 0x20

    ushr-long v38, v30, v9

    add-long v32, v32, v38

    .line 718
    const-wide v38, 0xffffffffL

    and-long v30, v30, v38

    .line 721
    add-int/lit8 v9, p1, 0x4

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v20, v38, v40

    .line 722
    .local v20, "x_4":J
    add-int/lit8 v9, p3, 0x7

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v9, 0x20

    ushr-long v40, v32, v9

    add-long v34, v38, v40

    .local v34, "zz_7":J
    const-wide v38, 0xffffffffL

    and-long v32, v32, v38

    .line 723
    add-int/lit8 v9, p3, 0x8

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v9, 0x20

    ushr-long v40, v34, v9

    add-long v36, v38, v40

    .local v36, "zz_8":J
    const-wide v38, 0xffffffffL

    and-long v34, v34, v38

    .line 725
    mul-long v38, v20, v12

    add-long v28, v28, v38

    .line 726
    move-wide/from16 v0, v28

    long-to-int v8, v0

    .line 727
    add-int/lit8 v9, p3, 0x4

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p2, v9

    .line 728
    ushr-int/lit8 v2, v8, 0x1f

    .line 729
    const/16 v9, 0x20

    ushr-long v38, v28, v9

    mul-long v40, v20, v14

    add-long v38, v38, v40

    add-long v30, v30, v38

    .line 730
    const/16 v9, 0x20

    ushr-long v38, v30, v9

    mul-long v40, v20, v16

    add-long v38, v38, v40

    add-long v32, v32, v38

    .line 731
    const/16 v9, 0x20

    ushr-long v38, v32, v9

    mul-long v40, v20, v18

    add-long v38, v38, v40

    add-long v34, v34, v38

    .line 732
    const/16 v9, 0x20

    ushr-long v38, v34, v9

    add-long v36, v36, v38

    .line 735
    move-wide/from16 v0, v30

    long-to-int v8, v0

    .line 736
    add-int/lit8 v9, p3, 0x5

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p2, v9

    .line 737
    ushr-int/lit8 v2, v8, 0x1f

    .line 738
    move-wide/from16 v0, v32

    long-to-int v8, v0

    .line 739
    add-int/lit8 v9, p3, 0x6

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p2, v9

    .line 740
    ushr-int/lit8 v2, v8, 0x1f

    .line 741
    move-wide/from16 v0, v34

    long-to-int v8, v0

    .line 742
    add-int/lit8 v9, p3, 0x7

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p2, v9

    .line 743
    ushr-int/lit8 v2, v8, 0x1f

    .line 744
    move-wide/from16 v0, v36

    long-to-int v8, v0

    .line 745
    add-int/lit8 v9, p3, 0x8

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p2, v9

    .line 746
    ushr-int/lit8 v2, v8, 0x1f

    .line 747
    add-int/lit8 v9, p3, 0x9

    aget v9, p2, v9

    const/16 v38, 0x20

    ushr-long v38, v36, v38

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v38, v0

    add-int v8, v9, v38

    .line 748
    add-int/lit8 v9, p3, 0x9

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p2, v9

    .line 749
    return-void

    .end local v8    # "w":I
    .end local v14    # "x_1":J
    .end local v16    # "x_2":J
    .end local v18    # "x_3":J
    .end local v20    # "x_4":J
    .end local v22    # "zz_1":J
    .end local v24    # "zz_2":J
    .end local v26    # "zz_3":J
    .end local v28    # "zz_4":J
    .end local v30    # "zz_5":J
    .end local v32    # "zz_6":J
    .end local v34    # "zz_7":J
    .end local v36    # "zz_8":J
    :cond_0
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0
.end method

.method public static square([I[I)V
    .locals 42
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .prologue
    .line 563
    const/4 v9, 0x0

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v12, v38, v40

    .line 566
    .local v12, "x_0":J
    const/4 v2, 0x0

    .line 568
    .local v2, "c":I
    const/4 v3, 0x4

    .local v3, "i":I
    const/16 v5, 0xa

    .line 571
    .local v5, "j":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget v9, p0, v3

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v10, v38, v40

    .line 572
    .local v10, "xVal":J
    mul-long v6, v10, v10

    .line 573
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    shl-int/lit8 v9, v2, 0x1f

    const/16 v38, 0x21

    ushr-long v38, v6, v38

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v38, v0

    or-int v9, v9, v38

    aput v9, p1, v5

    .line 574
    add-int/lit8 v5, v5, -0x1

    const/4 v9, 0x1

    ushr-long v38, v6, v9

    move-wide/from16 v0, v38

    long-to-int v9, v0

    aput v9, p1, v5

    .line 575
    long-to-int v2, v6

    .line 577
    if-gtz v4, :cond_0

    .line 580
    mul-long v6, v12, v12

    .line 581
    shl-int/lit8 v9, v2, 0x1f

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v9, 0x21

    ushr-long v40, v6, v9

    or-long v22, v38, v40

    .line 582
    .local v22, "zz_1":J
    const/4 v9, 0x0

    long-to-int v0, v6

    move/from16 v38, v0

    aput v38, p1, v9

    .line 583
    const/16 v9, 0x20

    ushr-long v38, v6, v9

    move-wide/from16 v0, v38

    long-to-int v9, v0

    and-int/lit8 v2, v9, 0x1

    .line 587
    const/4 v9, 0x1

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v14, v38, v40

    .line 588
    .local v14, "x_1":J
    const/4 v9, 0x2

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v24, v38, v40

    .line 591
    .local v24, "zz_2":J
    mul-long v38, v14, v12

    add-long v22, v22, v38

    .line 592
    move-wide/from16 v0, v22

    long-to-int v8, v0

    .line 593
    .local v8, "w":I
    const/4 v9, 0x1

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p1, v9

    .line 594
    ushr-int/lit8 v2, v8, 0x1f

    .line 595
    const/16 v9, 0x20

    ushr-long v38, v22, v9

    add-long v24, v24, v38

    .line 598
    const/4 v9, 0x2

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v16, v38, v40

    .line 599
    .local v16, "x_2":J
    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v26, v38, v40

    .line 600
    .local v26, "zz_3":J
    const/4 v9, 0x4

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v28, v38, v40

    .line 602
    .local v28, "zz_4":J
    mul-long v38, v16, v12

    add-long v24, v24, v38

    .line 603
    move-wide/from16 v0, v24

    long-to-int v8, v0

    .line 604
    const/4 v9, 0x2

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p1, v9

    .line 605
    ushr-int/lit8 v2, v8, 0x1f

    .line 606
    const/16 v9, 0x20

    ushr-long v38, v24, v9

    mul-long v40, v16, v14

    add-long v38, v38, v40

    add-long v26, v26, v38

    .line 607
    const/16 v9, 0x20

    ushr-long v38, v26, v9

    add-long v28, v28, v38

    .line 608
    const-wide v38, 0xffffffffL

    and-long v26, v26, v38

    .line 611
    const/4 v9, 0x3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v18, v38, v40

    .line 612
    .local v18, "x_3":J
    const/4 v9, 0x5

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v9, 0x20

    ushr-long v40, v28, v9

    add-long v30, v38, v40

    .local v30, "zz_5":J
    const-wide v38, 0xffffffffL

    and-long v28, v28, v38

    .line 613
    const/4 v9, 0x6

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v9, 0x20

    ushr-long v40, v30, v9

    add-long v32, v38, v40

    .local v32, "zz_6":J
    const-wide v38, 0xffffffffL

    and-long v30, v30, v38

    .line 615
    mul-long v38, v18, v12

    add-long v26, v26, v38

    .line 616
    move-wide/from16 v0, v26

    long-to-int v8, v0

    .line 617
    const/4 v9, 0x3

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p1, v9

    .line 618
    ushr-int/lit8 v2, v8, 0x1f

    .line 619
    const/16 v9, 0x20

    ushr-long v38, v26, v9

    mul-long v40, v18, v14

    add-long v38, v38, v40

    add-long v28, v28, v38

    .line 620
    const/16 v9, 0x20

    ushr-long v38, v28, v9

    mul-long v40, v18, v16

    add-long v38, v38, v40

    add-long v30, v30, v38

    .line 621
    const-wide v38, 0xffffffffL

    and-long v28, v28, v38

    .line 622
    const/16 v9, 0x20

    ushr-long v38, v30, v9

    add-long v32, v32, v38

    .line 623
    const-wide v38, 0xffffffffL

    and-long v30, v30, v38

    .line 626
    const/4 v9, 0x4

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v20, v38, v40

    .line 627
    .local v20, "x_4":J
    const/4 v9, 0x7

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v9, 0x20

    ushr-long v40, v32, v9

    add-long v34, v38, v40

    .local v34, "zz_7":J
    const-wide v38, 0xffffffffL

    and-long v32, v32, v38

    .line 628
    const/16 v9, 0x8

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v9, 0x20

    ushr-long v40, v34, v9

    add-long v36, v38, v40

    .local v36, "zz_8":J
    const-wide v38, 0xffffffffL

    and-long v34, v34, v38

    .line 630
    mul-long v38, v20, v12

    add-long v28, v28, v38

    .line 631
    move-wide/from16 v0, v28

    long-to-int v8, v0

    .line 632
    const/4 v9, 0x4

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p1, v9

    .line 633
    ushr-int/lit8 v2, v8, 0x1f

    .line 634
    const/16 v9, 0x20

    ushr-long v38, v28, v9

    mul-long v40, v20, v14

    add-long v38, v38, v40

    add-long v30, v30, v38

    .line 635
    const/16 v9, 0x20

    ushr-long v38, v30, v9

    mul-long v40, v20, v16

    add-long v38, v38, v40

    add-long v32, v32, v38

    .line 636
    const/16 v9, 0x20

    ushr-long v38, v32, v9

    mul-long v40, v20, v18

    add-long v38, v38, v40

    add-long v34, v34, v38

    .line 637
    const/16 v9, 0x20

    ushr-long v38, v34, v9

    add-long v36, v36, v38

    .line 640
    move-wide/from16 v0, v30

    long-to-int v8, v0

    .line 641
    const/4 v9, 0x5

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p1, v9

    .line 642
    ushr-int/lit8 v2, v8, 0x1f

    .line 643
    move-wide/from16 v0, v32

    long-to-int v8, v0

    .line 644
    const/4 v9, 0x6

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p1, v9

    .line 645
    ushr-int/lit8 v2, v8, 0x1f

    .line 646
    move-wide/from16 v0, v34

    long-to-int v8, v0

    .line 647
    const/4 v9, 0x7

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p1, v9

    .line 648
    ushr-int/lit8 v2, v8, 0x1f

    .line 649
    move-wide/from16 v0, v36

    long-to-int v8, v0

    .line 650
    const/16 v9, 0x8

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p1, v9

    .line 651
    ushr-int/lit8 v2, v8, 0x1f

    .line 652
    const/16 v9, 0x9

    aget v9, p1, v9

    const/16 v38, 0x20

    ushr-long v38, v36, v38

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v38, v0

    add-int v8, v9, v38

    .line 653
    const/16 v9, 0x9

    shl-int/lit8 v38, v8, 0x1

    or-int v38, v38, v2

    aput v38, p1, v9

    .line 654
    return-void

    .end local v8    # "w":I
    .end local v14    # "x_1":J
    .end local v16    # "x_2":J
    .end local v18    # "x_3":J
    .end local v20    # "x_4":J
    .end local v22    # "zz_1":J
    .end local v24    # "zz_2":J
    .end local v26    # "zz_3":J
    .end local v28    # "zz_4":J
    .end local v30    # "zz_5":J
    .end local v32    # "zz_6":J
    .end local v34    # "zz_7":J
    .end local v36    # "zz_8":J
    :cond_0
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0
.end method

.method public static sub([II[II[II)I
    .locals 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 774
    const-wide/16 v0, 0x0

    .line 775
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 776
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 777
    shr-long/2addr v0, v8

    .line 778
    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 779
    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    .line 780
    shr-long/2addr v0, v8

    .line 781
    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x2

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 782
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 783
    shr-long/2addr v0, v8

    .line 784
    add-int/lit8 v2, p1, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 785
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 786
    shr-long/2addr v0, v8

    .line 787
    add-int/lit8 v2, p1, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 788
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 789
    shr-long/2addr v0, v8

    .line 790
    long-to-int v2, v0

    return v2
.end method

.method public static sub([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 753
    const-wide/16 v0, 0x0

    .line 754
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 755
    long-to-int v2, v0

    aput v2, p2, v9

    .line 756
    shr-long/2addr v0, v8

    .line 757
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 758
    long-to-int v2, v0

    aput v2, p2, v10

    .line 759
    shr-long/2addr v0, v8

    .line 760
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 761
    long-to-int v2, v0

    aput v2, p2, v11

    .line 762
    shr-long/2addr v0, v8

    .line 763
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 764
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 765
    shr-long/2addr v0, v8

    .line 766
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 767
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 768
    shr-long/2addr v0, v8

    .line 769
    long-to-int v2, v0

    return v2
.end method

.method public static subBothFrom([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 795
    const-wide/16 v0, 0x0

    .line 796
    .local v0, "c":J
    aget v2, p2, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 797
    long-to-int v2, v0

    aput v2, p2, v9

    .line 798
    shr-long/2addr v0, v8

    .line 799
    aget v2, p2, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 800
    long-to-int v2, v0

    aput v2, p2, v10

    .line 801
    shr-long/2addr v0, v8

    .line 802
    aget v2, p2, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 803
    long-to-int v2, v0

    aput v2, p2, v11

    .line 804
    shr-long/2addr v0, v8

    .line 805
    const/4 v2, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 806
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 807
    shr-long/2addr v0, v8

    .line 808
    const/4 v2, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 809
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 810
    shr-long/2addr v0, v8

    .line 811
    long-to-int v2, v0

    return v2
.end method

.method public static subFrom([II[II)I
    .locals 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 837
    const-wide/16 v0, 0x0

    .line 838
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p1, 0x0

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 839
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 840
    shr-long/2addr v0, v8

    .line 841
    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p1, 0x1

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 842
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 843
    shr-long/2addr v0, v8

    .line 844
    add-int/lit8 v2, p3, 0x2

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p1, 0x2

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 845
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 846
    shr-long/2addr v0, v8

    .line 847
    add-int/lit8 v2, p3, 0x3

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p1, 0x3

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 848
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 849
    shr-long/2addr v0, v8

    .line 850
    add-int/lit8 v2, p3, 0x4

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p1, 0x4

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 851
    add-int/lit8 v2, p3, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 852
    shr-long/2addr v0, v8

    .line 853
    long-to-int v2, v0

    return v2
.end method

.method public static subFrom([I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 816
    const-wide/16 v0, 0x0

    .line 817
    .local v0, "c":J
    aget v2, p1, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 818
    long-to-int v2, v0

    aput v2, p1, v9

    .line 819
    shr-long/2addr v0, v8

    .line 820
    aget v2, p1, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 821
    long-to-int v2, v0

    aput v2, p1, v10

    .line 822
    shr-long/2addr v0, v8

    .line 823
    aget v2, p1, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 824
    long-to-int v2, v0

    aput v2, p1, v11

    .line 825
    shr-long/2addr v0, v8

    .line 826
    const/4 v2, 0x3

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 827
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p1, v2

    .line 828
    shr-long/2addr v0, v8

    .line 829
    const/4 v2, 0x4

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x4

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 830
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p1, v2

    .line 831
    shr-long/2addr v0, v8

    .line 832
    long-to-int v2, v0

    return v2
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 5
    .param p0, "x"    # [I

    .prologue
    .line 858
    const/16 v3, 0x14

    new-array v0, v3, [B

    .line 859
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 861
    aget v2, p0, v1

    .line 862
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 864
    rsub-int/lit8 v3, v1, 0x4

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 859
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 867
    .end local v2    # "x_i":I
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v3
.end method

.method public static zero([I)V
    .locals 2
    .param p0, "z"    # [I

    .prologue
    const/4 v1, 0x0

    .line 872
    aput v1, p0, v1

    .line 873
    const/4 v0, 0x1

    aput v1, p0, v0

    .line 874
    const/4 v0, 0x2

    aput v1, p0, v0

    .line 875
    const/4 v0, 0x3

    aput v1, p0, v0

    .line 876
    const/4 v0, 0x4

    aput v1, p0, v0

    .line 877
    return-void
.end method
