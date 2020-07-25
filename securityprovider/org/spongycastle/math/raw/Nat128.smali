.class public abstract Lorg/spongycastle/math/raw/Nat128;
.super Ljava/lang/Object;
.source "Nat128.java"


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
    long-to-int v2, v0

    return v2
.end method

.method public static addBothTo([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide v6, 0xffffffffL

    .line 31
    const-wide/16 v0, 0x0

    .line 32
    .local v0, "c":J
    aget v2, p0, v8

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v8

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    aget v4, p2, v8

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 33
    long-to-int v2, v0

    aput v2, p2, v8

    .line 34
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 35
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
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

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
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

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
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 44
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

    .line 67
    int-to-long v2, p4

    and-long v0, v2, v6

    .line 68
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

    .line 69
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 70
    ushr-long/2addr v0, v8

    .line 71
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

    .line 72
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 73
    ushr-long/2addr v0, v8

    .line 74
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

    .line 75
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 76
    ushr-long/2addr v0, v8

    .line 77
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

    .line 78
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 79
    ushr-long/2addr v0, v8

    .line 80
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

    .line 49
    const-wide/16 v0, 0x0

    .line 50
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 51
    long-to-int v2, v0

    aput v2, p1, v9

    .line 52
    ushr-long/2addr v0, v8

    .line 53
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 54
    long-to-int v2, v0

    aput v2, p1, v10

    .line 55
    ushr-long/2addr v0, v8

    .line 56
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 57
    long-to-int v2, v0

    aput v2, p1, v11

    .line 58
    ushr-long/2addr v0, v8

    .line 59
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

    .line 60
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p1, v2

    .line 61
    ushr-long/2addr v0, v8

    .line 62
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

    .line 85
    const-wide/16 v0, 0x0

    .line 86
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

    .line 87
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 88
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 89
    ushr-long/2addr v0, v8

    .line 90
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

    .line 91
    add-int/lit8 v2, p1, 0x1

    long-to-int v3, v0

    aput v3, p0, v2

    .line 92
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 93
    ushr-long/2addr v0, v8

    .line 94
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

    .line 95
    add-int/lit8 v2, p1, 0x2

    long-to-int v3, v0

    aput v3, p0, v2

    .line 96
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 97
    ushr-long/2addr v0, v8

    .line 98
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

    .line 99
    add-int/lit8 v2, p1, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    .line 100
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 101
    ushr-long/2addr v0, v8

    .line 102
    long-to-int v2, v0

    return v2
.end method

.method public static copy([I[I)V
    .locals 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    aget v0, p0, v1

    aput v0, p1, v1

    .line 108
    aget v0, p0, v2

    aput v0, p1, v2

    .line 109
    aget v0, p0, v3

    aput v0, p1, v3

    .line 110
    aget v0, p0, v4

    aput v0, p1, v4

    .line 111
    return-void
.end method

.method public static copy64([J[J)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    aget-wide v0, p0, v2

    aput-wide v0, p1, v2

    .line 116
    aget-wide v0, p0, v3

    aput-wide v0, p1, v3

    .line 117
    return-void
.end method

.method public static create()[I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [I

    return-object v0
.end method

.method public static create64()[J
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0x8

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x4

    new-array v0, v0, [J

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
    .line 141
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/raw/Nat128;->gte([II[II)Z

    move-result v6

    .line 142
    .local v6, "pos":Z
    if-eqz v6, :cond_0

    .line 144
    invoke-static/range {p0 .. p5}, Lorg/spongycastle/math/raw/Nat128;->sub([II[II[II)I

    .line 150
    :goto_0
    return v6

    :cond_0
    move-object v0, p2

    move v1, p3

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move v5, p5

    .line 148
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat128;->sub([II[II[II)I

    goto :goto_0
.end method

.method public static eq([I[I)Z
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    .line 155
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 157
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 159
    const/4 v1, 0x0

    .line 162
    :goto_1
    return v1

    .line 155
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 162
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static eq64([J[J)Z
    .locals 6
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .prologue
    .line 167
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 169
    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x0

    .line 174
    :goto_1
    return v1

    .line 167
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 174
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 5
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 179
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x80

    if-le v3, v4, :cond_1

    .line 181
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 184
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat128;->create()[I

    move-result-object v2

    .line 185
    .local v2, "z":[I
    const/4 v0, 0x0

    .line 186
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 189
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 191
    :cond_2
    return-object v2
.end method

.method public static fromBigInteger64(Ljava/math/BigInteger;)[J
    .locals 6
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 196
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x80

    if-le v3, v4, :cond_1

    .line 198
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 201
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat128;->create64()[J

    move-result-object v2

    .line 202
    .local v2, "z":[J
    const/4 v0, 0x0

    .line 203
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eqz v3, :cond_2

    .line 205
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 206
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 208
    :cond_2
    return-object v2
.end method

.method public static getBit([II)I
    .locals 4
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .prologue
    const/4 v2, 0x0

    .line 213
    if-nez p1, :cond_1

    .line 215
    aget v2, p0, v2

    and-int/lit8 v2, v2, 0x1

    .line 223
    :cond_0
    :goto_0
    return v2

    .line 217
    :cond_1
    shr-int/lit8 v1, p1, 0x5

    .line 218
    .local v1, "w":I
    if-ltz v1, :cond_0

    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 222
    and-int/lit8 v0, p1, 0x1f

    .line 223
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

    .line 242
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 244
    add-int v4, p1, v0

    aget v4, p0, v4

    xor-int v1, v4, v5

    .line 245
    .local v1, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int v2, v4, v5

    .line 246
    .local v2, "y_i":I
    if-ge v1, v2, :cond_1

    .line 247
    const/4 v3, 0x0

    .line 251
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_0
    return v3

    .line 248
    .restart local v1    # "x_i":I
    .restart local v2    # "y_i":I
    :cond_1
    if-gt v1, v2, :cond_0

    .line 242
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

    .line 228
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 230
    aget v4, p0, v0

    xor-int v1, v4, v5

    .line 231
    .local v1, "x_i":I
    aget v4, p1, v0

    xor-int v2, v4, v5

    .line 232
    .local v2, "y_i":I
    if-ge v1, v2, :cond_1

    .line 233
    const/4 v3, 0x0

    .line 237
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_0
    return v3

    .line 234
    .restart local v1    # "x_i":I
    .restart local v2    # "y_i":I
    :cond_1
    if-gt v1, v2, :cond_0

    .line 228
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static isOne([I)Z
    .locals 4
    .param p0, "x"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 256
    aget v3, p0, v1

    if-eq v3, v2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v1

    .line 260
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    .line 262
    aget v3, p0, v0

    if-nez v3, :cond_0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 267
    goto :goto_0
.end method

.method public static isOne64([J)Z
    .locals 6
    .param p0, "x"    # [J

    .prologue
    const/4 v1, 0x0

    .line 272
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v1

    .line 276
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 278
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isZero([I)Z
    .locals 2
    .param p0, "x"    # [I

    .prologue
    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 290
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 292
    const/4 v1, 0x0

    .line 295
    :goto_1
    return v1

    .line 288
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isZero64([J)Z
    .locals 6
    .param p0, "x"    # [J

    .prologue
    .line 300
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 302
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 304
    const/4 v1, 0x0

    .line 307
    :goto_1
    return v1

    .line 300
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static mul([II[II[II)V
    .locals 24
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .prologue
    .line 355
    add-int/lit8 v5, p3, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v10, v18, v20

    .line 356
    .local v10, "y_0":J
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v12, v18, v20

    .line 357
    .local v12, "y_1":J
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v14, v18, v20

    .line 358
    .local v14, "y_2":J
    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v16, v18, v20

    .line 361
    .local v16, "y_3":J
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int/lit8 v5, p1, 0x0

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v6, v18, v20

    .line 362
    .local v6, "x_0":J
    mul-long v18, v6, v10

    add-long v2, v2, v18

    .line 363
    add-int/lit8 v5, p5, 0x0

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 364
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 365
    mul-long v18, v6, v12

    add-long v2, v2, v18

    .line 366
    add-int/lit8 v5, p5, 0x1

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 367
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 368
    mul-long v18, v6, v14

    add-long v2, v2, v18

    .line 369
    add-int/lit8 v5, p5, 0x2

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 370
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 371
    mul-long v18, v6, v16

    add-long v2, v2, v18

    .line 372
    add-int/lit8 v5, p5, 0x3

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 373
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 374
    add-int/lit8 v5, p5, 0x4

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 377
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 379
    add-int/lit8 p5, p5, 0x1

    .line 380
    const-wide/16 v2, 0x0

    add-int v5, p1, v4

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v8, v18, v20

    .line 381
    .local v8, "x_i":J
    mul-long v18, v8, v10

    add-int/lit8 v5, p5, 0x0

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 382
    add-int/lit8 v5, p5, 0x0

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 383
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 384
    mul-long v18, v8, v12

    add-int/lit8 v5, p5, 0x1

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 385
    add-int/lit8 v5, p5, 0x1

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 386
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 387
    mul-long v18, v8, v14

    add-int/lit8 v5, p5, 0x2

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 388
    add-int/lit8 v5, p5, 0x2

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 389
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 390
    mul-long v18, v8, v16

    add-int/lit8 v5, p5, 0x3

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 391
    add-int/lit8 v5, p5, 0x3

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 392
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 393
    add-int/lit8 v5, p5, 0x4

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 395
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 24
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 312
    const/4 v5, 0x0

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v10, v18, v20

    .line 313
    .local v10, "y_0":J
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v12, v18, v20

    .line 314
    .local v12, "y_1":J
    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v14, v18, v20

    .line 315
    .local v14, "y_2":J
    const/4 v5, 0x3

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v16, v18, v20

    .line 318
    .local v16, "y_3":J
    const-wide/16 v2, 0x0

    .local v2, "c":J
    const/4 v5, 0x0

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v6, v18, v20

    .line 319
    .local v6, "x_0":J
    mul-long v18, v6, v10

    add-long v2, v2, v18

    .line 320
    const/4 v5, 0x0

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 321
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 322
    mul-long v18, v6, v12

    add-long v2, v2, v18

    .line 323
    const/4 v5, 0x1

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 324
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 325
    mul-long v18, v6, v14

    add-long v2, v2, v18

    .line 326
    const/4 v5, 0x2

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 327
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 328
    mul-long v18, v6, v16

    add-long v2, v2, v18

    .line 329
    const/4 v5, 0x3

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 330
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 331
    const/4 v5, 0x4

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 334
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 336
    const-wide/16 v2, 0x0

    aget v5, p0, v4

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v8, v18, v20

    .line 337
    .local v8, "x_i":J
    mul-long v18, v8, v10

    add-int/lit8 v5, v4, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 338
    add-int/lit8 v5, v4, 0x0

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 339
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 340
    mul-long v18, v8, v12

    add-int/lit8 v5, v4, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 341
    add-int/lit8 v5, v4, 0x1

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 342
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 343
    mul-long v18, v8, v14

    add-int/lit8 v5, v4, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 344
    add-int/lit8 v5, v4, 0x2

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 345
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 346
    mul-long v18, v8, v16

    add-int/lit8 v5, v4, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 347
    add-int/lit8 v5, v4, 0x3

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 348
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 349
    add-int/lit8 v5, v4, 0x4

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 334
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 351
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 20
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .prologue
    .line 462
    const-wide/16 v2, 0x0

    .local v2, "c":J
    move/from16 v0, p0

    int-to-long v14, v0

    const-wide v16, 0xffffffffL

    and-long v4, v14, v16

    .line 463
    .local v4, "wVal":J
    add-int/lit8 v14, p2, 0x0

    aget v14, p1, v14

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v6, v14, v16

    .line 464
    .local v6, "x0":J
    mul-long v14, v4, v6

    add-int/lit8 v16, p4, 0x0

    aget v16, p3, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    add-long v14, v14, v16

    add-long/2addr v2, v14

    .line 465
    add-int/lit8 v14, p6, 0x0

    long-to-int v15, v2

    aput v15, p5, v14

    .line 466
    const/16 v14, 0x20

    ushr-long/2addr v2, v14

    .line 467
    add-int/lit8 v14, p2, 0x1

    aget v14, p1, v14

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v8, v14, v16

    .line 468
    .local v8, "x1":J
    mul-long v14, v4, v8

    add-long/2addr v14, v6

    add-int/lit8 v16, p4, 0x1

    aget v16, p3, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    add-long v14, v14, v16

    add-long/2addr v2, v14

    .line 469
    add-int/lit8 v14, p6, 0x1

    long-to-int v15, v2

    aput v15, p5, v14

    .line 470
    const/16 v14, 0x20

    ushr-long/2addr v2, v14

    .line 471
    add-int/lit8 v14, p2, 0x2

    aget v14, p1, v14

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v10, v14, v16

    .line 472
    .local v10, "x2":J
    mul-long v14, v4, v10

    add-long/2addr v14, v8

    add-int/lit8 v16, p4, 0x2

    aget v16, p3, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    add-long v14, v14, v16

    add-long/2addr v2, v14

    .line 473
    add-int/lit8 v14, p6, 0x2

    long-to-int v15, v2

    aput v15, p5, v14

    .line 474
    const/16 v14, 0x20

    ushr-long/2addr v2, v14

    .line 475
    add-int/lit8 v14, p2, 0x3

    aget v14, p1, v14

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v12, v14, v16

    .line 476
    .local v12, "x3":J
    mul-long v14, v4, v12

    add-long/2addr v14, v10

    add-int/lit8 v16, p4, 0x3

    aget v16, p3, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    add-long v14, v14, v16

    add-long/2addr v2, v14

    .line 477
    add-int/lit8 v14, p6, 0x3

    long-to-int v15, v2

    aput v15, p5, v14

    .line 478
    const/16 v14, 0x20

    ushr-long/2addr v2, v14

    .line 479
    add-long/2addr v2, v12

    .line 480
    return-wide v2
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 15
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    .line 508
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v8, p0

    const-wide v10, 0xffffffffL

    and-long v2, v8, v10

    .line 509
    .local v2, "xVal":J
    const-wide v8, 0xffffffffL

    and-long v4, p1, v8

    .line 510
    .local v4, "y00":J
    mul-long v8, v2, v4

    add-int/lit8 v10, p4, 0x0

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 511
    add-int/lit8 v8, p4, 0x0

    long-to-int v9, v0

    aput v9, p3, v8

    .line 512
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 513
    const/16 v8, 0x20

    ushr-long v6, p1, v8

    .line 514
    .local v6, "y01":J
    mul-long v8, v2, v6

    add-long/2addr v8, v4

    add-int/lit8 v10, p4, 0x1

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 515
    add-int/lit8 v8, p4, 0x1

    long-to-int v9, v0

    aput v9, p3, v8

    .line 516
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 517
    add-int/lit8 v8, p4, 0x2

    aget v8, p3, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v8, v6

    add-long/2addr v0, v8

    .line 518
    add-int/lit8 v8, p4, 0x2

    long-to-int v9, v0

    aput v9, p3, v8

    .line 519
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 520
    add-int/lit8 v8, p4, 0x3

    aget v8, p3, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 521
    add-int/lit8 v8, p4, 0x3

    long-to-int v9, v0

    aput v9, p3, v8

    .line 522
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 523
    long-to-int v8, v0

    return v8
.end method

.method public static mul33WordAdd(II[II)I
    .locals 12
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .prologue
    .line 531
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p0

    const-wide v8, 0xffffffffL

    and-long v2, v6, v8

    .local v2, "xVal":J
    int-to-long v6, p1

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    .line 532
    .local v4, "yVal":J
    mul-long v6, v4, v2

    add-int/lit8 v8, p3, 0x0

    aget v8, p2, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 533
    add-int/lit8 v6, p3, 0x0

    long-to-int v7, v0

    aput v7, p2, v6

    .line 534
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 535
    add-int/lit8 v6, p3, 0x1

    aget v6, p2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 536
    add-int/lit8 v6, p3, 0x1

    long-to-int v7, v0

    aput v7, p2, v6

    .line 537
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 538
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 539
    add-int/lit8 v6, p3, 0x2

    long-to-int v7, v0

    aput v7, p2, v6

    .line 540
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 541
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x4

    const/4 v7, 0x3

    invoke-static {v6, p2, p3, v7}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v6

    goto :goto_0
.end method

.method public static mulAddTo([II[II[II)I
    .locals 24
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .prologue
    .line 429
    add-int/lit8 v5, p3, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v8, v18, v20

    .line 430
    .local v8, "y_0":J
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v10, v18, v20

    .line 431
    .local v10, "y_1":J
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v12, v18, v20

    .line 432
    .local v12, "y_2":J
    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v14, v18, v20

    .line 434
    .local v14, "y_3":J
    const-wide/16 v16, 0x0

    .line 435
    .local v16, "zc":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 437
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int v5, p1, v4

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v6, v18, v20

    .line 438
    .local v6, "x_i":J
    mul-long v18, v6, v8

    add-int/lit8 v5, p5, 0x0

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 439
    add-int/lit8 v5, p5, 0x0

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 440
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 441
    mul-long v18, v6, v10

    add-int/lit8 v5, p5, 0x1

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 442
    add-int/lit8 v5, p5, 0x1

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 443
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 444
    mul-long v18, v6, v12

    add-int/lit8 v5, p5, 0x2

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 445
    add-int/lit8 v5, p5, 0x2

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 446
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 447
    mul-long v18, v6, v14

    add-int/lit8 v5, p5, 0x3

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 448
    add-int/lit8 v5, p5, 0x3

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 449
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 450
    add-int/lit8 v5, p5, 0x4

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v18, v18, v16

    add-long v2, v2, v18

    .line 451
    add-int/lit8 v5, p5, 0x4

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p4, v5

    .line 452
    const/16 v5, 0x20

    ushr-long v16, v2, v5

    .line 453
    add-int/lit8 p5, p5, 0x1

    .line 435
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 455
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v16

    long-to-int v5, v0

    return v5
.end method

.method public static mulAddTo([I[I[I)I
    .locals 24
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 399
    const/4 v5, 0x0

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v8, v18, v20

    .line 400
    .local v8, "y_0":J
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v10, v18, v20

    .line 401
    .local v10, "y_1":J
    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v12, v18, v20

    .line 402
    .local v12, "y_2":J
    const/4 v5, 0x3

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v14, v18, v20

    .line 404
    .local v14, "y_3":J
    const-wide/16 v16, 0x0

    .line 405
    .local v16, "zc":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    .line 407
    const-wide/16 v2, 0x0

    .local v2, "c":J
    aget v5, p0, v4

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v6, v18, v20

    .line 408
    .local v6, "x_i":J
    mul-long v18, v6, v8

    add-int/lit8 v5, v4, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 409
    add-int/lit8 v5, v4, 0x0

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 410
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 411
    mul-long v18, v6, v10

    add-int/lit8 v5, v4, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 412
    add-int/lit8 v5, v4, 0x1

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 413
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 414
    mul-long v18, v6, v12

    add-int/lit8 v5, v4, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 415
    add-int/lit8 v5, v4, 0x2

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 416
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 417
    mul-long v18, v6, v14

    add-int/lit8 v5, v4, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 418
    add-int/lit8 v5, v4, 0x3

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 419
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 420
    add-int/lit8 v5, v4, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v18, v18, v16

    add-long v2, v2, v18

    .line 421
    add-int/lit8 v5, v4, 0x4

    long-to-int v0, v2

    move/from16 v18, v0

    aput v18, p2, v5

    .line 422
    const/16 v5, 0x20

    ushr-long v16, v2, v5

    .line 405
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 424
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v16

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

    .line 576
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p0

    and-long v4, v6, v8

    .line 577
    .local v4, "xVal":J
    const/4 v2, 0x0

    .line 580
    .local v2, "i":I
    :cond_0
    aget v3, p1, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 581
    add-int v3, p3, v2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 582
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 584
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 585
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

    .line 487
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v4, p0

    and-long v2, v4, v8

    .line 488
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

    .line 489
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 490
    ushr-long/2addr v0, v10

    .line 491
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

    .line 492
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v0

    aput v5, p3, v4

    .line 493
    ushr-long/2addr v0, v10

    .line 494
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

    .line 495
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 496
    ushr-long/2addr v0, v10

    .line 497
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

    .line 498
    add-int/lit8 v4, p4, 0x3

    long-to-int v5, v0

    aput v5, p3, v4

    .line 499
    ushr-long/2addr v0, v10

    .line 500
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

    .line 547
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v4, p0

    and-long v2, v4, v8

    .line 548
    .local v2, "xVal":J
    and-long v4, p1, v8

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x0

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 549
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 550
    ushr-long/2addr v0, v10

    .line 551
    ushr-long v4, p1, v10

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x1

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 552
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v0

    aput v5, p3, v4

    .line 553
    ushr-long/2addr v0, v10

    .line 554
    add-int/lit8 v4, p4, 0x2

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    add-long/2addr v0, v4

    .line 555
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 556
    ushr-long/2addr v0, v10

    .line 557
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x4

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
    .line 564
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p0

    const-wide v8, 0xffffffffL

    and-long v2, v6, v8

    .local v2, "xVal":J
    int-to-long v6, p1

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    .line 565
    .local v4, "yVal":J
    mul-long v6, v4, v2

    add-int/lit8 v8, p3, 0x0

    aget v8, p2, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 566
    add-int/lit8 v6, p3, 0x0

    long-to-int v7, v0

    aput v7, p2, v6

    .line 567
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 568
    add-int/lit8 v6, p3, 0x1

    aget v6, p2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 569
    add-int/lit8 v6, p3, 0x1

    long-to-int v7, v0

    aput v7, p2, v6

    .line 570
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 571
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x4

    const/4 v7, 0x2

    invoke-static {v6, p2, p3, v7}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v6

    goto :goto_0
.end method

.method public static square([II[II)V
    .locals 36
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I

    .prologue
    .line 667
    add-int/lit8 v9, p1, 0x0

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v12, v32, v34

    .line 670
    .local v12, "x_0":J
    const/4 v2, 0x0

    .line 672
    .local v2, "c":I
    const/4 v3, 0x3

    .local v3, "i":I
    const/16 v5, 0x8

    .line 675
    .local v5, "j":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    add-int v9, p1, v3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v10, v32, v34

    .line 676
    .local v10, "xVal":J
    mul-long v6, v10, v10

    .line 677
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    add-int v9, p3, v5

    shl-int/lit8 v32, v2, 0x1f

    const/16 v33, 0x21

    ushr-long v34, v6, v33

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v33, v0

    or-int v32, v32, v33

    aput v32, p2, v9

    .line 678
    add-int/lit8 v5, v5, -0x1

    add-int v9, p3, v5

    const/16 v32, 0x1

    ushr-long v32, v6, v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    aput v32, p2, v9

    .line 679
    long-to-int v2, v6

    .line 681
    if-gtz v4, :cond_0

    .line 684
    mul-long v6, v12, v12

    .line 685
    shl-int/lit8 v9, v2, 0x1f

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v32, v32, v34

    const/16 v9, 0x21

    ushr-long v34, v6, v9

    or-long v20, v32, v34

    .line 686
    .local v20, "zz_1":J
    add-int/lit8 v9, p3, 0x0

    long-to-int v0, v6

    move/from16 v32, v0

    aput v32, p2, v9

    .line 687
    const/16 v9, 0x20

    ushr-long v32, v6, v9

    move-wide/from16 v0, v32

    long-to-int v9, v0

    and-int/lit8 v2, v9, 0x1

    .line 691
    add-int/lit8 v9, p1, 0x1

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v14, v32, v34

    .line 692
    .local v14, "x_1":J
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v22, v32, v34

    .line 695
    .local v22, "zz_2":J
    mul-long v32, v14, v12

    add-long v20, v20, v32

    .line 696
    move-wide/from16 v0, v20

    long-to-int v8, v0

    .line 697
    .local v8, "w":I
    add-int/lit8 v9, p3, 0x1

    shl-int/lit8 v32, v8, 0x1

    or-int v32, v32, v2

    aput v32, p2, v9

    .line 698
    ushr-int/lit8 v2, v8, 0x1f

    .line 699
    const/16 v9, 0x20

    ushr-long v32, v20, v9

    add-long v22, v22, v32

    .line 702
    add-int/lit8 v9, p1, 0x2

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v16, v32, v34

    .line 703
    .local v16, "x_2":J
    add-int/lit8 v9, p3, 0x3

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v24, v32, v34

    .line 704
    .local v24, "zz_3":J
    add-int/lit8 v9, p3, 0x4

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v26, v32, v34

    .line 706
    .local v26, "zz_4":J
    mul-long v32, v16, v12

    add-long v22, v22, v32

    .line 707
    move-wide/from16 v0, v22

    long-to-int v8, v0

    .line 708
    add-int/lit8 v9, p3, 0x2

    shl-int/lit8 v32, v8, 0x1

    or-int v32, v32, v2

    aput v32, p2, v9

    .line 709
    ushr-int/lit8 v2, v8, 0x1f

    .line 710
    const/16 v9, 0x20

    ushr-long v32, v22, v9

    mul-long v34, v16, v14

    add-long v32, v32, v34

    add-long v24, v24, v32

    .line 711
    const/16 v9, 0x20

    ushr-long v32, v24, v9

    add-long v26, v26, v32

    .line 712
    const-wide v32, 0xffffffffL

    and-long v24, v24, v32

    .line 715
    add-int/lit8 v9, p1, 0x3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v18, v32, v34

    .line 716
    .local v18, "x_3":J
    add-int/lit8 v9, p3, 0x5

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v32, v32, v34

    const/16 v9, 0x20

    ushr-long v34, v26, v9

    add-long v28, v32, v34

    .local v28, "zz_5":J
    const-wide v32, 0xffffffffL

    and-long v26, v26, v32

    .line 717
    add-int/lit8 v9, p3, 0x6

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v32, v32, v34

    const/16 v9, 0x20

    ushr-long v34, v28, v9

    add-long v30, v32, v34

    .local v30, "zz_6":J
    const-wide v32, 0xffffffffL

    and-long v28, v28, v32

    .line 719
    mul-long v32, v18, v12

    add-long v24, v24, v32

    .line 720
    move-wide/from16 v0, v24

    long-to-int v8, v0

    .line 721
    add-int/lit8 v9, p3, 0x3

    shl-int/lit8 v32, v8, 0x1

    or-int v32, v32, v2

    aput v32, p2, v9

    .line 722
    ushr-int/lit8 v2, v8, 0x1f

    .line 723
    const/16 v9, 0x20

    ushr-long v32, v24, v9

    mul-long v34, v18, v14

    add-long v32, v32, v34

    add-long v26, v26, v32

    .line 724
    const/16 v9, 0x20

    ushr-long v32, v26, v9

    mul-long v34, v18, v16

    add-long v32, v32, v34

    add-long v28, v28, v32

    .line 725
    const/16 v9, 0x20

    ushr-long v32, v28, v9

    add-long v30, v30, v32

    .line 728
    move-wide/from16 v0, v26

    long-to-int v8, v0

    .line 729
    add-int/lit8 v9, p3, 0x4

    shl-int/lit8 v32, v8, 0x1

    or-int v32, v32, v2

    aput v32, p2, v9

    .line 730
    ushr-int/lit8 v2, v8, 0x1f

    .line 731
    move-wide/from16 v0, v28

    long-to-int v8, v0

    .line 732
    add-int/lit8 v9, p3, 0x5

    shl-int/lit8 v32, v8, 0x1

    or-int v32, v32, v2

    aput v32, p2, v9

    .line 733
    ushr-int/lit8 v2, v8, 0x1f

    .line 734
    move-wide/from16 v0, v30

    long-to-int v8, v0

    .line 735
    add-int/lit8 v9, p3, 0x6

    shl-int/lit8 v32, v8, 0x1

    or-int v32, v32, v2

    aput v32, p2, v9

    .line 736
    ushr-int/lit8 v2, v8, 0x1f

    .line 737
    add-int/lit8 v9, p3, 0x7

    aget v9, p2, v9

    const/16 v32, 0x20

    ushr-long v32, v30, v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    add-int v8, v9, v32

    .line 738
    add-int/lit8 v9, p3, 0x7

    shl-int/lit8 v32, v8, 0x1

    or-int v32, v32, v2

    aput v32, p2, v9

    .line 739
    return-void

    .end local v8    # "w":I
    .end local v14    # "x_1":J
    .end local v16    # "x_2":J
    .end local v18    # "x_3":J
    .end local v20    # "zz_1":J
    .end local v22    # "zz_2":J
    .end local v24    # "zz_3":J
    .end local v26    # "zz_4":J
    .end local v28    # "zz_5":J
    .end local v30    # "zz_6":J
    :cond_0
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0
.end method

.method public static square([I[I)V
    .locals 36
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .prologue
    .line 590
    const/4 v9, 0x0

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v12, v32, v34

    .line 593
    .local v12, "x_0":J
    const/4 v2, 0x0

    .line 595
    .local v2, "c":I
    const/4 v3, 0x3

    .local v3, "i":I
    const/16 v5, 0x8

    .line 598
    .local v5, "j":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget v9, p0, v3

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v10, v32, v34

    .line 599
    .local v10, "xVal":J
    mul-long v6, v10, v10

    .line 600
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    shl-int/lit8 v9, v2, 0x1f

    const/16 v32, 0x21

    ushr-long v32, v6, v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    or-int v9, v9, v32

    aput v9, p1, v5

    .line 601
    add-int/lit8 v5, v5, -0x1

    const/4 v9, 0x1

    ushr-long v32, v6, v9

    move-wide/from16 v0, v32

    long-to-int v9, v0

    aput v9, p1, v5

    .line 602
    long-to-int v2, v6

    .line 604
    if-gtz v4, :cond_0

    .line 607
    mul-long v6, v12, v12

    .line 608
    shl-int/lit8 v9, v2, 0x1f

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v32, v32, v34

    const/16 v9, 0x21

    ushr-long v34, v6, v9

    or-long v20, v32, v34

    .line 609
    .local v20, "zz_1":J
    const/4 v9, 0x0

    long-to-int v0, v6

    move/from16 v32, v0

    aput v32, p1, v9

    .line 610
    const/16 v9, 0x20

    ushr-long v32, v6, v9

    move-wide/from16 v0, v32

    long-to-int v9, v0

    and-int/lit8 v2, v9, 0x1

    .line 614
    const/4 v9, 0x1

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v14, v32, v34

    .line 615
    .local v14, "x_1":J
    const/4 v9, 0x2

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v22, v32, v34

    .line 618
    .local v22, "zz_2":J
    mul-long v32, v14, v12

    add-long v20, v20, v32

    .line 619
    move-wide/from16 v0, v20

    long-to-int v8, v0

    .line 620
    .local v8, "w":I
    const/4 v9, 0x1

    shl-int/lit8 v32, v8, 0x1

    or-int v32, v32, v2

    aput v32, p1, v9

    .line 621
    ushr-int/lit8 v2, v8, 0x1f

    .line 622
    const/16 v9, 0x20

    ushr-long v32, v20, v9

    add-long v22, v22, v32

    .line 625
    const/4 v9, 0x2

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v16, v32, v34

    .line 626
    .local v16, "x_2":J
    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v24, v32, v34

    .line 627
    .local v24, "zz_3":J
    const/4 v9, 0x4

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v26, v32, v34

    .line 629
    .local v26, "zz_4":J
    mul-long v32, v16, v12

    add-long v22, v22, v32

    .line 630
    move-wide/from16 v0, v22

    long-to-int v8, v0

    .line 631
    const/4 v9, 0x2

    shl-int/lit8 v32, v8, 0x1

    or-int v32, v32, v2

    aput v32, p1, v9

    .line 632
    ushr-int/lit8 v2, v8, 0x1f

    .line 633
    const/16 v9, 0x20

    ushr-long v32, v22, v9

    mul-long v34, v16, v14

    add-long v32, v32, v34

    add-long v24, v24, v32

    .line 634
    const/16 v9, 0x20

    ushr-long v32, v24, v9

    add-long v26, v26, v32

    .line 635
    const-wide v32, 0xffffffffL

    and-long v24, v24, v32

    .line 638
    const/4 v9, 0x3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v18, v32, v34

    .line 639
    .local v18, "x_3":J
    const/4 v9, 0x5

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v32, v32, v34

    const/16 v9, 0x20

    ushr-long v34, v26, v9

    add-long v28, v32, v34

    .local v28, "zz_5":J
    const-wide v32, 0xffffffffL

    and-long v26, v26, v32

    .line 640
    const/4 v9, 0x6

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v32, v32, v34

    const/16 v9, 0x20

    ushr-long v34, v28, v9

    add-long v30, v32, v34

    .local v30, "zz_6":J
    const-wide v32, 0xffffffffL

    and-long v28, v28, v32

    .line 642
    mul-long v32, v18, v12

    add-long v24, v24, v32

    .line 643
    move-wide/from16 v0, v24

    long-to-int v8, v0

    .line 644
    const/4 v9, 0x3

    shl-int/lit8 v32, v8, 0x1

    or-int v32, v32, v2

    aput v32, p1, v9

    .line 645
    ushr-int/lit8 v2, v8, 0x1f

    .line 646
    const/16 v9, 0x20

    ushr-long v32, v24, v9

    mul-long v34, v18, v14

    add-long v32, v32, v34

    add-long v26, v26, v32

    .line 647
    const/16 v9, 0x20

    ushr-long v32, v26, v9

    mul-long v34, v18, v16

    add-long v32, v32, v34

    add-long v28, v28, v32

    .line 648
    const/16 v9, 0x20

    ushr-long v32, v28, v9

    add-long v30, v30, v32

    .line 649
    const-wide v32, 0xffffffffL

    and-long v28, v28, v32

    .line 652
    move-wide/from16 v0, v26

    long-to-int v8, v0

    .line 653
    const/4 v9, 0x4

    shl-int/lit8 v32, v8, 0x1

    or-int v32, v32, v2

    aput v32, p1, v9

    .line 654
    ushr-int/lit8 v2, v8, 0x1f

    .line 655
    move-wide/from16 v0, v28

    long-to-int v8, v0

    .line 656
    const/4 v9, 0x5

    shl-int/lit8 v32, v8, 0x1

    or-int v32, v32, v2

    aput v32, p1, v9

    .line 657
    ushr-int/lit8 v2, v8, 0x1f

    .line 658
    move-wide/from16 v0, v30

    long-to-int v8, v0

    .line 659
    const/4 v9, 0x6

    shl-int/lit8 v32, v8, 0x1

    or-int v32, v32, v2

    aput v32, p1, v9

    .line 660
    ushr-int/lit8 v2, v8, 0x1f

    .line 661
    const/4 v9, 0x7

    aget v9, p1, v9

    const/16 v32, 0x20

    ushr-long v32, v30, v32

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v32, v0

    add-int v8, v9, v32

    .line 662
    const/4 v9, 0x7

    shl-int/lit8 v32, v8, 0x1

    or-int v32, v32, v2

    aput v32, p1, v9

    .line 663
    return-void

    .end local v8    # "w":I
    .end local v14    # "x_1":J
    .end local v16    # "x_2":J
    .end local v18    # "x_3":J
    .end local v20    # "zz_1":J
    .end local v22    # "zz_2":J
    .end local v24    # "zz_3":J
    .end local v26    # "zz_4":J
    .end local v28    # "zz_5":J
    .end local v30    # "zz_6":J
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

    .line 761
    const-wide/16 v0, 0x0

    .line 762
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

    .line 763
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 764
    shr-long/2addr v0, v8

    .line 765
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

    .line 766
    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    .line 767
    shr-long/2addr v0, v8

    .line 768
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

    .line 769
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 770
    shr-long/2addr v0, v8

    .line 771
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

    .line 772
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 773
    shr-long/2addr v0, v8

    .line 774
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

    .line 743
    const-wide/16 v0, 0x0

    .line 744
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 745
    long-to-int v2, v0

    aput v2, p2, v9

    .line 746
    shr-long/2addr v0, v8

    .line 747
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 748
    long-to-int v2, v0

    aput v2, p2, v10

    .line 749
    shr-long/2addr v0, v8

    .line 750
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 751
    long-to-int v2, v0

    aput v2, p2, v11

    .line 752
    shr-long/2addr v0, v8

    .line 753
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

    .line 754
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 755
    shr-long/2addr v0, v8

    .line 756
    long-to-int v2, v0

    return v2
.end method

.method public static subBothFrom([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide v6, 0xffffffffL

    .line 779
    const-wide/16 v0, 0x0

    .line 780
    .local v0, "c":J
    aget v2, p2, v8

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v8

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    aget v4, p1, v8

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 781
    long-to-int v2, v0

    aput v2, p2, v8

    .line 782
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 783
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

    .line 784
    long-to-int v2, v0

    aput v2, p2, v9

    .line 785
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 786
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

    .line 787
    long-to-int v2, v0

    aput v2, p2, v10

    .line 788
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 789
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

    .line 790
    long-to-int v2, v0

    aput v2, p2, v11

    .line 791
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 792
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

    .line 815
    const-wide/16 v0, 0x0

    .line 816
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

    .line 817
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 818
    shr-long/2addr v0, v8

    .line 819
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

    .line 820
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 821
    shr-long/2addr v0, v8

    .line 822
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

    .line 823
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 824
    shr-long/2addr v0, v8

    .line 825
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

    .line 826
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 827
    shr-long/2addr v0, v8

    .line 828
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

    .line 797
    const-wide/16 v0, 0x0

    .line 798
    .local v0, "c":J
    aget v2, p1, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 799
    long-to-int v2, v0

    aput v2, p1, v9

    .line 800
    shr-long/2addr v0, v8

    .line 801
    aget v2, p1, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 802
    long-to-int v2, v0

    aput v2, p1, v10

    .line 803
    shr-long/2addr v0, v8

    .line 804
    aget v2, p1, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 805
    long-to-int v2, v0

    aput v2, p1, v11

    .line 806
    shr-long/2addr v0, v8

    .line 807
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

    .line 808
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p1, v2

    .line 809
    shr-long/2addr v0, v8

    .line 810
    long-to-int v2, v0

    return v2
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 5
    .param p0, "x"    # [I

    .prologue
    .line 833
    const/16 v3, 0x10

    new-array v0, v3, [B

    .line 834
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 836
    aget v2, p0, v1

    .line 837
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 839
    rsub-int/lit8 v3, v1, 0x3

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 834
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 842
    .end local v2    # "x_i":I
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v3
.end method

.method public static toBigInteger64([J)Ljava/math/BigInteger;
    .locals 6
    .param p0, "x"    # [J

    .prologue
    .line 847
    const/16 v4, 0x10

    new-array v0, v4, [B

    .line 848
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    .line 850
    aget-wide v2, p0, v1

    .line 851
    .local v2, "x_i":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 853
    rsub-int/lit8 v4, v1, 0x1

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v0, v4}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 848
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 856
    .end local v2    # "x_i":J
    :cond_1
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v4
.end method

.method public static zero([I)V
    .locals 2
    .param p0, "z"    # [I

    .prologue
    const/4 v1, 0x0

    .line 861
    aput v1, p0, v1

    .line 862
    const/4 v0, 0x1

    aput v1, p0, v0

    .line 863
    const/4 v0, 0x2

    aput v1, p0, v0

    .line 864
    const/4 v0, 0x3

    aput v1, p0, v0

    .line 865
    return-void
.end method
