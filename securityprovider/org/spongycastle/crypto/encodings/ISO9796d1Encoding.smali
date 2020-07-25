.class public Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;
.super Ljava/lang/Object;
.source "ISO9796d1Encoding.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final SIX:Ljava/math/BigInteger;

.field private static final SIXTEEN:Ljava/math/BigInteger;

.field private static inverse:[B

.field private static shadows:[B


# instance fields
.field private bitSize:I

.field private engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private modulus:Ljava/math/BigInteger;

.field private padBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 21
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->SIXTEEN:Ljava/math/BigInteger;

    .line 22
    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->SIX:Ljava/math/BigInteger;

    .line 24
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    .line 26
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->inverse:[B

    return-void

    .line 24
    nop

    :array_0
    .array-data 1
        0xet
        0x3t
        0x5t
        0x8t
        0x9t
        0x4t
        0x2t
        0xft
        0x0t
        0xdt
        0xbt
        0x6t
        0x7t
        0xat
        0xct
        0x1t
    .end array-data

    .line 26
    :array_1
    .array-data 1
        0x8t
        0xft
        0x6t
        0x1t
        0x5t
        0x2t
        0xbt
        0xct
        0x3t
        0x4t
        0xdt
        0xat
        0xet
        0x9t
        0x0t
        0x7t
    .end array-data
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    .line 38
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 39
    return-void
.end method

.method private static convertOutputDecryptOnly(Ljava/math/BigInteger;)[B
    .locals 5
    .param p0, "result"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x0

    .line 278
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 279
    .local v0, "output":[B
    aget-byte v2, v0, v4

    if-nez v2, :cond_0

    .line 281
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    .line 282
    .local v1, "tmp":[B
    const/4 v2, 0x1

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    .end local v1    # "tmp":[B
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method private decodeBlock([BII)[B
    .locals 17
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v3

    .line 210
    .local v3, "block":[B
    const/4 v10, 0x1

    .line 211
    .local v10, "r":I
    move-object/from16 v0, p0

    iget v13, v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v13, v13, 0xd

    div-int/lit8 v11, v13, 0x10

    .line 213
    .local v11, "t":I
    new-instance v8, Ljava/math/BigInteger;

    const/4 v13, 0x1

    invoke-direct {v8, v13, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 215
    .local v8, "iS":Ljava/math/BigInteger;
    sget-object v13, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->SIXTEEN:Ljava/math/BigInteger;

    invoke-virtual {v8, v13}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->SIX:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 217
    move-object v7, v8

    .line 228
    .local v7, "iR":Ljava/math/BigInteger;
    :goto_0
    invoke-static {v7}, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->convertOutputDecryptOnly(Ljava/math/BigInteger;)[B

    move-result-object v3

    .line 230
    array-length v13, v3

    add-int/lit8 v13, v13, -0x1

    aget-byte v13, v3, v13

    and-int/lit8 v13, v13, 0xf

    const/4 v14, 0x6

    if-eq v13, v14, :cond_2

    .line 232
    new-instance v13, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v14, "invalid forcing byte in block"

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 219
    .end local v7    # "iR":Ljava/math/BigInteger;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v13, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->SIXTEEN:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->SIX:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 221
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v13, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .restart local v7    # "iR":Ljava/math/BigInteger;
    goto :goto_0

    .line 225
    .end local v7    # "iR":Ljava/math/BigInteger;
    :cond_1
    new-instance v13, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v14, "resulting integer iS or (modulus - iS) is not congruent to 6 mod 16"

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 235
    .restart local v7    # "iR":Ljava/math/BigInteger;
    :cond_2
    array-length v13, v3

    add-int/lit8 v13, v13, -0x1

    array-length v14, v3

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, v3, v14

    and-int/lit16 v14, v14, 0xff

    ushr-int/lit8 v14, v14, 0x4

    sget-object v15, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->inverse:[B

    array-length v0, v3

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x2

    aget-byte v16, v3, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shr-int/lit8 v16, v16, 0x4

    aget-byte v15, v15, v16

    shl-int/lit8 v15, v15, 0x4

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v3, v13

    .line 236
    const/4 v13, 0x0

    sget-object v14, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    const/4 v15, 0x1

    aget-byte v15, v3, v15

    and-int/lit16 v15, v15, 0xff

    ushr-int/lit8 v15, v15, 0x4

    aget-byte v14, v14, v15

    shl-int/lit8 v14, v14, 0x4

    sget-object v15, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    const/16 v16, 0x1

    aget-byte v16, v3, v16

    and-int/lit8 v16, v16, 0xf

    aget-byte v15, v15, v16

    or-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v3, v13

    .line 239
    const/4 v5, 0x0

    .line 240
    .local v5, "boundaryFound":Z
    const/4 v4, 0x0

    .line 242
    .local v4, "boundary":I
    array-length v13, v3

    add-int/lit8 v6, v13, -0x1

    .local v6, "i":I
    :goto_1
    array-length v13, v3

    mul-int/lit8 v14, v11, 0x2

    sub-int/2addr v13, v14

    if-lt v6, v13, :cond_5

    .line 244
    sget-object v13, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    aget-byte v14, v3, v6

    and-int/lit16 v14, v14, 0xff

    ushr-int/lit8 v14, v14, 0x4

    aget-byte v13, v13, v14

    shl-int/lit8 v13, v13, 0x4

    sget-object v14, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    aget-byte v15, v3, v6

    and-int/lit8 v15, v15, 0xf

    aget-byte v14, v14, v15

    or-int v12, v13, v14

    .line 247
    .local v12, "val":I
    add-int/lit8 v13, v6, -0x1

    aget-byte v13, v3, v13

    xor-int/2addr v13, v12

    and-int/lit16 v13, v13, 0xff

    if-eqz v13, :cond_3

    .line 249
    if-nez v5, :cond_4

    .line 251
    const/4 v5, 0x1

    .line 252
    add-int/lit8 v13, v6, -0x1

    aget-byte v13, v3, v13

    xor-int/2addr v13, v12

    and-int/lit16 v10, v13, 0xff

    .line 253
    add-int/lit8 v4, v6, -0x1

    .line 242
    :cond_3
    add-int/lit8 v6, v6, -0x2

    goto :goto_1

    .line 257
    :cond_4
    new-instance v13, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v14, "invalid tsums in block"

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 262
    .end local v12    # "val":I
    :cond_5
    const/4 v13, 0x0

    aput-byte v13, v3, v4

    .line 264
    array-length v13, v3

    sub-int/2addr v13, v4

    div-int/lit8 v13, v13, 0x2

    new-array v9, v13, [B

    .line 266
    .local v9, "nblock":[B
    const/4 v6, 0x0

    :goto_2
    array-length v13, v9

    if-ge v6, v13, :cond_6

    .line 268
    mul-int/lit8 v13, v6, 0x2

    add-int/2addr v13, v4

    add-int/lit8 v13, v13, 0x1

    aget-byte v13, v3, v13

    aput-byte v13, v9, v6

    .line 266
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 271
    :cond_6
    add-int/lit8 v13, v10, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    .line 273
    return-object v9
.end method

.method private encodeBlock([BII)[B
    .locals 12
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 152
    iget v8, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v8, v8, 0x8

    new-array v0, v8, [B

    .line 153
    .local v0, "block":[B
    iget v8, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    add-int/lit8 v4, v8, 0x1

    .line 154
    .local v4, "r":I
    move v7, p3

    .line 155
    .local v7, "z":I
    iget v8, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v8, v8, 0xd

    div-int/lit8 v5, v8, 0x10

    .line 157
    .local v5, "t":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 159
    sub-int v8, v5, v7

    if-le v1, v8, :cond_0

    .line 161
    add-int v8, p2, p3

    sub-int v9, v5, v1

    sub-int/2addr v8, v9

    array-length v9, v0

    sub-int/2addr v9, v5

    sub-int v10, v5, v1

    invoke-static {p1, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    :goto_1
    add-int/2addr v1, v7

    goto :goto_0

    .line 166
    :cond_0
    array-length v8, v0

    add-int v9, v1, v7

    sub-int/2addr v8, v9

    invoke-static {p1, p2, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 170
    :cond_1
    array-length v8, v0

    mul-int/lit8 v9, v5, 0x2

    sub-int v1, v8, v9

    :goto_2
    array-length v8, v0

    if-eq v1, v8, :cond_2

    .line 172
    array-length v8, v0

    sub-int/2addr v8, v5

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v8, v9

    aget-byte v6, v0, v8

    .line 174
    .local v6, "val":B
    sget-object v8, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    and-int/lit16 v9, v6, 0xff

    ushr-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    shl-int/lit8 v8, v8, 0x4

    sget-object v9, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->shadows:[B

    and-int/lit8 v10, v6, 0xf

    aget-byte v9, v9, v10

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 176
    add-int/lit8 v8, v1, 0x1

    aput-byte v6, v0, v8

    .line 170
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 179
    .end local v6    # "val":B
    :cond_2
    array-length v8, v0

    mul-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    aget-byte v9, v0, v8

    xor-int/2addr v9, v4

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 180
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v0, v9

    shl-int/lit8 v9, v9, 0x4

    or-int/lit8 v9, v9, 0x6

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 182
    iget v8, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    add-int/lit8 v8, v8, -0x1

    rem-int/lit8 v8, v8, 0x8

    rsub-int/lit8 v2, v8, 0x8

    .line 183
    .local v2, "maxBit":I
    const/4 v3, 0x0

    .line 185
    .local v3, "offSet":I
    const/16 v8, 0x8

    if-eq v2, v8, :cond_3

    .line 187
    aget-byte v8, v0, v11

    const/16 v9, 0xff

    ushr-int/2addr v9, v2

    and-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v11

    .line 188
    aget-byte v8, v0, v11

    const/16 v9, 0x80

    ushr-int/2addr v9, v2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v11

    .line 197
    :goto_3
    iget-object v8, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v9, v0

    sub-int/2addr v9, v3

    invoke-interface {v8, v0, v3, v9}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v8

    return-object v8

    .line 192
    :cond_3
    aput-byte v11, v0, v11

    .line 193
    const/4 v8, 0x1

    aget-byte v9, v0, v8

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 194
    const/4 v3, 0x1

    goto :goto_3
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 80
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 82
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v1, 0x2

    .line 86
    .end local v0    # "baseBlockSize":I
    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 97
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 103
    .end local v0    # "baseBlockSize":I
    :goto_0
    return v0

    .restart local v0    # "baseBlockSize":I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v1, 0x2

    goto :goto_0
.end method

.method public getPadBits()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    return v0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 54
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 56
    .local v1, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 63
    .end local v1    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .restart local v0    # "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 65
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->modulus:Ljava/math/BigInteger;

    .line 66
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->bitSize:I

    .line 68
    iput-boolean p1, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    .line 69
    return-void

    :cond_0
    move-object v0, p2

    .line 60
    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_0
.end method

.method public setPadBits(I)V
    .locals 2
    .param p1, "padBits"    # I

    .prologue
    .line 114
    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "padBits > 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput p1, p0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;->padBits:I

    .line 120
    return-void
.end method
