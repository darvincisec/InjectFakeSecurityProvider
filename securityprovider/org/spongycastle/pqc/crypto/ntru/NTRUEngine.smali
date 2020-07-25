.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;
.super Ljava/lang/Object;
.source "NTRUEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private forEncryption:Z

.field private params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

.field private privKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

.field private pubKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private MGF([BIIZ)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 15
    .param p1, "seed"    # [B
    .param p2, "N"    # I
    .param p3, "minCallsR"    # I
    .param p4, "hashSeed"    # Z

    .prologue
    .line 268
    iget-object v13, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-object v7, v13, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    .line 269
    .local v7, "hashAlg":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    .line 270
    .local v8, "hashLen":I
    mul-int v13, p3, v8

    new-array v3, v13, [B

    .line 271
    .local v3, "buf":[B
    if-eqz p4, :cond_0

    move-object/from16 v0, p1

    invoke-direct {p0, v7, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->calcHash(Lorg/spongycastle/crypto/Digest;[B)[B

    move-result-object v2

    .line 272
    .local v2, "Z":[B
    :goto_0
    const/4 v4, 0x0

    .line 273
    .local v4, "counter":I
    :goto_1
    move/from16 v0, p3

    if-ge v4, v0, :cond_1

    .line 275
    const/4 v13, 0x0

    array-length v14, v2

    invoke-interface {v7, v2, v13, v14}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 276
    invoke-direct {p0, v7, v4}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->putInt(Lorg/spongycastle/crypto/Digest;I)V

    .line 278
    invoke-direct {p0, v7}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->calcHash(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v6

    .line 279
    .local v6, "hash":[B
    const/4 v13, 0x0

    mul-int v14, v4, v8

    invoke-static {v6, v13, v3, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    add-int/lit8 v4, v4, 0x1

    .line 281
    goto :goto_1

    .end local v2    # "Z":[B
    .end local v4    # "counter":I
    .end local v6    # "hash":[B
    :cond_0
    move-object/from16 v2, p1

    .line 271
    goto :goto_0

    .line 283
    .restart local v2    # "Z":[B
    .restart local v4    # "counter":I
    :cond_1
    new-instance v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 286
    .local v9, "i":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    :goto_2
    const/4 v5, 0x0

    .line 287
    .local v5, "cur":I
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_3
    array-length v13, v3

    if-eq v10, v13, :cond_7

    .line 289
    aget-byte v13, v3, v10

    and-int/lit16 v1, v13, 0xff

    .line 290
    .local v1, "O":I
    const/16 v13, 0xf3

    if-lt v1, v13, :cond_3

    .line 287
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 295
    :cond_3
    const/4 v12, 0x0

    .local v12, "terIdx":I
    :goto_4
    const/4 v13, 0x4

    if-ge v12, v13, :cond_6

    .line 297
    rem-int/lit8 v11, v1, 0x3

    .line 298
    .local v11, "rem3":I
    iget-object v13, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v14, v11, -0x1

    aput v14, v13, v5

    .line 299
    add-int/lit8 v5, v5, 0x1

    .line 300
    move/from16 v0, p2

    if-ne v5, v0, :cond_5

    .line 317
    .end local v1    # "O":I
    .end local v11    # "rem3":I
    .end local v12    # "terIdx":I
    :cond_4
    :goto_5
    return-object v9

    .line 304
    .restart local v1    # "O":I
    .restart local v11    # "rem3":I
    .restart local v12    # "terIdx":I
    :cond_5
    sub-int v13, v1, v11

    div-int/lit8 v1, v13, 0x3

    .line 295
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 307
    .end local v11    # "rem3":I
    :cond_6
    iget-object v13, v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v14, v1, -0x1

    aput v14, v13, v5

    .line 308
    add-int/lit8 v5, v5, 0x1

    .line 309
    move/from16 v0, p2

    if-ne v5, v0, :cond_2

    goto :goto_5

    .line 315
    .end local v1    # "O":I
    .end local v12    # "terIdx":I
    :cond_7
    move/from16 v0, p2

    if-ge v5, v0, :cond_4

    .line 320
    const/4 v13, 0x0

    array-length v14, v2

    invoke-interface {v7, v2, v13, v14}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 321
    invoke-direct {p0, v7, v4}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->putInt(Lorg/spongycastle/crypto/Digest;I)V

    .line 323
    invoke-direct {p0, v7}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->calcHash(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v6

    .line 325
    .restart local v6    # "hash":[B
    move-object v3, v6

    .line 327
    add-int/lit8 v4, v4, 0x1

    .line 328
    goto :goto_2
.end method

.method private buildSData([B[BI[B[B)[B
    .locals 4
    .param p1, "oid"    # [B
    .param p2, "m"    # [B
    .param p3, "l"    # I
    .param p4, "b"    # [B
    .param p5, "hTrunc"    # [B

    .prologue
    const/4 v3, 0x0

    .line 177
    array-length v1, p1

    add-int/2addr v1, p3

    array-length v2, p4

    add-int/2addr v1, v2

    array-length v2, p5

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 179
    .local v0, "sData":[B
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p4

    invoke-static {p4, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p4

    add-int/2addr v1, v2

    array-length v2, p5

    invoke-static {p5, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    return-object v0
.end method

.method private calcHash(Lorg/spongycastle/crypto/Digest;)[B
    .locals 2
    .param p1, "hashAlg"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 341
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 343
    .local v0, "tmp":[B
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 345
    return-object v0
.end method

.method private calcHash(Lorg/spongycastle/crypto/Digest;[B)[B
    .locals 3
    .param p1, "hashAlg"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "input"    # [B

    .prologue
    const/4 v2, 0x0

    .line 350
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 352
    .local v0, "tmp":[B
    array-length v1, p2

    invoke-interface {p1, p2, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 353
    invoke-interface {p1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 355
    return-object v0
.end method

.method private copyOf([BI)[B
    .locals 3
    .param p1, "src"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 478
    new-array v0, p2, [B

    .line 480
    .local v0, "tmp":[B
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .end local p2    # "len":I
    :goto_0
    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 482
    return-object v0

    .line 480
    .restart local p2    # "len":I
    :cond_0
    array-length p2, p1

    goto :goto_0
.end method

.method private decrypt([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B
    .locals 37
    .param p1, "data"    # [B
    .param p2, "privKey"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 369
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    move-object/from16 v31, v0

    .line 370
    .local v31, "priv_t":Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v30, v0

    .line 371
    .local v30, "priv_fp":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v32, v0

    .line 372
    .local v32, "pub":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v10, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 373
    .local v10, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    move/from16 v33, v0

    .line 374
    .local v33, "q":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->db:I

    move/from16 v21, v0

    .line 375
    .local v21, "db":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    move/from16 v26, v0

    .line 376
    .local v26, "maxMsgLenBytes":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    move/from16 v22, v0

    .line 377
    .local v22, "dm0":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    move/from16 v29, v0

    .line 378
    .local v29, "pkLen":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    move/from16 v27, v0

    .line 379
    .local v27, "minCallsMask":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    move/from16 v24, v0

    .line 380
    .local v24, "hashSeed":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-object v5, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    .line 382
    .local v5, "oid":[B
    const/16 v4, 0xff

    move/from16 v0, v26

    if-le v0, v4, :cond_0

    .line 384
    new-instance v4, Lorg/spongycastle/crypto/DataLengthException;

    const-string v35, "maxMsgLenBytes values bigger than 255 are not supported"

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 387
    :cond_0
    div-int/lit8 v11, v21, 0x8

    .line 389
    .local v11, "bLen":I
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v0, v10, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v23

    .line 390
    .local v23, "e":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->decrypt(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v18

    .line 392
    .local v18, "ci":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    const/4 v4, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    move/from16 v0, v22

    if-ge v4, v0, :cond_1

    .line 394
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v35, "Less than dm0 coefficients equal -1"

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 396
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    move/from16 v0, v22

    if-ge v4, v0, :cond_2

    .line 398
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v35, "Less than dm0 coefficients equal 0"

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 400
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    move/from16 v0, v22

    if-ge v4, v0, :cond_3

    .line 402
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v35, "Less than dm0 coefficients equal 1"

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 405
    :cond_3
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 406
    .local v15, "cR":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 407
    move/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 408
    invoke-virtual {v15}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 409
    .local v16, "cR4":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 410
    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v19

    .line 411
    .local v19, "coR4":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v27

    move/from16 v3, v24

    invoke-direct {v0, v1, v10, v2, v3}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->MGF([BIIZ)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v25

    .line 412
    .local v25, "mask":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v14, v18

    .line 413
    .local v14, "cMTrin":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 414
    invoke-virtual {v14}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    .line 415
    invoke-virtual {v14}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary3Sves()[B

    move-result-object v13

    .line 417
    .local v13, "cM":[B
    new-array v8, v11, [B

    .line 418
    .local v8, "cb":[B
    const/4 v4, 0x0

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-static {v13, v4, v8, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    aget-byte v4, v13, v11

    and-int/lit16 v7, v4, 0xff

    .line 420
    .local v7, "cl":I
    move/from16 v0, v26

    if-le v7, v0, :cond_4

    .line 422
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Message too long: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ">"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 424
    :cond_4
    new-array v6, v7, [B

    .line 425
    .local v6, "cm":[B
    add-int/lit8 v4, v11, 0x1

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-static {v13, v4, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    array-length v4, v13

    add-int/lit8 v35, v11, 0x1

    add-int v35, v35, v7

    sub-int v4, v4, v35

    new-array v0, v4, [B

    move-object/from16 v28, v0

    .line 427
    .local v28, "p0":[B
    add-int/lit8 v4, v11, 0x1

    add-int/2addr v4, v7

    const/16 v35, 0x0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v13, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    move-object/from16 v0, v28

    array-length v4, v0

    new-array v4, v4, [B

    move-object/from16 v0, v28

    invoke-static {v0, v4}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_5

    .line 430
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v35, "The message is not followed by zeroes"

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 434
    :cond_5
    invoke-virtual/range {v32 .. v33}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v12

    .line 435
    .local v12, "bh":[B
    div-int/lit8 v4, v29, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    move-result-object v9

    .local v9, "hTrunc":[B
    move-object/from16 v4, p0

    .line 436
    invoke-direct/range {v4 .. v9}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->buildSData([B[BI[B[B)[B

    move-result-object v34

    .line 438
    .local v34, "sData":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingPoly([B[B)Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    move-result-object v20

    .line 439
    .local v20, "cr":Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v17

    .line 440
    .local v17, "cRPrime":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 441
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 443
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v35, "Invalid message encoding"

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 446
    :cond_6
    return-object v6
.end method

.method private encrypt([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B
    .locals 31
    .param p1, "m"    # [B
    .param p2, "pubKey"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    .prologue
    .line 104
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v26, v0

    .line 105
    .local v26, "pub":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v11, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 106
    .local v11, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    move/from16 v27, v0

    .line 108
    .local v27, "q":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    move/from16 v21, v0

    .line 109
    .local v21, "maxLenBytes":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->db:I

    move/from16 v16, v0

    .line 110
    .local v16, "db":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v15, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    .line 111
    .local v15, "bufferLenBits":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    move/from16 v17, v0

    .line 112
    .local v17, "dm0":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    move/from16 v25, v0

    .line 113
    .local v25, "pkLen":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    move/from16 v22, v0

    .line 114
    .local v22, "minCallsMask":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    move/from16 v18, v0

    .line 115
    .local v18, "hashSeed":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-object v5, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    .line 117
    .local v5, "oid":[B
    move-object/from16 v0, p1

    array-length v7, v0

    .line 118
    .local v7, "l":I
    const/16 v4, 0xff

    move/from16 v0, v21

    if-le v0, v4, :cond_0

    .line 120
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "llen values bigger than 1 are not supported"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    :cond_0
    move/from16 v0, v21

    if-le v7, v0, :cond_1

    .line 124
    new-instance v4, Lorg/spongycastle/crypto/DataLengthException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Message too long: "

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v30, ">"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 130
    :cond_1
    div-int/lit8 v4, v16, 0x8

    new-array v8, v4, [B

    .line 131
    .local v8, "b":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 132
    add-int/lit8 v4, v21, 0x1

    sub-int/2addr v4, v7

    new-array v0, v4, [B

    move-object/from16 v24, v0

    .line 133
    .local v24, "p0":[B
    div-int/lit8 v4, v15, 0x8

    new-array v10, v4, [B

    .line 135
    .local v10, "M":[B
    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v0, v8

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-static {v8, v4, v10, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    array-length v4, v8

    int-to-byte v6, v7

    aput-byte v6, v10, v4

    .line 137
    const/4 v4, 0x0

    array-length v6, v8

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v4, v10, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    const/4 v4, 0x0

    array-length v6, v8

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    add-int v6, v6, v30

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-static {v0, v4, v10, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    invoke-static {v10, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Sves([BI)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v19

    .line 143
    .local v19, "mTrin":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual/range {v26 .. v27}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v14

    .line 144
    .local v14, "bh":[B
    div-int/lit8 v4, v25, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    move-result-object v9

    .local v9, "hTrunc":[B
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    .line 145
    invoke-direct/range {v4 .. v9}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->buildSData([B[BI[B[B)[B

    move-result-object v29

    .line 147
    .local v29, "sData":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingPoly([B[B)Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    move-result-object v28

    .line 148
    .local v28, "r":Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    .line 149
    .local v12, "R":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v12}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 150
    .local v13, "R4":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 151
    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v23

    .line 152
    .local v23, "oR4":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-direct {v0, v1, v11, v2, v3}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->MGF([BIIZ)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v20

    .line 153
    .local v20, "mask":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual/range {v19 .. v20}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 154
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    .line 156
    const/4 v4, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    move/from16 v0, v17

    if-lt v4, v0, :cond_1

    .line 160
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    move/from16 v0, v17

    if-lt v4, v0, :cond_1

    .line 164
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    move/from16 v0, v17

    if-lt v4, v0, :cond_1

    .line 169
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 170
    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    .line 171
    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v4

    return-object v4
.end method

.method private generateBlindingCoeffs(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I
    .locals 6
    .param p1, "ig"    # Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;
    .param p2, "dr"    # I

    .prologue
    .line 238
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 240
    .local v0, "N":I
    new-array v3, v0, [I

    .line 241
    .local v3, "r":[I
    const/4 v1, -0x1

    .local v1, "coeff":I
    :goto_0
    const/4 v5, 0x1

    if-gt v1, v5, :cond_2

    .line 243
    const/4 v4, 0x0

    .line 244
    .local v4, "t":I
    :cond_0
    :goto_1
    if-ge v4, p2, :cond_1

    .line 246
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->nextIndex()I

    move-result v2

    .line 247
    .local v2, "i":I
    aget v5, v3, v2

    if-nez v5, :cond_0

    .line 249
    aput v1, v3, v2

    .line 250
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 241
    .end local v2    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 255
    .end local v4    # "t":I
    :cond_2
    return-object v3
.end method

.method private generateBlindingPoly([B[B)Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    .locals 9
    .param p1, "seed"    # [B
    .param p2, "M"    # [B

    .prologue
    .line 203
    new-instance v1, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    invoke-direct {v1, p1, v7}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;-><init>([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    .line 205
    .local v1, "ig":Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v7, v7, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 207
    new-instance v3, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v7, v7, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    invoke-direct {p0, v1, v7}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 208
    .local v3, "r1":Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    new-instance v4, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v7, v7, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    invoke-direct {p0, v1, v7}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 209
    .local v4, "r2":Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    new-instance v5, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v7, v7, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    invoke-direct {p0, v1, v7}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 210
    .local v5, "r3":Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    new-instance v7, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;

    invoke-direct {v7, v3, v4, v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/ProductFormPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;)V

    .line 223
    .end local v3    # "r1":Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    .end local v4    # "r2":Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    .end local v5    # "r3":Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;
    :goto_0
    return-object v7

    .line 214
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v7, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->dr:I

    .line 215
    .local v0, "dr":I
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v6, v7, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    .line 216
    .local v6, "sparse":Z
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;I)[I

    move-result-object v2

    .line 217
    .local v2, "r":[I
    if-eqz v6, :cond_1

    .line 219
    new-instance v7, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {v7, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    goto :goto_0

    .line 223
    :cond_1
    new-instance v7, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v7, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    goto :goto_0
.end method

.method private log2(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 487
    const/16 v0, 0x800

    if-ne p1, v0, :cond_0

    .line 489
    const/16 v0, 0xb

    return v0

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "log2 not fully implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private putInt(Lorg/spongycastle/crypto/Digest;I)V
    .locals 1
    .param p1, "hashAlg"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "counter"    # I

    .prologue
    .line 333
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 334
    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 335
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 336
    int-to-byte v0, p2

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 337
    return-void
.end method


# virtual methods
.method protected decrypt(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 4
    .param p1, "e"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "priv_t"    # Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    .param p3, "priv_fp"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .prologue
    const/4 v3, 0x3

    .line 458
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v2, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz v2, :cond_0

    .line 460
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v2, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 461
    .local v0, "a":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v0, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    .line 462
    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 468
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v2, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    .line 469
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    .line 471
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v2, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 472
    .local v1, "c":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    :goto_1
    invoke-virtual {v1, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    .line 473
    return-object v1

    .line 466
    .end local v0    # "a":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v1    # "c":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v2, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .restart local v0    # "a":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    goto :goto_0

    .line 471
    :cond_1
    new-instance v2, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v2, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v2, p3, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    goto :goto_1
.end method

.method protected encrypt(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 2
    .param p1, "m"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "r"    # Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;
    .param p3, "pubKey"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .prologue
    .line 188
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p3, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 189
    .local v0, "e":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, p1, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 190
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    .line 191
    return-object v0
.end method

.method public getInputBlockSize()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-direct {p0, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->log2(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forEncryption"    # Z
    .param p2, "parameters"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 42
    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->forEncryption:Z

    .line 43
    if-eqz p1, :cond_1

    .line 45
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 47
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 49
    .local v0, "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    .line 50
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->pubKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    .line 58
    .end local v0    # "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "parameters":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->pubKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    .line 65
    :goto_1
    return-void

    .line 54
    .restart local p2    # "parameters":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    .line 55
    check-cast p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    .end local p2    # "parameters":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->pubKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    goto :goto_0

    .line 62
    .restart local p2    # "parameters":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    .end local p2    # "parameters":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->privKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    .line 63
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->privKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    goto :goto_1
.end method

.method public processBlock([BII)[B
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 80
    new-array v0, p3, [B

    .line 82
    .local v0, "tmp":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->pubKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->encrypt([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B

    move-result-object v1

    .line 90
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->privKey:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEngine;->decrypt([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B

    move-result-object v1

    goto :goto_0
.end method
