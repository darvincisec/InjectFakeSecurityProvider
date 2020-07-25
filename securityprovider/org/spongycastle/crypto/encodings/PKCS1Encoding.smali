.class public Lorg/spongycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final HEADER_LENGTH:I = 0xa

.field public static final NOT_STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "org.spongycastle.pkcs1.not_strict"

.field public static final STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "org.spongycastle.pkcs1.strict"


# instance fields
.field private blockBuffer:[B

.field private engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private fallback:[B

.field private forEncryption:Z

.field private forPrivateKey:Z

.field private pLen:I

.field private random:Ljava/security/SecureRandom;

.field private useStrictLength:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 55
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 56
    invoke-direct {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;I)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "pLen"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 69
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 70
    invoke-direct {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 71
    iput p2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;[B)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "fallback"    # [B

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 85
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 86
    invoke-direct {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 87
    iput-object p2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 88
    array-length v0, p2

    iput v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 89
    return-void
.end method

.method private static checkPkcs1Encoding([BI)I
    .locals 6
    .param p0, "encoded"    # [B
    .param p1, "pLen"    # I

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 265
    .local v0, "correct":I
    const/4 v4, 0x0

    aget-byte v4, p0, v4

    xor-int/lit8 v4, v4, 0x2

    or-int/2addr v0, v4

    .line 270
    array-length v4, p0

    add-int/lit8 v5, p1, 0x1

    sub-int v2, v4, v5

    .line 275
    .local v2, "plen":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 277
    aget-byte v3, p0, v1

    .line 278
    .local v3, "tmp":I
    shr-int/lit8 v4, v3, 0x1

    or-int/2addr v3, v4

    .line 279
    shr-int/lit8 v4, v3, 0x2

    or-int/2addr v3, v4

    .line 280
    shr-int/lit8 v4, v3, 0x4

    or-int/2addr v3, v4

    .line 281
    and-int/lit8 v4, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    or-int/2addr v0, v4

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v3    # "tmp":I
    :cond_0
    array-length v4, p0

    add-int/lit8 v5, p1, 0x1

    sub-int/2addr v4, v5

    aget-byte v4, p0, v4

    or-int/2addr v0, v4

    .line 292
    shr-int/lit8 v4, v0, 0x1

    or-int/2addr v0, v4

    .line 293
    shr-int/lit8 v4, v0, 0x2

    or-int/2addr v0, v4

    .line 294
    shr-int/lit8 v4, v0, 0x4

    or-int/2addr v0, v4

    .line 295
    and-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, -0x1

    xor-int/lit8 v4, v4, -0x1

    return v4
.end method

.method private decodeBlock([BII)[B
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
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 364
    iget v7, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v10, -0x1

    if-eq v7, v10, :cond_0

    .line 366
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->decodeBlockOrRandom([BII)[B

    move-result-object v4

    .line 418
    :goto_0
    return-object v4

    .line 369
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v7, p1, p2, p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 370
    .local v1, "block":[B
    iget-boolean v10, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length v7, v1

    iget-object v11, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v11}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v11

    if-eq v7, v11, :cond_1

    move v7, v8

    :goto_1
    and-int v3, v10, v7

    .line 373
    .local v3, "incorrectLength":Z
    array-length v7, v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    move-result v10

    if-ge v7, v10, :cond_2

    .line 375
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 382
    .local v2, "data":[B
    :goto_2
    aget-byte v6, v2, v9

    .line 385
    .local v6, "type":B
    iget-boolean v7, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v7, :cond_4

    .line 387
    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    move v0, v8

    .line 397
    .local v0, "badType":Z
    :goto_3
    invoke-direct {p0, v6, v2}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->findStart(B[B)I

    move-result v5

    .line 399
    .local v5, "start":I
    add-int/lit8 v5, v5, 0x1

    .line 401
    const/16 v7, 0xa

    if-ge v5, v7, :cond_6

    :goto_4
    or-int v7, v0, v8

    if-eqz v7, :cond_7

    .line 403
    invoke-static {v2, v9}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 404
    new-instance v7, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v8, "block incorrect"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v0    # "badType":Z
    .end local v2    # "data":[B
    .end local v3    # "incorrectLength":Z
    .end local v5    # "start":I
    .end local v6    # "type":B
    :cond_1
    move v7, v9

    .line 370
    goto :goto_1

    .line 379
    .restart local v3    # "incorrectLength":Z
    :cond_2
    move-object v2, v1

    .restart local v2    # "data":[B
    goto :goto_2

    .restart local v6    # "type":B
    :cond_3
    move v0, v9

    .line 387
    goto :goto_3

    .line 391
    :cond_4
    if-eq v6, v8, :cond_5

    move v0, v8

    .restart local v0    # "badType":Z
    :goto_5
    goto :goto_3

    .end local v0    # "badType":Z
    :cond_5
    move v0, v9

    goto :goto_5

    .restart local v0    # "badType":Z
    .restart local v5    # "start":I
    :cond_6
    move v8, v9

    .line 401
    goto :goto_4

    .line 408
    :cond_7
    if-eqz v3, :cond_8

    .line 410
    invoke-static {v2, v9}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 411
    new-instance v7, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v8, "block incorrect size"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 414
    :cond_8
    array-length v7, v2

    sub-int/2addr v7, v5

    new-array v4, v7, [B

    .line 416
    .local v4, "result":[B
    array-length v7, v4

    invoke-static {v2, v5, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private decodeBlockOrRandom([BII)[B
    .locals 10
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

    .line 312
    iget-boolean v6, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-nez v6, :cond_0

    .line 314
    new-instance v6, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v7, "sorry, this method is only for decryption, not for signing"

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 317
    :cond_0
    iget-object v6, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6, p1, p2, p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 319
    .local v0, "block":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v6, :cond_1

    .line 321
    iget v6, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v4, v6, [B

    .line 322
    .local v4, "random":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 329
    :goto_0
    iget-boolean v8, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length v6, v0

    iget-object v9, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v9}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v9

    if-eq v6, v9, :cond_2

    const/4 v6, 0x1

    :goto_1
    and-int/2addr v6, v8

    if-eqz v6, :cond_3

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 334
    .local v2, "data":[B
    :goto_2
    iget v6, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    invoke-static {v2, v6}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding([BI)I

    move-result v1

    .line 340
    .local v1, "correct":I
    iget v6, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v5, v6, [B

    .line 341
    .local v5, "result":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget v6, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-ge v3, v6, :cond_4

    .line 343
    array-length v6, v2

    iget v8, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    sub-int/2addr v6, v8

    add-int/2addr v6, v3

    aget-byte v6, v2, v6

    xor-int/lit8 v8, v1, -0x1

    and-int/2addr v6, v8

    aget-byte v8, v4, v3

    and-int/2addr v8, v1

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 326
    .end local v1    # "correct":I
    .end local v2    # "data":[B
    .end local v3    # "i":I
    .end local v4    # "random":[B
    .end local v5    # "result":[B
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .restart local v4    # "random":[B
    goto :goto_0

    :cond_2
    move v6, v7

    .line 329
    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_2

    .line 346
    .restart local v1    # "correct":I
    .restart local v2    # "data":[B
    .restart local v3    # "i":I
    .restart local v5    # "result":[B
    :cond_4
    invoke-static {v2, v7}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 348
    return-object v5
.end method

.method private encodeBlock([BII)[B
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 210
    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    move-result v2

    if-le p3, v2, :cond_0

    .line 212
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "input data too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 217
    .local v0, "block":[B
    iget-boolean v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v2, :cond_1

    .line 219
    const/4 v2, 0x1

    aput-byte v2, v0, v4

    .line 221
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    .line 223
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 230
    const/4 v2, 0x2

    aput-byte v2, v0, v4

    .line 236
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_1
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    .line 238
    :goto_2
    aget-byte v2, v0, v1

    if-nez v2, :cond_2

    .line 240
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2

    .line 236
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    :cond_3
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    aput-byte v4, v0, v2

    .line 246
    array-length v2, v0

    sub-int/2addr v2, p3

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v2

    return-object v2
.end method

.method private findStart(B[B)I
    .locals 9
    .param p1, "type"    # B
    .param p2, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 424
    const/4 v3, -0x1

    .line 425
    .local v3, "start":I
    const/4 v2, 0x0

    .line 427
    .local v2, "padErr":Z
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v4, p2

    if-eq v0, v4, :cond_6

    .line 429
    aget-byte v1, p2, v0

    .line 431
    .local v1, "pad":B
    if-nez v1, :cond_1

    move v8, v5

    :goto_1
    if-gez v3, :cond_2

    move v4, v5

    :goto_2
    and-int/2addr v4, v8

    if-eqz v4, :cond_0

    .line 433
    move v3, v0

    .line 435
    :cond_0
    if-ne p1, v5, :cond_3

    move v8, v5

    :goto_3
    if-gez v3, :cond_4

    move v4, v5

    :goto_4
    and-int/2addr v8, v4

    if-eq v1, v7, :cond_5

    move v4, v5

    :goto_5
    and-int/2addr v4, v8

    or-int/2addr v2, v4

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v8, v6

    .line 431
    goto :goto_1

    :cond_2
    move v4, v6

    goto :goto_2

    :cond_3
    move v8, v6

    .line 435
    goto :goto_3

    :cond_4
    move v4, v6

    goto :goto_4

    :cond_5
    move v4, v6

    goto :goto_5

    .line 438
    .end local v1    # "pad":B
    :cond_6
    if-eqz v2, :cond_7

    move v3, v7

    .line 443
    .end local v3    # "start":I
    :cond_7
    return v3
.end method

.method private useStrict()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    new-instance v4, Lorg/spongycastle/crypto/encodings/PKCS1Encoding$1;

    invoke-direct {v4, p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding$1;-><init>(Lorg/spongycastle/crypto/encodings/PKCS1Encoding;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, "strict":Ljava/lang/String;
    new-instance v4, Lorg/spongycastle/crypto/encodings/PKCS1Encoding$2;

    invoke-direct {v4, p0}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding$2;-><init>(Lorg/spongycastle/crypto/encodings/PKCS1Encoding;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    .local v0, "notStrict":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 115
    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 118
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    if-eqz v1, :cond_2

    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 2

    .prologue
    .line 162
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 164
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 166
    add-int/lit8 v0, v0, -0xa

    .line 170
    .end local v0    # "baseBlockSize":I
    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 178
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 184
    .end local v0    # "baseBlockSize":I
    :goto_0
    return v0

    .restart local v0    # "baseBlockSize":I
    :cond_0
    add-int/lit8 v0, v0, -0xa

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 132
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_1

    move-object v1, p2

    .line 134
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 136
    .local v1, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 137
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 148
    .end local v1    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .local v0, "kParam":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 150
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v2

    iput-boolean v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    .line 151
    iput-boolean p1, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    .line 152
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 154
    iget v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    if-nez v2, :cond_2

    .line 156
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "encoder requires random"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :cond_1
    move-object v0, p2

    .line 141
    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 142
    .restart local v0    # "kParam":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 144
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    goto :goto_0

    .line 158
    :cond_2
    return-void
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
    .line 194
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_0
.end method
