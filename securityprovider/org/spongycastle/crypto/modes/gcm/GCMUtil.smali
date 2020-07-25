.class public abstract Lorg/spongycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# static fields
.field private static final E1:I = -0x1f000000

.field private static final E1L:J = -0x1f00000000000000L

.field private static final LOOKUP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->generateLookup()[I

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->LOOKUP:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asBytes([I[B)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [B

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/spongycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 63
    return-void
.end method

.method public static asBytes([J[B)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "z"    # [B

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/spongycastle/util/Pack;->longToBigEndian([J[BI)V

    .line 75
    return-void
.end method

.method public static asBytes([I)[B
    .locals 2
    .param p0, "x"    # [I

    .prologue
    .line 55
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 56
    .local v0, "z":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 57
    return-object v0
.end method

.method public static asBytes([J)[B
    .locals 2
    .param p0, "x"    # [J

    .prologue
    .line 67
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 68
    .local v0, "z":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/util/Pack;->longToBigEndian([J[BI)V

    .line 69
    return-object v0
.end method

.method public static asInts([B[I)V
    .locals 1
    .param p0, "x"    # [B
    .param p1, "z"    # [I

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI[I)V

    .line 87
    return-void
.end method

.method public static asInts([B)[I
    .locals 2
    .param p0, "x"    # [B

    .prologue
    .line 79
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 80
    .local v0, "z":[I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI[I)V

    .line 81
    return-object v0
.end method

.method public static asLongs([B[J)V
    .locals 1
    .param p0, "x"    # [B
    .param p1, "z"    # [J

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI[J)V

    .line 99
    return-void
.end method

.method public static asLongs([B)[J
    .locals 2
    .param p0, "x"    # [B

    .prologue
    .line 91
    const/4 v1, 0x2

    new-array v0, v1, [J

    .line 92
    .local v0, "z":[J
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/spongycastle/util/Pack;->bigEndianToLong([BI[J)V

    .line 93
    return-object v0
.end method

.method private static generateLookup()[I
    .locals 7

    .prologue
    const/16 v6, 0x100

    .line 12
    new-array v2, v6, [I

    .line 14
    .local v2, "lookup":[I
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    if-ge v0, v6, :cond_2

    .line 16
    const/4 v3, 0x0

    .line 17
    .local v3, "v":I
    const/4 v1, 0x7

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 19
    const/4 v4, 0x1

    shl-int/2addr v4, v1

    and-int/2addr v4, v0

    if-eqz v4, :cond_0

    .line 21
    const/high16 v4, -0x1f000000

    rsub-int/lit8 v5, v1, 0x7

    ushr-int/2addr v4, v5

    xor-int/2addr v3, v4

    .line 17
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 24
    :cond_1
    aput v3, v2, v0

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    .end local v1    # "i":I
    .end local v3    # "v":I
    :cond_2
    return-object v2
.end method

.method public static multiply([B[B)V
    .locals 2
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .prologue
    .line 103
    invoke-static {p0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    move-result-object v0

    .line 104
    .local v0, "t1":[I
    invoke-static {p1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->asInts([B)[I

    move-result-object v1

    .line 105
    .local v1, "t2":[I
    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiply([I[I)V

    .line 106
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->asBytes([I[B)V

    .line 107
    return-void
.end method

.method public static multiply([I[I)V
    .locals 15
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    .line 111
    const/4 v13, 0x0

    aget v5, p0, v13

    .local v5, "r00":I
    const/4 v13, 0x1

    aget v6, p0, v13

    .local v6, "r01":I
    const/4 v13, 0x2

    aget v7, p0, v13

    .local v7, "r02":I
    const/4 v13, 0x3

    aget v8, p0, v13

    .line 112
    .local v8, "r03":I
    const/4 v9, 0x0

    .local v9, "r10":I
    const/4 v10, 0x0

    .local v10, "r11":I
    const/4 v11, 0x0

    .local v11, "r12":I
    const/4 v12, 0x0

    .line 114
    .local v12, "r13":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v13, 0x4

    if-ge v1, v13, :cond_1

    .line 116
    aget v0, p1, v1

    .line 117
    .local v0, "bits":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v13, 0x20

    if-ge v2, v13, :cond_0

    .line 119
    shr-int/lit8 v3, v0, 0x1f

    .local v3, "m1":I
    shl-int/lit8 v0, v0, 0x1

    .line 120
    and-int v13, v5, v3

    xor-int/2addr v9, v13

    .line 121
    and-int v13, v6, v3

    xor-int/2addr v10, v13

    .line 122
    and-int v13, v7, v3

    xor-int/2addr v11, v13

    .line 123
    and-int v13, v8, v3

    xor-int/2addr v12, v13

    .line 125
    shl-int/lit8 v13, v8, 0x1f

    shr-int/lit8 v4, v13, 0x8

    .line 126
    .local v4, "m2":I
    ushr-int/lit8 v13, v8, 0x1

    shl-int/lit8 v14, v7, 0x1f

    or-int v8, v13, v14

    .line 127
    ushr-int/lit8 v13, v7, 0x1

    shl-int/lit8 v14, v6, 0x1f

    or-int v7, v13, v14

    .line 128
    ushr-int/lit8 v13, v6, 0x1

    shl-int/lit8 v14, v5, 0x1f

    or-int v6, v13, v14

    .line 129
    ushr-int/lit8 v13, v5, 0x1

    const/high16 v14, -0x1f000000

    and-int/2addr v14, v4

    xor-int v5, v13, v14

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    .end local v3    # "m1":I
    .end local v4    # "m2":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "bits":I
    .end local v2    # "j":I
    :cond_1
    const/4 v13, 0x0

    aput v9, p0, v13

    .line 134
    const/4 v13, 0x1

    aput v10, p0, v13

    .line 135
    const/4 v13, 0x2

    aput v11, p0, v13

    .line 136
    const/4 v13, 0x3

    aput v12, p0, v13

    .line 137
    return-void
.end method

.method public static multiply([J[J)V
    .locals 22
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .prologue
    .line 141
    const/16 v18, 0x0

    aget-wide v10, p0, v18

    .local v10, "r00":J
    const/16 v18, 0x1

    aget-wide v12, p0, v18

    .local v12, "r01":J
    const-wide/16 v14, 0x0

    .local v14, "r10":J
    const-wide/16 v16, 0x0

    .line 143
    .local v16, "r11":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ge v4, v0, :cond_1

    .line 145
    aget-wide v2, p1, v4

    .line 146
    .local v2, "bits":J
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    const/16 v18, 0x40

    move/from16 v0, v18

    if-ge v5, v0, :cond_0

    .line 148
    const/16 v18, 0x3f

    shr-long v6, v2, v18

    .local v6, "m1":J
    const/16 v18, 0x1

    shl-long v2, v2, v18

    .line 149
    and-long v18, v10, v6

    xor-long v14, v14, v18

    .line 150
    and-long v18, v12, v6

    xor-long v16, v16, v18

    .line 152
    const/16 v18, 0x3f

    shl-long v18, v12, v18

    const/16 v20, 0x8

    shr-long v8, v18, v20

    .line 153
    .local v8, "m2":J
    const/16 v18, 0x1

    ushr-long v18, v12, v18

    const/16 v20, 0x3f

    shl-long v20, v10, v20

    or-long v12, v18, v20

    .line 154
    const/16 v18, 0x1

    ushr-long v18, v10, v18

    const-wide/high16 v20, -0x1f00000000000000L    # -1.757388200993436E159

    and-long v20, v20, v8

    xor-long v10, v18, v20

    .line 146
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 143
    .end local v6    # "m1":J
    .end local v8    # "m2":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    .end local v2    # "bits":J
    .end local v5    # "j":I
    :cond_1
    const/16 v18, 0x0

    aput-wide v14, p0, v18

    .line 159
    const/16 v18, 0x1

    aput-wide v16, p0, v18

    .line 160
    return-void
.end method

.method public static multiplyP([I)V
    .locals 4
    .param p0, "x"    # [I

    .prologue
    .line 165
    invoke-static {p0}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I)I

    move-result v1

    shr-int/lit8 v0, v1, 0x8

    .line 166
    .local v0, "m":I
    const/4 v1, 0x0

    aget v2, p0, v1

    const/high16 v3, -0x1f000000

    and-int/2addr v3, v0

    xor-int/2addr v2, v3

    aput v2, p0, v1

    .line 167
    return-void
.end method

.method public static multiplyP([I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 171
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->shiftRight([I[I)I

    move-result v1

    shr-int/lit8 v0, v1, 0x8

    .line 172
    .local v0, "m":I
    const/4 v1, 0x0

    aget v2, p1, v1

    const/high16 v3, -0x1f000000

    and-int/2addr v3, v0

    xor-int/2addr v2, v3

    aput v2, p1, v1

    .line 173
    return-void
.end method

.method public static multiplyP8([I)V
    .locals 5
    .param p0, "x"    # [I

    .prologue
    .line 183
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->shiftRightN([II)I

    move-result v0

    .line 184
    .local v0, "c":I
    const/4 v1, 0x0

    aget v2, p0, v1

    sget-object v3, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->LOOKUP:[I

    ushr-int/lit8 v4, v0, 0x18

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, p0, v1

    .line 185
    return-void
.end method

.method public static multiplyP8([I[I)V
    .locals 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    .line 189
    const/16 v1, 0x8

    invoke-static {p0, v1, p1}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->shiftRightN([II[I)I

    move-result v0

    .line 190
    .local v0, "c":I
    const/4 v1, 0x0

    aget v2, p1, v1

    sget-object v3, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->LOOKUP:[I

    ushr-int/lit8 v4, v0, 0x18

    aget v3, v3, v4

    xor-int/2addr v2, v3

    aput v2, p1, v1

    .line 191
    return-void
.end method

.method public static oneAsBytes()[B
    .locals 3

    .prologue
    .line 34
    const/16 v1, 0x10

    new-array v0, v1, [B

    .line 35
    .local v0, "tmp":[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 36
    return-object v0
.end method

.method public static oneAsInts()[I
    .locals 3

    .prologue
    .line 41
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 42
    .local v0, "tmp":[I
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    .line 43
    return-object v0
.end method

.method public static oneAsLongs()[J
    .locals 4

    .prologue
    .line 48
    const/4 v1, 0x2

    new-array v0, v1, [J

    .line 49
    .local v0, "tmp":[J
    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 50
    return-object v0
.end method

.method static shiftRight([I)I
    .locals 7
    .param p0, "x"    # [I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 204
    aget v0, p0, v3

    .line 205
    .local v0, "b":I
    ushr-int/lit8 v2, v0, 0x1

    aput v2, p0, v3

    .line 206
    shl-int/lit8 v1, v0, 0x1f

    .line 207
    .local v1, "c":I
    aget v0, p0, v4

    .line 208
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v2, v1

    aput v2, p0, v4

    .line 209
    shl-int/lit8 v1, v0, 0x1f

    .line 210
    aget v0, p0, v5

    .line 211
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v2, v1

    aput v2, p0, v5

    .line 212
    shl-int/lit8 v1, v0, 0x1f

    .line 213
    aget v0, p0, v6

    .line 214
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v2, v1

    aput v2, p0, v6

    .line 215
    shl-int/lit8 v2, v0, 0x1f

    return v2
.end method

.method static shiftRight([I[I)I
    .locals 7
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    aget v0, p0, v3

    .line 230
    .local v0, "b":I
    ushr-int/lit8 v2, v0, 0x1

    aput v2, p1, v3

    .line 231
    shl-int/lit8 v1, v0, 0x1f

    .line 232
    .local v1, "c":I
    aget v0, p0, v4

    .line 233
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v2, v1

    aput v2, p1, v4

    .line 234
    shl-int/lit8 v1, v0, 0x1f

    .line 235
    aget v0, p0, v5

    .line 236
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v2, v1

    aput v2, p1, v5

    .line 237
    shl-int/lit8 v1, v0, 0x1f

    .line 238
    aget v0, p0, v6

    .line 239
    ushr-int/lit8 v2, v0, 0x1

    or-int/2addr v2, v1

    aput v2, p1, v6

    .line 240
    shl-int/lit8 v2, v0, 0x1f

    return v2
.end method

.method static shiftRight([J)J
    .locals 9
    .param p0, "x"    # [J

    .prologue
    const/16 v8, 0x3f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 245
    aget-wide v0, p0, v7

    .line 246
    .local v0, "b":J
    ushr-long v4, v0, v6

    aput-wide v4, p0, v7

    .line 247
    shl-long v2, v0, v8

    .line 248
    .local v2, "c":J
    aget-wide v0, p0, v6

    .line 249
    ushr-long v4, v0, v6

    or-long/2addr v4, v2

    aput-wide v4, p0, v6

    .line 250
    shl-long v4, v0, v8

    return-wide v4
.end method

.method static shiftRight([J[J)J
    .locals 9
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    const/16 v8, 0x3f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 255
    aget-wide v0, p0, v7

    .line 256
    .local v0, "b":J
    ushr-long v4, v0, v6

    aput-wide v4, p1, v7

    .line 257
    shl-long v2, v0, v8

    .line 258
    .local v2, "c":J
    aget-wide v0, p0, v6

    .line 259
    ushr-long v4, v0, v6

    or-long/2addr v4, v2

    aput-wide v4, p1, v6

    .line 260
    shl-long v4, v0, v8

    return-wide v4
.end method

.method static shiftRightN([II)I
    .locals 8
    .param p0, "x"    # [I
    .param p1, "n"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 274
    aget v0, p0, v4

    .local v0, "b":I
    rsub-int/lit8 v2, p1, 0x20

    .line 275
    .local v2, "nInv":I
    ushr-int v3, v0, p1

    aput v3, p0, v4

    .line 276
    shl-int v1, v0, v2

    .line 277
    .local v1, "c":I
    aget v0, p0, v5

    .line 278
    ushr-int v3, v0, p1

    or-int/2addr v3, v1

    aput v3, p0, v5

    .line 279
    shl-int v1, v0, v2

    .line 280
    aget v0, p0, v6

    .line 281
    ushr-int v3, v0, p1

    or-int/2addr v3, v1

    aput v3, p0, v6

    .line 282
    shl-int v1, v0, v2

    .line 283
    aget v0, p0, v7

    .line 284
    ushr-int v3, v0, p1

    or-int/2addr v3, v1

    aput v3, p0, v7

    .line 285
    shl-int v3, v0, v2

    return v3
.end method

.method static shiftRightN([II[I)I
    .locals 8
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 299
    aget v0, p0, v4

    .local v0, "b":I
    rsub-int/lit8 v2, p1, 0x20

    .line 300
    .local v2, "nInv":I
    ushr-int v3, v0, p1

    aput v3, p2, v4

    .line 301
    shl-int v1, v0, v2

    .line 302
    .local v1, "c":I
    aget v0, p0, v5

    .line 303
    ushr-int v3, v0, p1

    or-int/2addr v3, v1

    aput v3, p2, v5

    .line 304
    shl-int v1, v0, v2

    .line 305
    aget v0, p0, v6

    .line 306
    ushr-int v3, v0, p1

    or-int/2addr v3, v1

    aput v3, p2, v6

    .line 307
    shl-int v1, v0, v2

    .line 308
    aget v0, p0, v7

    .line 309
    ushr-int v3, v0, p1

    or-int/2addr v3, v1

    aput v3, p2, v7

    .line 310
    shl-int v3, v0, v2

    return v3
.end method

.method public static xor([B[B)V
    .locals 3
    .param p0, "x"    # [B
    .param p1, "y"    # [B

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 318
    .local v0, "i":I
    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 319
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 320
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 321
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 323
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 324
    return-void
.end method

.method public static xor([B[BII)V
    .locals 2
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "yOff"    # I
    .param p3, "yLen"    # I

    .prologue
    .line 328
    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    .line 330
    aget-byte v0, p0, p3

    add-int v1, p2, p3

    aget-byte v1, p1, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    goto :goto_0

    .line 332
    :cond_0
    return-void
.end method

.method public static xor([B[B[B)V
    .locals 3
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "z"    # [B

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 339
    .local v0, "i":I
    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 340
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 341
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 342
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 344
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 345
    return-void
.end method

.method public static xor([I[I)V
    .locals 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    aget v0, p0, v2

    aget v1, p1, v2

    xor-int/2addr v0, v1

    aput v0, p0, v2

    .line 350
    aget v0, p0, v3

    aget v1, p1, v3

    xor-int/2addr v0, v1

    aput v0, p0, v3

    .line 351
    aget v0, p0, v4

    aget v1, p1, v4

    xor-int/2addr v0, v1

    aput v0, p0, v4

    .line 352
    aget v0, p0, v5

    aget v1, p1, v5

    xor-int/2addr v0, v1

    aput v0, p0, v5

    .line 353
    return-void
.end method

.method public static xor([I[I[I)V
    .locals 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 357
    aget v0, p0, v2

    aget v1, p1, v2

    xor-int/2addr v0, v1

    aput v0, p2, v2

    .line 358
    aget v0, p0, v3

    aget v1, p1, v3

    xor-int/2addr v0, v1

    aput v0, p2, v3

    .line 359
    aget v0, p0, v4

    aget v1, p1, v4

    xor-int/2addr v0, v1

    aput v0, p2, v4

    .line 360
    aget v0, p0, v5

    aget v1, p1, v5

    xor-int/2addr v0, v1

    aput v0, p2, v5

    .line 361
    return-void
.end method

.method public static xor([J[J)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 365
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    xor-long/2addr v0, v2

    aput-wide v0, p0, v4

    .line 366
    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    xor-long/2addr v0, v2

    aput-wide v0, p0, v5

    .line 367
    return-void
.end method

.method public static xor([J[J[J)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 371
    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    xor-long/2addr v0, v2

    aput-wide v0, p2, v4

    .line 372
    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    xor-long/2addr v0, v2

    aput-wide v0, p2, v5

    .line 373
    return-void
.end method
