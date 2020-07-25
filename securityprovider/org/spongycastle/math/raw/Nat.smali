.class public abstract Lorg/spongycastle/math/raw/Nat;
.super Ljava/lang/Object;
.source "Nat.java"


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

.method public static add(I[I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 16
    aget v3, p1, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    aget v3, p2, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 17
    long-to-int v3, v0

    aput v3, p3, v2

    .line 18
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static add33At(II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 26
    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    int-to-long v4, p1

    and-long/2addr v4, v6

    add-long v0, v2, v4

    .line 27
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 28
    ushr-long/2addr v0, v8

    .line 29
    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 30
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 31
    ushr-long/2addr v0, v8

    .line 32
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, p3, 0x2

    invoke-static {p0, p2, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    goto :goto_0
.end method

.method public static add33At(II[III)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 38
    add-int v2, p3, p4

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    int-to-long v4, p1

    and-long/2addr v4, v6

    add-long v0, v2, v4

    .line 39
    .local v0, "c":J
    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 40
    ushr-long/2addr v0, v8

    .line 41
    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 42
    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 43
    ushr-long/2addr v0, v8

    .line 44
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p2, p3, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    goto :goto_0
.end method

.method public static add33To(II[I)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x1

    const-wide v8, 0xffffffffL

    const/4 v2, 0x0

    .line 49
    aget v3, p2, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    int-to-long v6, p1

    and-long/2addr v6, v8

    add-long v0, v4, v6

    .line 50
    .local v0, "c":J
    long-to-int v3, v0

    aput v3, p2, v2

    .line 51
    ushr-long/2addr v0, v11

    .line 52
    aget v3, p2, v10

    int-to-long v4, v3

    and-long/2addr v4, v8

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 53
    long-to-int v3, v0

    aput v3, p2, v10

    .line 54
    ushr-long/2addr v0, v11

    .line 55
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p2, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    goto :goto_0
.end method

.method public static add33To(II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 60
    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    int-to-long v4, p1

    and-long/2addr v4, v6

    add-long v0, v2, v4

    .line 61
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 62
    ushr-long/2addr v0, v8

    .line 63
    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 64
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 65
    ushr-long/2addr v0, v8

    .line 66
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    goto :goto_0
.end method

.method public static addBothTo(I[II[II[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    .line 84
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 86
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v4, v3

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-int v3, p4, v2

    aget v3, p3, v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int v3, p6, v2

    aget v3, p5, v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 87
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 88
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static addBothTo(I[I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    .line 71
    const-wide/16 v0, 0x0

    .line 72
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 74
    aget v3, p1, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    aget v3, p2, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    aget v3, p3, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 75
    long-to-int v3, v0

    aput v3, p3, v2

    .line 76
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static addDWordAt(IJ[II)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zPos"    # I

    .prologue
    const-wide v8, 0xffffffffL

    const/16 v6, 0x20

    .line 96
    add-int/lit8 v2, p4, 0x0

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    and-long v4, p1, v8

    add-long v0, v2, v4

    .line 97
    .local v0, "c":J
    add-int/lit8 v2, p4, 0x0

    long-to-int v3, v0

    aput v3, p3, v2

    .line 98
    ushr-long/2addr v0, v6

    .line 99
    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    ushr-long v4, p1, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 100
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 101
    ushr-long/2addr v0, v6

    .line 102
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p3, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    goto :goto_0
.end method

.method public static addDWordAt(IJ[III)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "zPos"    # I

    .prologue
    const-wide v8, 0xffffffffL

    const/16 v6, 0x20

    .line 108
    add-int v2, p4, p5

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    and-long v4, p1, v8

    add-long v0, v2, v4

    .line 109
    .local v0, "c":J
    add-int v2, p4, p5

    long-to-int v3, v0

    aput v3, p3, v2

    .line 110
    ushr-long/2addr v0, v6

    .line 111
    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    ushr-long v4, p1, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 112
    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 113
    ushr-long/2addr v0, v6

    .line 114
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, p5, 0x2

    invoke-static {p0, p3, p4, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    goto :goto_0
.end method

.method public static addDWordTo(IJ[I)I
    .locals 15
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I

    .prologue
    const/4 v11, 0x1

    const-wide v12, 0xffffffffL

    const/16 v10, 0x20

    const/4 v4, 0x0

    .line 119
    aget v5, p3, v4

    int-to-long v6, v5

    and-long/2addr v6, v12

    and-long v8, p1, v12

    add-long v2, v6, v8

    .line 120
    .local v2, "c":J
    long-to-int v5, v2

    aput v5, p3, v4

    .line 121
    ushr-long/2addr v2, v10

    .line 122
    aget v5, p3, v11

    int-to-long v6, v5

    and-long/2addr v6, v12

    ushr-long v8, p1, v10

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 123
    long-to-int v5, v2

    aput v5, p3, v11

    .line 124
    ushr-long/2addr v2, v10

    .line 125
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-static {p0, v0, v4}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v4

    goto :goto_0
.end method

.method public static addDWordTo(IJ[II)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    const-wide v8, 0xffffffffL

    const/16 v6, 0x20

    .line 130
    add-int/lit8 v2, p4, 0x0

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    and-long v4, p1, v8

    add-long v0, v2, v4

    .line 131
    .local v0, "c":J
    add-int/lit8 v2, p4, 0x0

    long-to-int v3, v0

    aput v3, p3, v2

    .line 132
    ushr-long/2addr v0, v6

    .line 133
    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    ushr-long v4, p1, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 134
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 135
    ushr-long/2addr v0, v6

    .line 136
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p3, p4, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    goto :goto_0
.end method

.method public static addTo(I[II[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    const-wide v8, 0xffffffffL

    .line 153
    const-wide/16 v0, 0x0

    .line 154
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 156
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v4, v3

    and-long/2addr v4, v8

    add-int v3, p4, v2

    aget v3, p3, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 157
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 158
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static addTo(I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    .line 141
    const-wide/16 v0, 0x0

    .line 142
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 144
    aget v3, p1, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    aget v3, p2, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 145
    long-to-int v3, v0

    aput v3, p2, v2

    .line 146
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static addWordAt(II[II)I
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 166
    int-to-long v2, p1

    and-long/2addr v2, v6

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long v0, v2, v4

    .line 167
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 168
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 169
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    goto :goto_0
.end method

.method public static addWordAt(II[III)I
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 175
    int-to-long v2, p1

    and-long/2addr v2, v6

    add-int v4, p3, p4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long v0, v2, v4

    .line 176
    .local v0, "c":J
    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 177
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 178
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, p2, p3, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    goto :goto_0
.end method

.method public static addWordTo(II[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    const/4 v2, 0x0

    .line 183
    int-to-long v4, p1

    and-long/2addr v4, v8

    aget v3, p2, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    add-long v0, v4, v6

    .line 184
    .local v0, "c":J
    long-to-int v3, v0

    aput v3, p2, v2

    .line 185
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 186
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p2, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    goto :goto_0
.end method

.method public static addWordTo(II[II)I
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 191
    int-to-long v2, p1

    and-long/2addr v2, v6

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long v0, v2, v4

    .line 192
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 193
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 194
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    goto :goto_0
.end method

.method public static copy(I[I[I)V
    .locals 1
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    return-void
.end method

.method public static copy(I[I)[I
    .locals 2
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .prologue
    const/4 v1, 0x0

    .line 199
    new-array v0, p0, [I

    .line 200
    .local v0, "z":[I
    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    return-object v0
.end method

.method public static create(I)[I
    .locals 1
    .param p0, "len"    # I

    .prologue
    .line 211
    new-array v0, p0, [I

    return-object v0
.end method

.method public static create64(I)[J
    .locals 1
    .param p0, "len"    # I

    .prologue
    .line 216
    new-array v0, p0, [J

    return-object v0
.end method

.method public static dec(I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .prologue
    const/4 v1, -0x1

    .line 221
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 223
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_1

    .line 225
    const/4 v1, 0x0

    .line 228
    :cond_0
    return v1

    .line 221
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static dec(I[I[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v2, -0x1

    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "i":I
    :cond_0
    if-ge v1, p0, :cond_2

    .line 236
    aget v3, p1, v1

    add-int/lit8 v0, v3, -0x1

    .line 237
    .local v0, "c":I
    aput v0, p2, v1

    .line 238
    add-int/lit8 v1, v1, 0x1

    .line 239
    if-eq v0, v2, :cond_0

    .line 241
    :goto_0
    if-ge v1, p0, :cond_1

    .line 243
    aget v2, p1, v1

    aput v2, p2, v1

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_1
    const/4 v2, 0x0

    .line 249
    .end local v0    # "c":I
    :cond_2
    return v2
.end method

.method public static decAt(I[II)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zPos"    # I

    .prologue
    const/4 v1, -0x1

    .line 255
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 257
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_1

    .line 259
    const/4 v1, 0x0

    .line 262
    :cond_0
    return v1

    .line 255
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static decAt(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "zPos"    # I

    .prologue
    const/4 v1, -0x1

    .line 268
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 270
    add-int v2, p2, v0

    aget v3, p1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p1, v2

    if-eq v3, v1, :cond_1

    .line 272
    const/4 v1, 0x0

    .line 275
    :cond_0
    return v1

    .line 268
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static eq(I[I[I)Z
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .prologue
    .line 280
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 282
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_0

    .line 284
    const/4 v1, 0x0

    .line 287
    :goto_1
    return v1

    .line 280
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 287
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static fromBigInteger(ILjava/math/BigInteger;)[I
    .locals 5
    .param p0, "bits"    # I
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 292
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-le v4, p0, :cond_1

    .line 294
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 297
    :cond_1
    add-int/lit8 v4, p0, 0x1f

    shr-int/lit8 v2, v4, 0x5

    .line 298
    .local v2, "len":I
    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v3

    .line 299
    .local v3, "z":[I
    const/4 v0, 0x0

    .line 300
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-eqz v4, :cond_2

    .line 302
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    aput v4, v3, v0

    .line 303
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 305
    :cond_2
    return-object v3
.end method

.method public static getBit([II)I
    .locals 4
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .prologue
    const/4 v2, 0x0

    .line 310
    if-nez p1, :cond_1

    .line 312
    aget v2, p0, v2

    and-int/lit8 v2, v2, 0x1

    .line 320
    :cond_0
    :goto_0
    return v2

    .line 314
    :cond_1
    shr-int/lit8 v1, p1, 0x5

    .line 315
    .local v1, "w":I
    if-ltz v1, :cond_0

    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 319
    and-int/lit8 v0, p1, 0x1f

    .line 320
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static gte(I[I[I)Z
    .locals 6
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .prologue
    const/4 v3, 0x1

    const/high16 v5, -0x80000000

    .line 325
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 327
    aget v4, p1, v0

    xor-int v1, v4, v5

    .line 328
    .local v1, "x_i":I
    aget v4, p2, v0

    xor-int v2, v4, v5

    .line 329
    .local v2, "y_i":I
    if-ge v1, v2, :cond_1

    .line 330
    const/4 v3, 0x0

    .line 334
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_0
    return v3

    .line 331
    .restart local v1    # "x_i":I
    .restart local v2    # "y_i":I
    :cond_1
    if-gt v1, v2, :cond_0

    .line 325
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static inc(I[I)I
    .locals 2
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .prologue
    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 341
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    if-eqz v1, :cond_0

    .line 343
    const/4 v1, 0x0

    .line 346
    :goto_1
    return v1

    .line 339
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static inc(I[I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, "i":I
    :cond_0
    if-ge v1, p0, :cond_2

    .line 354
    aget v2, p1, v1

    add-int/lit8 v0, v2, 0x1

    .line 355
    .local v0, "c":I
    aput v0, p2, v1

    .line 356
    add-int/lit8 v1, v1, 0x1

    .line 357
    if-eqz v0, :cond_0

    .line 359
    :goto_0
    if-ge v1, p0, :cond_1

    .line 361
    aget v2, p1, v1

    aput v2, p2, v1

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_1
    const/4 v2, 0x0

    .line 367
    .end local v0    # "c":I
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static incAt(I[II)I
    .locals 2
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zPos"    # I

    .prologue
    .line 373
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 375
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    if-eqz v1, :cond_0

    .line 377
    const/4 v1, 0x0

    .line 380
    :goto_1
    return v1

    .line 373
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static incAt(I[III)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "zPos"    # I

    .prologue
    .line 386
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 388
    add-int v1, p2, v0

    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    if-eqz v2, :cond_0

    .line 390
    const/4 v1, 0x0

    .line 393
    :goto_1
    return v1

    .line 386
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isOne(I[I)Z
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 398
    aget v3, p1, v1

    if-eq v3, v2, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v1

    .line 402
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_2

    .line 404
    aget v3, p1, v0

    if-nez v3, :cond_0

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 409
    goto :goto_0
.end method

.method public static isZero(I[I)Z
    .locals 2
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .prologue
    .line 414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 416
    aget v1, p1, v0

    if-eqz v1, :cond_0

    .line 418
    const/4 v1, 0x0

    .line 421
    :goto_1
    return v1

    .line 414
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static mul(I[II[II[II)V
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "zz"    # [I
    .param p6, "zzOff"    # I

    .prologue
    .line 436
    add-int v7, p6, p0

    aget v1, p1, p2

    move v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result v0

    aput v0, p5, v7

    .line 438
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-ge v6, p0, :cond_0

    .line 440
    add-int v0, p6, v6

    add-int v7, v0, p0

    add-int v0, p2, v6

    aget v1, p1, v0

    add-int v5, p6, v6

    move v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    aput v0, p5, v7

    .line 438
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 442
    :cond_0
    return-void
.end method

.method public static mul(I[I[I[I)V
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "zz"    # [I

    .prologue
    const/4 v3, 0x0

    .line 426
    aget v0, p1, v3

    invoke-static {p0, v0, p2, p3}, Lorg/spongycastle/math/raw/Nat;->mulWord(II[I[I)I

    move-result v0

    aput v0, p3, p0

    .line 428
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, p0, :cond_0

    .line 430
    add-int v6, v5, p0

    aget v1, p1, v5

    move v0, p0

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    aput v0, p3, v6

    .line 428
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 432
    :cond_0
    return-void
.end method

.method public static mul31BothAdd(II[II[I[II)I
    .locals 16
    .param p0, "len"    # I
    .param p1, "a"    # I
    .param p2, "x"    # [I
    .param p3, "b"    # I
    .param p4, "y"    # [I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .prologue
    .line 473
    const-wide/16 v6, 0x0

    .local v6, "c":J
    move/from16 v0, p1

    int-to-long v10, v0

    const-wide v12, 0xffffffffL

    and-long v2, v10, v12

    .local v2, "aVal":J
    move/from16 v0, p3

    int-to-long v10, v0

    const-wide v12, 0xffffffffL

    and-long v4, v10, v12

    .line 474
    .local v4, "bVal":J
    const/4 v8, 0x0

    .line 477
    .local v8, "i":I
    :cond_0
    aget v9, p2, v8

    int-to-long v10, v9

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    mul-long/2addr v10, v2

    aget v9, p4, v8

    int-to-long v12, v9

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    mul-long/2addr v12, v4

    add-long/2addr v10, v12

    add-int v9, p6, v8

    aget v9, p5, v9

    int-to-long v12, v9

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v6, v10

    .line 478
    add-int v9, p6, v8

    long-to-int v10, v6

    aput v10, p5, v9

    .line 479
    const/16 v9, 0x20

    ushr-long/2addr v6, v9

    .line 481
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p0

    if-lt v8, v0, :cond_0

    .line 482
    long-to-int v9, v6

    return v9
.end method

.method public static mulAddTo(I[II[II[II)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "zz"    # [I
    .param p6, "zzOff"    # I

    .prologue
    .line 459
    const-wide/16 v10, 0x0

    .line 460
    .local v10, "zc":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, p0, :cond_0

    .line 462
    add-int v0, p2, v8

    aget v1, p1, v0

    move v0, p0

    move-object v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long v6, v0, v2

    .line 463
    .local v6, "c":J
    add-int v0, p6, p0

    aget v0, p5, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-long/2addr v0, v10

    add-long/2addr v6, v0

    .line 464
    add-int v0, p6, p0

    long-to-int v1, v6

    aput v1, p5, v0

    .line 465
    const/16 v0, 0x20

    ushr-long v10, v6, v0

    .line 466
    add-int/lit8 p6, p6, 0x1

    .line 460
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 468
    .end local v6    # "c":J
    :cond_0
    long-to-int v0, v10

    return v0
.end method

.method public static mulAddTo(I[I[I[I)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "zz"    # [I

    .prologue
    const-wide v10, 0xffffffffL

    .line 446
    const-wide/16 v8, 0x0

    .line 447
    .local v8, "zc":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, p0, :cond_0

    .line 449
    aget v1, p1, v5

    const/4 v3, 0x0

    move v0, p0

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v0

    int-to-long v0, v0

    and-long v6, v0, v10

    .line 450
    .local v6, "c":J
    add-int v0, v5, p0

    aget v0, p3, v0

    int-to-long v0, v0

    and-long/2addr v0, v10

    add-long/2addr v0, v8

    add-long/2addr v6, v0

    .line 451
    add-int v0, v5, p0

    long-to-int v1, v6

    aput v1, p3, v0

    .line 452
    const/16 v0, 0x20

    ushr-long v8, v6, v0

    .line 447
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 454
    .end local v6    # "c":J
    :cond_0
    long-to-int v0, v8

    return v0
.end method

.method public static mulWord(II[II[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .prologue
    const-wide v8, 0xffffffffL

    .line 501
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p1

    and-long v4, v6, v8

    .line 502
    .local v4, "xVal":J
    const/4 v2, 0x0

    .line 505
    .local v2, "i":I
    :cond_0
    add-int v3, p3, v2

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 506
    add-int v3, p5, v2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 507
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 509
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p0, :cond_0

    .line 510
    long-to-int v3, v0

    return v3
.end method

.method public static mulWord(II[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    .line 487
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p1

    and-long v4, v6, v8

    .line 488
    .local v4, "xVal":J
    const/4 v2, 0x0

    .line 491
    .local v2, "i":I
    :cond_0
    aget v3, p2, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 492
    long-to-int v3, v0

    aput v3, p3, v2

    .line 493
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 495
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p0, :cond_0

    .line 496
    long-to-int v3, v0

    return v3
.end method

.method public static mulWordAddTo(II[II[II)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .prologue
    .line 515
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p1

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    .line 516
    .local v4, "xVal":J
    const/4 v2, 0x0

    .line 519
    .local v2, "i":I
    :cond_0
    add-int v3, p3, v2

    aget v3, p2, v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-int v3, p5, v2

    aget v3, p4, v3

    int-to-long v8, v3

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 520
    add-int v3, p5, v2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 521
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 523
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p0, :cond_0

    .line 524
    long-to-int v3, v0

    return v3
.end method

.method public static mulWordDwordAddAt(IIJ[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # J
    .param p4, "z"    # [I
    .param p5, "zPos"    # I

    .prologue
    .line 530
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v4, p1

    const-wide v6, 0xffffffffL

    and-long v2, v4, v6

    .line 531
    .local v2, "xVal":J
    const-wide v4, 0xffffffffL

    and-long/2addr v4, p2

    mul-long/2addr v4, v2

    add-int/lit8 v6, p5, 0x0

    aget v6, p4, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 532
    add-int/lit8 v4, p5, 0x0

    long-to-int v5, v0

    aput v5, p4, v4

    .line 533
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 534
    const/16 v4, 0x20

    ushr-long v4, p2, v4

    mul-long/2addr v4, v2

    add-int/lit8 v6, p5, 0x1

    aget v6, p4, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 535
    add-int/lit8 v4, p5, 0x1

    long-to-int v5, v0

    aput v5, p4, v4

    .line 536
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 537
    add-int/lit8 v4, p5, 0x2

    aget v4, p4, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 538
    add-int/lit8 v4, p5, 0x2

    long-to-int v5, v0

    aput v5, p4, v4

    .line 539
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 540
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, p5, 0x3

    invoke-static {p0, p4, v4}, Lorg/spongycastle/math/raw/Nat;->incAt(I[II)I

    move-result v4

    goto :goto_0
.end method

.method public static shiftDownBit(I[II)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    .prologue
    .line 545
    move v0, p0

    .line 546
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 548
    aget v1, p1, v0

    .line 549
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 550
    move p2, v1

    .line 551
    goto :goto_0

    .line 552
    .end local v1    # "next":I
    :cond_0
    shl-int/lit8 v2, p2, 0x1f

    return v2
.end method

.method public static shiftDownBit(I[III)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "c"    # I

    .prologue
    .line 557
    move v0, p0

    .line 558
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 560
    add-int v2, p2, v0

    aget v1, p1, v2

    .line 561
    .local v1, "next":I
    add-int v2, p2, v0

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 562
    move p3, v1

    .line 563
    goto :goto_0

    .line 564
    .end local v1    # "next":I
    :cond_0
    shl-int/lit8 v2, p3, 0x1f

    return v2
.end method

.method public static shiftDownBit(I[III[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .prologue
    .line 581
    move v0, p0

    .line 582
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 584
    add-int v2, p2, v0

    aget v1, p1, v2

    .line 585
    .local v1, "next":I
    add-int v2, p5, v0

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    .line 586
    move p3, v1

    .line 587
    goto :goto_0

    .line 588
    .end local v1    # "next":I
    :cond_0
    shl-int/lit8 v2, p3, 0x1f

    return v2
.end method

.method public static shiftDownBit(I[II[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "c"    # I
    .param p3, "z"    # [I

    .prologue
    .line 569
    move v0, p0

    .line 570
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 572
    aget v1, p1, v0

    .line 573
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    .line 574
    move p2, v1

    .line 575
    goto :goto_0

    .line 576
    .end local v1    # "next":I
    :cond_0
    shl-int/lit8 v2, p2, 0x1f

    return v2
.end method

.method public static shiftDownBits(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I

    .prologue
    .line 594
    move v0, p0

    .line 595
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 597
    aget v1, p1, v0

    .line 598
    .local v1, "next":I
    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 599
    move p3, v1

    .line 600
    goto :goto_0

    .line 601
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p2

    shl-int v2, p3, v2

    return v2
.end method

.method public static shiftDownBits(I[IIII)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I

    .prologue
    .line 607
    move v0, p0

    .line 608
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 610
    add-int v2, p2, v0

    aget v1, p1, v2

    .line 611
    .local v1, "next":I
    add-int v2, p2, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 612
    move p4, v1

    .line 613
    goto :goto_0

    .line 614
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p3

    shl-int v2, p4, v2

    return v2
.end method

.method public static shiftDownBits(I[IIII[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .prologue
    .line 633
    move v0, p0

    .line 634
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 636
    add-int v2, p2, v0

    aget v1, p1, v2

    .line 637
    .local v1, "next":I
    add-int v2, p6, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    .line 638
    move p4, v1

    .line 639
    goto :goto_0

    .line 640
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p3

    shl-int v2, p4, v2

    return v2
.end method

.method public static shiftDownBits(I[III[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I

    .prologue
    .line 620
    move v0, p0

    .line 621
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 623
    aget v1, p1, v0

    .line 624
    .local v1, "next":I
    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    .line 625
    move p3, v1

    .line 626
    goto :goto_0

    .line 627
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p2

    shl-int v2, p3, v2

    return v2
.end method

.method public static shiftDownWord(I[II)I
    .locals 2
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    .prologue
    .line 645
    move v0, p0

    .line 646
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 648
    aget v1, p1, v0

    .line 649
    .local v1, "next":I
    aput p2, p1, v0

    .line 650
    move p2, v1

    .line 651
    goto :goto_0

    .line 652
    .end local v1    # "next":I
    :cond_0
    return p2
.end method

.method public static shiftUpBit(I[II)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    .prologue
    .line 657
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 659
    aget v1, p1, v0

    .line 660
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 661
    move p2, v1

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    .end local v1    # "next":I
    :cond_0
    ushr-int/lit8 v2, p2, 0x1f

    return v2
.end method

.method public static shiftUpBit(I[III)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "c"    # I

    .prologue
    .line 668
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 670
    add-int v2, p2, v0

    aget v1, p1, v2

    .line 671
    .local v1, "next":I
    add-int v2, p2, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 672
    move p3, v1

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    .end local v1    # "next":I
    :cond_0
    ushr-int/lit8 v2, p3, 0x1f

    return v2
.end method

.method public static shiftUpBit(I[III[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .prologue
    .line 690
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 692
    add-int v2, p2, v0

    aget v1, p1, v2

    .line 693
    .local v1, "next":I
    add-int v2, p5, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    .line 694
    move p3, v1

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    .end local v1    # "next":I
    :cond_0
    ushr-int/lit8 v2, p3, 0x1f

    return v2
.end method

.method public static shiftUpBit(I[II[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "c"    # I
    .param p3, "z"    # [I

    .prologue
    .line 679
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 681
    aget v1, p1, v0

    .line 682
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    .line 683
    move p2, v1

    .line 679
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    .end local v1    # "next":I
    :cond_0
    ushr-int/lit8 v2, p2, 0x1f

    return v2
.end method

.method public static shiftUpBit64(I[JIJ[JI)J
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "c"    # J
    .param p5, "z"    # [J
    .param p6, "zOff"    # I

    .prologue
    const/16 v8, 0x3f

    .line 701
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 703
    add-int v1, p2, v0

    aget-wide v2, p1, v1

    .line 704
    .local v2, "next":J
    add-int v1, p6, v0

    const/4 v4, 0x1

    shl-long v4, v2, v4

    ushr-long v6, p3, v8

    or-long/2addr v4, v6

    aput-wide v4, p5, v1

    .line 705
    move-wide p3, v2

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    .end local v2    # "next":J
    :cond_0
    ushr-long v4, p3, v8

    return-wide v4
.end method

.method public static shiftUpBits(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I

    .prologue
    .line 713
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 715
    aget v1, p1, v0

    .line 716
    .local v1, "next":I
    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 717
    move p3, v1

    .line 713
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p2

    ushr-int v2, p3, v2

    return v2
.end method

.method public static shiftUpBits(I[IIII)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I

    .prologue
    .line 725
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 727
    add-int v2, p2, v0

    aget v1, p1, v2

    .line 728
    .local v1, "next":I
    add-int v2, p2, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 729
    move p4, v1

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p3

    ushr-int v2, p4, v2

    return v2
.end method

.method public static shiftUpBits(I[IIII[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .prologue
    .line 761
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 763
    add-int v2, p2, v0

    aget v1, p1, v2

    .line 764
    .local v1, "next":I
    add-int v2, p6, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    .line 765
    move p4, v1

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 767
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p3

    ushr-int v2, p4, v2

    return v2
.end method

.method public static shiftUpBits(I[III[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I

    .prologue
    .line 749
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 751
    aget v1, p1, v0

    .line 752
    .local v1, "next":I
    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    .line 753
    move p3, v1

    .line 749
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p2

    ushr-int v2, p3, v2

    return v2
.end method

.method public static shiftUpBits64(I[JIIJ)J
    .locals 8
    .param p0, "len"    # I
    .param p1, "z"    # [J
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # J

    .prologue
    .line 737
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 739
    add-int v1, p2, v0

    aget-wide v2, p1, v1

    .line 740
    .local v2, "next":J
    add-int v1, p2, v0

    shl-long v4, v2, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p1, v1

    .line 741
    move-wide p4, v2

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    .end local v2    # "next":J
    :cond_0
    neg-int v1, p3

    ushr-long v4, p4, v1

    return-wide v4
.end method

.method public static shiftUpBits64(I[JIIJ[JI)J
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # J
    .param p6, "z"    # [J
    .param p7, "zOff"    # I

    .prologue
    .line 773
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 775
    add-int v1, p2, v0

    aget-wide v2, p1, v1

    .line 776
    .local v2, "next":J
    add-int v1, p7, v0

    shl-long v4, v2, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p6, v1

    .line 777
    move-wide p4, v2

    .line 773
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 779
    .end local v2    # "next":J
    :cond_0
    neg-int v1, p3

    ushr-long v4, p4, v1

    return-wide v4
.end method

.method public static square(I[II[II)V
    .locals 18
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "zz"    # [I
    .param p4, "zzOff"    # I

    .prologue
    .line 808
    shl-int/lit8 v5, p0, 0x1

    .line 809
    .local v5, "extLen":I
    const/4 v4, 0x0

    .line 810
    .local v4, "c":I
    move/from16 v7, p0

    .local v7, "j":I
    move v8, v5

    .line 813
    .local v8, "k":I
    :cond_0
    add-int/lit8 v7, v7, -0x1

    add-int v9, p2, v7

    aget v9, p1, v9

    int-to-long v14, v9

    const-wide v16, 0xffffffffL

    and-long v12, v14, v16

    .line 814
    .local v12, "xVal":J
    mul-long v10, v12, v12

    .line 815
    .local v10, "p":J
    add-int/lit8 v8, v8, -0x1

    add-int v9, p4, v8

    shl-int/lit8 v14, v4, 0x1f

    const/16 v15, 0x21

    ushr-long v16, v10, v15

    move-wide/from16 v0, v16

    long-to-int v15, v0

    or-int/2addr v14, v15

    aput v14, p3, v9

    .line 816
    add-int/lit8 v8, v8, -0x1

    add-int v9, p4, v8

    const/4 v14, 0x1

    ushr-long v14, v10, v14

    long-to-int v14, v14

    aput v14, p3, v9

    .line 817
    long-to-int v4, v10

    .line 819
    if-gtz v7, :cond_0

    .line 821
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    move/from16 v0, p0

    if-ge v6, v0, :cond_1

    .line 823
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v6, v2, v3}, Lorg/spongycastle/math/raw/Nat;->squareWordAdd([III[II)I

    move-result v4

    .line 824
    shl-int/lit8 v9, v6, 0x1

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v5, v4, v0, v1, v9}, Lorg/spongycastle/math/raw/Nat;->addWordAt(II[III)I

    .line 821
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 827
    :cond_1
    aget v9, p1, p2

    shl-int/lit8 v9, v9, 0x1f

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v5, v0, v1, v9}, Lorg/spongycastle/math/raw/Nat;->shiftUpBit(I[III)I

    .line 828
    return-void
.end method

.method public static square(I[I[I)V
    .locals 16
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 784
    shl-int/lit8 v3, p0, 0x1

    .line 785
    .local v3, "extLen":I
    const/4 v2, 0x0

    .line 786
    .local v2, "c":I
    move/from16 v5, p0

    .local v5, "j":I
    move v6, v3

    .line 789
    .local v6, "k":I
    :cond_0
    add-int/lit8 v5, v5, -0x1

    aget v7, p1, v5

    int-to-long v12, v7

    const-wide v14, 0xffffffffL

    and-long v10, v12, v14

    .line 790
    .local v10, "xVal":J
    mul-long v8, v10, v10

    .line 791
    .local v8, "p":J
    add-int/lit8 v6, v6, -0x1

    shl-int/lit8 v7, v2, 0x1f

    const/16 v12, 0x21

    ushr-long v12, v8, v12

    long-to-int v12, v12

    or-int/2addr v7, v12

    aput v7, p2, v6

    .line 792
    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    ushr-long v12, v8, v7

    long-to-int v7, v12

    aput v7, p2, v6

    .line 793
    long-to-int v2, v8

    .line 795
    if-gtz v5, :cond_0

    .line 797
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    move/from16 v0, p0

    if-ge v4, v0, :cond_1

    .line 799
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v4, v1}, Lorg/spongycastle/math/raw/Nat;->squareWordAdd([II[I)I

    move-result v2

    .line 800
    shl-int/lit8 v7, v4, 0x1

    move-object/from16 v0, p2

    invoke-static {v3, v2, v0, v7}, Lorg/spongycastle/math/raw/Nat;->addWordAt(II[II)I

    .line 797
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 803
    :cond_1
    const/4 v7, 0x0

    aget v7, p1, v7

    shl-int/lit8 v7, v7, 0x1f

    move-object/from16 v0, p2

    invoke-static {v3, v0, v7}, Lorg/spongycastle/math/raw/Nat;->shiftUpBit(I[II)I

    .line 804
    return-void
.end method

.method public static squareWordAdd([III[II)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "xPos"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    .line 846
    const-wide/16 v0, 0x0

    .local v0, "c":J
    add-int v3, p1, p2

    aget v3, p0, v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    .line 847
    .local v4, "xVal":J
    const/4 v2, 0x0

    .line 850
    .local v2, "i":I
    :cond_0
    add-int v3, p1, v2

    aget v3, p0, v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-int v3, p2, p4

    aget v3, p3, v3

    int-to-long v8, v3

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 851
    add-int v3, p2, p4

    long-to-int v6, v0

    aput v6, p3, v3

    .line 852
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 853
    add-int/lit8 p4, p4, 0x1

    .line 855
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_0

    .line 856
    long-to-int v3, v0

    return v3
.end method

.method public static squareWordAdd([II[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "xPos"    # I
    .param p2, "z"    # [I

    .prologue
    const-wide v10, 0xffffffffL

    .line 832
    const-wide/16 v0, 0x0

    .local v0, "c":J
    aget v3, p0, p1

    int-to-long v6, v3

    and-long v4, v6, v10

    .line 833
    .local v4, "xVal":J
    const/4 v2, 0x0

    .line 836
    .local v2, "i":I
    :cond_0
    aget v3, p0, v2

    int-to-long v6, v3

    and-long/2addr v6, v10

    mul-long/2addr v6, v4

    add-int v3, p1, v2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 837
    add-int v3, p1, v2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 838
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 840
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_0

    .line 841
    long-to-int v3, v0

    return v3
.end method

.method public static sub(I[II[II[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .prologue
    .line 873
    const-wide/16 v0, 0x0

    .line 874
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 876
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v4, v3

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-int v3, p4, v2

    aget v3, p3, v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 877
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 878
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 874
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 880
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static sub(I[I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    .line 861
    const-wide/16 v0, 0x0

    .line 862
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 864
    aget v3, p1, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    aget v3, p2, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 865
    long-to-int v3, v0

    aput v3, p3, v2

    .line 866
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 862
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 868
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static sub33At(II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 886
    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    int-to-long v4, p1

    and-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 887
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 888
    shr-long/2addr v0, v8

    .line 889
    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 890
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 891
    shr-long/2addr v0, v8

    .line 892
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, p3, 0x2

    invoke-static {p0, p2, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    goto :goto_0
.end method

.method public static sub33At(II[III)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 898
    add-int v2, p3, p4

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    int-to-long v4, p1

    and-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 899
    .local v0, "c":J
    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 900
    shr-long/2addr v0, v8

    .line 901
    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 902
    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 903
    shr-long/2addr v0, v8

    .line 904
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p2, p3, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    goto :goto_0
.end method

.method public static sub33From(II[I)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x1

    const-wide v8, 0xffffffffL

    const/4 v2, 0x0

    .line 909
    aget v3, p2, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    int-to-long v6, p1

    and-long/2addr v6, v8

    sub-long v0, v4, v6

    .line 910
    .local v0, "c":J
    long-to-int v3, v0

    aput v3, p2, v2

    .line 911
    shr-long/2addr v0, v11

    .line 912
    aget v3, p2, v10

    int-to-long v4, v3

    and-long/2addr v4, v8

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 913
    long-to-int v3, v0

    aput v3, p2, v10

    .line 914
    shr-long/2addr v0, v11

    .line 915
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p2, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    goto :goto_0
.end method

.method public static sub33From(II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .prologue
    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 920
    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    int-to-long v4, p1

    and-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 921
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 922
    shr-long/2addr v0, v8

    .line 923
    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 924
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 925
    shr-long/2addr v0, v8

    .line 926
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    goto :goto_0
.end method

.method public static subBothFrom(I[II[II[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .prologue
    .line 943
    const-wide/16 v0, 0x0

    .line 944
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 946
    add-int v3, p6, v2

    aget v3, p5, v3

    int-to-long v4, v3

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-int v3, p4, v2

    aget v3, p3, v3

    int-to-long v6, v3

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 947
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 948
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 944
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 950
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static subBothFrom(I[I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    .line 931
    const-wide/16 v0, 0x0

    .line 932
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 934
    aget v3, p3, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    aget v3, p1, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    aget v3, p2, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 935
    long-to-int v3, v0

    aput v3, p3, v2

    .line 936
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 932
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 938
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static subDWordAt(IJ[II)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zPos"    # I

    .prologue
    const-wide v8, 0xffffffffL

    const/16 v6, 0x20

    .line 956
    add-int/lit8 v2, p4, 0x0

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    and-long v4, p1, v8

    sub-long v0, v2, v4

    .line 957
    .local v0, "c":J
    add-int/lit8 v2, p4, 0x0

    long-to-int v3, v0

    aput v3, p3, v2

    .line 958
    shr-long/2addr v0, v6

    .line 959
    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    ushr-long v4, p1, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 960
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 961
    shr-long/2addr v0, v6

    .line 962
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p3, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    goto :goto_0
.end method

.method public static subDWordAt(IJ[III)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "zPos"    # I

    .prologue
    const-wide v8, 0xffffffffL

    const/16 v6, 0x20

    .line 968
    add-int v2, p4, p5

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    and-long v4, p1, v8

    sub-long v0, v2, v4

    .line 969
    .local v0, "c":J
    add-int v2, p4, p5

    long-to-int v3, v0

    aput v3, p3, v2

    .line 970
    shr-long/2addr v0, v6

    .line 971
    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    ushr-long v4, p1, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 972
    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 973
    shr-long/2addr v0, v6

    .line 974
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, p5, 0x2

    invoke-static {p0, p3, p4, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    goto :goto_0
.end method

.method public static subDWordFrom(IJ[I)I
    .locals 15
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I

    .prologue
    const/4 v11, 0x1

    const-wide v12, 0xffffffffL

    const/16 v10, 0x20

    const/4 v4, 0x0

    .line 979
    aget v5, p3, v4

    int-to-long v6, v5

    and-long/2addr v6, v12

    and-long v8, p1, v12

    sub-long v2, v6, v8

    .line 980
    .local v2, "c":J
    long-to-int v5, v2

    aput v5, p3, v4

    .line 981
    shr-long/2addr v2, v10

    .line 982
    aget v5, p3, v11

    int-to-long v6, v5

    and-long/2addr v6, v12

    ushr-long v8, p1, v10

    sub-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 983
    long-to-int v5, v2

    aput v5, p3, v11

    .line 984
    shr-long/2addr v2, v10

    .line 985
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-static {p0, v0, v4}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result v4

    goto :goto_0
.end method

.method public static subDWordFrom(IJ[II)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    const-wide v8, 0xffffffffL

    const/16 v6, 0x20

    .line 990
    add-int/lit8 v2, p4, 0x0

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    and-long v4, p1, v8

    sub-long v0, v2, v4

    .line 991
    .local v0, "c":J
    add-int/lit8 v2, p4, 0x0

    long-to-int v3, v0

    aput v3, p3, v2

    .line 992
    shr-long/2addr v0, v6

    .line 993
    add-int/lit8 v2, p4, 0x1

    aget v2, p3, v2

    int-to-long v2, v2

    and-long/2addr v2, v8

    ushr-long v4, p1, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 994
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 995
    shr-long/2addr v0, v6

    .line 996
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x2

    invoke-static {p0, p3, p4, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    goto :goto_0
.end method

.method public static subFrom(I[II[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    const-wide v8, 0xffffffffL

    .line 1013
    const-wide/16 v0, 0x0

    .line 1014
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1016
    add-int v3, p4, v2

    aget v3, p3, v3

    int-to-long v4, v3

    and-long/2addr v4, v8

    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v6, v3

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 1017
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 1018
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1014
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1020
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static subFrom(I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    .line 1001
    const-wide/16 v0, 0x0

    .line 1002
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1004
    aget v3, p2, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    aget v3, p1, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 1005
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1006
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1002
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1008
    :cond_0
    long-to-int v3, v0

    return v3
.end method

.method public static subWordAt(II[II)I
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 1026
    aget v2, p2, p3

    int-to-long v2, v2

    and-long/2addr v2, v6

    int-to-long v4, p1

    and-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 1027
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 1028
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1029
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    goto :goto_0
.end method

.method public static subWordAt(II[III)I
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 1035
    add-int v2, p3, p4

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    int-to-long v4, p1

    and-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 1036
    .local v0, "c":J
    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1037
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1038
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, p2, p3, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    goto :goto_0
.end method

.method public static subWordFrom(II[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .prologue
    const-wide v8, 0xffffffffL

    const/4 v2, 0x0

    .line 1043
    aget v3, p2, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    int-to-long v6, p1

    and-long/2addr v6, v8

    sub-long v0, v4, v6

    .line 1044
    .local v0, "c":J
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1045
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1046
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p2, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    goto :goto_0
.end method

.method public static subWordFrom(II[II)I
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 1051
    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    int-to-long v4, p1

    and-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 1052
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1053
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1054
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Lorg/spongycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    goto :goto_0
.end method

.method public static toBigInteger(I[I)Ljava/math/BigInteger;
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .prologue
    .line 1059
    shl-int/lit8 v3, p0, 0x2

    new-array v0, v3, [B

    .line 1060
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_1

    .line 1062
    aget v2, p1, v1

    .line 1063
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 1065
    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1060
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1068
    .end local v2    # "x_i":I
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v3
.end method

.method public static zero(I[I)V
    .locals 2
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .prologue
    .line 1073
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1075
    const/4 v1, 0x0

    aput v1, p1, v0

    .line 1073
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1077
    :cond_0
    return-void
.end method

.method public static zero64(I[J)V
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [J

    .prologue
    .line 1081
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1083
    const-wide/16 v2, 0x0

    aput-wide v2, p1, v0

    .line 1081
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1085
    :cond_0
    return-void
.end method
