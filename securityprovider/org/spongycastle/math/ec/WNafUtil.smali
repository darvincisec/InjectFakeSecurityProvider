.class public abstract Lorg/spongycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;
.source "WNafUtil.java"


# static fields
.field private static final DEFAULT_WINDOW_SIZE_CUTOFFS:[I

.field private static final EMPTY_BYTES:[B

.field private static final EMPTY_INTS:[I

.field private static final EMPTY_POINTS:[Lorg/spongycastle/math/ec/ECPoint;

.field public static final PRECOMP_NAME:Ljava/lang/String; = "bc_wnaf"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    .line 11
    new-array v0, v1, [B

    sput-object v0, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    .line 12
    new-array v0, v1, [I

    sput-object v0, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    .line 13
    new-array v0, v1, [Lorg/spongycastle/math/ec/ECPoint;

    sput-object v0, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lorg/spongycastle/math/ec/ECPoint;

    return-void

    .line 9
    :array_0
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateCompactNaf(Ljava/math/BigInteger;)[I
    .locals 12
    .param p0, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v10, 0x1

    .line 17
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    ushr-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_0

    .line 19
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "\'k\' must have bitlength < 2^16"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-nez v11, :cond_2

    .line 23
    sget-object v8, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    .line 55
    :cond_1
    :goto_0
    return-object v8

    .line 26
    :cond_2
    invoke-virtual {p0, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 28
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 29
    .local v1, "bits":I
    shr-int/lit8 v11, v1, 0x1

    new-array v8, v11, [I

    .line 31
    .local v8, "naf":[I
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 33
    .local v2, "diff":Ljava/math/BigInteger;
    add-int/lit8 v4, v1, -0x1

    .local v4, "highBit":I
    const/4 v6, 0x0

    .local v6, "length":I
    const/4 v9, 0x0

    .line 34
    .local v9, "zeroes":I
    const/4 v5, 0x1

    .local v5, "i":I
    move v7, v6

    .end local v6    # "length":I
    .local v7, "length":I
    :goto_1
    if-ge v5, v4, :cond_5

    .line 36
    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-nez v11, :cond_3

    .line 38
    add-int/lit8 v9, v9, 0x1

    move v6, v7

    .line 34
    .end local v7    # "length":I
    .restart local v6    # "length":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    .end local v6    # "length":I
    .restart local v7    # "length":I
    goto :goto_1

    .line 42
    :cond_3
    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v3, -0x1

    .line 43
    .local v3, "digit":I
    :goto_3
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "length":I
    .restart local v6    # "length":I
    shl-int/lit8 v11, v3, 0x10

    or-int/2addr v11, v9

    aput v11, v8, v7

    .line 44
    const/4 v9, 0x1

    .line 45
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v3    # "digit":I
    .end local v6    # "length":I
    .restart local v7    # "length":I
    :cond_4
    move v3, v10

    .line 42
    goto :goto_3

    .line 48
    :cond_5
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "length":I
    .restart local v6    # "length":I
    const/high16 v10, 0x10000

    or-int/2addr v10, v9

    aput v10, v8, v7

    .line 50
    array-length v10, v8

    if-le v10, v6, :cond_1

    .line 52
    invoke-static {v8, v6}, Lorg/spongycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v8

    goto :goto_0
.end method

.method public static generateCompactWindowNaf(ILjava/math/BigInteger;)[I
    .locals 12
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 60
    if-ne p0, v11, :cond_1

    .line 62
    invoke-static {p1}, Lorg/spongycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v8

    .line 121
    :cond_0
    :goto_0
    return-object v8

    .line 65
    :cond_1
    if-lt p0, v11, :cond_2

    const/16 v11, 0x10

    if-le p0, v11, :cond_3

    .line 67
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "\'width\' must be in the range [2, 16]"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 69
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    ushr-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_4

    .line 71
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "\'k\' must have bitlength < 2^16"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 73
    :cond_4
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-nez v11, :cond_5

    .line 75
    sget-object v8, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    goto :goto_0

    .line 78
    :cond_5
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    div-int/2addr v11, p0

    add-int/lit8 v11, v11, 0x1

    new-array v8, v11, [I

    .line 81
    .local v8, "wnaf":[I
    shl-int v6, v10, p0

    .line 82
    .local v6, "pow2":I
    add-int/lit8 v4, v6, -0x1

    .line 83
    .local v4, "mask":I
    ushr-int/lit8 v7, v6, 0x1

    .line 85
    .local v7, "sign":I
    const/4 v0, 0x0

    .line 86
    .local v0, "carry":Z
    const/4 v2, 0x0

    .local v2, "length":I
    const/4 v5, 0x0

    .line 88
    .local v5, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    if-gt v5, v11, :cond_b

    .line 90
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-ne v11, v0, :cond_6

    .line 92
    add-int/lit8 v5, v5, 0x1

    .line 93
    goto :goto_1

    .line 96
    :cond_6
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    and-int v1, v11, v4

    .line 99
    .local v1, "digit":I
    if-eqz v0, :cond_7

    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 104
    :cond_7
    and-int v11, v1, v7

    if-eqz v11, :cond_9

    move v0, v10

    .line 105
    :goto_2
    if-eqz v0, :cond_8

    .line 107
    sub-int/2addr v1, v6

    .line 110
    :cond_8
    if-lez v2, :cond_a

    add-int/lit8 v9, v5, -0x1

    .line 111
    .local v9, "zeroes":I
    :goto_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .local v3, "length":I
    shl-int/lit8 v11, v1, 0x10

    or-int/2addr v11, v9

    aput v11, v8, v2

    .line 112
    move v5, p0

    move v2, v3

    .line 113
    .end local v3    # "length":I
    .restart local v2    # "length":I
    goto :goto_1

    .line 104
    .end local v9    # "zeroes":I
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    :cond_a
    move v9, v5

    .line 110
    goto :goto_3

    .line 116
    .end local v1    # "digit":I
    :cond_b
    array-length v10, v8

    if-le v10, v2, :cond_0

    .line 118
    invoke-static {v8, v2}, Lorg/spongycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v8

    goto :goto_0
.end method

.method public static generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 15
    .param p0, "g"    # Ljava/math/BigInteger;
    .param p1, "h"    # Ljava/math/BigInteger;

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v2, v13, 0x1

    .line 127
    .local v2, "digits":I
    new-array v5, v2, [B

    .line 129
    .local v5, "jsf":[B
    move-object v6, p0

    .local v6, "k0":Ljava/math/BigInteger;
    move-object/from16 v7, p1

    .line 130
    .local v7, "k1":Ljava/math/BigInteger;
    const/4 v3, 0x0

    .local v3, "j":I
    const/4 v0, 0x0

    .local v0, "d0":I
    const/4 v1, 0x0

    .line 132
    .local v1, "d1":I
    const/4 v10, 0x0

    .local v10, "offset":I
    move v4, v3

    .line 133
    .end local v3    # "j":I
    .local v4, "j":I
    :goto_0
    or-int v13, v0, v1

    if-nez v13, :cond_0

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    if-gt v13, v10, :cond_0

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    if-le v13, v10, :cond_6

    .line 135
    :cond_0
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    ushr-int/2addr v13, v10

    add-int/2addr v13, v0

    and-int/lit8 v8, v13, 0x7

    .local v8, "n0":I
    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    ushr-int/2addr v13, v10

    add-int/2addr v13, v1

    and-int/lit8 v9, v13, 0x7

    .line 137
    .local v9, "n1":I
    and-int/lit8 v11, v8, 0x1

    .line 138
    .local v11, "u0":I
    if-eqz v11, :cond_1

    .line 140
    and-int/lit8 v13, v8, 0x2

    sub-int/2addr v11, v13

    .line 141
    add-int v13, v8, v11

    const/4 v14, 0x4

    if-ne v13, v14, :cond_1

    and-int/lit8 v13, v9, 0x3

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    .line 143
    neg-int v11, v11

    .line 147
    :cond_1
    and-int/lit8 v12, v9, 0x1

    .line 148
    .local v12, "u1":I
    if-eqz v12, :cond_2

    .line 150
    and-int/lit8 v13, v9, 0x2

    sub-int/2addr v12, v13

    .line 151
    add-int v13, v9, v12

    const/4 v14, 0x4

    if-ne v13, v14, :cond_2

    and-int/lit8 v13, v8, 0x3

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 153
    neg-int v12, v12

    .line 157
    :cond_2
    shl-int/lit8 v13, v0, 0x1

    add-int/lit8 v14, v11, 0x1

    if-ne v13, v14, :cond_3

    .line 159
    xor-int/lit8 v0, v0, 0x1

    .line 161
    :cond_3
    shl-int/lit8 v13, v1, 0x1

    add-int/lit8 v14, v12, 0x1

    if-ne v13, v14, :cond_4

    .line 163
    xor-int/lit8 v1, v1, 0x1

    .line 166
    :cond_4
    add-int/lit8 v10, v10, 0x1

    const/16 v13, 0x1e

    if-ne v10, v13, :cond_5

    .line 168
    const/4 v10, 0x0

    .line 169
    const/16 v13, 0x1e

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 170
    const/16 v13, 0x1e

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    .line 173
    :cond_5
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    shl-int/lit8 v13, v11, 0x4

    and-int/lit8 v14, v12, 0xf

    or-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v5, v4

    move v4, v3

    .line 174
    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_0

    .line 177
    .end local v8    # "n0":I
    .end local v9    # "n1":I
    .end local v11    # "u0":I
    .end local v12    # "u1":I
    :cond_6
    array-length v13, v5

    if-le v13, v4, :cond_7

    .line 179
    invoke-static {v5, v4}, Lorg/spongycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v5

    .line 182
    :cond_7
    return-object v5
.end method

.method public static generateNaf(Ljava/math/BigInteger;)[B
    .locals 8
    .param p0, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v6, 0x1

    .line 187
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-nez v5, :cond_0

    .line 189
    sget-object v4, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    .line 210
    :goto_0
    return-object v4

    .line 192
    :cond_0
    invoke-virtual {p0, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 194
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 195
    .local v2, "digits":I
    new-array v4, v2, [B

    .line 197
    .local v4, "naf":[B
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 199
    .local v1, "diff":Ljava/math/BigInteger;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 201
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 203
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, -0x1

    :goto_2
    int-to-byte v5, v5

    aput-byte v5, v4, v7

    .line 204
    add-int/lit8 v3, v3, 0x1

    .line 199
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v5, v6

    .line 203
    goto :goto_2

    .line 208
    :cond_3
    add-int/lit8 v5, v2, -0x1

    aput-byte v6, v4, v5

    goto :goto_0
.end method

.method public static generateWindowNaf(ILjava/math/BigInteger;)[B
    .locals 11
    .param p0, "width"    # I
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 227
    if-ne p0, v10, :cond_1

    .line 229
    invoke-static {p1}, Lorg/spongycastle/math/ec/WNafUtil;->generateNaf(Ljava/math/BigInteger;)[B

    move-result-object v8

    .line 284
    :cond_0
    :goto_0
    return-object v8

    .line 232
    :cond_1
    if-lt p0, v10, :cond_2

    const/16 v10, 0x8

    if-le p0, v10, :cond_3

    .line 234
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "\'width\' must be in the range [2, 8]"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 236
    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_4

    .line 238
    sget-object v8, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    goto :goto_0

    .line 241
    :cond_4
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    new-array v8, v10, [B

    .line 244
    .local v8, "wnaf":[B
    shl-int v6, v9, p0

    .line 245
    .local v6, "pow2":I
    add-int/lit8 v4, v6, -0x1

    .line 246
    .local v4, "mask":I
    ushr-int/lit8 v7, v6, 0x1

    .line 248
    .local v7, "sign":I
    const/4 v0, 0x0

    .line 249
    .local v0, "carry":Z
    const/4 v2, 0x0

    .local v2, "length":I
    const/4 v5, 0x0

    .line 251
    .local v5, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-gt v5, v10, :cond_a

    .line 253
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-ne v10, v0, :cond_5

    .line 255
    add-int/lit8 v5, v5, 0x1

    .line 256
    goto :goto_1

    .line 259
    :cond_5
    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    and-int v1, v10, v4

    .line 262
    .local v1, "digit":I
    if-eqz v0, :cond_6

    .line 264
    add-int/lit8 v1, v1, 0x1

    .line 267
    :cond_6
    and-int v10, v1, v7

    if-eqz v10, :cond_9

    move v0, v9

    .line 268
    :goto_2
    if-eqz v0, :cond_7

    .line 270
    sub-int/2addr v1, v6

    .line 273
    :cond_7
    if-lez v2, :cond_8

    add-int/lit8 v5, v5, -0x1

    .end local v5    # "pos":I
    :cond_8
    add-int/2addr v2, v5

    .line 274
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "length":I
    .local v3, "length":I
    int-to-byte v10, v1

    aput-byte v10, v8, v2

    .line 275
    move v5, p0

    .restart local v5    # "pos":I
    move v2, v3

    .line 276
    .end local v3    # "length":I
    .restart local v2    # "length":I
    goto :goto_1

    .line 267
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 279
    .end local v1    # "digit":I
    :cond_a
    array-length v9, v8

    if-le v9, v2, :cond_0

    .line 281
    invoke-static {v8, v2}, Lorg/spongycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v8

    goto :goto_0
.end method

.method public static getNafWeight(Ljava/math/BigInteger;)I
    .locals 3
    .param p0, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 289
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_0

    .line 291
    const/4 v2, 0x0

    .line 297
    :goto_0
    return v2

    .line 294
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 295
    .local v0, "_3k":Ljava/math/BigInteger;
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 297
    .local v1, "diff":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitCount()I

    move-result v2

    goto :goto_0
.end method

.method public static getWNafPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .locals 2
    .param p0, "p"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1}, Lorg/spongycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getWNafPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .locals 1
    .param p0, "preCompInfo"    # Lorg/spongycastle/math/ec/PreCompInfo;

    .prologue
    .line 307
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_0

    .line 309
    check-cast p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;

    .line 312
    .end local p0    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    :goto_0
    return-object p0

    .restart local p0    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    :cond_0
    new-instance p0, Lorg/spongycastle/math/ec/WNafPreCompInfo;

    .end local p0    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    invoke-direct {p0}, Lorg/spongycastle/math/ec/WNafPreCompInfo;-><init>()V

    goto :goto_0
.end method

.method public static getWindowSize(I)I
    .locals 1
    .param p0, "bits"    # I

    .prologue
    .line 323
    sget-object v0, Lorg/spongycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/WNafUtil;->getWindowSize(I[I)I

    move-result v0

    return v0
.end method

.method public static getWindowSize(I[I)I
    .locals 2
    .param p0, "bits"    # I
    .param p1, "windowSizeCutoffs"    # [I

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "w":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 338
    aget v1, p1, v0

    if-ge p0, v1, :cond_1

    .line 343
    :cond_0
    add-int/lit8 v1, v0, 0x2

    return v1

    .line 336
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static mapPointWithPrecomp(Lorg/spongycastle/math/ec/ECPoint;IZLorg/spongycastle/math/ec/ECPointMap;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 11
    .param p0, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "width"    # I
    .param p2, "includeNegated"    # Z
    .param p3, "pointMap"    # Lorg/spongycastle/math/ec/ECPointMap;

    .prologue
    .line 349
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 350
    .local v0, "c":Lorg/spongycastle/math/ec/ECCurve;
    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/ec/WNafUtil;->precompute(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    .line 352
    .local v8, "wnafPreCompP":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    invoke-interface {p3, p0}, Lorg/spongycastle/math/ec/ECPointMap;->map(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 353
    .local v5, "q":Lorg/spongycastle/math/ec/ECPoint;
    const-string v10, "bc_wnaf"

    invoke-virtual {v0, v5, v10}, Lorg/spongycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v9

    .line 355
    .local v9, "wnafPreCompQ":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getTwice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 356
    .local v6, "twiceP":Lorg/spongycastle/math/ec/ECPoint;
    if-eqz v6, :cond_0

    .line 358
    invoke-interface {p3, v6}, Lorg/spongycastle/math/ec/ECPointMap;->map(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 359
    .local v7, "twiceQ":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v9, v7}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setTwice(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 362
    .end local v7    # "twiceQ":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 363
    .local v3, "preCompP":[Lorg/spongycastle/math/ec/ECPoint;
    array-length v10, v3

    new-array v4, v10, [Lorg/spongycastle/math/ec/ECPoint;

    .line 364
    .local v4, "preCompQ":[Lorg/spongycastle/math/ec/ECPoint;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v10, v3

    if-ge v1, v10, :cond_1

    .line 366
    aget-object v10, v3, v1

    invoke-interface {p3, v10}, Lorg/spongycastle/math/ec/ECPointMap;->map(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    aput-object v10, v4, v1

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {v9, v4}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 370
    if-eqz p2, :cond_3

    .line 372
    array-length v10, v4

    new-array v2, v10, [Lorg/spongycastle/math/ec/ECPoint;

    .line 373
    .local v2, "preCompNegQ":[Lorg/spongycastle/math/ec/ECPoint;
    const/4 v1, 0x0

    :goto_1
    array-length v10, v2

    if-ge v1, v10, :cond_2

    .line 375
    aget-object v10, v4, v1

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    aput-object v10, v2, v1

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 377
    :cond_2
    invoke-virtual {v9, v2}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 380
    .end local v2    # "preCompNegQ":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_3
    const-string v10, "bc_wnaf"

    invoke-virtual {v0, v5, v10, v9}, Lorg/spongycastle/math/ec/ECCurve;->setPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V

    .line 382
    return-object v5
.end method

.method public static precompute(Lorg/spongycastle/math/ec/ECPoint;IZ)Lorg/spongycastle/math/ec/WNafPreCompInfo;
    .locals 18
    .param p0, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "width"    # I
    .param p2, "includeNegated"    # Z

    .prologue
    .line 387
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 388
    .local v1, "c":Lorg/spongycastle/math/ec/ECCurve;
    const-string v15, "bc_wnaf"

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v15}, Lorg/spongycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v15

    invoke-static {v15}, Lorg/spongycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/WNafPreCompInfo;

    move-result-object v14

    .line 390
    .local v14, "wnafPreCompInfo":Lorg/spongycastle/math/ec/WNafPreCompInfo;
    const/4 v4, 0x0

    .local v4, "iniPreCompLen":I
    const/4 v15, 0x1

    const/16 v16, 0x0

    add-int/lit8 v17, p1, -0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    shl-int v12, v15, v16

    .line 392
    .local v12, "reqPreCompLen":I
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    .line 393
    .local v10, "preComp":[Lorg/spongycastle/math/ec/ECPoint;
    if-nez v10, :cond_2

    .line 395
    sget-object v10, Lorg/spongycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lorg/spongycastle/math/ec/ECPoint;

    .line 402
    :goto_0
    if-ge v4, v12, :cond_0

    .line 404
    invoke-static {v10, v12}, Lorg/spongycastle/math/ec/WNafUtil;->resizeTable([Lorg/spongycastle/math/ec/ECPoint;I)[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    .line 406
    const/4 v15, 0x1

    if-ne v12, v15, :cond_3

    .line 408
    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v16

    aput-object v16, v10, v15

    .line 485
    :cond_0
    :goto_1
    invoke-virtual {v14, v10}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 487
    if-eqz p2, :cond_9

    .line 489
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    .line 492
    .local v11, "preCompNeg":[Lorg/spongycastle/math/ec/ECPoint;
    if-nez v11, :cond_7

    .line 494
    const/4 v9, 0x0

    .line 495
    .local v9, "pos":I
    new-array v11, v12, [Lorg/spongycastle/math/ec/ECPoint;

    .line 506
    :cond_1
    :goto_2
    if-ge v9, v12, :cond_8

    .line 508
    aget-object v15, v10, v9

    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v15

    aput-object v15, v11, v9

    .line 509
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 399
    .end local v9    # "pos":I
    .end local v11    # "preCompNeg":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_2
    array-length v4, v10

    goto :goto_0

    .line 412
    :cond_3
    move v2, v4

    .line 413
    .local v2, "curPreCompLen":I
    if-nez v2, :cond_4

    .line 415
    const/4 v15, 0x0

    aput-object p0, v10, v15

    .line 416
    const/4 v2, 0x1

    .line 419
    :cond_4
    const/4 v5, 0x0

    .line 421
    .local v5, "iso":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v15, 0x2

    if-ne v12, v15, :cond_5

    .line 423
    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint;->threeTimes()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v16

    aput-object v16, v10, v15

    .line 481
    :goto_3
    sub-int v15, v12, v4

    invoke-virtual {v1, v10, v4, v15, v5}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;IILorg/spongycastle/math/ec/ECFieldElement;)V

    goto :goto_1

    .line 427
    :cond_5
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->getTwice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    .local v13, "twiceP":Lorg/spongycastle/math/ec/ECPoint;
    add-int/lit8 v15, v2, -0x1

    aget-object v8, v10, v15

    .line 428
    .local v8, "last":Lorg/spongycastle/math/ec/ECPoint;
    if-nez v13, :cond_6

    .line 430
    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    .line 431
    invoke-virtual {v14, v13}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setTwice(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 443
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-static {v1}, Lorg/spongycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v15

    const/16 v16, 0x40

    move/from16 v0, v16

    if-lt v15, v0, :cond_6

    .line 445
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    :cond_6
    move v3, v2

    .line 468
    .end local v2    # "curPreCompLen":I
    .local v3, "curPreCompLen":I
    :goto_4
    if-ge v3, v12, :cond_a

    .line 474
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "curPreCompLen":I
    .restart local v2    # "curPreCompLen":I
    invoke-virtual {v8, v13}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    aput-object v8, v10, v3

    move v3, v2

    .end local v2    # "curPreCompLen":I
    .restart local v3    # "curPreCompLen":I
    goto :goto_4

    .line 451
    .end local v3    # "curPreCompLen":I
    .restart local v2    # "curPreCompLen":I
    :pswitch_0
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 452
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 453
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v16

    .line 452
    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lorg/spongycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    .line 455
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .local v6, "iso2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 456
    .local v7, "iso3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v6}, Lorg/spongycastle/math/ec/ECPoint;->scaleX(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v15

    invoke-virtual {v15, v7}, Lorg/spongycastle/math/ec/ECPoint;->scaleY(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 458
    if-nez v4, :cond_6

    .line 460
    const/4 v15, 0x0

    aput-object v8, v10, v15

    move v3, v2

    .end local v2    # "curPreCompLen":I
    .restart local v3    # "curPreCompLen":I
    goto :goto_4

    .line 499
    .end local v3    # "curPreCompLen":I
    .end local v5    # "iso":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "iso2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "iso3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "last":Lorg/spongycastle/math/ec/ECPoint;
    .end local v13    # "twiceP":Lorg/spongycastle/math/ec/ECPoint;
    .restart local v11    # "preCompNeg":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_7
    array-length v9, v11

    .line 500
    .restart local v9    # "pos":I
    if-ge v9, v12, :cond_1

    .line 502
    invoke-static {v11, v12}, Lorg/spongycastle/math/ec/WNafUtil;->resizeTable([Lorg/spongycastle/math/ec/ECPoint;I)[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    goto/16 :goto_2

    .line 512
    :cond_8
    invoke-virtual {v14, v11}, Lorg/spongycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 515
    .end local v9    # "pos":I
    .end local v11    # "preCompNeg":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_9
    const-string v15, "bc_wnaf"

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v15, v14}, Lorg/spongycastle/math/ec/ECCurve;->setPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V

    .line 517
    return-object v14

    .restart local v3    # "curPreCompLen":I
    .restart local v5    # "iso":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v8    # "last":Lorg/spongycastle/math/ec/ECPoint;
    .restart local v13    # "twiceP":Lorg/spongycastle/math/ec/ECPoint;
    :cond_a
    move v2, v3

    .end local v3    # "curPreCompLen":I
    .restart local v2    # "curPreCompLen":I
    goto/16 :goto_3

    .line 445
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static resizeTable([Lorg/spongycastle/math/ec/ECPoint;I)[Lorg/spongycastle/math/ec/ECPoint;
    .locals 3
    .param p0, "a"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 536
    new-array v0, p1, [Lorg/spongycastle/math/ec/ECPoint;

    .line 537
    .local v0, "result":[Lorg/spongycastle/math/ec/ECPoint;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    return-object v0
.end method

.method private static trim([BI)[B
    .locals 3
    .param p0, "a"    # [B
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 522
    new-array v0, p1, [B

    .line 523
    .local v0, "result":[B
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    return-object v0
.end method

.method private static trim([II)[I
    .locals 3
    .param p0, "a"    # [I
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 529
    new-array v0, p1, [I

    .line 530
    .local v0, "result":[I
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    return-object v0
.end method
