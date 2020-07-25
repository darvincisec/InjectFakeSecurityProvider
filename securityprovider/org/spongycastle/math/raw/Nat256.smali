.class public abstract Lorg/spongycastle/math/raw/Nat256;
.super Ljava/lang/Object;
.source "Nat256.java"


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

.method public static add([II[II[II)I
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

    .line 43
    const-wide/16 v0, 0x0

    .line 44
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

    .line 45
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 46
    ushr-long/2addr v0, v8

    .line 47
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

    .line 48
    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    .line 49
    ushr-long/2addr v0, v8

    .line 50
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

    .line 51
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 52
    ushr-long/2addr v0, v8

    .line 53
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

    .line 54
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 55
    ushr-long/2addr v0, v8

    .line 56
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

    .line 57
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 58
    ushr-long/2addr v0, v8

    .line 59
    add-int/lit8 v2, p1, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 60
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 61
    ushr-long/2addr v0, v8

    .line 62
    add-int/lit8 v2, p1, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x6

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 63
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 64
    ushr-long/2addr v0, v8

    .line 65
    add-int/lit8 v2, p1, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x7

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 66
    add-int/lit8 v2, p5, 0x7

    long-to-int v3, v0

    aput v3, p4, v2

    .line 67
    ushr-long/2addr v0, v8

    .line 68
    long-to-int v2, v0

    return v2
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
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 30
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 31
    ushr-long/2addr v0, v8

    .line 32
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x6

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 33
    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 34
    ushr-long/2addr v0, v8

    .line 35
    const/4 v2, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x7

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 36
    const/4 v2, 0x7

    long-to-int v3, v0

    aput v3, p2, v2

    .line 37
    ushr-long/2addr v0, v8

    .line 38
    long-to-int v2, v0

    return v2
.end method

.method public static addBothTo([II[II[II)I
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

    .line 103
    const-wide/16 v0, 0x0

    .line 104
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

    add-int/lit8 v4, p5, 0x0

    aget v4, p4, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 105
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 106
    ushr-long/2addr v0, v8

    .line 107
    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v4, p5, 0x1

    aget v4, p4, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 108
    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    .line 109
    ushr-long/2addr v0, v8

    .line 110
    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x2

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v4, p5, 0x2

    aget v4, p4, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 111
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 112
    ushr-long/2addr v0, v8

    .line 113
    add-int/lit8 v2, p1, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v4, p5, 0x3

    aget v4, p4, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 114
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 115
    ushr-long/2addr v0, v8

    .line 116
    add-int/lit8 v2, p1, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v4, p5, 0x4

    aget v4, p4, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 117
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 118
    ushr-long/2addr v0, v8

    .line 119
    add-int/lit8 v2, p1, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v4, p5, 0x5

    aget v4, p4, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 120
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 121
    ushr-long/2addr v0, v8

    .line 122
    add-int/lit8 v2, p1, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x6

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v4, p5, 0x6

    aget v4, p4, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 123
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 124
    ushr-long/2addr v0, v8

    .line 125
    add-int/lit8 v2, p1, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x7

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v4, p5, 0x7

    aget v4, p4, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 126
    add-int/lit8 v2, p5, 0x7

    long-to-int v3, v0

    aput v3, p4, v2

    .line 127
    ushr-long/2addr v0, v8

    .line 128
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

    .line 73
    const-wide/16 v0, 0x0

    .line 74
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

    .line 75
    long-to-int v2, v0

    aput v2, p2, v9

    .line 76
    ushr-long/2addr v0, v8

    .line 77
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

    .line 78
    long-to-int v2, v0

    aput v2, p2, v10

    .line 79
    ushr-long/2addr v0, v8

    .line 80
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

    .line 81
    long-to-int v2, v0

    aput v2, p2, v11

    .line 82
    ushr-long/2addr v0, v8

    .line 83
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

    .line 84
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 85
    ushr-long/2addr v0, v8

    .line 86
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

    .line 87
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 88
    ushr-long/2addr v0, v8

    .line 89
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 90
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 91
    ushr-long/2addr v0, v8

    .line 92
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x6

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x6

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 93
    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 94
    ushr-long/2addr v0, v8

    .line 95
    const/4 v2, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x7

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    const/4 v4, 0x7

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 96
    const/4 v2, 0x7

    long-to-int v3, v0

    aput v3, p2, v2

    .line 97
    ushr-long/2addr v0, v8

    .line 98
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

    .line 163
    int-to-long v2, p4

    and-long v0, v2, v6

    .line 164
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

    .line 165
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 166
    ushr-long/2addr v0, v8

    .line 167
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

    .line 168
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 169
    ushr-long/2addr v0, v8

    .line 170
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

    .line 171
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 172
    ushr-long/2addr v0, v8

    .line 173
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

    .line 174
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 175
    ushr-long/2addr v0, v8

    .line 176
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

    .line 177
    add-int/lit8 v2, p3, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 178
    ushr-long/2addr v0, v8

    .line 179
    add-int/lit8 v2, p1, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 180
    add-int/lit8 v2, p3, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 181
    ushr-long/2addr v0, v8

    .line 182
    add-int/lit8 v2, p1, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x6

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 183
    add-int/lit8 v2, p3, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 184
    ushr-long/2addr v0, v8

    .line 185
    add-int/lit8 v2, p1, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x7

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 186
    add-int/lit8 v2, p3, 0x7

    long-to-int v3, v0

    aput v3, p2, v2

    .line 187
    ushr-long/2addr v0, v8

    .line 188
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

    .line 133
    const-wide/16 v0, 0x0

    .line 134
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 135
    long-to-int v2, v0

    aput v2, p1, v9

    .line 136
    ushr-long/2addr v0, v8

    .line 137
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 138
    long-to-int v2, v0

    aput v2, p1, v10

    .line 139
    ushr-long/2addr v0, v8

    .line 140
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 141
    long-to-int v2, v0

    aput v2, p1, v11

    .line 142
    ushr-long/2addr v0, v8

    .line 143
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

    .line 144
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p1, v2

    .line 145
    ushr-long/2addr v0, v8

    .line 146
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

    .line 147
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p1, v2

    .line 148
    ushr-long/2addr v0, v8

    .line 149
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 150
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p1, v2

    .line 151
    ushr-long/2addr v0, v8

    .line 152
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x6

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 153
    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p1, v2

    .line 154
    ushr-long/2addr v0, v8

    .line 155
    const/4 v2, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x7

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 156
    const/4 v2, 0x7

    long-to-int v3, v0

    aput v3, p1, v2

    .line 157
    ushr-long/2addr v0, v8

    .line 158
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

    .line 193
    const-wide/16 v0, 0x0

    .line 194
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

    .line 195
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 196
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 197
    ushr-long/2addr v0, v8

    .line 198
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

    .line 199
    add-int/lit8 v2, p1, 0x1

    long-to-int v3, v0

    aput v3, p0, v2

    .line 200
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 201
    ushr-long/2addr v0, v8

    .line 202
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

    .line 203
    add-int/lit8 v2, p1, 0x2

    long-to-int v3, v0

    aput v3, p0, v2

    .line 204
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 205
    ushr-long/2addr v0, v8

    .line 206
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

    .line 207
    add-int/lit8 v2, p1, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    .line 208
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 209
    ushr-long/2addr v0, v8

    .line 210
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

    .line 211
    add-int/lit8 v2, p1, 0x4

    long-to-int v3, v0

    aput v3, p0, v2

    .line 212
    add-int/lit8 v2, p3, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 213
    ushr-long/2addr v0, v8

    .line 214
    add-int/lit8 v2, p1, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 215
    add-int/lit8 v2, p1, 0x5

    long-to-int v3, v0

    aput v3, p0, v2

    .line 216
    add-int/lit8 v2, p3, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 217
    ushr-long/2addr v0, v8

    .line 218
    add-int/lit8 v2, p1, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x6

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 219
    add-int/lit8 v2, p1, 0x6

    long-to-int v3, v0

    aput v3, p0, v2

    .line 220
    add-int/lit8 v2, p3, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 221
    ushr-long/2addr v0, v8

    .line 222
    add-int/lit8 v2, p1, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x7

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 223
    add-int/lit8 v2, p1, 0x7

    long-to-int v3, v0

    aput v3, p0, v2

    .line 224
    add-int/lit8 v2, p3, 0x7

    long-to-int v3, v0

    aput v3, p2, v2

    .line 225
    ushr-long/2addr v0, v8

    .line 226
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

    .line 231
    aget v0, p0, v1

    aput v0, p1, v1

    .line 232
    aget v0, p0, v2

    aput v0, p1, v2

    .line 233
    aget v0, p0, v3

    aput v0, p1, v3

    .line 234
    aget v0, p0, v4

    aput v0, p1, v4

    .line 235
    aget v0, p0, v5

    aput v0, p1, v5

    .line 236
    const/4 v0, 0x5

    const/4 v1, 0x5

    aget v1, p0, v1

    aput v1, p1, v0

    .line 237
    const/4 v0, 0x6

    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, p1, v0

    .line 238
    const/4 v0, 0x7

    const/4 v1, 0x7

    aget v1, p0, v1

    aput v1, p1, v0

    .line 239
    return-void
.end method

.method public static copy64([J[J)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    aget-wide v0, p0, v2

    aput-wide v0, p1, v2

    .line 244
    aget-wide v0, p0, v3

    aput-wide v0, p1, v3

    .line 245
    aget-wide v0, p0, v4

    aput-wide v0, p1, v4

    .line 246
    aget-wide v0, p0, v5

    aput-wide v0, p1, v5

    .line 247
    return-void
.end method

.method public static create()[I
    .locals 1

    .prologue
    .line 251
    const/16 v0, 0x8

    new-array v0, v0, [I

    return-object v0
.end method

.method public static create64()[J
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x4

    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    .prologue
    .line 261
    const/16 v0, 0x10

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    .prologue
    .line 266
    const/16 v0, 0x8

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
    .line 271
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/raw/Nat256;->gte([II[II)Z

    move-result v6

    .line 272
    .local v6, "pos":Z
    if-eqz v6, :cond_0

    .line 274
    invoke-static/range {p0 .. p5}, Lorg/spongycastle/math/raw/Nat256;->sub([II[II[II)I

    .line 280
    :goto_0
    return v6

    :cond_0
    move-object v0, p2

    move v1, p3

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move v5, p5

    .line 278
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat256;->sub([II[II[II)I

    goto :goto_0
.end method

.method public static eq([I[I)Z
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    .line 285
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 287
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 289
    const/4 v1, 0x0

    .line 292
    :goto_1
    return v1

    .line 285
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 292
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static eq64([J[J)Z
    .locals 6
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .prologue
    .line 297
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 299
    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 301
    const/4 v1, 0x0

    .line 304
    :goto_1
    return v1

    .line 297
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 304
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 5
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 309
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x100

    if-le v3, v4, :cond_1

    .line 311
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 314
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v2

    .line 315
    .local v2, "z":[I
    const/4 v0, 0x0

    .line 316
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 319
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 321
    :cond_2
    return-object v2
.end method

.method public static fromBigInteger64(Ljava/math/BigInteger;)[J
    .locals 6
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 326
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x100

    if-le v3, v4, :cond_1

    .line 328
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 331
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create64()[J

    move-result-object v2

    .line 332
    .local v2, "z":[J
    const/4 v0, 0x0

    .line 333
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 336
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 338
    :cond_2
    return-object v2
.end method

.method public static getBit([II)I
    .locals 4
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .prologue
    const/4 v2, 0x0

    .line 343
    if-nez p1, :cond_1

    .line 345
    aget v2, p0, v2

    and-int/lit8 v2, v2, 0x1

    .line 353
    :cond_0
    :goto_0
    return v2

    .line 347
    :cond_1
    and-int/lit16 v3, p1, 0xff

    if-ne v3, p1, :cond_0

    .line 351
    ushr-int/lit8 v1, p1, 0x5

    .line 352
    .local v1, "w":I
    and-int/lit8 v0, p1, 0x1f

    .line 353
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

    .line 372
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 374
    add-int v4, p1, v0

    aget v4, p0, v4

    xor-int v1, v4, v5

    .line 375
    .local v1, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int v2, v4, v5

    .line 376
    .local v2, "y_i":I
    if-ge v1, v2, :cond_1

    .line 377
    const/4 v3, 0x0

    .line 381
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_0
    return v3

    .line 378
    .restart local v1    # "x_i":I
    .restart local v2    # "y_i":I
    :cond_1
    if-gt v1, v2, :cond_0

    .line 372
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

    .line 358
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 360
    aget v4, p0, v0

    xor-int v1, v4, v5

    .line 361
    .local v1, "x_i":I
    aget v4, p1, v0

    xor-int v2, v4, v5

    .line 362
    .local v2, "y_i":I
    if-ge v1, v2, :cond_1

    .line 363
    const/4 v3, 0x0

    .line 367
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_0
    return v3

    .line 364
    .restart local v1    # "x_i":I
    .restart local v2    # "y_i":I
    :cond_1
    if-gt v1, v2, :cond_0

    .line 358
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static isOne([I)Z
    .locals 4
    .param p0, "x"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 386
    aget v3, p0, v1

    if-eq v3, v2, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v1

    .line 390
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_2

    .line 392
    aget v3, p0, v0

    if-nez v3, :cond_0

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 397
    goto :goto_0
.end method

.method public static isOne64([J)Z
    .locals 6
    .param p0, "x"    # [J

    .prologue
    const/4 v1, 0x0

    .line 402
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v1

    .line 406
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 408
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 413
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isZero([I)Z
    .locals 2
    .param p0, "x"    # [I

    .prologue
    .line 418
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 420
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 422
    const/4 v1, 0x0

    .line 425
    :goto_1
    return v1

    .line 418
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isZero64([J)Z
    .locals 6
    .param p0, "x"    # [J

    .prologue
    .line 430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 432
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 434
    const/4 v1, 0x0

    .line 437
    :goto_1
    return v1

    .line 430
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static mul([II[II[II)V
    .locals 32
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .prologue
    .line 513
    add-int/lit8 v5, p3, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v10, v26, v28

    .line 514
    .local v10, "y_0":J
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v12, v26, v28

    .line 515
    .local v12, "y_1":J
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v14, v26, v28

    .line 516
    .local v14, "y_2":J
    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v16, v26, v28

    .line 517
    .local v16, "y_3":J
    add-int/lit8 v5, p3, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v18, v26, v28

    .line 518
    .local v18, "y_4":J
    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v20, v26, v28

    .line 519
    .local v20, "y_5":J
    add-int/lit8 v5, p3, 0x6

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v22, v26, v28

    .line 520
    .local v22, "y_6":J
    add-int/lit8 v5, p3, 0x7

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v24, v26, v28

    .line 523
    .local v24, "y_7":J
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int/lit8 v5, p1, 0x0

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v6, v26, v28

    .line 524
    .local v6, "x_0":J
    mul-long v26, v6, v10

    add-long v2, v2, v26

    .line 525
    add-int/lit8 v5, p5, 0x0

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 526
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 527
    mul-long v26, v6, v12

    add-long v2, v2, v26

    .line 528
    add-int/lit8 v5, p5, 0x1

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 529
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 530
    mul-long v26, v6, v14

    add-long v2, v2, v26

    .line 531
    add-int/lit8 v5, p5, 0x2

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 532
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 533
    mul-long v26, v6, v16

    add-long v2, v2, v26

    .line 534
    add-int/lit8 v5, p5, 0x3

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 535
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 536
    mul-long v26, v6, v18

    add-long v2, v2, v26

    .line 537
    add-int/lit8 v5, p5, 0x4

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 538
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 539
    mul-long v26, v6, v20

    add-long v2, v2, v26

    .line 540
    add-int/lit8 v5, p5, 0x5

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 541
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 542
    mul-long v26, v6, v22

    add-long v2, v2, v26

    .line 543
    add-int/lit8 v5, p5, 0x6

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 544
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 545
    mul-long v26, v6, v24

    add-long v2, v2, v26

    .line 546
    add-int/lit8 v5, p5, 0x7

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 547
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 548
    add-int/lit8 v5, p5, 0x8

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 551
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 553
    add-int/lit8 p5, p5, 0x1

    .line 554
    const-wide/16 v2, 0x0

    add-int v5, p1, v4

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v8, v26, v28

    .line 555
    .local v8, "x_i":J
    mul-long v26, v8, v10

    add-int/lit8 v5, p5, 0x0

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 556
    add-int/lit8 v5, p5, 0x0

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 557
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 558
    mul-long v26, v8, v12

    add-int/lit8 v5, p5, 0x1

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 559
    add-int/lit8 v5, p5, 0x1

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 560
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 561
    mul-long v26, v8, v14

    add-int/lit8 v5, p5, 0x2

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 562
    add-int/lit8 v5, p5, 0x2

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 563
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 564
    mul-long v26, v8, v16

    add-int/lit8 v5, p5, 0x3

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 565
    add-int/lit8 v5, p5, 0x3

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 566
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 567
    mul-long v26, v8, v18

    add-int/lit8 v5, p5, 0x4

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 568
    add-int/lit8 v5, p5, 0x4

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 569
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 570
    mul-long v26, v8, v20

    add-int/lit8 v5, p5, 0x5

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 571
    add-int/lit8 v5, p5, 0x5

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 572
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 573
    mul-long v26, v8, v22

    add-int/lit8 v5, p5, 0x6

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 574
    add-int/lit8 v5, p5, 0x6

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 575
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 576
    mul-long v26, v8, v24

    add-int/lit8 v5, p5, 0x7

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 577
    add-int/lit8 v5, p5, 0x7

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 578
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 579
    add-int/lit8 v5, p5, 0x8

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 551
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 581
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 32
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 442
    const/4 v5, 0x0

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v10, v26, v28

    .line 443
    .local v10, "y_0":J
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v12, v26, v28

    .line 444
    .local v12, "y_1":J
    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v14, v26, v28

    .line 445
    .local v14, "y_2":J
    const/4 v5, 0x3

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v16, v26, v28

    .line 446
    .local v16, "y_3":J
    const/4 v5, 0x4

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v18, v26, v28

    .line 447
    .local v18, "y_4":J
    const/4 v5, 0x5

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v20, v26, v28

    .line 448
    .local v20, "y_5":J
    const/4 v5, 0x6

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v22, v26, v28

    .line 449
    .local v22, "y_6":J
    const/4 v5, 0x7

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v24, v26, v28

    .line 452
    .local v24, "y_7":J
    const-wide/16 v2, 0x0

    .local v2, "c":J
    const/4 v5, 0x0

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v6, v26, v28

    .line 453
    .local v6, "x_0":J
    mul-long v26, v6, v10

    add-long v2, v2, v26

    .line 454
    const/4 v5, 0x0

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 455
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 456
    mul-long v26, v6, v12

    add-long v2, v2, v26

    .line 457
    const/4 v5, 0x1

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 458
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 459
    mul-long v26, v6, v14

    add-long v2, v2, v26

    .line 460
    const/4 v5, 0x2

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 461
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 462
    mul-long v26, v6, v16

    add-long v2, v2, v26

    .line 463
    const/4 v5, 0x3

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 464
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 465
    mul-long v26, v6, v18

    add-long v2, v2, v26

    .line 466
    const/4 v5, 0x4

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 467
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 468
    mul-long v26, v6, v20

    add-long v2, v2, v26

    .line 469
    const/4 v5, 0x5

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 470
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 471
    mul-long v26, v6, v22

    add-long v2, v2, v26

    .line 472
    const/4 v5, 0x6

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 473
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 474
    mul-long v26, v6, v24

    add-long v2, v2, v26

    .line 475
    const/4 v5, 0x7

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 476
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 477
    const/16 v5, 0x8

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 480
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 482
    const-wide/16 v2, 0x0

    aget v5, p0, v4

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v8, v26, v28

    .line 483
    .local v8, "x_i":J
    mul-long v26, v8, v10

    add-int/lit8 v5, v4, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 484
    add-int/lit8 v5, v4, 0x0

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 485
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 486
    mul-long v26, v8, v12

    add-int/lit8 v5, v4, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 487
    add-int/lit8 v5, v4, 0x1

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 488
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 489
    mul-long v26, v8, v14

    add-int/lit8 v5, v4, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 490
    add-int/lit8 v5, v4, 0x2

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 491
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 492
    mul-long v26, v8, v16

    add-int/lit8 v5, v4, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 493
    add-int/lit8 v5, v4, 0x3

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 494
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 495
    mul-long v26, v8, v18

    add-int/lit8 v5, v4, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 496
    add-int/lit8 v5, v4, 0x4

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 497
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 498
    mul-long v26, v8, v20

    add-int/lit8 v5, v4, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 499
    add-int/lit8 v5, v4, 0x5

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 500
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 501
    mul-long v26, v8, v22

    add-int/lit8 v5, v4, 0x6

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 502
    add-int/lit8 v5, v4, 0x6

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 503
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 504
    mul-long v26, v8, v24

    add-int/lit8 v5, v4, 0x7

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 505
    add-int/lit8 v5, v4, 0x7

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 506
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 507
    add-int/lit8 v5, v4, 0x8

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 480
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 509
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 28
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .prologue
    .line 680
    const-wide/16 v2, 0x0

    .local v2, "c":J
    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v4, v22, v24

    .line 681
    .local v4, "wVal":J
    add-int/lit8 v22, p2, 0x0

    aget v22, p1, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v6, v22, v24

    .line 682
    .local v6, "x0":J
    mul-long v22, v4, v6

    add-int/lit8 v24, p4, 0x0

    aget v24, p3, v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 683
    add-int/lit8 v22, p6, 0x0

    long-to-int v0, v2

    move/from16 v23, v0

    aput v23, p5, v22

    .line 684
    const/16 v22, 0x20

    ushr-long v2, v2, v22

    .line 685
    add-int/lit8 v22, p2, 0x1

    aget v22, p1, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v8, v22, v24

    .line 686
    .local v8, "x1":J
    mul-long v22, v4, v8

    add-long v22, v22, v6

    add-int/lit8 v24, p4, 0x1

    aget v24, p3, v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 687
    add-int/lit8 v22, p6, 0x1

    long-to-int v0, v2

    move/from16 v23, v0

    aput v23, p5, v22

    .line 688
    const/16 v22, 0x20

    ushr-long v2, v2, v22

    .line 689
    add-int/lit8 v22, p2, 0x2

    aget v22, p1, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v10, v22, v24

    .line 690
    .local v10, "x2":J
    mul-long v22, v4, v10

    add-long v22, v22, v8

    add-int/lit8 v24, p4, 0x2

    aget v24, p3, v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 691
    add-int/lit8 v22, p6, 0x2

    long-to-int v0, v2

    move/from16 v23, v0

    aput v23, p5, v22

    .line 692
    const/16 v22, 0x20

    ushr-long v2, v2, v22

    .line 693
    add-int/lit8 v22, p2, 0x3

    aget v22, p1, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v12, v22, v24

    .line 694
    .local v12, "x3":J
    mul-long v22, v4, v12

    add-long v22, v22, v10

    add-int/lit8 v24, p4, 0x3

    aget v24, p3, v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 695
    add-int/lit8 v22, p6, 0x3

    long-to-int v0, v2

    move/from16 v23, v0

    aput v23, p5, v22

    .line 696
    const/16 v22, 0x20

    ushr-long v2, v2, v22

    .line 697
    add-int/lit8 v22, p2, 0x4

    aget v22, p1, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v14, v22, v24

    .line 698
    .local v14, "x4":J
    mul-long v22, v4, v14

    add-long v22, v22, v12

    add-int/lit8 v24, p4, 0x4

    aget v24, p3, v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 699
    add-int/lit8 v22, p6, 0x4

    long-to-int v0, v2

    move/from16 v23, v0

    aput v23, p5, v22

    .line 700
    const/16 v22, 0x20

    ushr-long v2, v2, v22

    .line 701
    add-int/lit8 v22, p2, 0x5

    aget v22, p1, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v16, v22, v24

    .line 702
    .local v16, "x5":J
    mul-long v22, v4, v16

    add-long v22, v22, v14

    add-int/lit8 v24, p4, 0x5

    aget v24, p3, v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 703
    add-int/lit8 v22, p6, 0x5

    long-to-int v0, v2

    move/from16 v23, v0

    aput v23, p5, v22

    .line 704
    const/16 v22, 0x20

    ushr-long v2, v2, v22

    .line 705
    add-int/lit8 v22, p2, 0x6

    aget v22, p1, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v18, v22, v24

    .line 706
    .local v18, "x6":J
    mul-long v22, v4, v18

    add-long v22, v22, v16

    add-int/lit8 v24, p4, 0x6

    aget v24, p3, v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 707
    add-int/lit8 v22, p6, 0x6

    long-to-int v0, v2

    move/from16 v23, v0

    aput v23, p5, v22

    .line 708
    const/16 v22, 0x20

    ushr-long v2, v2, v22

    .line 709
    add-int/lit8 v22, p2, 0x7

    aget v22, p1, v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v20, v22, v24

    .line 710
    .local v20, "x7":J
    mul-long v22, v4, v20

    add-long v22, v22, v18

    add-int/lit8 v24, p4, 0x7

    aget v24, p3, v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 711
    add-int/lit8 v22, p6, 0x7

    long-to-int v0, v2

    move/from16 v23, v0

    aput v23, p5, v22

    .line 712
    const/16 v22, 0x20

    ushr-long v2, v2, v22

    .line 713
    add-long v2, v2, v20

    .line 714
    return-wide v2
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 17
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    .line 812
    const-wide/16 v2, 0x0

    .local v2, "c":J
    move/from16 v0, p0

    int-to-long v10, v0

    const-wide v12, 0xffffffffL

    and-long v4, v10, v12

    .line 813
    .local v4, "xVal":J
    const-wide v10, 0xffffffffL

    and-long v6, p1, v10

    .line 814
    .local v6, "y00":J
    mul-long v10, v4, v6

    add-int/lit8 v12, p4, 0x0

    aget v12, p3, v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 815
    add-int/lit8 v10, p4, 0x0

    long-to-int v11, v2

    aput v11, p3, v10

    .line 816
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 817
    const/16 v10, 0x20

    ushr-long v8, p1, v10

    .line 818
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

    .line 819
    add-int/lit8 v10, p4, 0x1

    long-to-int v11, v2

    aput v11, p3, v10

    .line 820
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 821
    add-int/lit8 v10, p4, 0x2

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v10, v8

    add-long/2addr v2, v10

    .line 822
    add-int/lit8 v10, p4, 0x2

    long-to-int v11, v2

    aput v11, p3, v10

    .line 823
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 824
    add-int/lit8 v10, p4, 0x3

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 825
    add-int/lit8 v10, p4, 0x3

    long-to-int v11, v2

    aput v11, p3, v10

    .line 826
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 827
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    const/16 v10, 0x8

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
    .line 835
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p0

    const-wide v8, 0xffffffffL

    and-long v2, v6, v8

    .local v2, "xVal":J
    int-to-long v6, p1

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    .line 836
    .local v4, "yVal":J
    mul-long v6, v4, v2

    add-int/lit8 v8, p3, 0x0

    aget v8, p2, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 837
    add-int/lit8 v6, p3, 0x0

    long-to-int v7, v0

    aput v7, p2, v6

    .line 838
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 839
    add-int/lit8 v6, p3, 0x1

    aget v6, p2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 840
    add-int/lit8 v6, p3, 0x1

    long-to-int v7, v0

    aput v7, p2, v6

    .line 841
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 842
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 843
    add-int/lit8 v6, p3, 0x2

    long-to-int v7, v0

    aput v7, p2, v6

    .line 844
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 845
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    const/16 v6, 0x8

    const/4 v7, 0x3

    invoke-static {v6, p2, p3, v7}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v6

    goto :goto_0
.end method

.method public static mulAddTo([II[II[II)I
    .locals 32
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .prologue
    .line 631
    add-int/lit8 v5, p3, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v8, v26, v28

    .line 632
    .local v8, "y_0":J
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v10, v26, v28

    .line 633
    .local v10, "y_1":J
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v12, v26, v28

    .line 634
    .local v12, "y_2":J
    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v14, v26, v28

    .line 635
    .local v14, "y_3":J
    add-int/lit8 v5, p3, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v16, v26, v28

    .line 636
    .local v16, "y_4":J
    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v18, v26, v28

    .line 637
    .local v18, "y_5":J
    add-int/lit8 v5, p3, 0x6

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v20, v26, v28

    .line 638
    .local v20, "y_6":J
    add-int/lit8 v5, p3, 0x7

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v22, v26, v28

    .line 640
    .local v22, "y_7":J
    const-wide/16 v24, 0x0

    .line 641
    .local v24, "zc":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 643
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int v5, p1, v4

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v6, v26, v28

    .line 644
    .local v6, "x_i":J
    mul-long v26, v6, v8

    add-int/lit8 v5, p5, 0x0

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 645
    add-int/lit8 v5, p5, 0x0

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 646
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 647
    mul-long v26, v6, v10

    add-int/lit8 v5, p5, 0x1

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 648
    add-int/lit8 v5, p5, 0x1

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 649
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 650
    mul-long v26, v6, v12

    add-int/lit8 v5, p5, 0x2

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 651
    add-int/lit8 v5, p5, 0x2

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 652
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 653
    mul-long v26, v6, v14

    add-int/lit8 v5, p5, 0x3

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 654
    add-int/lit8 v5, p5, 0x3

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 655
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 656
    mul-long v26, v6, v16

    add-int/lit8 v5, p5, 0x4

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 657
    add-int/lit8 v5, p5, 0x4

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 658
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 659
    mul-long v26, v6, v18

    add-int/lit8 v5, p5, 0x5

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 660
    add-int/lit8 v5, p5, 0x5

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 661
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 662
    mul-long v26, v6, v20

    add-int/lit8 v5, p5, 0x6

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 663
    add-int/lit8 v5, p5, 0x6

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 664
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 665
    mul-long v26, v6, v22

    add-int/lit8 v5, p5, 0x7

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 666
    add-int/lit8 v5, p5, 0x7

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 667
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 668
    add-int/lit8 v5, p5, 0x8

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v26, v26, v24

    add-long v2, v2, v26

    .line 669
    add-int/lit8 v5, p5, 0x8

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p4, v5

    .line 670
    const/16 v5, 0x20

    ushr-long v24, v2, v5

    .line 671
    add-int/lit8 p5, p5, 0x1

    .line 641
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 673
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v24

    long-to-int v5, v0

    return v5
.end method

.method public static mulAddTo([I[I[I)I
    .locals 32
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 585
    const/4 v5, 0x0

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v8, v26, v28

    .line 586
    .local v8, "y_0":J
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v10, v26, v28

    .line 587
    .local v10, "y_1":J
    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v12, v26, v28

    .line 588
    .local v12, "y_2":J
    const/4 v5, 0x3

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v14, v26, v28

    .line 589
    .local v14, "y_3":J
    const/4 v5, 0x4

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v16, v26, v28

    .line 590
    .local v16, "y_4":J
    const/4 v5, 0x5

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v18, v26, v28

    .line 591
    .local v18, "y_5":J
    const/4 v5, 0x6

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v20, v26, v28

    .line 592
    .local v20, "y_6":J
    const/4 v5, 0x7

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v22, v26, v28

    .line 594
    .local v22, "y_7":J
    const-wide/16 v24, 0x0

    .line 595
    .local v24, "zc":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 597
    const-wide/16 v2, 0x0

    .local v2, "c":J
    aget v5, p0, v4

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v6, v26, v28

    .line 598
    .local v6, "x_i":J
    mul-long v26, v6, v8

    add-int/lit8 v5, v4, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 599
    add-int/lit8 v5, v4, 0x0

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 600
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 601
    mul-long v26, v6, v10

    add-int/lit8 v5, v4, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 602
    add-int/lit8 v5, v4, 0x1

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 603
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 604
    mul-long v26, v6, v12

    add-int/lit8 v5, v4, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 605
    add-int/lit8 v5, v4, 0x2

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 606
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 607
    mul-long v26, v6, v14

    add-int/lit8 v5, v4, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 608
    add-int/lit8 v5, v4, 0x3

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 609
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 610
    mul-long v26, v6, v16

    add-int/lit8 v5, v4, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 611
    add-int/lit8 v5, v4, 0x4

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 612
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 613
    mul-long v26, v6, v18

    add-int/lit8 v5, v4, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 614
    add-int/lit8 v5, v4, 0x5

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 615
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 616
    mul-long v26, v6, v20

    add-int/lit8 v5, v4, 0x6

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 617
    add-int/lit8 v5, v4, 0x6

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 618
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 619
    mul-long v26, v6, v22

    add-int/lit8 v5, v4, 0x7

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    add-long v26, v26, v28

    add-long v2, v2, v26

    .line 620
    add-int/lit8 v5, v4, 0x7

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 621
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 622
    add-int/lit8 v5, v4, 0x8

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v26, v26, v24

    add-long v2, v2, v26

    .line 623
    add-int/lit8 v5, v4, 0x8

    long-to-int v0, v2

    move/from16 v26, v0

    aput v26, p2, v5

    .line 624
    const/16 v5, 0x20

    ushr-long v24, v2, v5

    .line 595
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 626
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v24

    long-to-int v5, v0

    return v5
.end method

.method public static mulByWord(I[I)I
    .locals 12
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 719
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v4, p0

    and-long v2, v4, v6

    .line 720
    .local v2, "xVal":J
    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 721
    long-to-int v4, v0

    aput v4, p1, v9

    .line 722
    ushr-long/2addr v0, v8

    .line 723
    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 724
    long-to-int v4, v0

    aput v4, p1, v10

    .line 725
    ushr-long/2addr v0, v8

    .line 726
    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 727
    long-to-int v4, v0

    aput v4, p1, v11

    .line 728
    ushr-long/2addr v0, v8

    .line 729
    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 730
    const/4 v4, 0x3

    long-to-int v5, v0

    aput v5, p1, v4

    .line 731
    ushr-long/2addr v0, v8

    .line 732
    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 733
    const/4 v4, 0x4

    long-to-int v5, v0

    aput v5, p1, v4

    .line 734
    ushr-long/2addr v0, v8

    .line 735
    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 736
    const/4 v4, 0x5

    long-to-int v5, v0

    aput v5, p1, v4

    .line 737
    ushr-long/2addr v0, v8

    .line 738
    const/4 v4, 0x6

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 739
    const/4 v4, 0x6

    long-to-int v5, v0

    aput v5, p1, v4

    .line 740
    ushr-long/2addr v0, v8

    .line 741
    const/4 v4, 0x7

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 742
    const/4 v4, 0x7

    long-to-int v5, v0

    aput v5, p1, v4

    .line 743
    ushr-long/2addr v0, v8

    .line 744
    long-to-int v4, v0

    return v4
.end method

.method public static mulByWordAddTo(I[I[I)I
    .locals 10
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 749
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v4, p0

    const-wide v6, 0xffffffffL

    and-long v2, v4, v6

    .line 750
    .local v2, "xVal":J
    const/4 v4, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    const/4 v6, 0x0

    aget v6, p1, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 751
    const/4 v4, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 752
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 753
    const/4 v4, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    const/4 v6, 0x1

    aget v6, p1, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 754
    const/4 v4, 0x1

    long-to-int v5, v0

    aput v5, p2, v4

    .line 755
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 756
    const/4 v4, 0x2

    aget v4, p2, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    const/4 v6, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 757
    const/4 v4, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    .line 758
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 759
    const/4 v4, 0x3

    aget v4, p2, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    const/4 v6, 0x3

    aget v6, p1, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 760
    const/4 v4, 0x3

    long-to-int v5, v0

    aput v5, p2, v4

    .line 761
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 762
    const/4 v4, 0x4

    aget v4, p2, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    const/4 v6, 0x4

    aget v6, p1, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 763
    const/4 v4, 0x4

    long-to-int v5, v0

    aput v5, p2, v4

    .line 764
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 765
    const/4 v4, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    const/4 v6, 0x5

    aget v6, p1, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 766
    const/4 v4, 0x5

    long-to-int v5, v0

    aput v5, p2, v4

    .line 767
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 768
    const/4 v4, 0x6

    aget v4, p2, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    const/4 v6, 0x6

    aget v6, p1, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 769
    const/4 v4, 0x6

    long-to-int v5, v0

    aput v5, p2, v4

    .line 770
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 771
    const/4 v4, 0x7

    aget v4, p2, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    mul-long/2addr v4, v2

    const/4 v6, 0x7

    aget v6, p1, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 772
    const/4 v4, 0x7

    long-to-int v5, v0

    aput v5, p2, v4

    .line 773
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 774
    long-to-int v4, v0

    return v4
.end method

.method public static mulWord(I[I[II)I
    .locals 10
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .prologue
    const-wide v8, 0xffffffffL

    .line 866
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p0

    and-long v4, v6, v8

    .line 867
    .local v4, "xVal":J
    const/4 v2, 0x0

    .line 870
    .local v2, "i":I
    :cond_0
    aget v3, p1, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 871
    add-int v3, p3, v2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 872
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 874
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 875
    long-to-int v3, v0

    return v3
.end method

.method public static mulWordAddTo(I[II[II)I
    .locals 11
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "yOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    const/16 v10, 0x20

    const-wide v8, 0xffffffffL

    .line 779
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v4, p0

    and-long v2, v4, v8

    .line 780
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

    .line 781
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 782
    ushr-long/2addr v0, v10

    .line 783
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

    .line 784
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v0

    aput v5, p3, v4

    .line 785
    ushr-long/2addr v0, v10

    .line 786
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

    .line 787
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 788
    ushr-long/2addr v0, v10

    .line 789
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

    .line 790
    add-int/lit8 v4, p4, 0x3

    long-to-int v5, v0

    aput v5, p3, v4

    .line 791
    ushr-long/2addr v0, v10

    .line 792
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

    .line 793
    add-int/lit8 v4, p4, 0x4

    long-to-int v5, v0

    aput v5, p3, v4

    .line 794
    ushr-long/2addr v0, v10

    .line 795
    add-int/lit8 v4, p2, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x5

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 796
    add-int/lit8 v4, p4, 0x5

    long-to-int v5, v0

    aput v5, p3, v4

    .line 797
    ushr-long/2addr v0, v10

    .line 798
    add-int/lit8 v4, p2, 0x6

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x6

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 799
    add-int/lit8 v4, p4, 0x6

    long-to-int v5, v0

    aput v5, p3, v4

    .line 800
    ushr-long/2addr v0, v10

    .line 801
    add-int/lit8 v4, p2, 0x7

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x7

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 802
    add-int/lit8 v4, p4, 0x7

    long-to-int v5, v0

    aput v5, p3, v4

    .line 803
    ushr-long/2addr v0, v10

    .line 804
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

    .line 851
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v4, p0

    and-long v2, v4, v8

    .line 852
    .local v2, "xVal":J
    and-long v4, p1, v8

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x0

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 853
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 854
    ushr-long/2addr v0, v10

    .line 855
    ushr-long v4, p1, v10

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x1

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 856
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v0

    aput v5, p3, v4

    .line 857
    ushr-long/2addr v0, v10

    .line 858
    add-int/lit8 v4, p4, 0x2

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    add-long/2addr v0, v4

    .line 859
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 860
    ushr-long/2addr v0, v10

    .line 861
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const/16 v4, 0x8

    const/4 v5, 0x3

    invoke-static {v4, p3, p4, v5}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    goto :goto_0
.end method

.method public static square([II[II)V
    .locals 60
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I

    .prologue
    .line 1044
    add-int/lit8 v9, p1, 0x0

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v12, v56, v58

    .line 1047
    .local v12, "x_0":J
    const/4 v2, 0x0

    .line 1049
    .local v2, "c":I
    const/4 v3, 0x7

    .local v3, "i":I
    const/16 v5, 0x10

    .line 1052
    .local v5, "j":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    add-int v9, p1, v3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v10, v56, v58

    .line 1053
    .local v10, "xVal":J
    mul-long v6, v10, v10

    .line 1054
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    add-int v9, p3, v5

    shl-int/lit8 v56, v2, 0x1f

    const/16 v57, 0x21

    ushr-long v58, v6, v57

    move-wide/from16 v0, v58

    long-to-int v0, v0

    move/from16 v57, v0

    or-int v56, v56, v57

    aput v56, p2, v9

    .line 1055
    add-int/lit8 v5, v5, -0x1

    add-int v9, p3, v5

    const/16 v56, 0x1

    ushr-long v56, v6, v56

    move-wide/from16 v0, v56

    long-to-int v0, v0

    move/from16 v56, v0

    aput v56, p2, v9

    .line 1056
    long-to-int v2, v6

    .line 1058
    if-gtz v4, :cond_0

    .line 1061
    mul-long v6, v12, v12

    .line 1062
    shl-int/lit8 v9, v2, 0x1f

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x21

    ushr-long v58, v6, v9

    or-long v28, v56, v58

    .line 1063
    .local v28, "zz_1":J
    add-int/lit8 v9, p3, 0x0

    long-to-int v0, v6

    move/from16 v56, v0

    aput v56, p2, v9

    .line 1064
    const/16 v9, 0x20

    ushr-long v56, v6, v9

    move-wide/from16 v0, v56

    long-to-int v9, v0

    and-int/lit8 v2, v9, 0x1

    .line 1068
    add-int/lit8 v9, p1, 0x1

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v14, v56, v58

    .line 1069
    .local v14, "x_1":J
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v40, v56, v58

    .line 1072
    .local v40, "zz_2":J
    mul-long v56, v14, v12

    add-long v28, v28, v56

    .line 1073
    move-wide/from16 v0, v28

    long-to-int v8, v0

    .line 1074
    .local v8, "w":I
    add-int/lit8 v9, p3, 0x1

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1075
    ushr-int/lit8 v2, v8, 0x1f

    .line 1076
    const/16 v9, 0x20

    ushr-long v56, v28, v9

    add-long v40, v40, v56

    .line 1079
    add-int/lit8 v9, p1, 0x2

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v16, v56, v58

    .line 1080
    .local v16, "x_2":J
    add-int/lit8 v9, p3, 0x3

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v42, v56, v58

    .line 1081
    .local v42, "zz_3":J
    add-int/lit8 v9, p3, 0x4

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v44, v56, v58

    .line 1083
    .local v44, "zz_4":J
    mul-long v56, v16, v12

    add-long v40, v40, v56

    .line 1084
    move-wide/from16 v0, v40

    long-to-int v8, v0

    .line 1085
    add-int/lit8 v9, p3, 0x2

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1086
    ushr-int/lit8 v2, v8, 0x1f

    .line 1087
    const/16 v9, 0x20

    ushr-long v56, v40, v9

    mul-long v58, v16, v14

    add-long v56, v56, v58

    add-long v42, v42, v56

    .line 1088
    const/16 v9, 0x20

    ushr-long v56, v42, v9

    add-long v44, v44, v56

    .line 1089
    const-wide v56, 0xffffffffL

    and-long v42, v42, v56

    .line 1092
    add-int/lit8 v9, p1, 0x3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v18, v56, v58

    .line 1093
    .local v18, "x_3":J
    add-int/lit8 v9, p3, 0x5

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v44, v9

    add-long v46, v56, v58

    .local v46, "zz_5":J
    const-wide v56, 0xffffffffL

    and-long v44, v44, v56

    .line 1094
    add-int/lit8 v9, p3, 0x6

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v46, v9

    add-long v48, v56, v58

    .local v48, "zz_6":J
    const-wide v56, 0xffffffffL

    and-long v46, v46, v56

    .line 1096
    mul-long v56, v18, v12

    add-long v42, v42, v56

    .line 1097
    move-wide/from16 v0, v42

    long-to-int v8, v0

    .line 1098
    add-int/lit8 v9, p3, 0x3

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1099
    ushr-int/lit8 v2, v8, 0x1f

    .line 1100
    const/16 v9, 0x20

    ushr-long v56, v42, v9

    mul-long v58, v18, v14

    add-long v56, v56, v58

    add-long v44, v44, v56

    .line 1101
    const/16 v9, 0x20

    ushr-long v56, v44, v9

    mul-long v58, v18, v16

    add-long v56, v56, v58

    add-long v46, v46, v56

    .line 1102
    const-wide v56, 0xffffffffL

    and-long v44, v44, v56

    .line 1103
    const/16 v9, 0x20

    ushr-long v56, v46, v9

    add-long v48, v48, v56

    .line 1104
    const-wide v56, 0xffffffffL

    and-long v46, v46, v56

    .line 1107
    add-int/lit8 v9, p1, 0x4

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v20, v56, v58

    .line 1108
    .local v20, "x_4":J
    add-int/lit8 v9, p3, 0x7

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v48, v9

    add-long v50, v56, v58

    .local v50, "zz_7":J
    const-wide v56, 0xffffffffL

    and-long v48, v48, v56

    .line 1109
    add-int/lit8 v9, p3, 0x8

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v50, v9

    add-long v52, v56, v58

    .local v52, "zz_8":J
    const-wide v56, 0xffffffffL

    and-long v50, v50, v56

    .line 1111
    mul-long v56, v20, v12

    add-long v44, v44, v56

    .line 1112
    move-wide/from16 v0, v44

    long-to-int v8, v0

    .line 1113
    add-int/lit8 v9, p3, 0x4

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1114
    ushr-int/lit8 v2, v8, 0x1f

    .line 1115
    const/16 v9, 0x20

    ushr-long v56, v44, v9

    mul-long v58, v20, v14

    add-long v56, v56, v58

    add-long v46, v46, v56

    .line 1116
    const/16 v9, 0x20

    ushr-long v56, v46, v9

    mul-long v58, v20, v16

    add-long v56, v56, v58

    add-long v48, v48, v56

    .line 1117
    const-wide v56, 0xffffffffL

    and-long v46, v46, v56

    .line 1118
    const/16 v9, 0x20

    ushr-long v56, v48, v9

    mul-long v58, v20, v18

    add-long v56, v56, v58

    add-long v50, v50, v56

    .line 1119
    const-wide v56, 0xffffffffL

    and-long v48, v48, v56

    .line 1120
    const/16 v9, 0x20

    ushr-long v56, v50, v9

    add-long v52, v52, v56

    .line 1121
    const-wide v56, 0xffffffffL

    and-long v50, v50, v56

    .line 1124
    add-int/lit8 v9, p1, 0x5

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v22, v56, v58

    .line 1125
    .local v22, "x_5":J
    add-int/lit8 v9, p3, 0x9

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v52, v9

    add-long v54, v56, v58

    .local v54, "zz_9":J
    const-wide v56, 0xffffffffL

    and-long v52, v52, v56

    .line 1126
    add-int/lit8 v9, p3, 0xa

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v54, v9

    add-long v30, v56, v58

    .local v30, "zz_10":J
    const-wide v56, 0xffffffffL

    and-long v54, v54, v56

    .line 1128
    mul-long v56, v22, v12

    add-long v46, v46, v56

    .line 1129
    move-wide/from16 v0, v46

    long-to-int v8, v0

    .line 1130
    add-int/lit8 v9, p3, 0x5

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1131
    ushr-int/lit8 v2, v8, 0x1f

    .line 1132
    const/16 v9, 0x20

    ushr-long v56, v46, v9

    mul-long v58, v22, v14

    add-long v56, v56, v58

    add-long v48, v48, v56

    .line 1133
    const/16 v9, 0x20

    ushr-long v56, v48, v9

    mul-long v58, v22, v16

    add-long v56, v56, v58

    add-long v50, v50, v56

    .line 1134
    const-wide v56, 0xffffffffL

    and-long v48, v48, v56

    .line 1135
    const/16 v9, 0x20

    ushr-long v56, v50, v9

    mul-long v58, v22, v18

    add-long v56, v56, v58

    add-long v52, v52, v56

    .line 1136
    const-wide v56, 0xffffffffL

    and-long v50, v50, v56

    .line 1137
    const/16 v9, 0x20

    ushr-long v56, v52, v9

    mul-long v58, v22, v20

    add-long v56, v56, v58

    add-long v54, v54, v56

    .line 1138
    const-wide v56, 0xffffffffL

    and-long v52, v52, v56

    .line 1139
    const/16 v9, 0x20

    ushr-long v56, v54, v9

    add-long v30, v30, v56

    .line 1140
    const-wide v56, 0xffffffffL

    and-long v54, v54, v56

    .line 1143
    add-int/lit8 v9, p1, 0x6

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v24, v56, v58

    .line 1144
    .local v24, "x_6":J
    add-int/lit8 v9, p3, 0xb

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v30, v9

    add-long v32, v56, v58

    .local v32, "zz_11":J
    const-wide v56, 0xffffffffL

    and-long v30, v30, v56

    .line 1145
    add-int/lit8 v9, p3, 0xc

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v32, v9

    add-long v34, v56, v58

    .local v34, "zz_12":J
    const-wide v56, 0xffffffffL

    and-long v32, v32, v56

    .line 1147
    mul-long v56, v24, v12

    add-long v48, v48, v56

    .line 1148
    move-wide/from16 v0, v48

    long-to-int v8, v0

    .line 1149
    add-int/lit8 v9, p3, 0x6

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1150
    ushr-int/lit8 v2, v8, 0x1f

    .line 1151
    const/16 v9, 0x20

    ushr-long v56, v48, v9

    mul-long v58, v24, v14

    add-long v56, v56, v58

    add-long v50, v50, v56

    .line 1152
    const/16 v9, 0x20

    ushr-long v56, v50, v9

    mul-long v58, v24, v16

    add-long v56, v56, v58

    add-long v52, v52, v56

    .line 1153
    const-wide v56, 0xffffffffL

    and-long v50, v50, v56

    .line 1154
    const/16 v9, 0x20

    ushr-long v56, v52, v9

    mul-long v58, v24, v18

    add-long v56, v56, v58

    add-long v54, v54, v56

    .line 1155
    const-wide v56, 0xffffffffL

    and-long v52, v52, v56

    .line 1156
    const/16 v9, 0x20

    ushr-long v56, v54, v9

    mul-long v58, v24, v20

    add-long v56, v56, v58

    add-long v30, v30, v56

    .line 1157
    const-wide v56, 0xffffffffL

    and-long v54, v54, v56

    .line 1158
    const/16 v9, 0x20

    ushr-long v56, v30, v9

    mul-long v58, v24, v22

    add-long v56, v56, v58

    add-long v32, v32, v56

    .line 1159
    const-wide v56, 0xffffffffL

    and-long v30, v30, v56

    .line 1160
    const/16 v9, 0x20

    ushr-long v56, v32, v9

    add-long v34, v34, v56

    .line 1161
    const-wide v56, 0xffffffffL

    and-long v32, v32, v56

    .line 1164
    add-int/lit8 v9, p1, 0x7

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v26, v56, v58

    .line 1165
    .local v26, "x_7":J
    add-int/lit8 v9, p3, 0xd

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v34, v9

    add-long v36, v56, v58

    .local v36, "zz_13":J
    const-wide v56, 0xffffffffL

    and-long v34, v34, v56

    .line 1166
    add-int/lit8 v9, p3, 0xe

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v36, v9

    add-long v38, v56, v58

    .local v38, "zz_14":J
    const-wide v56, 0xffffffffL

    and-long v36, v36, v56

    .line 1168
    mul-long v56, v26, v12

    add-long v50, v50, v56

    .line 1169
    move-wide/from16 v0, v50

    long-to-int v8, v0

    .line 1170
    add-int/lit8 v9, p3, 0x7

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1171
    ushr-int/lit8 v2, v8, 0x1f

    .line 1172
    const/16 v9, 0x20

    ushr-long v56, v50, v9

    mul-long v58, v26, v14

    add-long v56, v56, v58

    add-long v52, v52, v56

    .line 1173
    const/16 v9, 0x20

    ushr-long v56, v52, v9

    mul-long v58, v26, v16

    add-long v56, v56, v58

    add-long v54, v54, v56

    .line 1174
    const/16 v9, 0x20

    ushr-long v56, v54, v9

    mul-long v58, v26, v18

    add-long v56, v56, v58

    add-long v30, v30, v56

    .line 1175
    const/16 v9, 0x20

    ushr-long v56, v30, v9

    mul-long v58, v26, v20

    add-long v56, v56, v58

    add-long v32, v32, v56

    .line 1176
    const/16 v9, 0x20

    ushr-long v56, v32, v9

    mul-long v58, v26, v22

    add-long v56, v56, v58

    add-long v34, v34, v56

    .line 1177
    const/16 v9, 0x20

    ushr-long v56, v34, v9

    mul-long v58, v26, v24

    add-long v56, v56, v58

    add-long v36, v36, v56

    .line 1178
    const/16 v9, 0x20

    ushr-long v56, v36, v9

    add-long v38, v38, v56

    .line 1181
    move-wide/from16 v0, v52

    long-to-int v8, v0

    .line 1182
    add-int/lit8 v9, p3, 0x8

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1183
    ushr-int/lit8 v2, v8, 0x1f

    .line 1184
    move-wide/from16 v0, v54

    long-to-int v8, v0

    .line 1185
    add-int/lit8 v9, p3, 0x9

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1186
    ushr-int/lit8 v2, v8, 0x1f

    .line 1187
    move-wide/from16 v0, v30

    long-to-int v8, v0

    .line 1188
    add-int/lit8 v9, p3, 0xa

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1189
    ushr-int/lit8 v2, v8, 0x1f

    .line 1190
    move-wide/from16 v0, v32

    long-to-int v8, v0

    .line 1191
    add-int/lit8 v9, p3, 0xb

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1192
    ushr-int/lit8 v2, v8, 0x1f

    .line 1193
    move-wide/from16 v0, v34

    long-to-int v8, v0

    .line 1194
    add-int/lit8 v9, p3, 0xc

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1195
    ushr-int/lit8 v2, v8, 0x1f

    .line 1196
    move-wide/from16 v0, v36

    long-to-int v8, v0

    .line 1197
    add-int/lit8 v9, p3, 0xd

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1198
    ushr-int/lit8 v2, v8, 0x1f

    .line 1199
    move-wide/from16 v0, v38

    long-to-int v8, v0

    .line 1200
    add-int/lit8 v9, p3, 0xe

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1201
    ushr-int/lit8 v2, v8, 0x1f

    .line 1202
    add-int/lit8 v9, p3, 0xf

    aget v9, p2, v9

    const/16 v56, 0x20

    ushr-long v56, v38, v56

    move-wide/from16 v0, v56

    long-to-int v0, v0

    move/from16 v56, v0

    add-int v8, v9, v56

    .line 1203
    add-int/lit8 v9, p3, 0xf

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p2, v9

    .line 1204
    return-void

    .end local v8    # "w":I
    .end local v14    # "x_1":J
    .end local v16    # "x_2":J
    .end local v18    # "x_3":J
    .end local v20    # "x_4":J
    .end local v22    # "x_5":J
    .end local v24    # "x_6":J
    .end local v26    # "x_7":J
    .end local v28    # "zz_1":J
    .end local v30    # "zz_10":J
    .end local v32    # "zz_11":J
    .end local v34    # "zz_12":J
    .end local v36    # "zz_13":J
    .end local v38    # "zz_14":J
    .end local v40    # "zz_2":J
    .end local v42    # "zz_3":J
    .end local v44    # "zz_4":J
    .end local v46    # "zz_5":J
    .end local v48    # "zz_6":J
    .end local v50    # "zz_7":J
    .end local v52    # "zz_8":J
    .end local v54    # "zz_9":J
    :cond_0
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0
.end method

.method public static square([I[I)V
    .locals 60
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .prologue
    .line 880
    const/4 v9, 0x0

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v12, v56, v58

    .line 883
    .local v12, "x_0":J
    const/4 v2, 0x0

    .line 885
    .local v2, "c":I
    const/4 v3, 0x7

    .local v3, "i":I
    const/16 v5, 0x10

    .line 888
    .local v5, "j":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget v9, p0, v3

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v10, v56, v58

    .line 889
    .local v10, "xVal":J
    mul-long v6, v10, v10

    .line 890
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    shl-int/lit8 v9, v2, 0x1f

    const/16 v56, 0x21

    ushr-long v56, v6, v56

    move-wide/from16 v0, v56

    long-to-int v0, v0

    move/from16 v56, v0

    or-int v9, v9, v56

    aput v9, p1, v5

    .line 891
    add-int/lit8 v5, v5, -0x1

    const/4 v9, 0x1

    ushr-long v56, v6, v9

    move-wide/from16 v0, v56

    long-to-int v9, v0

    aput v9, p1, v5

    .line 892
    long-to-int v2, v6

    .line 894
    if-gtz v4, :cond_0

    .line 897
    mul-long v6, v12, v12

    .line 898
    shl-int/lit8 v9, v2, 0x1f

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x21

    ushr-long v58, v6, v9

    or-long v28, v56, v58

    .line 899
    .local v28, "zz_1":J
    const/4 v9, 0x0

    long-to-int v0, v6

    move/from16 v56, v0

    aput v56, p1, v9

    .line 900
    const/16 v9, 0x20

    ushr-long v56, v6, v9

    move-wide/from16 v0, v56

    long-to-int v9, v0

    and-int/lit8 v2, v9, 0x1

    .line 904
    const/4 v9, 0x1

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v14, v56, v58

    .line 905
    .local v14, "x_1":J
    const/4 v9, 0x2

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v40, v56, v58

    .line 908
    .local v40, "zz_2":J
    mul-long v56, v14, v12

    add-long v28, v28, v56

    .line 909
    move-wide/from16 v0, v28

    long-to-int v8, v0

    .line 910
    .local v8, "w":I
    const/4 v9, 0x1

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 911
    ushr-int/lit8 v2, v8, 0x1f

    .line 912
    const/16 v9, 0x20

    ushr-long v56, v28, v9

    add-long v40, v40, v56

    .line 915
    const/4 v9, 0x2

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v16, v56, v58

    .line 916
    .local v16, "x_2":J
    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v42, v56, v58

    .line 917
    .local v42, "zz_3":J
    const/4 v9, 0x4

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v44, v56, v58

    .line 919
    .local v44, "zz_4":J
    mul-long v56, v16, v12

    add-long v40, v40, v56

    .line 920
    move-wide/from16 v0, v40

    long-to-int v8, v0

    .line 921
    const/4 v9, 0x2

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 922
    ushr-int/lit8 v2, v8, 0x1f

    .line 923
    const/16 v9, 0x20

    ushr-long v56, v40, v9

    mul-long v58, v16, v14

    add-long v56, v56, v58

    add-long v42, v42, v56

    .line 924
    const/16 v9, 0x20

    ushr-long v56, v42, v9

    add-long v44, v44, v56

    .line 925
    const-wide v56, 0xffffffffL

    and-long v42, v42, v56

    .line 928
    const/4 v9, 0x3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v18, v56, v58

    .line 929
    .local v18, "x_3":J
    const/4 v9, 0x5

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v44, v9

    add-long v46, v56, v58

    .local v46, "zz_5":J
    const-wide v56, 0xffffffffL

    and-long v44, v44, v56

    .line 930
    const/4 v9, 0x6

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v46, v9

    add-long v48, v56, v58

    .local v48, "zz_6":J
    const-wide v56, 0xffffffffL

    and-long v46, v46, v56

    .line 932
    mul-long v56, v18, v12

    add-long v42, v42, v56

    .line 933
    move-wide/from16 v0, v42

    long-to-int v8, v0

    .line 934
    const/4 v9, 0x3

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 935
    ushr-int/lit8 v2, v8, 0x1f

    .line 936
    const/16 v9, 0x20

    ushr-long v56, v42, v9

    mul-long v58, v18, v14

    add-long v56, v56, v58

    add-long v44, v44, v56

    .line 937
    const/16 v9, 0x20

    ushr-long v56, v44, v9

    mul-long v58, v18, v16

    add-long v56, v56, v58

    add-long v46, v46, v56

    .line 938
    const-wide v56, 0xffffffffL

    and-long v44, v44, v56

    .line 939
    const/16 v9, 0x20

    ushr-long v56, v46, v9

    add-long v48, v48, v56

    .line 940
    const-wide v56, 0xffffffffL

    and-long v46, v46, v56

    .line 943
    const/4 v9, 0x4

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v20, v56, v58

    .line 944
    .local v20, "x_4":J
    const/4 v9, 0x7

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v48, v9

    add-long v50, v56, v58

    .local v50, "zz_7":J
    const-wide v56, 0xffffffffL

    and-long v48, v48, v56

    .line 945
    const/16 v9, 0x8

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v50, v9

    add-long v52, v56, v58

    .local v52, "zz_8":J
    const-wide v56, 0xffffffffL

    and-long v50, v50, v56

    .line 947
    mul-long v56, v20, v12

    add-long v44, v44, v56

    .line 948
    move-wide/from16 v0, v44

    long-to-int v8, v0

    .line 949
    const/4 v9, 0x4

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 950
    ushr-int/lit8 v2, v8, 0x1f

    .line 951
    const/16 v9, 0x20

    ushr-long v56, v44, v9

    mul-long v58, v20, v14

    add-long v56, v56, v58

    add-long v46, v46, v56

    .line 952
    const/16 v9, 0x20

    ushr-long v56, v46, v9

    mul-long v58, v20, v16

    add-long v56, v56, v58

    add-long v48, v48, v56

    .line 953
    const-wide v56, 0xffffffffL

    and-long v46, v46, v56

    .line 954
    const/16 v9, 0x20

    ushr-long v56, v48, v9

    mul-long v58, v20, v18

    add-long v56, v56, v58

    add-long v50, v50, v56

    .line 955
    const-wide v56, 0xffffffffL

    and-long v48, v48, v56

    .line 956
    const/16 v9, 0x20

    ushr-long v56, v50, v9

    add-long v52, v52, v56

    .line 957
    const-wide v56, 0xffffffffL

    and-long v50, v50, v56

    .line 960
    const/4 v9, 0x5

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v22, v56, v58

    .line 961
    .local v22, "x_5":J
    const/16 v9, 0x9

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v52, v9

    add-long v54, v56, v58

    .local v54, "zz_9":J
    const-wide v56, 0xffffffffL

    and-long v52, v52, v56

    .line 962
    const/16 v9, 0xa

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v54, v9

    add-long v30, v56, v58

    .local v30, "zz_10":J
    const-wide v56, 0xffffffffL

    and-long v54, v54, v56

    .line 964
    mul-long v56, v22, v12

    add-long v46, v46, v56

    .line 965
    move-wide/from16 v0, v46

    long-to-int v8, v0

    .line 966
    const/4 v9, 0x5

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 967
    ushr-int/lit8 v2, v8, 0x1f

    .line 968
    const/16 v9, 0x20

    ushr-long v56, v46, v9

    mul-long v58, v22, v14

    add-long v56, v56, v58

    add-long v48, v48, v56

    .line 969
    const/16 v9, 0x20

    ushr-long v56, v48, v9

    mul-long v58, v22, v16

    add-long v56, v56, v58

    add-long v50, v50, v56

    .line 970
    const-wide v56, 0xffffffffL

    and-long v48, v48, v56

    .line 971
    const/16 v9, 0x20

    ushr-long v56, v50, v9

    mul-long v58, v22, v18

    add-long v56, v56, v58

    add-long v52, v52, v56

    .line 972
    const-wide v56, 0xffffffffL

    and-long v50, v50, v56

    .line 973
    const/16 v9, 0x20

    ushr-long v56, v52, v9

    mul-long v58, v22, v20

    add-long v56, v56, v58

    add-long v54, v54, v56

    .line 974
    const-wide v56, 0xffffffffL

    and-long v52, v52, v56

    .line 975
    const/16 v9, 0x20

    ushr-long v56, v54, v9

    add-long v30, v30, v56

    .line 976
    const-wide v56, 0xffffffffL

    and-long v54, v54, v56

    .line 979
    const/4 v9, 0x6

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v24, v56, v58

    .line 980
    .local v24, "x_6":J
    const/16 v9, 0xb

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v30, v9

    add-long v32, v56, v58

    .local v32, "zz_11":J
    const-wide v56, 0xffffffffL

    and-long v30, v30, v56

    .line 981
    const/16 v9, 0xc

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v32, v9

    add-long v34, v56, v58

    .local v34, "zz_12":J
    const-wide v56, 0xffffffffL

    and-long v32, v32, v56

    .line 983
    mul-long v56, v24, v12

    add-long v48, v48, v56

    .line 984
    move-wide/from16 v0, v48

    long-to-int v8, v0

    .line 985
    const/4 v9, 0x6

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 986
    ushr-int/lit8 v2, v8, 0x1f

    .line 987
    const/16 v9, 0x20

    ushr-long v56, v48, v9

    mul-long v58, v24, v14

    add-long v56, v56, v58

    add-long v50, v50, v56

    .line 988
    const/16 v9, 0x20

    ushr-long v56, v50, v9

    mul-long v58, v24, v16

    add-long v56, v56, v58

    add-long v52, v52, v56

    .line 989
    const-wide v56, 0xffffffffL

    and-long v50, v50, v56

    .line 990
    const/16 v9, 0x20

    ushr-long v56, v52, v9

    mul-long v58, v24, v18

    add-long v56, v56, v58

    add-long v54, v54, v56

    .line 991
    const-wide v56, 0xffffffffL

    and-long v52, v52, v56

    .line 992
    const/16 v9, 0x20

    ushr-long v56, v54, v9

    mul-long v58, v24, v20

    add-long v56, v56, v58

    add-long v30, v30, v56

    .line 993
    const-wide v56, 0xffffffffL

    and-long v54, v54, v56

    .line 994
    const/16 v9, 0x20

    ushr-long v56, v30, v9

    mul-long v58, v24, v22

    add-long v56, v56, v58

    add-long v32, v32, v56

    .line 995
    const-wide v56, 0xffffffffL

    and-long v30, v30, v56

    .line 996
    const/16 v9, 0x20

    ushr-long v56, v32, v9

    add-long v34, v34, v56

    .line 997
    const-wide v56, 0xffffffffL

    and-long v32, v32, v56

    .line 1000
    const/4 v9, 0x7

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v26, v56, v58

    .line 1001
    .local v26, "x_7":J
    const/16 v9, 0xd

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v34, v9

    add-long v36, v56, v58

    .local v36, "zz_13":J
    const-wide v56, 0xffffffffL

    and-long v34, v34, v56

    .line 1002
    const/16 v9, 0xe

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v9, 0x20

    ushr-long v58, v36, v9

    add-long v38, v56, v58

    .local v38, "zz_14":J
    const-wide v56, 0xffffffffL

    and-long v36, v36, v56

    .line 1004
    mul-long v56, v26, v12

    add-long v50, v50, v56

    .line 1005
    move-wide/from16 v0, v50

    long-to-int v8, v0

    .line 1006
    const/4 v9, 0x7

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 1007
    ushr-int/lit8 v2, v8, 0x1f

    .line 1008
    const/16 v9, 0x20

    ushr-long v56, v50, v9

    mul-long v58, v26, v14

    add-long v56, v56, v58

    add-long v52, v52, v56

    .line 1009
    const/16 v9, 0x20

    ushr-long v56, v52, v9

    mul-long v58, v26, v16

    add-long v56, v56, v58

    add-long v54, v54, v56

    .line 1010
    const/16 v9, 0x20

    ushr-long v56, v54, v9

    mul-long v58, v26, v18

    add-long v56, v56, v58

    add-long v30, v30, v56

    .line 1011
    const/16 v9, 0x20

    ushr-long v56, v30, v9

    mul-long v58, v26, v20

    add-long v56, v56, v58

    add-long v32, v32, v56

    .line 1012
    const/16 v9, 0x20

    ushr-long v56, v32, v9

    mul-long v58, v26, v22

    add-long v56, v56, v58

    add-long v34, v34, v56

    .line 1013
    const/16 v9, 0x20

    ushr-long v56, v34, v9

    mul-long v58, v26, v24

    add-long v56, v56, v58

    add-long v36, v36, v56

    .line 1014
    const/16 v9, 0x20

    ushr-long v56, v36, v9

    add-long v38, v38, v56

    .line 1017
    move-wide/from16 v0, v52

    long-to-int v8, v0

    .line 1018
    const/16 v9, 0x8

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 1019
    ushr-int/lit8 v2, v8, 0x1f

    .line 1020
    move-wide/from16 v0, v54

    long-to-int v8, v0

    .line 1021
    const/16 v9, 0x9

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 1022
    ushr-int/lit8 v2, v8, 0x1f

    .line 1023
    move-wide/from16 v0, v30

    long-to-int v8, v0

    .line 1024
    const/16 v9, 0xa

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 1025
    ushr-int/lit8 v2, v8, 0x1f

    .line 1026
    move-wide/from16 v0, v32

    long-to-int v8, v0

    .line 1027
    const/16 v9, 0xb

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 1028
    ushr-int/lit8 v2, v8, 0x1f

    .line 1029
    move-wide/from16 v0, v34

    long-to-int v8, v0

    .line 1030
    const/16 v9, 0xc

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 1031
    ushr-int/lit8 v2, v8, 0x1f

    .line 1032
    move-wide/from16 v0, v36

    long-to-int v8, v0

    .line 1033
    const/16 v9, 0xd

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 1034
    ushr-int/lit8 v2, v8, 0x1f

    .line 1035
    move-wide/from16 v0, v38

    long-to-int v8, v0

    .line 1036
    const/16 v9, 0xe

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 1037
    ushr-int/lit8 v2, v8, 0x1f

    .line 1038
    const/16 v9, 0xf

    aget v9, p1, v9

    const/16 v56, 0x20

    ushr-long v56, v38, v56

    move-wide/from16 v0, v56

    long-to-int v0, v0

    move/from16 v56, v0

    add-int v8, v9, v56

    .line 1039
    const/16 v9, 0xf

    shl-int/lit8 v56, v8, 0x1

    or-int v56, v56, v2

    aput v56, p1, v9

    .line 1040
    return-void

    .end local v8    # "w":I
    .end local v14    # "x_1":J
    .end local v16    # "x_2":J
    .end local v18    # "x_3":J
    .end local v20    # "x_4":J
    .end local v22    # "x_5":J
    .end local v24    # "x_6":J
    .end local v26    # "x_7":J
    .end local v28    # "zz_1":J
    .end local v30    # "zz_10":J
    .end local v32    # "zz_11":J
    .end local v34    # "zz_12":J
    .end local v36    # "zz_13":J
    .end local v38    # "zz_14":J
    .end local v40    # "zz_2":J
    .end local v42    # "zz_3":J
    .end local v44    # "zz_4":J
    .end local v46    # "zz_5":J
    .end local v48    # "zz_6":J
    .end local v50    # "zz_7":J
    .end local v52    # "zz_8":J
    .end local v54    # "zz_9":J
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

    .line 1238
    const-wide/16 v0, 0x0

    .line 1239
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

    .line 1240
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 1241
    shr-long/2addr v0, v8

    .line 1242
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

    .line 1243
    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    .line 1244
    shr-long/2addr v0, v8

    .line 1245
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

    .line 1246
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 1247
    shr-long/2addr v0, v8

    .line 1248
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

    .line 1249
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 1250
    shr-long/2addr v0, v8

    .line 1251
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

    .line 1252
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 1253
    shr-long/2addr v0, v8

    .line 1254
    add-int/lit8 v2, p1, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x5

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1255
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 1256
    shr-long/2addr v0, v8

    .line 1257
    add-int/lit8 v2, p1, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x6

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1258
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 1259
    shr-long/2addr v0, v8

    .line 1260
    add-int/lit8 v2, p1, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p3, 0x7

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1261
    add-int/lit8 v2, p5, 0x7

    long-to-int v3, v0

    aput v3, p4, v2

    .line 1262
    shr-long/2addr v0, v8

    .line 1263
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

    .line 1208
    const-wide/16 v0, 0x0

    .line 1209
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1210
    long-to-int v2, v0

    aput v2, p2, v9

    .line 1211
    shr-long/2addr v0, v8

    .line 1212
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1213
    long-to-int v2, v0

    aput v2, p2, v10

    .line 1214
    shr-long/2addr v0, v8

    .line 1215
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1216
    long-to-int v2, v0

    aput v2, p2, v11

    .line 1217
    shr-long/2addr v0, v8

    .line 1218
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

    .line 1219
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1220
    shr-long/2addr v0, v8

    .line 1221
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

    .line 1222
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1223
    shr-long/2addr v0, v8

    .line 1224
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1225
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1226
    shr-long/2addr v0, v8

    .line 1227
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x6

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1228
    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1229
    shr-long/2addr v0, v8

    .line 1230
    const/4 v2, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x7

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1231
    const/4 v2, 0x7

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1232
    shr-long/2addr v0, v8

    .line 1233
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

    .line 1268
    const-wide/16 v0, 0x0

    .line 1269
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

    .line 1270
    long-to-int v2, v0

    aput v2, p2, v9

    .line 1271
    shr-long/2addr v0, v8

    .line 1272
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

    .line 1273
    long-to-int v2, v0

    aput v2, p2, v10

    .line 1274
    shr-long/2addr v0, v8

    .line 1275
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

    .line 1276
    long-to-int v2, v0

    aput v2, p2, v11

    .line 1277
    shr-long/2addr v0, v8

    .line 1278
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

    .line 1279
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1280
    shr-long/2addr v0, v8

    .line 1281
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

    .line 1282
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1283
    shr-long/2addr v0, v8

    .line 1284
    const/4 v2, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1285
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1286
    shr-long/2addr v0, v8

    .line 1287
    const/4 v2, 0x6

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x6

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    const/4 v4, 0x6

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1288
    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1289
    shr-long/2addr v0, v8

    .line 1290
    const/4 v2, 0x7

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x7

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    const/4 v4, 0x7

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1291
    const/4 v2, 0x7

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1292
    shr-long/2addr v0, v8

    .line 1293
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

    .line 1328
    const-wide/16 v0, 0x0

    .line 1329
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

    .line 1330
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1331
    shr-long/2addr v0, v8

    .line 1332
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

    .line 1333
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1334
    shr-long/2addr v0, v8

    .line 1335
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

    .line 1336
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1337
    shr-long/2addr v0, v8

    .line 1338
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

    .line 1339
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1340
    shr-long/2addr v0, v8

    .line 1341
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

    .line 1342
    add-int/lit8 v2, p3, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1343
    shr-long/2addr v0, v8

    .line 1344
    add-int/lit8 v2, p3, 0x5

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p1, 0x5

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1345
    add-int/lit8 v2, p3, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1346
    shr-long/2addr v0, v8

    .line 1347
    add-int/lit8 v2, p3, 0x6

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p1, 0x6

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1348
    add-int/lit8 v2, p3, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1349
    shr-long/2addr v0, v8

    .line 1350
    add-int/lit8 v2, p3, 0x7

    aget v2, p2, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-int/lit8 v4, p1, 0x7

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1351
    add-int/lit8 v2, p3, 0x7

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1352
    shr-long/2addr v0, v8

    .line 1353
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

    .line 1298
    const-wide/16 v0, 0x0

    .line 1299
    .local v0, "c":J
    aget v2, p1, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1300
    long-to-int v2, v0

    aput v2, p1, v9

    .line 1301
    shr-long/2addr v0, v8

    .line 1302
    aget v2, p1, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1303
    long-to-int v2, v0

    aput v2, p1, v10

    .line 1304
    shr-long/2addr v0, v8

    .line 1305
    aget v2, p1, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1306
    long-to-int v2, v0

    aput v2, p1, v11

    .line 1307
    shr-long/2addr v0, v8

    .line 1308
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

    .line 1309
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p1, v2

    .line 1310
    shr-long/2addr v0, v8

    .line 1311
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

    .line 1312
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p1, v2

    .line 1313
    shr-long/2addr v0, v8

    .line 1314
    const/4 v2, 0x5

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x5

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1315
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p1, v2

    .line 1316
    shr-long/2addr v0, v8

    .line 1317
    const/4 v2, 0x6

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x6

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1318
    const/4 v2, 0x6

    long-to-int v3, v0

    aput v3, p1, v2

    .line 1319
    shr-long/2addr v0, v8

    .line 1320
    const/4 v2, 0x7

    aget v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x7

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1321
    const/4 v2, 0x7

    long-to-int v3, v0

    aput v3, p1, v2

    .line 1322
    shr-long/2addr v0, v8

    .line 1323
    long-to-int v2, v0

    return v2
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 5
    .param p0, "x"    # [I

    .prologue
    .line 1358
    const/16 v3, 0x20

    new-array v0, v3, [B

    .line 1359
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    .line 1361
    aget v2, p0, v1

    .line 1362
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 1364
    rsub-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1359
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1367
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
    .line 1372
    const/16 v4, 0x20

    new-array v0, v4, [B

    .line 1373
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    .line 1375
    aget-wide v2, p0, v1

    .line 1376
    .local v2, "x_i":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 1378
    rsub-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v0, v4}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 1373
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1381
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

    .line 1386
    aput v1, p0, v1

    .line 1387
    const/4 v0, 0x1

    aput v1, p0, v0

    .line 1388
    const/4 v0, 0x2

    aput v1, p0, v0

    .line 1389
    const/4 v0, 0x3

    aput v1, p0, v0

    .line 1390
    const/4 v0, 0x4

    aput v1, p0, v0

    .line 1391
    const/4 v0, 0x5

    aput v1, p0, v0

    .line 1392
    const/4 v0, 0x6

    aput v1, p0, v0

    .line 1393
    const/4 v0, 0x7

    aput v1, p0, v0

    .line 1394
    return-void
.end method
