.class public Lorg/spongycastle/math/raw/Interleave;
.super Ljava/lang/Object;
.source "Interleave.java"


# static fields
.field private static final M32:J = 0x55555555L

.field private static final M64:J = 0x5555555555555555L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expand16to32(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 61
    const v0, 0xffff

    and-int/2addr p0, v0

    .line 62
    shl-int/lit8 v0, p0, 0x8

    or-int/2addr v0, p0

    const v1, 0xff00ff

    and-int p0, v0, v1

    .line 63
    shl-int/lit8 v0, p0, 0x4

    or-int/2addr v0, p0

    const v1, 0xf0f0f0f

    and-int p0, v0, v1

    .line 64
    shl-int/lit8 v0, p0, 0x2

    or-int/2addr v0, p0

    const v1, 0x33333333

    and-int p0, v0, v1

    .line 65
    shl-int/lit8 v0, p0, 0x1

    or-int/2addr v0, p0

    const v1, 0x55555555

    and-int p0, v0, v1

    .line 66
    return p0
.end method

.method public static expand32to64(I)J
    .locals 8
    .param p0, "x"    # I

    .prologue
    const-wide/32 v6, 0x55555555

    .line 73
    ushr-int/lit8 v1, p0, 0x8

    xor-int/2addr v1, p0

    const v2, 0xff00

    and-int v0, v1, v2

    .local v0, "t":I
    shl-int/lit8 v1, v0, 0x8

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 74
    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v1, p0

    const v2, 0xf000f0

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x4

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 75
    ushr-int/lit8 v1, p0, 0x2

    xor-int/2addr v1, p0

    const v2, 0xc0c0c0c

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x2

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 76
    ushr-int/lit8 v1, p0, 0x1

    xor-int/2addr v1, p0

    const v2, 0x22222222

    and-int v0, v1, v2

    shl-int/lit8 v1, v0, 0x1

    xor-int/2addr v1, v0

    xor-int/2addr p0, v1

    .line 78
    ushr-int/lit8 v1, p0, 0x1

    int-to-long v2, v1

    and-long/2addr v2, v6

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    int-to-long v4, p0

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static expand64To128(J[JI)V
    .locals 12
    .param p0, "x"    # J
    .param p2, "z"    # [J
    .param p3, "zOff"    # I

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 85
    ushr-long v2, p0, v10

    xor-long/2addr v2, p0

    const-wide v4, 0xffff0000L

    and-long v0, v2, v4

    .local v0, "t":J
    shl-long v2, v0, v10

    xor-long/2addr v2, v0

    xor-long/2addr p0, v2

    .line 86
    ushr-long v2, p0, v9

    xor-long/2addr v2, p0

    const-wide v4, 0xff000000ff00L

    and-long v0, v2, v4

    shl-long v2, v0, v9

    xor-long/2addr v2, v0

    xor-long/2addr p0, v2

    .line 87
    ushr-long v2, p0, v8

    xor-long/2addr v2, p0

    const-wide v4, 0xf000f000f000f0L

    and-long v0, v2, v4

    shl-long v2, v0, v8

    xor-long/2addr v2, v0

    xor-long/2addr p0, v2

    .line 88
    ushr-long v2, p0, v7

    xor-long/2addr v2, p0

    const-wide v4, 0xc0c0c0c0c0c0c0cL

    and-long v0, v2, v4

    shl-long v2, v0, v7

    xor-long/2addr v2, v0

    xor-long/2addr p0, v2

    .line 89
    ushr-long v2, p0, v6

    xor-long/2addr v2, p0

    const-wide v4, 0x2222222222222222L

    and-long v0, v2, v4

    shl-long v2, v0, v6

    xor-long/2addr v2, v0

    xor-long/2addr p0, v2

    .line 91
    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v2, p0

    aput-wide v2, p2, p3

    .line 92
    add-int/lit8 v2, p3, 0x1

    ushr-long v4, p0, v6

    const-wide v6, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v4, v6

    aput-wide v4, p2, v2

    .line 93
    return-void
.end method

.method public static expand8to16(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 52
    and-int/lit16 p0, p0, 0xff

    .line 53
    shl-int/lit8 v0, p0, 0x4

    or-int/2addr v0, p0

    and-int/lit16 p0, v0, 0xf0f

    .line 54
    shl-int/lit8 v0, p0, 0x2

    or-int/2addr v0, p0

    and-int/lit16 p0, v0, 0x3333

    .line 55
    shl-int/lit8 v0, p0, 0x1

    or-int/2addr v0, p0

    and-int/lit16 p0, v0, 0x5555

    .line 56
    return p0
.end method

.method public static unshuffle(J)J
    .locals 12
    .param p0, "x"    # J

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 99
    ushr-long v2, p0, v6

    xor-long/2addr v2, p0

    const-wide v4, 0x2222222222222222L

    and-long v0, v2, v4

    .local v0, "t":J
    shl-long v2, v0, v6

    xor-long/2addr v2, v0

    xor-long/2addr p0, v2

    .line 100
    ushr-long v2, p0, v7

    xor-long/2addr v2, p0

    const-wide v4, 0xc0c0c0c0c0c0c0cL

    and-long v0, v2, v4

    shl-long v2, v0, v7

    xor-long/2addr v2, v0

    xor-long/2addr p0, v2

    .line 101
    ushr-long v2, p0, v8

    xor-long/2addr v2, p0

    const-wide v4, 0xf000f000f000f0L

    and-long v0, v2, v4

    shl-long v2, v0, v8

    xor-long/2addr v2, v0

    xor-long/2addr p0, v2

    .line 102
    ushr-long v2, p0, v9

    xor-long/2addr v2, p0

    const-wide v4, 0xff000000ff00L

    and-long v0, v2, v4

    shl-long v2, v0, v9

    xor-long/2addr v2, v0

    xor-long/2addr p0, v2

    .line 103
    ushr-long v2, p0, v10

    xor-long/2addr v2, p0

    const-wide v4, 0xffff0000L

    and-long v0, v2, v4

    shl-long v2, v0, v10

    xor-long/2addr v2, v0

    xor-long/2addr p0, v2

    .line 104
    return-wide p0
.end method
