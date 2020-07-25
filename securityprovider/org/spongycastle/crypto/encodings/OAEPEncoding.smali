.class public Lorg/spongycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;
.source "OAEPEncoding.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private defHash:[B

.field private engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private mgf1Hash:Lorg/spongycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .prologue
    .line 30
    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA1()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;[B)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;[B)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;[B)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "mgf1Hash"    # Lorg/spongycastle/crypto/Digest;
    .param p4, "encodingParams"    # [B

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 55
    iput-object p3, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    .line 56
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    .line 58
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 60
    if-eqz p4, :cond_0

    .line 62
    array-length v0, p4

    invoke-interface {p2, p4, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2, v0, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;[B)V
    .locals 0
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "encodingParams"    # [B

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p2, p3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;[B)V

    .line 46
    return-void
.end method

.method private ItoOSP(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "sp"    # [B

    .prologue
    .line 303
    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 304
    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 305
    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 306
    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 307
    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 8
    .param p1, "Z"    # [B
    .param p2, "zOff"    # I
    .param p3, "zLen"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v7, 0x0

    .line 318
    new-array v3, p4, [B

    .line 319
    .local v3, "mask":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v2, v4, [B

    .line 320
    .local v2, "hashBuf":[B
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 321
    .local v0, "C":[B
    const/4 v1, 0x0

    .line 323
    .local v1, "counter":I
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 325
    :goto_0
    array-length v4, v2

    div-int v4, p4, v4

    if-ge v1, v4, :cond_0

    .line 327
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 329
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 330
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 331
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 333
    array-length v4, v2

    mul-int/2addr v4, v1

    array-length v5, v2

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    :cond_0
    array-length v4, v2

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_1

    .line 340
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 342
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 343
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 344
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 346
    array-length v4, v2

    mul-int/2addr v4, v1

    array-length v5, v3

    array-length v6, v2

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    :cond_1
    return-object v3
.end method


# virtual methods
.method public decodeBlock([BII)[B
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
    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v4

    .line 216
    .local v4, "data":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v13}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v13

    new-array v3, v13, [B

    .line 224
    .local v3, "block":[B
    const/4 v13, 0x0

    array-length v14, v3

    array-length v15, v4

    sub-int/2addr v14, v15

    array-length v15, v4

    invoke-static {v4, v13, v3, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    array-length v13, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v14, v14

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    if-ge v13, v14, :cond_0

    const/4 v11, 0x1

    .line 231
    .local v11, "shortData":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v13, v13

    array-length v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v15, v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v15, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v14, v15}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v9

    .line 234
    .local v9, "mask":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v13, v13

    if-eq v7, v13, :cond_1

    .line 236
    aget-byte v13, v3, v7

    aget-byte v14, v9, v7

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v3, v7

    .line 234
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 226
    .end local v7    # "i":I
    .end local v9    # "mask":[B
    .end local v11    # "shortData":Z
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 242
    .restart local v7    # "i":I
    .restart local v9    # "mask":[B
    .restart local v11    # "shortData":Z
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v14, v14

    array-length v15, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v14, v15}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v9

    .line 244
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v13

    :goto_2
    array-length v13, v3

    if-eq v7, v13, :cond_2

    .line 246
    aget-byte v13, v3, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v14, v14

    sub-int v14, v7, v14

    aget-byte v14, v9, v14

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v3, v7

    .line 244
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 253
    :cond_2
    const/4 v6, 0x0

    .line 255
    .local v6, "defHashWrong":Z
    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v13, v13

    if-eq v7, v13, :cond_4

    .line 257
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    aget-byte v13, v13, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v14, v14

    add-int/2addr v14, v7

    aget-byte v14, v3, v14

    if-eq v13, v14, :cond_3

    .line 259
    const/4 v6, 0x1

    .line 255
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 266
    :cond_4
    array-length v12, v3

    .line 268
    .local v12, "start":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v13, v13

    mul-int/lit8 v8, v13, 0x2

    .local v8, "index":I
    :goto_4
    array-length v13, v3

    if-eq v8, v13, :cond_8

    .line 270
    aget-byte v13, v3, v8

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    :goto_5
    array-length v14, v3

    if-ne v12, v14, :cond_7

    const/4 v14, 0x1

    :goto_6
    and-int/2addr v13, v14

    if-eqz v13, :cond_5

    .line 272
    move v12, v8

    .line 268
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 270
    :cond_6
    const/4 v13, 0x0

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    goto :goto_6

    .line 276
    :cond_8
    array-length v13, v3

    add-int/lit8 v13, v13, -0x1

    if-le v12, v13, :cond_9

    const/4 v13, 0x1

    :goto_7
    aget-byte v14, v3, v12

    const/4 v15, 0x1

    if-eq v14, v15, :cond_a

    const/4 v14, 0x1

    :goto_8
    or-int v5, v13, v14

    .line 278
    .local v5, "dataStartWrong":Z
    add-int/lit8 v12, v12, 0x1

    .line 280
    or-int v13, v6, v11

    or-int/2addr v13, v5

    if-eqz v13, :cond_b

    .line 282
    const/4 v13, 0x0

    invoke-static {v3, v13}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 283
    new-instance v13, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v14, "data wrong"

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 276
    .end local v5    # "dataStartWrong":Z
    :cond_9
    const/4 v13, 0x0

    goto :goto_7

    :cond_a
    const/4 v14, 0x0

    goto :goto_8

    .line 289
    .restart local v5    # "dataStartWrong":Z
    :cond_b
    array-length v13, v3

    sub-int/2addr v13, v12

    new-array v10, v13, [B

    .line 291
    .local v10, "output":[B
    const/4 v13, 0x0

    array-length v14, v10

    invoke-static {v3, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    return-object v10
.end method

.method public encodeBlock([BII)[B
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 143
    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v4

    if-le p3, v4, :cond_0

    .line 145
    new-instance v4, Lorg/spongycastle/crypto/DataLengthException;

    const-string v5, "input data too long"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 153
    .local v0, "block":[B
    array-length v4, v0

    sub-int/2addr v4, p3

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    array-length v4, v0

    sub-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    aput-byte v5, v0, v4

    .line 167
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    iget-object v6, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    new-array v3, v4, [B

    .line 174
    .local v3, "seed":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 179
    array-length v4, v3

    array-length v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    invoke-direct {p0, v3, v7, v4, v5}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 181
    .local v2, "mask":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v4

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-eq v1, v4, :cond_1

    .line 183
    aget-byte v4, v0, v1

    iget-object v5, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    sub-int v5, v1, v5

    aget-byte v5, v2, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    array-length v5, v0

    iget-object v6, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-direct {p0, v0, v4, v5, v6}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 197
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    if-eq v1, v4, :cond_2

    .line 199
    aget-byte v4, v0, v1

    aget-byte v5, v2, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 202
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v4

    return-object v4
.end method

.method public getInputBlockSize()I
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 97
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 99
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 103
    .end local v0    # "baseBlockSize":I
    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 111
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 117
    .end local v0    # "baseBlockSize":I
    :goto_0
    return v0

    .restart local v0    # "baseBlockSize":I
    :cond_0
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 77
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 79
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 81
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    .line 88
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 90
    iput-boolean p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    .line 91
    return-void

    .line 85
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

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
    .line 127
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_0
.end method
