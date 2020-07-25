.class public abstract Lorg/spongycastle/util/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bigEndianToInt([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .prologue
    .line 17
    aget-byte v1, p0, p1

    shl-int/lit8 v0, v1, 0x18

    .line 18
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 19
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 20
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public static bigEndianToInt([BI[I)V
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I

    .prologue
    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 28
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 29
    add-int/lit8 p1, p1, 0x4

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public static bigEndianToLong([BI)J
    .locals 8
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 66
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    .line 67
    .local v0, "hi":I
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    .line 68
    .local v1, "lo":I
    int-to-long v2, v0

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static bigEndianToLong([BI[J)V
    .locals 4
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [J

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 75
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v0

    .line 76
    add-int/lit8 p1, p1, 0x8

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public static bigEndianToShort([BI)S
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .prologue
    .line 10
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x8

    .line 11
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 12
    int-to-short v1, v0

    return v1
.end method

.method public static intToBigEndian(I[BI)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .prologue
    .line 42
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 43
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 44
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 45
    add-int/lit8 p2, p2, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 46
    return-void
.end method

.method public static intToBigEndian([I[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 59
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 60
    add-int/lit8 p2, p2, 0x4

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public static intToBigEndian(I)[B
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 35
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 36
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 37
    return-object v0
.end method

.method public static intToBigEndian([I)[B
    .locals 2
    .param p0, "ns"    # [I

    .prologue
    .line 50
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    new-array v0, v1, [B

    .line 51
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 52
    return-object v0
.end method

.method public static intToLittleEndian(I[BI)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .prologue
    .line 176
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 177
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 178
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 179
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 180
    return-void
.end method

.method public static intToLittleEndian([I[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 193
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 194
    add-int/lit8 p2, p2, 0x4

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method public static intToLittleEndian(I)[B
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 169
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 170
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 171
    return-object v0
.end method

.method public static intToLittleEndian([I)[B
    .locals 2
    .param p0, "ns"    # [I

    .prologue
    .line 184
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    new-array v0, v1, [B

    .line 185
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 186
    return-object v0
.end method

.method public static littleEndianToInt([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .prologue
    .line 118
    aget-byte v1, p0, p1

    and-int/lit16 v0, v1, 0xff

    .line 119
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 120
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 121
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 122
    return v0
.end method

.method public static littleEndianToInt([BI[I)V
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I

    .prologue
    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 129
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 130
    add-int/lit8 p1, p1, 0x4

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method public static littleEndianToInt([BI[III)V
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "bOff"    # I
    .param p2, "ns"    # [I
    .param p3, "nOff"    # I
    .param p4, "count"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 138
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, p2, v1

    .line 139
    add-int/lit8 p1, p1, 0x4

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method public static littleEndianToInt([BII)[I
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "count"    # I

    .prologue
    .line 145
    new-array v1, p2, [I

    .line 146
    .local v1, "ns":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 148
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    .line 149
    add-int/lit8 p1, p1, 0x4

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-object v1
.end method

.method public static littleEndianToLong([BI)J
    .locals 8
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 200
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    .line 201
    .local v1, "lo":I
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    .line 202
    .local v0, "hi":I
    int-to-long v2, v0

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static littleEndianToLong([BI[J)V
    .locals 4
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [J

    .prologue
    .line 207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 209
    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v0

    .line 210
    add-int/lit8 p1, p1, 0x8

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method public static littleEndianToLong([BI[JII)V
    .locals 4
    .param p0, "bs"    # [B
    .param p1, "bsOff"    # I
    .param p2, "ns"    # [J
    .param p3, "nsOff"    # I
    .param p4, "nsLen"    # I

    .prologue
    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 218
    add-int v1, p3, v0

    invoke-static {p0, p1}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 219
    add-int/lit8 p1, p1, 0x8

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method

.method public static littleEndianToShort([BI)S
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .prologue
    .line 111
    aget-byte v1, p0, p1

    and-int/lit16 v0, v1, 0xff

    .line 112
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 113
    int-to-short v1, v0

    return v1
.end method

.method public static longToBigEndian(J[BI)V
    .locals 2
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I

    .prologue
    .line 89
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 90
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 91
    return-void
.end method

.method public static longToBigEndian([J[BI)V
    .locals 4
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 104
    aget-wide v2, p0, v0

    invoke-static {v2, v3, p1, p2}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 105
    add-int/lit8 p2, p2, 0x8

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public static longToBigEndian(J)[B
    .locals 2
    .param p0, "n"    # J

    .prologue
    .line 82
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 83
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 84
    return-object v0
.end method

.method public static longToBigEndian([J)[B
    .locals 2
    .param p0, "ns"    # [J

    .prologue
    .line 95
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 96
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->longToBigEndian([J[BI)V

    .line 97
    return-object v0
.end method

.method public static longToLittleEndian(J[BI)V
    .locals 2
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I

    .prologue
    .line 232
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 233
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 234
    return-void
.end method

.method public static longToLittleEndian([JII[BI)V
    .locals 4
    .param p0, "ns"    # [J
    .param p1, "nsOff"    # I
    .param p2, "nsLen"    # I
    .param p3, "bs"    # [B
    .param p4, "bsOff"    # I

    .prologue
    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 256
    add-int v1, p1, v0

    aget-wide v2, p0, v1

    invoke-static {v2, v3, p3, p4}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 257
    add-int/lit8 p4, p4, 0x8

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method public static longToLittleEndian([J[BI)V
    .locals 4
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .prologue
    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 247
    aget-wide v2, p0, v0

    invoke-static {v2, v3, p1, p2}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 248
    add-int/lit8 p2, p2, 0x8

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method public static longToLittleEndian(J)[B
    .locals 2
    .param p0, "n"    # J

    .prologue
    .line 225
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 226
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 227
    return-object v0
.end method

.method public static longToLittleEndian([J)[B
    .locals 2
    .param p0, "ns"    # [J

    .prologue
    .line 238
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 239
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 240
    return-object v0
.end method

.method public static shortToLittleEndian(S[BI)V
    .locals 1
    .param p0, "n"    # S
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .prologue
    .line 163
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 164
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 165
    return-void
.end method

.method public static shortToLittleEndian(S)[B
    .locals 2
    .param p0, "n"    # S

    .prologue
    .line 156
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 157
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->shortToLittleEndian(S[BI)V

    .line 158
    return-object v0
.end method
