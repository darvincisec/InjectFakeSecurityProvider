.class public Lorg/spongycastle/crypto/signers/ISO9796d2Signer;
.super Ljava/lang/Object;
.source "ISO9796d2Signer.java"

# interfaces
.implements Lorg/spongycastle/crypto/SignerWithRecovery;


# static fields
.field public static final TRAILER_IMPLICIT:I = 0xbc

.field public static final TRAILER_RIPEMD128:I = 0x32cc

.field public static final TRAILER_RIPEMD160:I = 0x31cc

.field public static final TRAILER_SHA1:I = 0x33cc

.field public static final TRAILER_SHA256:I = 0x34cc

.field public static final TRAILER_SHA384:I = 0x36cc

.field public static final TRAILER_SHA512:I = 0x35cc

.field public static final TRAILER_WHIRLPOOL:I = 0x37cc


# instance fields
.field private block:[B

.field private cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/spongycastle/crypto/Digest;

.field private fullMessage:Z

.field private keyBits:I

.field private mBuf:[B

.field private messageLength:I

.field private preBlock:[B

.field private preSig:[B

.field private recoveredMessage:[B

.field private trailer:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Z)V
    .locals 4
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "implicit"    # Z

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 62
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    .line 64
    if-eqz p3, :cond_0

    .line 66
    const/16 v1, 0xbc

    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    .line 81
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/spongycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v0

    .line 72
    .local v0, "trailerObj":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    goto :goto_0

    .line 78
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no valid trailer for digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private clearBlock([B)V
    .locals 2
    .param p1, "block"    # [B

    .prologue
    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 171
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method private isSameAs([B[B)Z
    .locals 4
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    .line 127
    const/4 v1, 0x1

    .line 129
    .local v1, "isOkay":Z
    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v3, v3

    if-le v2, v3, :cond_2

    .line 131
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    array-length v3, p2

    if-le v2, v3, :cond_0

    .line 133
    const/4 v1, 0x0

    .line 136
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v2, v2

    if-eq v0, v2, :cond_5

    .line 138
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_1

    .line 140
    const/4 v1, 0x0

    .line 136
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "i":I
    :cond_2
    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    array-length v3, p2

    if-eq v2, v3, :cond_3

    .line 148
    const/4 v1, 0x0

    .line 151
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v2, p2

    if-eq v0, v2, :cond_5

    .line 153
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_4

    .line 155
    const/4 v1, 0x0

    .line 151
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    :cond_5
    return v1
.end method

.method private returnFalse([B)Z
    .locals 2
    .param p1, "block"    # [B

    .prologue
    const/4 v1, 0x0

    .line 591
    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 593
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 594
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 596
    return v1
.end method


# virtual methods
.method public generateSignature()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 334
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v8}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 336
    .local v2, "digSize":I
    const/4 v6, 0x0

    .line 337
    .local v6, "t":I
    const/4 v1, 0x0

    .line 339
    .local v1, "delta":I
    iget v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    const/16 v10, 0xbc

    if-ne v8, v10, :cond_0

    .line 341
    const/16 v6, 0x8

    .line 342
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v8, v8

    sub-int/2addr v8, v2

    add-int/lit8 v1, v8, -0x1

    .line 343
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-interface {v8, v10, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 344
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    const/16 v11, -0x44

    aput-byte v11, v8, v10

    .line 355
    :goto_0
    const/4 v3, 0x0

    .line 356
    .local v3, "header":B
    iget v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v8, v2

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x4

    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    sub-int v7, v8, v10

    .line 358
    .local v7, "x":I
    if-lez v7, :cond_1

    .line 360
    iget v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/lit8 v10, v7, 0x7

    div-int/lit8 v10, v10, 0x8

    sub-int v5, v8, v10

    .line 361
    .local v5, "mR":I
    const/16 v3, 0x60

    .line 363
    sub-int/2addr v1, v5

    .line 365
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-static {v8, v9, v10, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    new-array v8, v5, [B

    iput-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 379
    .end local v5    # "mR":I
    :goto_1
    add-int/lit8 v8, v1, -0x1

    if-lez v8, :cond_3

    .line 381
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_2
    if-eqz v4, :cond_2

    .line 383
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v10, -0x45

    aput-byte v10, v8, v4

    .line 381
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 348
    .end local v3    # "header":B
    .end local v4    # "i":I
    .end local v7    # "x":I
    :cond_0
    const/16 v6, 0x10

    .line 349
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v8, v8

    sub-int/2addr v8, v2

    add-int/lit8 v1, v8, -0x2

    .line 350
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-interface {v8, v10, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 351
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v10, v10

    add-int/lit8 v10, v10, -0x2

    iget v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    ushr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    .line 352
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    goto :goto_0

    .line 371
    .restart local v3    # "header":B
    .restart local v7    # "x":I
    :cond_1
    const/16 v3, 0x40

    .line 372
    iget v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    sub-int/2addr v1, v8

    .line 374
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    invoke-static {v8, v9, v10, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    iget v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    new-array v8, v8, [B

    iput-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    goto :goto_1

    .line 385
    .restart local v4    # "i":I
    :cond_2
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    add-int/lit8 v10, v1, -0x1

    aget-byte v11, v8, v10

    xor-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    aput-byte v11, v8, v10

    .line 386
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v10, 0xb

    aput-byte v10, v8, v9

    .line 387
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    aget-byte v10, v8, v9

    or-int/2addr v10, v3

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 395
    .end local v4    # "i":I
    :goto_3
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v11, v11

    invoke-interface {v8, v10, v9, v11}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 397
    .local v0, "b":[B
    and-int/lit8 v8, v3, 0x20

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 398
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v11, v11

    invoke-static {v8, v9, v10, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    iput v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 402
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v8}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 403
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    invoke-direct {p0, v8}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 405
    return-object v0

    .line 391
    .end local v0    # "b":[B
    :cond_3
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    const/16 v10, 0xa

    aput-byte v10, v8, v9

    .line 392
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    aget-byte v10, v8, v9

    or-int/2addr v10, v3

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    goto :goto_3

    .restart local v0    # "b":[B
    :cond_4
    move v8, v9

    .line 397
    goto :goto_4
.end method

.method public getRecoveredMessage()[B
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    return-object v0
.end method

.method public hasFullMessage()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 100
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 102
    .local v0, "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 104
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    .line 106
    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->keyBits:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    .line 108
    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->trailer:I

    const/16 v2, 0xbc

    if-ne v1, v2, :cond_0

    .line 110
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    .line 117
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->reset()V

    .line 118
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->block:[B

    array-length v1, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 307
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 308
    iput v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 309
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 311
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 316
    :cond_0
    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 317
    iput-boolean v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 319
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    if-eqz v0, :cond_1

    .line 321
    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    .line 322
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 323
    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    .line 325
    :cond_1
    return-void
.end method

.method public update(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 273
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 275
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    aput-byte p1, v0, v1

    .line 280
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 281
    return-void
.end method

.method public update([BII)V
    .locals 2
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 291
    :goto_0
    if-lez p3, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 293
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->update(B)V

    .line 294
    add-int/lit8 p2, p2, 0x1

    .line 295
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 299
    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 300
    return-void
.end method

.method public updateWithRecoveredMessage([B)V
    .locals 10
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 178
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length v7, p1

    invoke-interface {v6, p1, v9, v7}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 180
    .local v0, "block":[B
    aget-byte v6, v0, v9

    and-int/lit16 v6, v6, 0xc0

    xor-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_0

    .line 182
    new-instance v6, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v7, "malformed signature"

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 185
    :cond_0
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v0, v6

    and-int/lit8 v6, v6, 0xf

    xor-int/lit8 v6, v6, 0xc

    if-eqz v6, :cond_1

    .line 187
    new-instance v6, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v7, "malformed signature"

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 190
    :cond_1
    const/4 v1, 0x0

    .line 192
    .local v1, "delta":I
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    xor-int/lit16 v6, v6, 0xbc

    if-nez v6, :cond_3

    .line 194
    const/4 v1, 0x1

    .line 219
    :goto_0
    const/4 v2, 0x0

    .line 221
    .local v2, "mStart":I
    const/4 v2, 0x0

    :goto_1
    array-length v6, v0

    if-eq v2, v6, :cond_2

    .line 223
    aget-byte v6, v0, v2

    and-int/lit8 v6, v6, 0xf

    xor-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_6

    .line 229
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 231
    array-length v6, v0

    sub-int/2addr v6, v1

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    sub-int v3, v6, v7

    .line 236
    .local v3, "off":I
    sub-int v6, v3, v2

    if-gtz v6, :cond_7

    .line 238
    new-instance v6, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v7, "malformed block"

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 198
    .end local v2    # "mStart":I
    .end local v3    # "off":I
    :cond_3
    array-length v6, v0

    add-int/lit8 v6, v6, -0x2

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int v4, v6, v7

    .line 199
    .local v4, "sigTrail":I
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v6}, Lorg/spongycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/spongycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v5

    .line 201
    .local v5, "trailerObj":Ljava/lang/Integer;
    if-eqz v5, :cond_4

    .line 203
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v4, v6, :cond_5

    .line 205
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "signer initialised with wrong digest for trailer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 210
    :cond_4
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "unrecognised hash in signature"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 213
    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    .line 221
    .end local v4    # "sigTrail":I
    .end local v5    # "trailerObj":Ljava/lang/Integer;
    .restart local v2    # "mStart":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 244
    .restart local v3    # "off":I
    :cond_7
    aget-byte v6, v0, v9

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_8

    .line 246
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 248
    sub-int v6, v3, v2

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 249
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v7, v7

    invoke-static {v0, v2, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    :goto_2
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    .line 260
    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    .line 262
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v8, v8

    invoke-interface {v6, v7, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 263
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v6, v6

    iput v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 264
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v8, v8

    invoke-static {v6, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    return-void

    .line 253
    :cond_8
    iput-boolean v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 255
    sub-int v6, v3, v2

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 256
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v7, v7

    invoke-static {v0, v2, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public verifySignature([B)Z
    .locals 13
    .param p1, "signature"    # [B

    .prologue
    .line 415
    const/4 v0, 0x0

    .line 417
    .local v0, "block":[B
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    if-nez v10, :cond_0

    .line 421
    :try_start_0
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 v11, 0x0

    array-length v12, p1

    invoke-interface {v10, p1, v11, v12}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 441
    :goto_0
    const/4 v10, 0x0

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xc0

    xor-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_2

    .line 443
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v10

    .line 586
    :goto_1
    return v10

    .line 423
    :catch_0
    move-exception v2

    .line 425
    .local v2, "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_1

    .line 430
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    invoke-static {v10, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v10

    if-nez v10, :cond_1

    .line 432
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "updateWithRecoveredMessage called on different signature"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 435
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    .line 437
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preSig:[B

    .line 438
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->preBlock:[B

    goto :goto_0

    .line 446
    :cond_2
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v0, v10

    and-int/lit8 v10, v10, 0xf

    xor-int/lit8 v10, v10, 0xc

    if-eqz v10, :cond_3

    .line 448
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v10

    goto :goto_1

    .line 451
    :cond_3
    const/4 v1, 0x0

    .line 453
    .local v1, "delta":I
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/lit16 v10, v10, 0xbc

    if-nez v10, :cond_5

    .line 455
    const/4 v1, 0x1

    .line 480
    :goto_2
    const/4 v6, 0x0

    .line 482
    .local v6, "mStart":I
    const/4 v6, 0x0

    :goto_3
    array-length v10, v0

    if-eq v6, v10, :cond_4

    .line 484
    aget-byte v10, v0, v6

    and-int/lit8 v10, v10, 0xf

    xor-int/lit8 v10, v10, 0xa

    if-nez v10, :cond_8

    .line 490
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 495
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v10}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v10

    new-array v3, v10, [B

    .line 497
    .local v3, "hash":[B
    array-length v10, v0

    sub-int/2addr v10, v1

    array-length v11, v3

    sub-int v7, v10, v11

    .line 502
    .local v7, "off":I
    sub-int v10, v7, v6

    if-gtz v10, :cond_9

    .line 504
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v10

    goto :goto_1

    .line 459
    .end local v3    # "hash":[B
    .end local v6    # "mStart":I
    .end local v7    # "off":I
    :cond_5
    array-length v10, v0

    add-int/lit8 v10, v10, -0x2

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    or-int v8, v10, v11

    .line 460
    .local v8, "sigTrail":I
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v10}, Lorg/spongycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/spongycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v9

    .line 462
    .local v9, "trailerObj":Ljava/lang/Integer;
    if-eqz v9, :cond_6

    .line 464
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v8, v10, :cond_7

    .line 466
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "signer initialised with wrong digest for trailer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 471
    :cond_6
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "unrecognised hash in signature"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 474
    :cond_7
    const/4 v1, 0x2

    goto :goto_2

    .line 482
    .end local v8    # "sigTrail":I
    .end local v9    # "trailerObj":Ljava/lang/Integer;
    .restart local v6    # "mStart":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 510
    .restart local v3    # "hash":[B
    .restart local v7    # "off":I
    :cond_9
    const/4 v10, 0x0

    aget-byte v10, v0, v10

    and-int/lit8 v10, v10, 0x20

    if-nez v10, :cond_e

    .line 512
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 515
    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    sub-int v11, v7, v6

    if-le v10, v11, :cond_a

    .line 517
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v10

    goto/16 :goto_1

    .line 520
    :cond_a
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v10}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 521
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    sub-int v11, v7, v6

    invoke-interface {v10, v0, v6, v11}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 522
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v11, 0x0

    invoke-interface {v10, v3, v11}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 524
    const/4 v5, 0x1

    .line 526
    .local v5, "isOkay":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    array-length v10, v3

    if-eq v4, v10, :cond_c

    .line 528
    add-int v10, v7, v4

    aget-byte v11, v0, v10

    aget-byte v12, v3, v4

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 529
    add-int v10, v7, v4

    aget-byte v10, v0, v10

    if-eqz v10, :cond_b

    .line 531
    const/4 v5, 0x0

    .line 526
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 535
    :cond_c
    if-nez v5, :cond_d

    .line 537
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v10

    goto/16 :goto_1

    .line 540
    :cond_d
    sub-int v10, v7, v6

    new-array v10, v10, [B

    iput-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 541
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v12, v12

    invoke-static {v0, v6, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    :goto_5
    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    if-eqz v10, :cond_12

    .line 575
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    invoke-direct {p0, v10, v11}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->isSameAs([B[B)Z

    move-result v10

    if-nez v10, :cond_12

    .line 577
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v10

    goto/16 :goto_1

    .line 545
    .end local v4    # "i":I
    .end local v5    # "isOkay":Z
    :cond_e
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->fullMessage:Z

    .line 547
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v11, 0x0

    invoke-interface {v10, v3, v11}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 549
    const/4 v5, 0x1

    .line 551
    .restart local v5    # "isOkay":Z
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    array-length v10, v3

    if-eq v4, v10, :cond_10

    .line 553
    add-int v10, v7, v4

    aget-byte v11, v0, v10

    aget-byte v12, v3, v4

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v0, v10

    .line 554
    add-int v10, v7, v4

    aget-byte v10, v0, v10

    if-eqz v10, :cond_f

    .line 556
    const/4 v5, 0x0

    .line 551
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 560
    :cond_10
    if-nez v5, :cond_11

    .line 562
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->returnFalse([B)Z

    move-result v10

    goto/16 :goto_1

    .line 565
    :cond_11
    sub-int v10, v7, v6

    new-array v10, v10, [B

    iput-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    .line 566
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->recoveredMessage:[B

    array-length v12, v12

    invoke-static {v0, v6, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 581
    :cond_12
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->mBuf:[B

    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 582
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->clearBlock([B)V

    .line 584
    const/4 v10, 0x0

    iput v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2Signer;->messageLength:I

    .line 586
    const/4 v10, 0x1

    goto/16 :goto_1
.end method
