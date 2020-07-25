.class public final Lorg/spongycastle/pqc/math/linearalgebra/BigEndianConversions;
.super Ljava/lang/Object;
.source "BigEndianConversions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static I2OSP(I[BI)V
    .locals 2
    .param p0, "input"    # I
    .param p1, "output"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 81
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outOff":I
    .local v0, "outOff":I
    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 82
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p2    # "outOff":I
    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 83
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "outOff":I
    .restart local v0    # "outOff":I
    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 84
    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 85
    return-void
.end method

.method public static I2OSP(I[BII)V
    .locals 3
    .param p0, "input"    # I
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .param p3, "length"    # I

    .prologue
    .line 141
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 143
    add-int v1, p2, v0

    add-int/lit8 v2, p3, -0x1

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    ushr-int v2, p0, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 141
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method public static I2OSP(J[BI)V
    .locals 4
    .param p0, "input"    # J
    .param p2, "output"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 118
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .local v0, "outOff":I
    const/16 v1, 0x38

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 119
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p3    # "outOff":I
    const/16 v1, 0x30

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 120
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .restart local v0    # "outOff":I
    const/16 v1, 0x28

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 121
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p3    # "outOff":I
    const/16 v1, 0x20

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 122
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .restart local v0    # "outOff":I
    const/16 v1, 0x18

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 123
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p3    # "outOff":I
    const/16 v1, 0x10

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 124
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .restart local v0    # "outOff":I
    const/16 v1, 0x8

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 125
    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 126
    return-void
.end method

.method public static I2OSP(I)[B
    .locals 3
    .param p0, "x"    # I

    .prologue
    .line 30
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 31
    .local v0, "result":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 32
    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 33
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 34
    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 35
    return-object v0
.end method

.method public static I2OSP(II)[B
    .locals 5
    .param p0, "x"    # I
    .param p1, "oLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 53
    if-gez p0, :cond_1

    .line 55
    const/4 v2, 0x0

    .line 68
    :cond_0
    return-object v2

    .line 57
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->ceilLog256(I)I

    move-result v1

    .line 58
    .local v1, "octL":I
    if-le v1, p1, :cond_2

    .line 60
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "Cannot encode given integer into specified number of octets."

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_2
    new-array v2, p1, [B

    .line 64
    .local v2, "result":[B
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    sub-int v3, p1, v1

    if-lt v0, v3, :cond_0

    .line 66
    add-int/lit8 v3, p1, -0x1

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x8

    ushr-int v3, p0, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 64
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static I2OSP(J)[B
    .locals 6
    .param p0, "input"    # J

    .prologue
    const/16 v4, 0x8

    .line 96
    new-array v0, v4, [B

    .line 97
    .local v0, "output":[B
    const/4 v1, 0x0

    const/16 v2, 0x38

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 98
    const/4 v1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 99
    const/4 v1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 100
    const/4 v1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 101
    const/4 v1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 102
    const/4 v1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p0, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 103
    const/4 v1, 0x6

    ushr-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 104
    const/4 v1, 0x7

    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 105
    return-object v0
.end method

.method public static OS2IP([B)I
    .locals 4
    .param p0, "input"    # [B

    .prologue
    .line 159
    array-length v2, p0

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 161
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "invalid input length"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_2

    .line 165
    const/4 v1, 0x0

    .line 172
    :cond_1
    return v1

    .line 167
    :cond_2
    const/4 v1, 0x0

    .line 168
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 170
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static OS2IP([BI)I
    .locals 3
    .param p0, "input"    # [B
    .param p1, "inOff"    # I

    .prologue
    .line 185
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .local v0, "inOff":I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v2, 0x18

    .line 186
    .local v1, "result":I
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local p1    # "inOff":I
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 187
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 188
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 189
    return v1
.end method

.method public static OS2IP([BII)I
    .locals 4
    .param p0, "input"    # [B
    .param p1, "inOff"    # I
    .param p2, "inLen"    # I

    .prologue
    .line 206
    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p0

    add-int v3, p1, p2

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 208
    :cond_0
    const/4 v1, 0x0

    .line 215
    :cond_1
    return v1

    .line 210
    :cond_2
    const/4 v1, 0x0

    .line 211
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 213
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    sub-int v3, p2, v0

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static OS2LIP([BI)J
    .locals 8
    .param p0, "input"    # [B
    .param p1, "inOff"    # I

    .prologue
    const-wide/16 v6, 0xff

    .line 228
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .local v0, "inOff":I
    aget-byte v1, p0, p1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x38

    shl-long v2, v4, v1

    .line 229
    .local v2, "result":J
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local p1    # "inOff":I
    aget-byte v1, p0, v0

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 230
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte v1, p0, p1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 231
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local p1    # "inOff":I
    aget-byte v1, p0, v0

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 232
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte v1, p0, p1

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 233
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "inOff":I
    .restart local p1    # "inOff":I
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 234
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 235
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 236
    return-wide v2
.end method

.method public static toByteArray([I)[B
    .locals 4
    .param p0, "input"    # [I

    .prologue
    .line 247
    array-length v2, p0

    shl-int/lit8 v2, v2, 0x2

    new-array v1, v2, [B

    .line 248
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 250
    aget v2, p0, v0

    shl-int/lit8 v3, v0, 0x2

    invoke-static {v2, v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/BigEndianConversions;->I2OSP(I[BI)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return-object v1
.end method

.method public static toByteArray([II)[B
    .locals 6
    .param p0, "input"    # [I
    .param p1, "length"    # I

    .prologue
    .line 266
    array-length v2, p0

    .line 267
    .local v2, "intLen":I
    new-array v3, p1, [B

    .line 268
    .local v3, "result":[B
    const/4 v1, 0x0

    .line 269
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v4, v2, -0x2

    if-gt v0, v4, :cond_0

    .line 271
    aget v4, p0, v0

    invoke-static {v4, v3, v1}, Lorg/spongycastle/pqc/math/linearalgebra/BigEndianConversions;->I2OSP(I[BI)V

    .line 269
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 273
    :cond_0
    add-int/lit8 v4, v2, -0x1

    aget v4, p0, v4

    sub-int v5, p1, v1

    invoke-static {v4, v3, v1, v5}, Lorg/spongycastle/pqc/math/linearalgebra/BigEndianConversions;->I2OSP(I[BII)V

    .line 274
    return-object v3
.end method

.method public static toIntArray([B)[I
    .locals 7
    .param p0, "input"    # [B

    .prologue
    .line 285
    array-length v5, p0

    add-int/lit8 v5, v5, 0x3

    div-int/lit8 v2, v5, 0x4

    .line 286
    .local v2, "intLen":I
    array-length v5, p0

    and-int/lit8 v3, v5, 0x3

    .line 287
    .local v3, "lastLen":I
    new-array v4, v2, [I

    .line 289
    .local v4, "result":[I
    const/4 v1, 0x0

    .line 290
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v5, v2, -0x2

    if-gt v0, v5, :cond_0

    .line 292
    invoke-static {p0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/BigEndianConversions;->OS2IP([BI)I

    move-result v5

    aput v5, v4, v0

    .line 290
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 294
    :cond_0
    if-eqz v3, :cond_1

    .line 296
    add-int/lit8 v5, v2, -0x1

    invoke-static {p0, v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/BigEndianConversions;->OS2IP([BII)I

    move-result v6

    aput v6, v4, v5

    .line 303
    :goto_1
    return-object v4

    .line 300
    :cond_1
    add-int/lit8 v5, v2, -0x1

    invoke-static {p0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/BigEndianConversions;->OS2IP([BI)I

    move-result v6

    aput v6, v4, v5

    goto :goto_1
.end method
