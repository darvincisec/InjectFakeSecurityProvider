.class public Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;
.super Ljava/lang/Object;
.source "ISO9796d2PSSSigner.java"

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

.field private hLen:I

.field private keyBits:I

.field private mBuf:[B

.field private messageLength:I

.field private preBlock:[B

.field private preMStart:I

.field private preSig:[B

.field private preTLength:I

.field private random:Ljava/security/SecureRandom;

.field private recoveredMessage:[B

.field private saltLength:I

.field private standardSalt:[B

.field private trailer:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;I)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "saltLength"    # I

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;IZ)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;IZ)V
    .locals 4
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "saltLength"    # I
    .param p4, "implicit"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 78
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    .line 79
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    .line 80
    iput p3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    .line 82
    if-eqz p4, :cond_0

    .line 84
    const/16 v1, 0xbc

    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    .line 99
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/spongycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v0

    .line 90
    .local v0, "trailerObj":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    goto :goto_0

    .line 96
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

.method private ItoOSP(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "sp"    # [B

    .prologue
    .line 611
    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 612
    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 613
    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 614
    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 615
    return-void
.end method

.method private LtoOSP(J[B)V
    .locals 5
    .param p1, "l"    # J
    .param p3, "sp"    # [B

    .prologue
    const/4 v4, 0x0

    .line 624
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, v4

    .line 625
    const/4 v0, 0x1

    const/16 v1, 0x30

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 626
    const/4 v0, 0x2

    const/16 v1, 0x28

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 627
    const/4 v0, 0x3

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 628
    const/4 v0, 0x4

    const/16 v1, 0x18

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 629
    const/4 v0, 0x5

    const/16 v1, 0x10

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 630
    const/4 v0, 0x6

    const/16 v1, 0x8

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 631
    const/4 v0, 0x7

    ushr-long v2, p1, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 632
    return-void
.end method

.method private clearBlock([B)V
    .locals 2
    .param p1, "block"    # [B

    .prologue
    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 216
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method

.method private isSameAs([B[B)Z
    .locals 4
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    .line 190
    const/4 v1, 0x1

    .line 192
    .local v1, "isOkay":Z
    iget v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    array-length v3, p2

    if-eq v2, v3, :cond_0

    .line 194
    const/4 v1, 0x0

    .line 197
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-eq v0, v2, :cond_2

    .line 199
    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_1

    .line 201
    const/4 v1, 0x0

    .line 197
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_2
    return v1
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 8
    .param p1, "Z"    # [B
    .param p2, "zOff"    # I
    .param p3, "zLen"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v7, 0x0

    .line 643
    new-array v3, p4, [B

    .line 644
    .local v3, "mask":[B
    iget v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v2, v4, [B

    .line 645
    .local v2, "hashBuf":[B
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 646
    .local v0, "C":[B
    const/4 v1, 0x0

    .line 648
    .local v1, "counter":I
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 650
    :goto_0
    iget v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    div-int v4, p4, v4

    if-ge v1, v4, :cond_0

    .line 652
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ItoOSP(I[B)V

    .line 654
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 655
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 656
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 658
    iget v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    iget v5, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 663
    :cond_0
    iget v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_1

    .line 665
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->ItoOSP(I[B)V

    .line 667
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 668
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 669
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 671
    iget v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v4, v1

    array-length v5, v3

    iget v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    :cond_1
    return-object v3
.end method


# virtual methods
.method public generateSignature()[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v10}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    .line 387
    .local v3, "digSize":I
    new-array v6, v3, [B

    .line 389
    .local v6, "m2Hash":[B
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v11, 0x0

    invoke-interface {v10, v6, v11}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 391
    const/16 v10, 0x8

    new-array v0, v10, [B

    .line 392
    .local v0, "C":[B
    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    mul-int/lit8 v10, v10, 0x8

    int-to-long v10, v10

    invoke-direct {p0, v10, v11, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->LtoOSP(J[B)V

    .line 394
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v11, 0x0

    array-length v12, v0

    invoke-interface {v10, v0, v11, v12}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 396
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    const/4 v12, 0x0

    iget v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    invoke-interface {v10, v11, v12, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 398
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v11, 0x0

    array-length v12, v6

    invoke-interface {v10, v6, v11, v12}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 402
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    if-eqz v10, :cond_1

    .line 404
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    .line 412
    .local v8, "salt":[B
    :goto_0
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v11, 0x0

    array-length v12, v8

    invoke-interface {v10, v8, v11, v12}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 414
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v10}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v10

    new-array v4, v10, [B

    .line 416
    .local v4, "hash":[B
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v11, 0x0

    invoke-interface {v10, v4, v11}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 418
    const/4 v9, 0x2

    .line 419
    .local v9, "tLength":I
    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v11, 0xbc

    if-ne v10, v11, :cond_0

    .line 421
    const/4 v9, 0x1

    .line 424
    :cond_0
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v10, v10

    iget v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    sub-int/2addr v10, v11

    array-length v11, v8

    sub-int/2addr v10, v11

    iget v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v9

    add-int/lit8 v7, v10, -0x1

    .line 426
    .local v7, "off":I
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    const/4 v11, 0x1

    aput-byte v11, v10, v7

    .line 428
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    add-int/lit8 v13, v7, 0x1

    iget v14, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    const/4 v10, 0x0

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    add-int/lit8 v12, v7, 0x1

    iget v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    add-int/2addr v12, v13

    array-length v13, v8

    invoke-static {v8, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    const/4 v10, 0x0

    array-length v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v12, v12

    iget v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v9

    invoke-direct {p0, v4, v10, v11, v12}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 432
    .local v2, "dbMask":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v10, v2

    if-eq v5, v10, :cond_2

    .line 434
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    aget-byte v11, v10, v5

    aget-byte v12, v2, v5

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v10, v5

    .line 432
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 408
    .end local v2    # "dbMask":[B
    .end local v4    # "hash":[B
    .end local v5    # "i":I
    .end local v7    # "off":I
    .end local v8    # "salt":[B
    .end local v9    # "tLength":I
    :cond_1
    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    new-array v8, v10, [B

    .line 409
    .restart local v8    # "salt":[B
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v10, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0

    .line 437
    .restart local v2    # "dbMask":[B
    .restart local v4    # "hash":[B
    .restart local v5    # "i":I
    .restart local v7    # "off":I
    .restart local v9    # "tLength":I
    :cond_2
    const/4 v10, 0x0

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v12, v12

    iget v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v12, v13

    sub-int/2addr v12, v9

    iget v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    invoke-static {v4, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v11, 0xbc

    if-ne v10, v11, :cond_3

    .line 441
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    const/16 v12, -0x44

    aput-byte v12, v10, v11

    .line 449
    :goto_2
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    const/4 v11, 0x0

    aget-byte v12, v10, v11

    and-int/lit8 v12, v12, 0x7f

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 451
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v13, v13

    invoke-interface {v10, v11, v12, v13}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 453
    .local v1, "b":[B
    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    new-array v10, v10, [B

    iput-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    .line 455
    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v11, v11

    if-gt v10, v11, :cond_4

    const/4 v10, 0x1

    :goto_3
    iput-boolean v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 456
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    const/4 v13, 0x0

    iget-object v14, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 459
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 460
    const/4 v10, 0x0

    iput v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 462
    return-object v1

    .line 445
    .end local v1    # "b":[B
    :cond_3
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v11, v11

    add-int/lit8 v11, v11, -0x2

    iget v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    ushr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 446
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    iget v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    goto :goto_2

    .line 455
    .restart local v1    # "b":[B
    :cond_4
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public getRecoveredMessage()[B
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    return-object v0
.end method

.method public hasFullMessage()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 132
    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    .line 134
    .local v1, "lengthOfSalt":I
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_1

    move-object v2, p2

    .line 136
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 138
    .local v2, "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 139
    .local v0, "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    .line 165
    .end local v2    # "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3, p1, v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 167
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    iput v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    .line 169
    iget v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    .line 171
    iget v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->trailer:I

    const/16 v4, 0xbc

    if-ne v3, v4, :cond_3

    .line 173
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v3, v3

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    .line 180
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->reset()V

    .line 181
    return-void

    .line 144
    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    :cond_1
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithSalt;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 146
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithSalt;

    .line 148
    .local v2, "p":Lorg/spongycastle/crypto/params/ParametersWithSalt;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithSalt;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 149
    .restart local v0    # "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithSalt;->getSalt()[B

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    .line 150
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v1, v3

    .line 151
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v3, v3

    iget v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    if-eq v3, v4, :cond_0

    .line 153
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Fixed salt is of wrong length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    .end local v2    # "p":Lorg/spongycastle/crypto/params/ParametersWithSalt;
    :cond_2
    move-object v0, p2

    .line 158
    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 159
    .restart local v0    # "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    if-eqz p1, :cond_0

    .line 161
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->random:Ljava/security/SecureRandom;

    goto :goto_0

    .line 177
    :cond_3
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->block:[B

    array-length v3, v3

    iget-object v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, -0x2

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 358
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 359
    iput v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 360
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 364
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 367
    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    .line 369
    :cond_1
    iput-boolean v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 370
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-eqz v0, :cond_2

    .line 372
    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    .line 373
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 374
    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    .line 376
    :cond_2
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "b"    # B

    .prologue
    .line 319
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-nez v0, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    aput-byte p1, v0, v1

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    goto :goto_0
.end method

.method public update([BII)V
    .locals 2
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-nez v0, :cond_0

    .line 339
    :goto_0
    if-lez p3, :cond_0

    iget v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 341
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->update(B)V

    .line 342
    add-int/lit8 p2, p2, 0x1

    .line 343
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 347
    :cond_0
    if-lez p3, :cond_1

    .line 349
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 351
    :cond_1
    return-void
.end method

.method public updateWithRecoveredMessage([B)V
    .locals 14
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 v10, 0x0

    array-length v11, p1

    invoke-interface {v9, p1, v10, v11}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 228
    .local v0, "block":[B
    array-length v9, v0

    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 v10, v10, 0x7

    div-int/lit8 v10, v10, 0x8

    if-ge v9, v10, :cond_0

    .line 230
    iget v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->keyBits:I

    add-int/lit8 v9, v9, 0x7

    div-int/lit8 v9, v9, 0x8

    new-array v7, v9, [B

    .line 232
    .local v7, "tmp":[B
    const/4 v9, 0x0

    array-length v10, v7

    array-length v11, v0

    sub-int/2addr v10, v11

    array-length v11, v0

    invoke-static {v0, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 234
    move-object v0, v7

    .line 239
    .end local v7    # "tmp":[B
    :cond_0
    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    xor-int/lit16 v9, v9, 0xbc

    if-nez v9, :cond_1

    .line 241
    const/4 v6, 0x1

    .line 267
    .local v6, "tLength":I
    :goto_0
    iget v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v3, v9, [B

    .line 268
    .local v3, "m2Hash":[B
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 273
    array-length v9, v0

    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v6

    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    array-length v11, v0

    iget v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v6

    invoke-direct {p0, v0, v9, v10, v11}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v1

    .line 274
    .local v1, "dbMask":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v9, v1

    if-eq v2, v9, :cond_4

    .line 276
    aget-byte v9, v0, v2

    aget-byte v10, v1, v2

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 245
    .end local v1    # "dbMask":[B
    .end local v2    # "i":I
    .end local v3    # "m2Hash":[B
    .end local v6    # "tLength":I
    :cond_1
    array-length v9, v0

    add-int/lit8 v9, v9, -0x2

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    or-int v5, v9, v10

    .line 247
    .local v5, "sigTrail":I
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v9}, Lorg/spongycastle/crypto/signers/ISOTrailers;->getTrailer(Lorg/spongycastle/crypto/Digest;)Ljava/lang/Integer;

    move-result-object v8

    .line 249
    .local v8, "trailerObj":Ljava/lang/Integer;
    if-eqz v8, :cond_2

    .line 251
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v5, v9, :cond_3

    .line 253
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "signer initialised with wrong digest for trailer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 258
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "unrecognised hash in signature"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 261
    :cond_3
    const/4 v6, 0x2

    .restart local v6    # "tLength":I
    goto :goto_0

    .line 279
    .end local v5    # "sigTrail":I
    .end local v8    # "trailerObj":Ljava/lang/Integer;
    .restart local v1    # "dbMask":[B
    .restart local v2    # "i":I
    .restart local v3    # "m2Hash":[B
    :cond_4
    const/4 v9, 0x0

    aget-byte v10, v0, v9

    and-int/lit8 v10, v10, 0x7f

    int-to-byte v10, v10

    aput-byte v10, v0, v9

    .line 284
    const/4 v4, 0x0

    .line 285
    .local v4, "mStart":I
    :goto_2
    array-length v9, v0

    if-eq v4, v9, :cond_5

    .line 287
    aget-byte v9, v0, v4

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 293
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 295
    array-length v9, v0

    if-lt v4, v9, :cond_6

    .line 297
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 300
    :cond_6
    const/4 v9, 0x1

    if-le v4, v9, :cond_8

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 302
    array-length v9, v1

    sub-int/2addr v9, v4

    iget v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    sub-int/2addr v9, v10

    new-array v9, v9, [B

    iput-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    .line 304
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v11, v11

    invoke-static {v0, v4, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    .line 308
    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    .line 309
    iput v4, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preMStart:I

    .line 310
    iput v6, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preTLength:I

    .line 311
    return-void

    .line 285
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 300
    :cond_8
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public verifySignature([B)Z
    .locals 14
    .param p1, "signature"    # [B

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 475
    iget v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->hLen:I

    new-array v6, v11, [B

    .line 476
    .local v6, "m2Hash":[B
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v11, v6, v10}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 480
    const/4 v7, 0x0

    .line 482
    .local v7, "mStart":I
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    if-nez v11, :cond_3

    .line 486
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->updateWithRecoveredMessage([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    .line 502
    .local v1, "block":[B
    iget v7, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preMStart:I

    .line 503
    iget v9, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preTLength:I

    .line 505
    .local v9, "tLength":I
    iput-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    .line 506
    iput-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preBlock:[B

    .line 511
    const/16 v11, 0x8

    new-array v0, v11, [B

    .line 512
    .local v0, "C":[B
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v11, v11

    mul-int/lit8 v11, v11, 0x8

    int-to-long v12, v11

    invoke-direct {p0, v12, v13, v0}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->LtoOSP(J[B)V

    .line 514
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v12, v0

    invoke-interface {v11, v0, v10, v12}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 516
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v11, v11

    if-eqz v11, :cond_1

    .line 518
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    iget-object v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v13, v13

    invoke-interface {v11, v12, v10, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 521
    :cond_1
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v12, v6

    invoke-interface {v11, v6, v10, v12}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 524
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    if-eqz v11, :cond_4

    .line 526
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    iget-object v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->standardSalt:[B

    array-length v13, v13

    invoke-interface {v11, v12, v10, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 533
    :goto_0
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v11}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v11

    new-array v3, v11, [B

    .line 534
    .local v3, "hash":[B
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v11, v3, v10}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 536
    array-length v11, v1

    sub-int/2addr v11, v9

    array-length v12, v3

    sub-int v8, v11, v12

    .line 538
    .local v8, "off":I
    const/4 v5, 0x1

    .line 540
    .local v5, "isOkay":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v11, v3

    if-eq v4, v11, :cond_5

    .line 542
    aget-byte v11, v3, v4

    add-int v12, v8, v4

    aget-byte v12, v1, v12

    if-eq v11, v12, :cond_2

    .line 544
    const/4 v5, 0x0

    .line 540
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 488
    .end local v0    # "C":[B
    .end local v1    # "block":[B
    .end local v3    # "hash":[B
    .end local v4    # "i":I
    .end local v5    # "isOkay":Z
    .end local v8    # "off":I
    .end local v9    # "tLength":I
    :catch_0
    move-exception v2

    .line 577
    :goto_2
    return v10

    .line 495
    :cond_3
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->preSig:[B

    invoke-static {v11, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v11

    if-nez v11, :cond_0

    .line 497
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "updateWithRecoveredMessage called on different signature"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 530
    .restart local v0    # "C":[B
    .restart local v1    # "block":[B
    .restart local v9    # "tLength":I
    :cond_4
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    array-length v12, v12

    add-int/2addr v12, v7

    iget v13, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->saltLength:I

    invoke-interface {v11, v1, v12, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    goto :goto_0

    .line 548
    .restart local v3    # "hash":[B
    .restart local v4    # "i":I
    .restart local v5    # "isOkay":Z
    .restart local v8    # "off":I
    :cond_5
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 549
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 551
    if-nez v5, :cond_6

    .line 553
    iput-boolean v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->fullMessage:Z

    .line 554
    iput v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 555
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    invoke-direct {p0, v11}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    goto :goto_2

    .line 563
    :cond_6
    iget v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    if-eqz v11, :cond_7

    .line 565
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->recoveredMessage:[B

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->isSameAs([B[B)Z

    move-result v11

    if-nez v11, :cond_7

    .line 567
    iput v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 568
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v11}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    goto :goto_2

    .line 574
    :cond_7
    iput v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->messageLength:I

    .line 576
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->mBuf:[B

    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/signers/ISO9796d2PSSSigner;->clearBlock([B)V

    .line 577
    const/4 v10, 0x1

    goto :goto_2
.end method
