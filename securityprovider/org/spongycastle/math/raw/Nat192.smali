.class public abstract Lorg/spongycastle/math/raw/Nat192;
.super Ljava/lang/Object;
.source "Nat192.java"


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

    .line 37
    const-wide/16 v0, 0x0

    .line 38
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

    .line 39
    long-to-int v2, v0

    aput v2, p2, v9

    .line 40
    ushr-long/2addr v0, v8

    .line 41
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

    .line 42
    long-to-int v2, v0

    aput v2, p2, v10

    .line 43
    ushr-long/2addr v0, v8

    .line 44
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

    .line 45
    long-to-int v2, v0

    aput v2, p2, v11

    .line 46
    ushr-long/2addr v0, v8

    .line 47
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

    .line 48
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 49
    ushr-long/2addr v0, v8

    .line 50
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

    .line 51
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 52
    ushr-long/2addr v0, v8

    .line 53
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

    .line 54
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 55
    ushr-long/2addr v0, v8

    .line 56
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

    .line 85
    int-to-long v2, p4

    and-long v0, v2, v6

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
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 88
    ushr-long/2addr v0, v8

    .line 89
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

    .line 90
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 91
    ushr-long/2addr v0, v8

    .line 92
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

    .line 93
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 94
    ushr-long/2addr v0, v8

    .line 95
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

    .line 96
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 97
    ushr-long/2addr v0, v8

    .line 98
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

    .line 99
    add-int/lit8 v2, p3, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 100
    ushr-long/2addr v0, v8

    .line 101
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

    .line 102
    add-int/lit8 v2, p3, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 103
    ushr-long/2addr v0, v8

    .line 104
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

    .line 61
    const-wide/16 v0, 0x0

    .line 62
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 63
    long-to-int v2, v0

    aput v2, p1, v9

    .line 64
    ushr-long/2addr v0, v8

    .line 65
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 66
    long-to-int v2, v0

    aput v2, p1, v10

    .line 67
    ushr-long/2addr v0, v8

    .line 68
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 69
    long-to-int v2, v0

    aput v2, p1, v11

    .line 70
    ushr-long/2addr v0, v8

    .line 71
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

    .line 72
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p1, v2

    .line 73
    ushr-long/2addr v0, v8

    .line 74
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

    .line 75
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p1, v2

    .line 76
    ushr-long/2addr v0, v8

    .line 77
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

    .line 78
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p1, v2

    .line 79
    ushr-long/2addr v0, v8

    .line 80
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

    .line 109
    const-wide/16 v0, 0x0

    .line 110
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

    .line 111
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 112
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 113
    ushr-long/2addr v0, v8

    .line 114
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

    .line 115
    add-int/lit8 v2, p1, 0x1

    long-to-int v3, v0

    aput v3, p0, v2

    .line 116
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 117
    ushr-long/2addr v0, v8

    .line 118
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

    .line 119
    add-int/lit8 v2, p1, 0x2

    long-to-int v3, v0

    aput v3, p0, v2

    .line 120
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 121
    ushr-long/2addr v0, v8

    .line 122
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

    .line 123
    add-int/lit8 v2, p1, 0x3

    long-to-int v3, v0

    aput v3, p0, v2

    .line 124
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 125
    ushr-long/2addr v0, v8

    .line 126
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

    .line 127
    add-int/lit8 v2, p1, 0x4

    long-to-int v3, v0

    aput v3, p0, v2

    .line 128
    add-int/lit8 v2, p3, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 129
    ushr-long/2addr v0, v8

    .line 130
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

    .line 131
    add-int/lit8 v2, p1, 0x5

    long-to-int v3, v0

    aput v3, p0, v2

    .line 132
    add-int/lit8 v2, p3, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 133
    ushr-long/2addr v0, v8

    .line 134
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

    .line 139
    aget v0, p0, v1

    aput v0, p1, v1

    .line 140
    aget v0, p0, v2

    aput v0, p1, v2

    .line 141
    aget v0, p0, v3

    aput v0, p1, v3

    .line 142
    aget v0, p0, v4

    aput v0, p1, v4

    .line 143
    aget v0, p0, v5

    aput v0, p1, v5

    .line 144
    const/4 v0, 0x5

    const/4 v1, 0x5

    aget v1, p0, v1

    aput v1, p1, v0

    .line 145
    return-void
.end method

