.class public Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;
.super Ljava/lang/Object;
.source "ArrayEncoder.java"


# static fields
.field private static final BIT1_TABLE:[I

.field private static final BIT2_TABLE:[I

.field private static final BIT3_TABLE:[I

.field private static final COEFF1_TABLE:[I

.field private static final COEFF2_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/16 v1, 0x9

    .line 33
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->COEFF1_TABLE:[I

    .line 34
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->COEFF2_TABLE:[I

    .line 55
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->BIT1_TABLE:[I

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->BIT2_TABLE:[I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->BIT3_TABLE:[I

    return-void

    .line 33
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        -0x1
        -0x1
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x0
        0x1
        -0x1
        0x0
        0x1
        -0x1
        0x0
        0x1
    .end array-data

    .line 55
    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    .line 56
    :array_3
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    .line 57
    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeMod3Sves([BI)[I
    .locals 11
    .param p0, "data"    # [B
    .param p1, "N"    # I

    .prologue
    .line 155
    new-array v8, p1, [I

    .line 156
    .local v8, "coeffs":[I
    const/4 v5, 0x0

    .line 157
    .local v5, "coeffIndex":I
    const/4 v3, 0x0

    .local v3, "bitIndex":I
    :goto_0
    array-length v9, p0

    mul-int/lit8 v9, v9, 0x8

    if-ge v3, v9, :cond_0

    .line 159
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "bitIndex":I
    .local v4, "bitIndex":I
    invoke-static {p0, v3}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v0

    .line 160
    .local v0, "bit1":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "bitIndex":I
    .restart local v3    # "bitIndex":I
    invoke-static {p0, v4}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v1

    .line 161
    .local v1, "bit2":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "bitIndex":I
    .restart local v4    # "bitIndex":I
    invoke-static {p0, v3}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v2

    .line 162
    .local v2, "bit3":I
    mul-int/lit8 v9, v0, 0x4

    mul-int/lit8 v10, v1, 0x2

    add-int/2addr v9, v10

    add-int v7, v9, v2

    .line 163
    .local v7, "coeffTableIndex":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "coeffIndex":I
    .local v6, "coeffIndex":I
    sget-object v9, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->COEFF1_TABLE:[I

    aget v9, v9, v7

    aput v9, v8, v5

    .line 164
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "coeffIndex":I
    .restart local v5    # "coeffIndex":I
    sget-object v9, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->COEFF2_TABLE:[I

    aget v9, v9, v7

    aput v9, v8, v6

    .line 166
    add-int/lit8 v9, p1, -0x2

    if-le v5, v9, :cond_1

    move v3, v4

    .line 171
    .end local v0    # "bit1":I
    .end local v1    # "bit2":I
    .end local v2    # "bit3":I
    .end local v4    # "bitIndex":I
    .end local v7    # "coeffTableIndex":I
    .restart local v3    # "bitIndex":I
    :cond_0
    return-object v8

    .end local v3    # "bitIndex":I
    .restart local v0    # "bit1":I
    .restart local v1    # "bit2":I
    .restart local v2    # "bit3":I
    .restart local v4    # "bitIndex":I
    .restart local v7    # "coeffTableIndex":I
    :cond_1
    move v3, v4

    .line 170
    .end local v4    # "bitIndex":I
    .restart local v3    # "bitIndex":I
    goto :goto_0
.end method

.method public static decodeMod3Tight(Ljava/io/InputStream;I)[I
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "N"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    int-to-double v2, p1

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 284
    .local v1, "size":I
    invoke-static {p0, v1}, Lorg/spongycastle/pqc/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 285
    .local v0, "arr":[B
    invoke-static {v0, p1}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->decodeMod3Tight([BI)[I

    move-result-object v2

    return-object v2
.end method

.method public static decodeMod3Tight([BI)[I
    .locals 8
    .param p0, "b"    # [B
    .param p1, "N"    # I

    .prologue
    const-wide/16 v6, 0x3

    const/4 v4, 0x1

    .line 259
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v4, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 260
    .local v2, "sum":Ljava/math/BigInteger;
    new-array v0, p1, [I

    .line 261
    .local v0, "coeffs":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 263
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v0, v1

    .line 264
    aget v3, v0, v1

    if-le v3, v4, :cond_0

    .line 266
    aget v3, v0, v1

    add-int/lit8 v3, v3, -0x3

    aput v3, v0, v1

    .line 268
    :cond_0
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_1
    return-object v0
.end method

.method public static decodeModQ(Ljava/io/InputStream;II)[I
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "N"    # I
    .param p2, "q"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v1, v3, 0x1f

    .line 138
    .local v1, "qBits":I
    mul-int v3, p1, v1

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v2, v3, 0x8

    .line 139
    .local v2, "size":I
    invoke-static {p0, v2}, Lorg/spongycastle/pqc/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 140
    .local v0, "arr":[B
    invoke-static {v0, p1, p2}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object v3

    return-object v3
.end method

.method public static decodeModQ([BII)[I
    .locals 8
    .param p0, "data"    # [B
    .param p1, "N"    # I
    .param p2, "q"    # I

    .prologue
    .line 108
    new-array v4, p1, [I

    .line 109
    .local v4, "coeffs":[I
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v6

    rsub-int/lit8 v2, v6, 0x1f

    .line 110
    .local v2, "bitsPerCoeff":I
    mul-int v5, p1, v2

    .line 111
    .local v5, "numBits":I
    const/4 v3, 0x0

    .line 112
    .local v3, "coeffIndex":I
    const/4 v1, 0x0

    .local v1, "bitIndex":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 114
    if-lez v1, :cond_0

    rem-int v6, v1, v2

    if-nez v6, :cond_0

    .line 116
    add-int/lit8 v3, v3, 0x1

    .line 118
    :cond_0
    invoke-static {p0, v1}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v0

    .line 119
    .local v0, "bit":I
    aget v6, v4, v3

    rem-int v7, v1, v2

    shl-int v7, v0, v7

    add-int/2addr v6, v7

    aput v6, v4, v3

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "bit":I
    :cond_1
    return-object v4
.end method

.method public static encodeMod3Sves([I)[B
    .locals 15
    .param p0, "arr"    # [I

    .prologue
    const/4 v14, 0x3

    .line 185
    array-length v12, p0

    mul-int/lit8 v12, v12, 0x3

    add-int/lit8 v12, v12, 0x1

    div-int/lit8 v10, v12, 0x2

    .line 186
    .local v10, "numBits":I
    add-int/lit8 v12, v10, 0x7

    div-int/lit8 v11, v12, 0x8

    .line 187
    .local v11, "numBytes":I
    new-array v6, v11, [B

    .line 188
    .local v6, "data":[B
    const/4 v0, 0x0

    .line 189
    .local v0, "bitIndex":I
    const/4 v3, 0x0

    .line 190
    .local v3, "byteIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :cond_0
    array-length v12, p0

    div-int/lit8 v12, v12, 0x2

    mul-int/lit8 v12, v12, 0x2

    if-ge v7, v12, :cond_3

    .line 192
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    aget v12, p0, v7

    add-int/lit8 v4, v12, 0x1

    .line 193
    .local v4, "coeff1":I
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .restart local v7    # "i":I
    aget v12, p0, v8

    add-int/lit8 v5, v12, 0x1

    .line 194
    .local v5, "coeff2":I
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 196
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Illegal encoding!"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 198
    :cond_1
    mul-int/lit8 v12, v4, 0x3

    add-int v1, v12, v5

    .line 199
    .local v1, "bitTableIndex":I
    new-array v2, v14, [I

    const/4 v12, 0x0

    sget-object v13, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->BIT1_TABLE:[I

    aget v13, v13, v1

    aput v13, v2, v12

    const/4 v12, 0x1

    sget-object v13, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->BIT2_TABLE:[I

    aget v13, v13, v1

    aput v13, v2, v12

    const/4 v12, 0x2

    sget-object v13, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->BIT3_TABLE:[I

    aget v13, v13, v1

    aput v13, v2, v12

    .line 200
    .local v2, "bits":[I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    if-ge v9, v14, :cond_0

    .line 202
    aget-byte v12, v6, v3

    aget v13, v2, v9

    shl-int/2addr v13, v0

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v6, v3

    .line 203
    const/4 v12, 0x7

    if-ne v0, v12, :cond_2

    .line 205
    const/4 v0, 0x0

    .line 206
    add-int/lit8 v3, v3, 0x1

    .line 200
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 210
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    .end local v1    # "bitTableIndex":I
    .end local v2    # "bits":[I
    .end local v4    # "coeff1":I
    .end local v5    # "coeff2":I
    .end local v9    # "j":I
    :cond_3
    return-object v6
.end method

.method public static encodeMod3Tight([I)[B
    .locals 10
    .param p0, "intArray"    # [I

    .prologue
    const-wide/16 v8, 0x3

    .line 224
    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 225
    .local v5, "sum":Ljava/math/BigInteger;
    array-length v6, p0

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 227
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 228
    aget v6, p0, v3

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 225
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    array-length v7, p0

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x7

    div-int/lit8 v4, v6, 0x8

    .line 232
    .local v4, "size":I
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 234
    .local v0, "arr":[B
    array-length v6, v0

    if-ge v6, v4, :cond_1

    .line 237
    new-array v2, v4, [B

    .line 238
    .local v2, "arr2":[B
    const/4 v6, 0x0

    array-length v7, v0

    sub-int v7, v4, v7

    array-length v8, v0

    invoke-static {v0, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 247
    .end local v0    # "arr":[B
    .end local v2    # "arr2":[B
    .local v1, "arr":[B
    :goto_1
    return-object v2

    .line 242
    .end local v1    # "arr":[B
    .restart local v0    # "arr":[B
    :cond_1
    array-length v6, v0

    if-le v6, v4, :cond_2

    .line 245
    const/4 v6, 0x1

    array-length v7, v0

    invoke-static {v0, v6, v7}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :cond_2
    move-object v1, v0

    .end local v0    # "arr":[B
    .restart local v1    # "arr":[B
    move-object v2, v0

    .line 247
    goto :goto_1
.end method

.method public static encodeModQ([II)[B
    .locals 11
    .param p0, "a"    # [I
    .param p1, "q"    # I

    .prologue
    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v9

    rsub-int/lit8 v1, v9, 0x1f

    .line 71
    .local v1, "bitsPerCoeff":I
    array-length v9, p0

    mul-int v7, v9, v1

    .line 72
    .local v7, "numBits":I
    add-int/lit8 v9, v7, 0x7

    div-int/lit8 v8, v9, 0x8

    .line 73
    .local v8, "numBytes":I
    new-array v4, v8, [B

    .line 74
    .local v4, "data":[B
    const/4 v0, 0x0

    .line 75
    .local v0, "bitIndex":I
    const/4 v2, 0x0

    .line 76
    .local v2, "byteIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, p0

    if-ge v5, v9, :cond_2

    .line 78
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v1, :cond_1

    .line 80
    aget v9, p0, v5

    shr-int/2addr v9, v6

    and-int/lit8 v3, v9, 0x1

    .line 81
    .local v3, "currentBit":I
    aget-byte v9, v4, v2

    shl-int v10, v3, v0

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 82
    const/4 v9, 0x7

    if-ne v0, v9, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 78
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 76
    .end local v3    # "currentBit":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 93
    .end local v6    # "j":I
    :cond_2
    return-object v4
.end method

.method private static getBit([BI)I
    .locals 3
    .param p0, "arr"    # [B
    .param p1, "bitIndex"    # I

    .prologue
    .line 290
    div-int/lit8 v1, p1, 0x8

    .line 291
    .local v1, "byteIndex":I
    aget-byte v2, p0, v1

    and-int/lit16 v0, v2, 0xff

    .line 292
    .local v0, "arrElem":I
    rem-int/lit8 v2, p1, 0x8

    shr-int v2, v0, v2

    and-int/lit8 v2, v2, 0x1

    return v2
.end method