.method public static copy64([J[J)V
    .locals 5
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    aget-wide v0, p0, v2

    aput-wide v0, p1, v2

    .line 150
    aget-wide v0, p0, v3

    aput-wide v0, p1, v3

    .line 151
    aget-wide v0, p0, v4

    aput-wide v0, p1, v4

    .line 152
    return-void
.end method

.method public static create()[I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x6

    new-array v0, v0, [I

    return-object v0
.end method

.method public static create64()[J
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x3

    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    .prologue
    .line 166
    const/16 v0, 0xc

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x6

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
    .line 176
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/raw/Nat192;->gte([II[II)Z

    move-result v6

    .line 177
    .local v6, "pos":Z
    if-eqz v6, :cond_0

    .line 179
    invoke-static/range {p0 .. p5}, Lorg/spongycastle/math/raw/Nat192;->sub([II[II[II)I

    .line 185
    :goto_0
    return v6

    :cond_0
    move-object v0, p2

    move v1, p3

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move v5, p5

    .line 183
    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/raw/Nat192;->sub([II[II[II)I

    goto :goto_0
.end method

.method public static eq([I[I)Z
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    .line 190
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 192
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    .line 194
    const/4 v1, 0x0

    .line 197
    :goto_1
    return v1

    .line 190
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 197
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static eq64([J[J)Z
    .locals 6
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .prologue
    .line 202
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 204
    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 206
    const/4 v1, 0x0

    .line 209
    :goto_1
    return v1

    .line 202
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 209
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 5
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 214
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0xc0

    if-le v3, v4, :cond_1

    .line 216
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 219
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create()[I

    move-result-object v2

    .line 220
    .local v2, "z":[I
    const/4 v0, 0x0

    .line 221
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v2, v0

    .line 224
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 226
    :cond_2
    return-object v2
.end method

.method public static fromBigInteger64(Ljava/math/BigInteger;)[J
    .locals 6
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 231
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0xc0

    if-le v3, v4, :cond_1

    .line 233
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 236
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->create64()[J

    move-result-object v2

    .line 237
    .local v2, "z":[J
    const/4 v0, 0x0

    .line 238
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 241
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 243
    :cond_2
    return-object v2
.end method

.method public static getBit([II)I
    .locals 4
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .prologue
    const/4 v2, 0x0

    .line 248
    if-nez p1, :cond_1

    .line 250
    aget v2, p0, v2

    and-int/lit8 v2, v2, 0x1

    .line 258
    :cond_0
    :goto_0
    return v2

    .line 252
    :cond_1
    shr-int/lit8 v1, p1, 0x5

    .line 253
    .local v1, "w":I
    if-ltz v1, :cond_0

    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 257
    and-int/lit8 v0, p1, 0x1f

    .line 258
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

    .line 277
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 279
    add-int v4, p1, v0

    aget v4, p0, v4

    xor-int v1, v4, v5

    .line 280
    .local v1, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int v2, v4, v5

    .line 281
    .local v2, "y_i":I
    if-ge v1, v2, :cond_1

    .line 282
    const/4 v3, 0x0

    .line 286
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_0
    return v3

    .line 283
    .restart local v1    # "x_i":I
    .restart local v2    # "y_i":I
    :cond_1
    if-gt v1, v2, :cond_0

    .line 277
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

    .line 263
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 265
    aget v4, p0, v0

    xor-int v1, v4, v5

    .line 266
    .local v1, "x_i":I
    aget v4, p1, v0

    xor-int v2, v4, v5

    .line 267
    .local v2, "y_i":I
    if-ge v1, v2, :cond_1

    .line 268
    const/4 v3, 0x0

    .line 272
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_0
    return v3

    .line 269
    .restart local v1    # "x_i":I
    .restart local v2    # "y_i":I
    :cond_1
    if-gt v1, v2, :cond_0

    .line 263
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static isOne([I)Z
    .locals 4
    .param p0, "x"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 291
    aget v3, p0, v1

    if-eq v3, v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v1

    .line 295
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x6

    if-ge v0, v3, :cond_2

    .line 297
    aget v3, p0, v0

    if-nez v3, :cond_0

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 302
    goto :goto_0
.end method

.method public static isOne64([J)Z
    .locals 6
    .param p0, "x"    # [J

    .prologue
    const/4 v1, 0x0

    .line 307
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v1

    .line 311
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    .line 313
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isZero([I)Z
    .locals 2
    .param p0, "x"    # [I

    .prologue
    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 325
    aget v1, p0, v0

    if-eqz v1, :cond_0

    .line 327
    const/4 v1, 0x0

    .line 330
    :goto_1
    return v1

    .line 323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isZero64([J)Z
    .locals 6
    .param p0, "x"    # [J

    .prologue
    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 337
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 339
    const/4 v1, 0x0

    .line 342
    :goto_1
    return v1

    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static mul([II[II[II)V
    .locals 28
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .prologue
    .line 404
    add-int/lit8 v5, p3, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v10, v22, v24

    .line 405
    .local v10, "y_0":J
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v12, v22, v24

    .line 406
    .local v12, "y_1":J
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v14, v22, v24

    .line 407
    .local v14, "y_2":J
    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v16, v22, v24

    .line 408
    .local v16, "y_3":J
    add-int/lit8 v5, p3, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v18, v22, v24

    .line 409
    .local v18, "y_4":J
    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v20, v22, v24

    .line 412
    .local v20, "y_5":J
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int/lit8 v5, p1, 0x0

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v6, v22, v24

    .line 413
    .local v6, "x_0":J
    mul-long v22, v6, v10

    add-long v2, v2, v22

    .line 414
    add-int/lit8 v5, p5, 0x0

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 415
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 416
    mul-long v22, v6, v12

    add-long v2, v2, v22

    .line 417
    add-int/lit8 v5, p5, 0x1

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 418
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 419
    mul-long v22, v6, v14

    add-long v2, v2, v22

    .line 420
    add-int/lit8 v5, p5, 0x2

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 421
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 422
    mul-long v22, v6, v16

    add-long v2, v2, v22

    .line 423
    add-int/lit8 v5, p5, 0x3

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 424
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 425
    mul-long v22, v6, v18

    add-long v2, v2, v22

    .line 426
    add-int/lit8 v5, p5, 0x4

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 427
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 428
    mul-long v22, v6, v20

    add-long v2, v2, v22

    .line 429
    add-int/lit8 v5, p5, 0x5

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 430
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 431
    add-int/lit8 v5, p5, 0x6

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 434
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    .line 436
    add-int/lit8 p5, p5, 0x1

    .line 437
    const-wide/16 v2, 0x0

    add-int v5, p1, v4

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v8, v22, v24

    .line 438
    .local v8, "x_i":J
    mul-long v22, v8, v10

    add-int/lit8 v5, p5, 0x0

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 439
    add-int/lit8 v5, p5, 0x0

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 440
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 441
    mul-long v22, v8, v12

    add-int/lit8 v5, p5, 0x1

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 442
    add-int/lit8 v5, p5, 0x1

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 443
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 444
    mul-long v22, v8, v14

    add-int/lit8 v5, p5, 0x2

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 445
    add-int/lit8 v5, p5, 0x2

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 446
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 447
    mul-long v22, v8, v16

    add-int/lit8 v5, p5, 0x3

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 448
    add-int/lit8 v5, p5, 0x3

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 449
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 450
    mul-long v22, v8, v18

    add-int/lit8 v5, p5, 0x4

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 451
    add-int/lit8 v5, p5, 0x4

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 452
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 453
    mul-long v22, v8, v20

    add-int/lit8 v5, p5, 0x5

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 454
    add-int/lit8 v5, p5, 0x5

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 455
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 456
    add-int/lit8 v5, p5, 0x6

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 434
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 458
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 28
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 347
    const/4 v5, 0x0

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v10, v22, v24

    .line 348
    .local v10, "y_0":J
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v12, v22, v24

    .line 349
    .local v12, "y_1":J
    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v14, v22, v24

    .line 350
    .local v14, "y_2":J
    const/4 v5, 0x3

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v16, v22, v24

    .line 351
    .local v16, "y_3":J
    const/4 v5, 0x4

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v18, v22, v24

    .line 352
    .local v18, "y_4":J
    const/4 v5, 0x5

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v20, v22, v24

    .line 355
    .local v20, "y_5":J
    const-wide/16 v2, 0x0

    .local v2, "c":J
    const/4 v5, 0x0

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v6, v22, v24

    .line 356
    .local v6, "x_0":J
    mul-long v22, v6, v10

    add-long v2, v2, v22

    .line 357
    const/4 v5, 0x0

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 358
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 359
    mul-long v22, v6, v12

    add-long v2, v2, v22

    .line 360
    const/4 v5, 0x1

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 361
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 362
    mul-long v22, v6, v14

    add-long v2, v2, v22

    .line 363
    const/4 v5, 0x2

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 364
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 365
    mul-long v22, v6, v16

    add-long v2, v2, v22

    .line 366
    const/4 v5, 0x3

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 367
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 368
    mul-long v22, v6, v18

    add-long v2, v2, v22

    .line 369
    const/4 v5, 0x4

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 370
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 371
    mul-long v22, v6, v20

    add-long v2, v2, v22

    .line 372
    const/4 v5, 0x5

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 373
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 374
    const/4 v5, 0x6

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 377
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    .line 379
    const-wide/16 v2, 0x0

    aget v5, p0, v4

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v8, v22, v24

    .line 380
    .local v8, "x_i":J
    mul-long v22, v8, v10

    add-int/lit8 v5, v4, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 381
    add-int/lit8 v5, v4, 0x0

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 382
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 383
    mul-long v22, v8, v12

    add-int/lit8 v5, v4, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 384
    add-int/lit8 v5, v4, 0x1

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 385
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 386
    mul-long v22, v8, v14

    add-int/lit8 v5, v4, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 387
    add-int/lit8 v5, v4, 0x2

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 388
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 389
    mul-long v22, v8, v16

    add-int/lit8 v5, v4, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 390
    add-int/lit8 v5, v4, 0x3

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 391
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 392
    mul-long v22, v8, v18

    add-int/lit8 v5, v4, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 393
    add-int/lit8 v5, v4, 0x4

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 394
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 395
    mul-long v22, v8, v20

    add-int/lit8 v5, v4, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 396
    add-int/lit8 v5, v4, 0x5

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 397
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 398
    add-int/lit8 v5, v4, 0x6

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 400
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 24
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .prologue
    .line 541
    const-wide/16 v2, 0x0

    .local v2, "c":J
    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v4, v18, v20

    .line 542
    .local v4, "wVal":J
    add-int/lit8 v18, p2, 0x0

    aget v18, p1, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v6, v18, v20

    .line 543
    .local v6, "x0":J
    mul-long v18, v4, v6

    add-int/lit8 v20, p4, 0x0

    aget v20, p3, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 544
    add-int/lit8 v18, p6, 0x0

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p5, v18

    .line 545
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 546
    add-int/lit8 v18, p2, 0x1

    aget v18, p1, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v8, v18, v20

    .line 547
    .local v8, "x1":J
    mul-long v18, v4, v8

    add-long v18, v18, v6

    add-int/lit8 v20, p4, 0x1

    aget v20, p3, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 548
    add-int/lit8 v18, p6, 0x1

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p5, v18

    .line 549
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 550
    add-int/lit8 v18, p2, 0x2

    aget v18, p1, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v10, v18, v20

    .line 551
    .local v10, "x2":J
    mul-long v18, v4, v10

    add-long v18, v18, v8

    add-int/lit8 v20, p4, 0x2

    aget v20, p3, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 552
    add-int/lit8 v18, p6, 0x2

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p5, v18

    .line 553
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 554
    add-int/lit8 v18, p2, 0x3

    aget v18, p1, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v12, v18, v20

    .line 555
    .local v12, "x3":J
    mul-long v18, v4, v12

    add-long v18, v18, v10

    add-int/lit8 v20, p4, 0x3

    aget v20, p3, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 556
    add-int/lit8 v18, p6, 0x3

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p5, v18

    .line 557
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 558
    add-int/lit8 v18, p2, 0x4

    aget v18, p1, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v14, v18, v20

    .line 559
    .local v14, "x4":J
    mul-long v18, v4, v14

    add-long v18, v18, v12

    add-int/lit8 v20, p4, 0x4

    aget v20, p3, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 560
    add-int/lit8 v18, p6, 0x4

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p5, v18

    .line 561
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 562
    add-int/lit8 v18, p2, 0x5

    aget v18, p1, v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v16, v18, v20

    .line 563
    .local v16, "x5":J
    mul-long v18, v4, v16

    add-long v18, v18, v14

    add-int/lit8 v20, p4, 0x5

    aget v20, p3, v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    add-long v18, v18, v20

    add-long v2, v2, v18

    .line 564
    add-int/lit8 v18, p6, 0x5

    long-to-int v0, v2

    move/from16 v19, v0

    aput v19, p5, v18

    .line 565
    const/16 v18, 0x20

    ushr-long v2, v2, v18

    .line 566
    add-long v2, v2, v16

    .line 567
    return-wide v2
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 17
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .prologue
    .line 601
    const-wide/16 v2, 0x0

    .local v2, "c":J
    move/from16 v0, p0

    int-to-long v10, v0

    const-wide v12, 0xffffffffL

    and-long v4, v10, v12

    .line 602
    .local v4, "xVal":J
    const-wide v10, 0xffffffffL

    and-long v6, p1, v10

    .line 603
    .local v6, "y00":J
    mul-long v10, v4, v6

    add-int/lit8 v12, p4, 0x0

    aget v12, p3, v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 604
    add-int/lit8 v10, p4, 0x0

    long-to-int v11, v2

    aput v11, p3, v10

    .line 605
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 606
    const/16 v10, 0x20

    ushr-long v8, p1, v10

    .line 607
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

    .line 608
    add-int/lit8 v10, p4, 0x1

    long-to-int v11, v2

    aput v11, p3, v10

    .line 609
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 610
    add-int/lit8 v10, p4, 0x2

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v10, v8

    add-long/2addr v2, v10

    .line 611
    add-int/lit8 v10, p4, 0x2

    long-to-int v11, v2

    aput v11, p3, v10

    .line 612
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 613
    add-int/lit8 v10, p4, 0x3

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v2, v10

    .line 614
    add-int/lit8 v10, p4, 0x3

    long-to-int v11, v2

    aput v11, p3, v10

    .line 615
    const/16 v10, 0x20

    ushr-long/2addr v2, v10

    .line 616
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-nez v10, :cond_0

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    const/4 v10, 0x6

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
    .line 624
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p0

    const-wide v8, 0xffffffffL

    and-long v2, v6, v8

    .local v2, "xVal":J
    int-to-long v6, p1

    const-wide v8, 0xffffffffL

    and-long v4, v6, v8

    .line 625
    .local v4, "yVal":J
    mul-long v6, v4, v2

    add-int/lit8 v8, p3, 0x0

    aget v8, p2, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 626
    add-int/lit8 v6, p3, 0x0

    long-to-int v7, v0

    aput v7, p2, v6

    .line 627
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 628
    add-int/lit8 v6, p3, 0x1

    aget v6, p2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 629
    add-int/lit8 v6, p3, 0x1

    long-to-int v7, v0

    aput v7, p2, v6

    .line 630
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 631
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 632
    add-int/lit8 v6, p3, 0x2

    long-to-int v7, v0

    aput v7, p2, v6

    .line 633
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 634
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x6

    const/4 v7, 0x3

    invoke-static {v6, p2, p3, v7}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v6

    goto :goto_0
.end method

.method public static mulAddTo([II[II[II)I
    .locals 28
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .prologue
    .line 500
    add-int/lit8 v5, p3, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v8, v22, v24

    .line 501
    .local v8, "y_0":J
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v10, v22, v24

    .line 502
    .local v10, "y_1":J
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v12, v22, v24

    .line 503
    .local v12, "y_2":J
    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v14, v22, v24

    .line 504
    .local v14, "y_3":J
    add-int/lit8 v5, p3, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v16, v22, v24

    .line 505
    .local v16, "y_4":J
    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v18, v22, v24

    .line 507
    .local v18, "y_5":J
    const-wide/16 v20, 0x0

    .line 508
    .local v20, "zc":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    .line 510
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int v5, p1, v4

    aget v5, p0, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v6, v22, v24

    .line 511
    .local v6, "x_i":J
    mul-long v22, v6, v8

    add-int/lit8 v5, p5, 0x0

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 512
    add-int/lit8 v5, p5, 0x0

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 513
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 514
    mul-long v22, v6, v10

    add-int/lit8 v5, p5, 0x1

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 515
    add-int/lit8 v5, p5, 0x1

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 516
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 517
    mul-long v22, v6, v12

    add-int/lit8 v5, p5, 0x2

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 518
    add-int/lit8 v5, p5, 0x2

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 519
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 520
    mul-long v22, v6, v14

    add-int/lit8 v5, p5, 0x3

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 521
    add-int/lit8 v5, p5, 0x3

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 522
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 523
    mul-long v22, v6, v16

    add-int/lit8 v5, p5, 0x4

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 524
    add-int/lit8 v5, p5, 0x4

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 525
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 526
    mul-long v22, v6, v18

    add-int/lit8 v5, p5, 0x5

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 527
    add-int/lit8 v5, p5, 0x5

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 528
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 529
    add-int/lit8 v5, p5, 0x6

    aget v5, p4, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v22, v22, v20

    add-long v2, v2, v22

    .line 530
    add-int/lit8 v5, p5, 0x6

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p4, v5

    .line 531
    const/16 v5, 0x20

    ushr-long v20, v2, v5

    .line 532
    add-int/lit8 p5, p5, 0x1

    .line 508
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 534
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v20

    long-to-int v5, v0

    return v5
.end method

.method public static mulAddTo([I[I[I)I
    .locals 28
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    .line 462
    const/4 v5, 0x0

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v8, v22, v24

    .line 463
    .local v8, "y_0":J
    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v10, v22, v24

    .line 464
    .local v10, "y_1":J
    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v12, v22, v24

    .line 465
    .local v12, "y_2":J
    const/4 v5, 0x3

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v14, v22, v24

    .line 466
    .local v14, "y_3":J
    const/4 v5, 0x4

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v16, v22, v24

    .line 467
    .local v16, "y_4":J
    const/4 v5, 0x5

    aget v5, p1, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v18, v22, v24

    .line 469
    .local v18, "y_5":J
    const-wide/16 v20, 0x0

    .line 470
    .local v20, "zc":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x6

    if-ge v4, v5, :cond_0

    .line 472
    const-wide/16 v2, 0x0

    .local v2, "c":J
    aget v5, p0, v4

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v6, v22, v24

    .line 473
    .local v6, "x_i":J
    mul-long v22, v6, v8

    add-int/lit8 v5, v4, 0x0

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 474
    add-int/lit8 v5, v4, 0x0

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 475
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 476
    mul-long v22, v6, v10

    add-int/lit8 v5, v4, 0x1

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 477
    add-int/lit8 v5, v4, 0x1

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 478
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 479
    mul-long v22, v6, v12

    add-int/lit8 v5, v4, 0x2

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 480
    add-int/lit8 v5, v4, 0x2

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 481
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 482
    mul-long v22, v6, v14

    add-int/lit8 v5, v4, 0x3

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 483
    add-int/lit8 v5, v4, 0x3

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 484
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 485
    mul-long v22, v6, v16

    add-int/lit8 v5, v4, 0x4

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 486
    add-int/lit8 v5, v4, 0x4

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 487
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 488
    mul-long v22, v6, v18

    add-int/lit8 v5, v4, 0x5

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    add-long v22, v22, v24

    add-long v2, v2, v22

    .line 489
    add-int/lit8 v5, v4, 0x5

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 490
    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 491
    add-int/lit8 v5, v4, 0x6

    aget v5, p2, v5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    add-long v22, v22, v20

    add-long v2, v2, v22

    .line 492
    add-int/lit8 v5, v4, 0x6

    long-to-int v0, v2

    move/from16 v22, v0

    aput v22, p2, v5

    .line 493
    const/16 v5, 0x20

    ushr-long v20, v2, v5

    .line 470
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 495
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v20

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

    .line 655
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v6, p0

    and-long v4, v6, v8

    .line 656
    .local v4, "xVal":J
    const/4 v2, 0x0

    .line 659
    .local v2, "i":I
    :cond_0
    aget v3, p1, v2

    int-to-long v6, v3

    and-long/2addr v6, v8

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 660
    add-int v3, p3, v2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 661
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 663
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 664
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

    .line 574
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v4, p0

    and-long v2, v4, v8

    .line 575
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

    .line 576
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 577
    ushr-long/2addr v0, v10

    .line 578
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

    .line 579
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v0

    aput v5, p3, v4

    .line 580
    ushr-long/2addr v0, v10

    .line 581
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

    .line 582
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 583
    ushr-long/2addr v0, v10

    .line 584
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

    .line 585
    add-int/lit8 v4, p4, 0x3

    long-to-int v5, v0

    aput v5, p3, v4

    .line 586
    ushr-long/2addr v0, v10

    .line 587
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

    .line 588
    add-int/lit8 v4, p4, 0x4

    long-to-int v5, v0

    aput v5, p3, v4

    .line 589
    ushr-long/2addr v0, v10

    .line 590
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

    .line 591
    add-int/lit8 v4, p4, 0x5

    long-to-int v5, v0

    aput v5, p3, v4

    .line 592
    ushr-long/2addr v0, v10

    .line 593
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

    .line 640
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v4, p0

    and-long v2, v4, v8

    .line 641
    .local v2, "xVal":J
    and-long v4, p1, v8

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x0

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 642
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 643
    ushr-long/2addr v0, v10

    .line 644
    ushr-long v4, p1, v10

    mul-long/2addr v4, v2

    add-int/lit8 v6, p4, 0x1

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 645
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v0

    aput v5, p3, v4

    .line 646
    ushr-long/2addr v0, v10

    .line 647
    add-int/lit8 v4, p4, 0x2

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    add-long/2addr v0, v4

    .line 648
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 649
    ushr-long/2addr v0, v10

    .line 650
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x3

    invoke-static {v4, p3, p4, v5}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    goto :goto_0
.end method

.method public static square([II[II)V
    .locals 48
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I

    .prologue
    .line 785
    add-int/lit8 v9, p1, 0x0

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v12, v44, v46

    .line 788
    .local v12, "x_0":J
    const/4 v2, 0x0

    .line 790
    .local v2, "c":I
    const/4 v3, 0x5

    .local v3, "i":I
    const/16 v5, 0xc

    .line 793
    .local v5, "j":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    add-int v9, p1, v3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v10, v44, v46

    .line 794
    .local v10, "xVal":J
    mul-long v6, v10, v10

    .line 795
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    add-int v9, p3, v5

    shl-int/lit8 v44, v2, 0x1f

    const/16 v45, 0x21

    ushr-long v46, v6, v45

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v45, v0

    or-int v44, v44, v45

    aput v44, p2, v9

    .line 796
    add-int/lit8 v5, v5, -0x1

    add-int v9, p3, v5

    const/16 v44, 0x1

    ushr-long v44, v6, v44

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    aput v44, p2, v9

    .line 797
    long-to-int v2, v6

    .line 799
    if-gtz v4, :cond_0

    .line 802
    mul-long v6, v12, v12

    .line 803
    shl-int/lit8 v9, v2, 0x1f

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x21

    ushr-long v46, v6, v9

    or-long v24, v44, v46

    .line 804
    .local v24, "zz_1":J
    add-int/lit8 v9, p3, 0x0

    long-to-int v0, v6

    move/from16 v44, v0

    aput v44, p2, v9

    .line 805
    const/16 v9, 0x20

    ushr-long v44, v6, v9

    move-wide/from16 v0, v44

    long-to-int v9, v0

    and-int/lit8 v2, v9, 0x1

    .line 809
    add-int/lit8 v9, p1, 0x1

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v14, v44, v46

    .line 810
    .local v14, "x_1":J
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v28, v44, v46

    .line 813
    .local v28, "zz_2":J
    mul-long v44, v14, v12

    add-long v24, v24, v44

    .line 814
    move-wide/from16 v0, v24

    long-to-int v8, v0

    .line 815
    .local v8, "w":I
    add-int/lit8 v9, p3, 0x1

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 816
    ushr-int/lit8 v2, v8, 0x1f

    .line 817
    const/16 v9, 0x20

    ushr-long v44, v24, v9

    add-long v28, v28, v44

    .line 820
    add-int/lit8 v9, p1, 0x2

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v16, v44, v46

    .line 821
    .local v16, "x_2":J
    add-int/lit8 v9, p3, 0x3

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v30, v44, v46

    .line 822
    .local v30, "zz_3":J
    add-int/lit8 v9, p3, 0x4

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v32, v44, v46

    .line 824
    .local v32, "zz_4":J
    mul-long v44, v16, v12

    add-long v28, v28, v44

    .line 825
    move-wide/from16 v0, v28

    long-to-int v8, v0

    .line 826
    add-int/lit8 v9, p3, 0x2

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 827
    ushr-int/lit8 v2, v8, 0x1f

    .line 828
    const/16 v9, 0x20

    ushr-long v44, v28, v9

    mul-long v46, v16, v14

    add-long v44, v44, v46

    add-long v30, v30, v44

    .line 829
    const/16 v9, 0x20

    ushr-long v44, v30, v9

    add-long v32, v32, v44

    .line 830
    const-wide v44, 0xffffffffL

    and-long v30, v30, v44

    .line 833
    add-int/lit8 v9, p1, 0x3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v18, v44, v46

    .line 834
    .local v18, "x_3":J
    add-int/lit8 v9, p3, 0x5

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x20

    ushr-long v46, v32, v9

    add-long v34, v44, v46

    .local v34, "zz_5":J
    const-wide v44, 0xffffffffL

    and-long v32, v32, v44

    .line 835
    add-int/lit8 v9, p3, 0x6

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x20

    ushr-long v46, v34, v9

    add-long v36, v44, v46

    .local v36, "zz_6":J
    const-wide v44, 0xffffffffL

    and-long v34, v34, v44

    .line 837
    mul-long v44, v18, v12

    add-long v30, v30, v44

    .line 838
    move-wide/from16 v0, v30

    long-to-int v8, v0

    .line 839
    add-int/lit8 v9, p3, 0x3

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 840
    ushr-int/lit8 v2, v8, 0x1f

    .line 841
    const/16 v9, 0x20

    ushr-long v44, v30, v9

    mul-long v46, v18, v14

    add-long v44, v44, v46

    add-long v32, v32, v44

    .line 842
    const/16 v9, 0x20

    ushr-long v44, v32, v9

    mul-long v46, v18, v16

    add-long v44, v44, v46

    add-long v34, v34, v44

    .line 843
    const-wide v44, 0xffffffffL

    and-long v32, v32, v44

    .line 844
    const/16 v9, 0x20

    ushr-long v44, v34, v9

    add-long v36, v36, v44

    .line 845
    const-wide v44, 0xffffffffL

    and-long v34, v34, v44

    .line 848
    add-int/lit8 v9, p1, 0x4

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v20, v44, v46

    .line 849
    .local v20, "x_4":J
    add-int/lit8 v9, p3, 0x7

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x20

    ushr-long v46, v36, v9

    add-long v38, v44, v46

    .local v38, "zz_7":J
    const-wide v44, 0xffffffffL

    and-long v36, v36, v44

    .line 850
    add-int/lit8 v9, p3, 0x8

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x20

    ushr-long v46, v38, v9

    add-long v40, v44, v46

    .local v40, "zz_8":J
    const-wide v44, 0xffffffffL

    and-long v38, v38, v44

    .line 852
    mul-long v44, v20, v12

    add-long v32, v32, v44

    .line 853
    move-wide/from16 v0, v32

    long-to-int v8, v0

    .line 854
    add-int/lit8 v9, p3, 0x4

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 855
    ushr-int/lit8 v2, v8, 0x1f

    .line 856
    const/16 v9, 0x20

    ushr-long v44, v32, v9

    mul-long v46, v20, v14

    add-long v44, v44, v46

    add-long v34, v34, v44

    .line 857
    const/16 v9, 0x20

    ushr-long v44, v34, v9

    mul-long v46, v20, v16

    add-long v44, v44, v46

    add-long v36, v36, v44

    .line 858
    const-wide v44, 0xffffffffL

    and-long v34, v34, v44

    .line 859
    const/16 v9, 0x20

    ushr-long v44, v36, v9

    mul-long v46, v20, v18

    add-long v44, v44, v46

    add-long v38, v38, v44

    .line 860
    const-wide v44, 0xffffffffL

    and-long v36, v36, v44

    .line 861
    const/16 v9, 0x20

    ushr-long v44, v38, v9

    add-long v40, v40, v44

    .line 862
    const-wide v44, 0xffffffffL

    and-long v38, v38, v44

    .line 865
    add-int/lit8 v9, p1, 0x5

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v22, v44, v46

    .line 866
    .local v22, "x_5":J
    add-int/lit8 v9, p3, 0x9

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x20

    ushr-long v46, v40, v9

    add-long v42, v44, v46

    .local v42, "zz_9":J
    const-wide v44, 0xffffffffL

    and-long v40, v40, v44

    .line 867
    add-int/lit8 v9, p3, 0xa

    aget v9, p2, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x20

    ushr-long v46, v42, v9

    add-long v26, v44, v46

    .local v26, "zz_10":J
    const-wide v44, 0xffffffffL

    and-long v42, v42, v44

    .line 869
    mul-long v44, v22, v12

    add-long v34, v34, v44

    .line 870
    move-wide/from16 v0, v34

    long-to-int v8, v0

    .line 871
    add-int/lit8 v9, p3, 0x5

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 872
    ushr-int/lit8 v2, v8, 0x1f

    .line 873
    const/16 v9, 0x20

    ushr-long v44, v34, v9

    mul-long v46, v22, v14

    add-long v44, v44, v46

    add-long v36, v36, v44

    .line 874
    const/16 v9, 0x20

    ushr-long v44, v36, v9

    mul-long v46, v22, v16

    add-long v44, v44, v46

    add-long v38, v38, v44

    .line 875
    const/16 v9, 0x20

    ushr-long v44, v38, v9

    mul-long v46, v22, v18

    add-long v44, v44, v46

    add-long v40, v40, v44

    .line 876
    const/16 v9, 0x20

    ushr-long v44, v40, v9

    mul-long v46, v22, v20

    add-long v44, v44, v46

    add-long v42, v42, v44

    .line 877
    const/16 v9, 0x20

    ushr-long v44, v42, v9

    add-long v26, v26, v44

    .line 880
    move-wide/from16 v0, v36

    long-to-int v8, v0

    .line 881
    add-int/lit8 v9, p3, 0x6

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 882
    ushr-int/lit8 v2, v8, 0x1f

    .line 883
    move-wide/from16 v0, v38

    long-to-int v8, v0

    .line 884
    add-int/lit8 v9, p3, 0x7

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 885
    ushr-int/lit8 v2, v8, 0x1f

    .line 886
    move-wide/from16 v0, v40

    long-to-int v8, v0

    .line 887
    add-int/lit8 v9, p3, 0x8

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 888
    ushr-int/lit8 v2, v8, 0x1f

    .line 889
    move-wide/from16 v0, v42

    long-to-int v8, v0

    .line 890
    add-int/lit8 v9, p3, 0x9

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 891
    ushr-int/lit8 v2, v8, 0x1f

    .line 892
    move-wide/from16 v0, v26

    long-to-int v8, v0

    .line 893
    add-int/lit8 v9, p3, 0xa

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 894
    ushr-int/lit8 v2, v8, 0x1f

    .line 895
    add-int/lit8 v9, p3, 0xb

    aget v9, p2, v9

    const/16 v44, 0x20

    ushr-long v44, v26, v44

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    add-int v8, v9, v44

    .line 896
    add-int/lit8 v9, p3, 0xb

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p2, v9

    .line 897
    return-void

    .end local v8    # "w":I
    .end local v14    # "x_1":J
    .end local v16    # "x_2":J
    .end local v18    # "x_3":J
    .end local v20    # "x_4":J
    .end local v22    # "x_5":J
    .end local v24    # "zz_1":J
    .end local v26    # "zz_10":J
    .end local v28    # "zz_2":J
    .end local v30    # "zz_3":J
    .end local v32    # "zz_4":J
    .end local v34    # "zz_5":J
    .end local v36    # "zz_6":J
    .end local v38    # "zz_7":J
    .end local v40    # "zz_8":J
    .end local v42    # "zz_9":J
    :cond_0
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0
.end method

.method public static square([I[I)V
    .locals 48
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .prologue
    .line 669
    const/4 v9, 0x0

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v12, v44, v46

    .line 672
    .local v12, "x_0":J
    const/4 v2, 0x0

    .line 674
    .local v2, "c":I
    const/4 v3, 0x5

    .local v3, "i":I
    const/16 v5, 0xc

    .line 677
    .local v5, "j":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget v9, p0, v3

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v10, v44, v46

    .line 678
    .local v10, "xVal":J
    mul-long v6, v10, v10

    .line 679
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    shl-int/lit8 v9, v2, 0x1f

    const/16 v44, 0x21

    ushr-long v44, v6, v44

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    or-int v9, v9, v44

    aput v9, p1, v5

    .line 680
    add-int/lit8 v5, v5, -0x1

    const/4 v9, 0x1

    ushr-long v44, v6, v9

    move-wide/from16 v0, v44

    long-to-int v9, v0

    aput v9, p1, v5

    .line 681
    long-to-int v2, v6

    .line 683
    if-gtz v4, :cond_0

    .line 686
    mul-long v6, v12, v12

    .line 687
    shl-int/lit8 v9, v2, 0x1f

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x21

    ushr-long v46, v6, v9

    or-long v24, v44, v46

    .line 688
    .local v24, "zz_1":J
    const/4 v9, 0x0

    long-to-int v0, v6

    move/from16 v44, v0

    aput v44, p1, v9

    .line 689
    const/16 v9, 0x20

    ushr-long v44, v6, v9

    move-wide/from16 v0, v44

    long-to-int v9, v0

    and-int/lit8 v2, v9, 0x1

    .line 693
    const/4 v9, 0x1

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v14, v44, v46

    .line 694
    .local v14, "x_1":J
    const/4 v9, 0x2

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v28, v44, v46

    .line 697
    .local v28, "zz_2":J
    mul-long v44, v14, v12

    add-long v24, v24, v44

    .line 698
    move-wide/from16 v0, v24

    long-to-int v8, v0

    .line 699
    .local v8, "w":I
    const/4 v9, 0x1

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 700
    ushr-int/lit8 v2, v8, 0x1f

    .line 701
    const/16 v9, 0x20

    ushr-long v44, v24, v9

    add-long v28, v28, v44

    .line 704
    const/4 v9, 0x2

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v16, v44, v46

    .line 705
    .local v16, "x_2":J
    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v30, v44, v46

    .line 706
    .local v30, "zz_3":J
    const/4 v9, 0x4

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v32, v44, v46

    .line 708
    .local v32, "zz_4":J
    mul-long v44, v16, v12

    add-long v28, v28, v44

    .line 709
    move-wide/from16 v0, v28

    long-to-int v8, v0

    .line 710
    const/4 v9, 0x2

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 711
    ushr-int/lit8 v2, v8, 0x1f

    .line 712
    const/16 v9, 0x20

    ushr-long v44, v28, v9

    mul-long v46, v16, v14

    add-long v44, v44, v46

    add-long v30, v30, v44

    .line 713
    const/16 v9, 0x20

    ushr-long v44, v30, v9

    add-long v32, v32, v44

    .line 714
    const-wide v44, 0xffffffffL

    and-long v30, v30, v44

    .line 717
    const/4 v9, 0x3

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v18, v44, v46

    .line 718
    .local v18, "x_3":J
    const/4 v9, 0x5

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x20

    ushr-long v46, v32, v9

    add-long v34, v44, v46

    .local v34, "zz_5":J
    const-wide v44, 0xffffffffL

    and-long v32, v32, v44

    .line 719
    const/4 v9, 0x6

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x20

    ushr-long v46, v34, v9

    add-long v36, v44, v46

    .local v36, "zz_6":J
    const-wide v44, 0xffffffffL

    and-long v34, v34, v44

    .line 721
    mul-long v44, v18, v12

    add-long v30, v30, v44

    .line 722
    move-wide/from16 v0, v30

    long-to-int v8, v0

    .line 723
    const/4 v9, 0x3

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 724
    ushr-int/lit8 v2, v8, 0x1f

    .line 725
    const/16 v9, 0x20

    ushr-long v44, v30, v9

    mul-long v46, v18, v14

    add-long v44, v44, v46

    add-long v32, v32, v44

    .line 726
    const/16 v9, 0x20

    ushr-long v44, v32, v9

    mul-long v46, v18, v16

    add-long v44, v44, v46

    add-long v34, v34, v44

    .line 727
    const-wide v44, 0xffffffffL

    and-long v32, v32, v44

    .line 728
    const/16 v9, 0x20

    ushr-long v44, v34, v9

    add-long v36, v36, v44

    .line 729
    const-wide v44, 0xffffffffL

    and-long v34, v34, v44

    .line 732
    const/4 v9, 0x4

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v20, v44, v46

    .line 733
    .local v20, "x_4":J
    const/4 v9, 0x7

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x20

    ushr-long v46, v36, v9

    add-long v38, v44, v46

    .local v38, "zz_7":J
    const-wide v44, 0xffffffffL

    and-long v36, v36, v44

    .line 734
    const/16 v9, 0x8

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x20

    ushr-long v46, v38, v9

    add-long v40, v44, v46

    .local v40, "zz_8":J
    const-wide v44, 0xffffffffL

    and-long v38, v38, v44

    .line 736
    mul-long v44, v20, v12

    add-long v32, v32, v44

    .line 737
    move-wide/from16 v0, v32

    long-to-int v8, v0

    .line 738
    const/4 v9, 0x4

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 739
    ushr-int/lit8 v2, v8, 0x1f

    .line 740
    const/16 v9, 0x20

    ushr-long v44, v32, v9

    mul-long v46, v20, v14

    add-long v44, v44, v46

    add-long v34, v34, v44

    .line 741
    const/16 v9, 0x20

    ushr-long v44, v34, v9

    mul-long v46, v20, v16

    add-long v44, v44, v46

    add-long v36, v36, v44

    .line 742
    const-wide v44, 0xffffffffL

    and-long v34, v34, v44

    .line 743
    const/16 v9, 0x20

    ushr-long v44, v36, v9

    mul-long v46, v20, v18

    add-long v44, v44, v46

    add-long v38, v38, v44

    .line 744
    const-wide v44, 0xffffffffL

    and-long v36, v36, v44

    .line 745
    const/16 v9, 0x20

    ushr-long v44, v38, v9

    add-long v40, v40, v44

    .line 746
    const-wide v44, 0xffffffffL

    and-long v38, v38, v44

    .line 749
    const/4 v9, 0x5

    aget v9, p0, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v22, v44, v46

    .line 750
    .local v22, "x_5":J
    const/16 v9, 0x9

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x20

    ushr-long v46, v40, v9

    add-long v42, v44, v46

    .local v42, "zz_9":J
    const-wide v44, 0xffffffffL

    and-long v40, v40, v44

    .line 751
    const/16 v9, 0xa

    aget v9, p1, v9

    int-to-long v0, v9

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v9, 0x20

    ushr-long v46, v42, v9

    add-long v26, v44, v46

    .local v26, "zz_10":J
    const-wide v44, 0xffffffffL

    and-long v42, v42, v44

    .line 753
    mul-long v44, v22, v12

    add-long v34, v34, v44

    .line 754
    move-wide/from16 v0, v34

    long-to-int v8, v0

    .line 755
    const/4 v9, 0x5

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 756
    ushr-int/lit8 v2, v8, 0x1f

    .line 757
    const/16 v9, 0x20

    ushr-long v44, v34, v9

    mul-long v46, v22, v14

    add-long v44, v44, v46

    add-long v36, v36, v44

    .line 758
    const/16 v9, 0x20

    ushr-long v44, v36, v9

    mul-long v46, v22, v16

    add-long v44, v44, v46

    add-long v38, v38, v44

    .line 759
    const/16 v9, 0x20

    ushr-long v44, v38, v9

    mul-long v46, v22, v18

    add-long v44, v44, v46

    add-long v40, v40, v44

    .line 760
    const/16 v9, 0x20

    ushr-long v44, v40, v9

    mul-long v46, v22, v20

    add-long v44, v44, v46

    add-long v42, v42, v44

    .line 761
    const/16 v9, 0x20

    ushr-long v44, v42, v9

    add-long v26, v26, v44

    .line 764
    move-wide/from16 v0, v36

    long-to-int v8, v0

    .line 765
    const/4 v9, 0x6

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 766
    ushr-int/lit8 v2, v8, 0x1f

    .line 767
    move-wide/from16 v0, v38

    long-to-int v8, v0

    .line 768
    const/4 v9, 0x7

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 769
    ushr-int/lit8 v2, v8, 0x1f

    .line 770
    move-wide/from16 v0, v40

    long-to-int v8, v0

    .line 771
    const/16 v9, 0x8

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 772
    ushr-int/lit8 v2, v8, 0x1f

    .line 773
    move-wide/from16 v0, v42

    long-to-int v8, v0

    .line 774
    const/16 v9, 0x9

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 775
    ushr-int/lit8 v2, v8, 0x1f

    .line 776
    move-wide/from16 v0, v26

    long-to-int v8, v0

    .line 777
    const/16 v9, 0xa

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 778
    ushr-int/lit8 v2, v8, 0x1f

    .line 779
    const/16 v9, 0xb

    aget v9, p1, v9

    const/16 v44, 0x20

    ushr-long v44, v26, v44

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v44, v0

    add-int v8, v9, v44

    .line 780
    const/16 v9, 0xb

    shl-int/lit8 v44, v8, 0x1

    or-int v44, v44, v2

    aput v44, p1, v9

    .line 781
    return-void

    .end local v8    # "w":I
    .end local v14    # "x_1":J
    .end local v16    # "x_2":J
    .end local v18    # "x_3":J
    .end local v20    # "x_4":J
    .end local v22    # "x_5":J
    .end local v24    # "zz_1":J
    .end local v26    # "zz_10":J
    .end local v28    # "zz_2":J
    .end local v30    # "zz_3":J
    .end local v32    # "zz_4":J
    .end local v34    # "zz_5":J
    .end local v36    # "zz_6":J
    .end local v38    # "zz_7":J
    .end local v40    # "zz_8":J
    .end local v42    # "zz_9":J
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

    .line 925
    const-wide/16 v0, 0x0

    .line 926
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

    .line 927
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 928
    shr-long/2addr v0, v8

    .line 929
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

    .line 930
    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    .line 931
    shr-long/2addr v0, v8

    .line 932
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

    .line 933
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 934
    shr-long/2addr v0, v8

    .line 935
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

    .line 936
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 937
    shr-long/2addr v0, v8

    .line 938
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

    .line 939
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 940
    shr-long/2addr v0, v8

    .line 941
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

    .line 942
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 943
    shr-long/2addr v0, v8

    .line 944
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

    .line 901
    const-wide/16 v0, 0x0

    .line 902
    .local v0, "c":J
    aget v2, p0, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 903
    long-to-int v2, v0

    aput v2, p2, v9

    .line 904
    shr-long/2addr v0, v8

    .line 905
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 906
    long-to-int v2, v0

    aput v2, p2, v10

    .line 907
    shr-long/2addr v0, v8

    .line 908
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p1, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 909
    long-to-int v2, v0

    aput v2, p2, v11

    .line 910
    shr-long/2addr v0, v8

    .line 911
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

    .line 912
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 913
    shr-long/2addr v0, v8

    .line 914
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

    .line 915
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 916
    shr-long/2addr v0, v8

    .line 917
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

    .line 918
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 919
    shr-long/2addr v0, v8

    .line 920
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

    .line 949
    const-wide/16 v0, 0x0

    .line 950
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

    .line 951
    long-to-int v2, v0

    aput v2, p2, v9

    .line 952
    shr-long/2addr v0, v8

    .line 953
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

    .line 954
    long-to-int v2, v0

    aput v2, p2, v10

    .line 955
    shr-long/2addr v0, v8

    .line 956
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

    .line 957
    long-to-int v2, v0

    aput v2, p2, v11

    .line 958
    shr-long/2addr v0, v8

    .line 959
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

    .line 960
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 961
    shr-long/2addr v0, v8

    .line 962
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

    .line 963
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 964
    shr-long/2addr v0, v8

    .line 965
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

    .line 966
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 967
    shr-long/2addr v0, v8

    .line 968
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

    .line 997
    const-wide/16 v0, 0x0

    .line 998
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

    .line 999
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1000
    shr-long/2addr v0, v8

    .line 1001
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

    .line 1002
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1003
    shr-long/2addr v0, v8

    .line 1004
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

    .line 1005
    add-int/lit8 v2, p3, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1006
    shr-long/2addr v0, v8

    .line 1007
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

    .line 1008
    add-int/lit8 v2, p3, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1009
    shr-long/2addr v0, v8

    .line 1010
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

    .line 1011
    add-int/lit8 v2, p3, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1012
    shr-long/2addr v0, v8

    .line 1013
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

    .line 1014
    add-int/lit8 v2, p3, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1015
    shr-long/2addr v0, v8

    .line 1016
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

    .line 973
    const-wide/16 v0, 0x0

    .line 974
    .local v0, "c":J
    aget v2, p1, v9

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 975
    long-to-int v2, v0

    aput v2, p1, v9

    .line 976
    shr-long/2addr v0, v8

    .line 977
    aget v2, p1, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v10

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 978
    long-to-int v2, v0

    aput v2, p1, v10

    .line 979
    shr-long/2addr v0, v8

    .line 980
    aget v2, p1, v11

    int-to-long v2, v2

    and-long/2addr v2, v6

    aget v4, p0, v11

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 981
    long-to-int v2, v0

    aput v2, p1, v11

    .line 982
    shr-long/2addr v0, v8

    .line 983
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

    .line 984
    const/4 v2, 0x3

    long-to-int v3, v0

    aput v3, p1, v2

    .line 985
    shr-long/2addr v0, v8

    .line 986
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

    .line 987
    const/4 v2, 0x4

    long-to-int v3, v0

    aput v3, p1, v2

    .line 988
    shr-long/2addr v0, v8

    .line 989
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

    .line 990
    const/4 v2, 0x5

    long-to-int v3, v0

    aput v3, p1, v2

    .line 991
    shr-long/2addr v0, v8

    .line 992
    long-to-int v2, v0

    return v2
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 5
    .param p0, "x"    # [I

    .prologue
    .line 1021
    const/16 v3, 0x18

    new-array v0, v3, [B

    .line 1022
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    .line 1024
    aget v2, p0, v1

    .line 1025
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    .line 1027
    rsub-int/lit8 v3, v1, 0x5

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1022
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1030
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
    .line 1035
    const/16 v4, 0x18

    new-array v0, v4, [B

    .line 1036
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    .line 1038
    aget-wide v2, p0, v1

    .line 1039
    .local v2, "x_i":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 1041
    rsub-int/lit8 v4, v1, 0x2

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v0, v4}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 1036
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1044
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

    .line 1049
    aput v1, p0, v1

    .line 1050
    const/4 v0, 0x1

    aput v1, p0, v0

    .line 1051
    const/4 v0, 0x2

    aput v1, p0, v0

    .line 1052
    const/4 v0, 0x3

    aput v1, p0, v0

    .line 1053
    const/4 v0, 0x4

    aput v1, p0, v0

    .line 1054
    const/4 v0, 0x5

    aput v1, p0, v0

    .line 1055
    return-void
.end method
