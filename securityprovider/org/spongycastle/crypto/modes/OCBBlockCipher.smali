.class public Lorg/spongycastle/crypto/modes/OCBBlockCipher;
.super Ljava/lang/Object;
.source "OCBBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10


# instance fields
.field private Checksum:[B

.field private KtopInput:[B

.field private L:Ljava/util/Vector;

.field private L_Asterisk:[B

.field private L_Dollar:[B

.field private OffsetHASH:[B

.field private OffsetMAIN:[B

.field private OffsetMAIN_0:[B

.field private Stretch:[B

.field private Sum:[B

.field private forEncryption:Z

.field private hashBlock:[B

.field private hashBlockCount:J

.field private hashBlockPos:I

.field private hashCipher:Lorg/spongycastle/crypto/BlockCipher;

.field private initialAssociatedText:[B

.field private macBlock:[B

.field private macSize:I

.field private mainBlock:[B

.field private mainBlockCount:J

.field private mainBlockPos:I

.field private mainCipher:Lorg/spongycastle/crypto/BlockCipher;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "hashCipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "mainCipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    const/16 v1, 0x10

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->KtopInput:[B

    .line 54
    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Stretch:[B

    .line 55
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    .line 65
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    .line 73
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hashCipher\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hashCipher\' must have a block size of 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    if-nez p2, :cond_2

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'mainCipher\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'mainCipher\' must have a block size of 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hashCipher\' and \'mainCipher\' must be the same algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_4
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 99
    iput-object p2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 100
    return-void
.end method

.method protected static OCB_double([B)[B
    .locals 6
    .param p0, "block"    # [B

    .prologue
    .line 546
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 547
    .local v1, "result":[B
    invoke-static {p0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->shiftLeft([B[B)I

    move-result v0

    .line 552
    .local v0, "carry":I
    const/16 v2, 0xf

    aget-byte v3, v1, v2

    const/16 v4, 0x87

    rsub-int/lit8 v5, v0, 0x1

    shl-int/lit8 v5, v5, 0x3

    ushr-int/2addr v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 554
    return-object v1
.end method

.method protected static OCB_extend([BI)V
    .locals 1
    .param p0, "block"    # [B
    .param p1, "pos"    # I

    .prologue
    .line 559
    const/16 v0, -0x80

    aput-byte v0, p0, p1

    .line 560
    :goto_0
    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 562
    const/4 v0, 0x0

    aput-byte v0, p0, p1

    goto :goto_0

    .line 564
    :cond_0
    return-void
.end method

.method protected static OCB_ntz(J)I
    .locals 6
    .param p0, "x"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 568
    cmp-long v1, p0, v4

    if-nez v1, :cond_1

    .line 570
    const/16 v0, 0x40

    .line 579
    :cond_0
    return v0

    .line 573
    :cond_1
    const/4 v0, 0x0

    .line 574
    .local v0, "n":I
    :goto_0
    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 576
    add-int/lit8 v0, v0, 0x1

    .line 577
    const/4 v1, 0x1

    ushr-long/2addr p0, v1

    goto :goto_0
.end method

.method protected static shiftLeft([B[B)I
    .locals 4
    .param p0, "block"    # [B
    .param p1, "output"    # [B

    .prologue
    .line 584
    const/16 v2, 0x10

    .line 585
    .local v2, "i":I
    const/4 v1, 0x0

    .line 586
    .local v1, "bit":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 588
    aget-byte v3, p0, v2

    and-int/lit16 v0, v3, 0xff

    .line 589
    .local v0, "b":I
    shl-int/lit8 v3, v0, 0x1

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 590
    ushr-int/lit8 v3, v0, 0x7

    and-int/lit8 v1, v3, 0x1

    .line 591
    goto :goto_0

    .line 592
    .end local v0    # "b":I
    :cond_0
    return v1
.end method

.method protected static xor([B[B)V
    .locals 3
    .param p0, "block"    # [B
    .param p1, "val"    # [B

    .prologue
    .line 597
    const/16 v0, 0xf

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 599
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 597
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 601
    :cond_0
    return-void
.end method


# virtual methods
.method protected clear([B)V
    .locals 1
    .param p1, "bs"    # [B

    .prologue
    .line 449
    if-eqz p1, :cond_0

    .line 451
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 453
    :cond_0
    return-void
.end method

.method public doFinal([BI)I
    .locals 7
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 350
    const/4 v2, 0x0

    .line 351
    .local v2, "tag":[B
    iget-boolean v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-nez v3, :cond_1

    .line 353
    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    if-ge v3, v4, :cond_0

    .line 355
    new-instance v3, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v4, "data too short"

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 357
    :cond_0
    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 358
    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    new-array v2, v3, [B

    .line 359
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget v5, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    :cond_1
    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    if-lez v3, :cond_2

    .line 367
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_extend([BI)V

    .line 368
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->updateHASH([B)V

    .line 374
    :cond_2
    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    if-lez v3, :cond_5

    .line 376
    iget-boolean v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-eqz v3, :cond_3

    .line 378
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_extend([BI)V

    .line 379
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 382
    :cond_3
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 384
    const/16 v3, 0x10

    new-array v0, v3, [B

    .line 385
    .local v0, "Pad":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    invoke-interface {v3, v4, v6, v0, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 387
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 389
    array-length v3, p1

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int/2addr v4, p2

    if-ge v3, v4, :cond_4

    .line 391
    new-instance v3, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v4, "Output buffer too short"

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 393
    :cond_4
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    invoke-static {v3, v6, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    iget-boolean v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-nez v3, :cond_5

    .line 397
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_extend([BI)V

    .line 398
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 405
    .end local v0    # "Pad":[B
    :cond_5
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 406
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Dollar:[B

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 407
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    invoke-interface {v3, v4, v6, v5, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 408
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Sum:[B

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 410
    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    .line 411
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 418
    .local v1, "resultLen":I
    iget-boolean v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-eqz v3, :cond_8

    .line 420
    array-length v3, p1

    add-int v4, p2, v1

    iget v5, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_6

    .line 422
    new-instance v3, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v4, "Output buffer too short"

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 425
    :cond_6
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    add-int v4, p2, v1

    iget v5, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    invoke-static {v3, v6, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    add-int/2addr v1, v3

    .line 437
    :cond_7
    invoke-virtual {p0, v6}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->reset(Z)V

    .line 439
    return v1

    .line 431
    :cond_8
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    invoke-static {v3, v2}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_7

    .line 433
    new-instance v3, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v4, "mac check in OCB failed"

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/OCB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLSub(I)[B
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 457
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 459
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_double([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    if-nez v0, :cond_0

    .line 259
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    new-array v0, v0, [B

    .line 261
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 266
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int v0, p1, v1

    .line 267
    .local v0, "totalData":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 269
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    add-int/2addr v1, v0

    .line 271
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 276
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int v0, p1, v1

    .line 277
    .local v0, "totalData":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-nez v1, :cond_1

    .line 279
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    if-ge v0, v1, :cond_0

    .line 281
    const/4 v1, 0x0

    .line 285
    :goto_0
    return v1

    .line 283
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    .line 285
    :cond_1
    rem-int/lit8 v1, v0, 0x10

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 19
    .param p1, "forEncryption"    # Z
    .param p2, "parameters"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    .line 116
    .local v12, "oldForEncryption":Z
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    .line 117
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    .line 122
    move-object/from16 v0, p2

    instance-of v14, v0, Lorg/spongycastle/crypto/params/AEADParameters;

    if-eqz v14, :cond_3

    move-object/from16 v3, p2

    .line 124
    check-cast v3, Lorg/spongycastle/crypto/params/AEADParameters;

    .line 126
    .local v3, "aeadParameters":Lorg/spongycastle/crypto/params/AEADParameters;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    .line 127
    .local v2, "N":[B
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    .line 129
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v11

    .line 130
    .local v11, "macSizeBits":I
    const/16 v14, 0x40

    if-lt v11, v14, :cond_0

    const/16 v14, 0x80

    if-gt v11, v14, :cond_0

    rem-int/lit8 v14, v11, 0x8

    if-eqz v14, :cond_1

    .line 132
    :cond_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Invalid value for MAC size: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 135
    :cond_1
    div-int/lit8 v14, v11, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    .line 136
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/AEADParameters;->getKey()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v10

    .line 152
    .end local v3    # "aeadParameters":Lorg/spongycastle/crypto/params/AEADParameters;
    .end local v11    # "macSizeBits":I
    .local v10, "keyParameter":Lorg/spongycastle/crypto/params/KeyParameter;
    :goto_0
    const/16 v14, 0x10

    new-array v14, v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    .line 153
    if-eqz p1, :cond_5

    const/16 v14, 0x10

    :goto_1
    new-array v14, v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    .line 155
    if-nez v2, :cond_2

    .line 157
    const/4 v14, 0x0

    new-array v2, v14, [B

    .line 160
    :cond_2
    array-length v14, v2

    const/16 v15, 0xf

    if-le v14, v15, :cond_6

    .line 162
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "IV must be no more than 15 bytes"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 138
    .end local v2    # "N":[B
    .end local v10    # "keyParameter":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_3
    move-object/from16 v0, p2

    instance-of v14, v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v14, :cond_4

    move-object/from16 v13, p2

    .line 140
    check-cast v13, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 142
    .local v13, "parametersWithIV":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 143
    .restart local v2    # "N":[B
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    .line 144
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    .line 145
    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 146
    .restart local v10    # "keyParameter":Lorg/spongycastle/crypto/params/KeyParameter;
    goto :goto_0

    .line 149
    .end local v2    # "N":[B
    .end local v10    # "keyParameter":Lorg/spongycastle/crypto/params/KeyParameter;
    .end local v13    # "parametersWithIV":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :cond_4
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "invalid parameters passed to OCB"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 153
    .restart local v2    # "N":[B
    .restart local v10    # "keyParameter":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    add-int/lit8 v14, v14, 0x10

    goto :goto_1

    .line 169
    :cond_6
    if-eqz v10, :cond_a

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v15, 0x1

    invoke-interface {v14, v15, v10}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/spongycastle/crypto/BlockCipher;

    move/from16 v0, p1

    invoke-interface {v14, v0, v10}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 174
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->KtopInput:[B

    .line 181
    :cond_7
    const/16 v14, 0x10

    new-array v14, v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    .line 182
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v14 .. v18}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Asterisk:[B

    invoke-static {v14}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_double([B)[B

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Dollar:[B

    .line 186
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    .line 187
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->L_Dollar:[B

    invoke-static {v15}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_double([B)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 193
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->processNonce([B)I

    move-result v7

    .line 195
    .local v7, "bottom":I
    rem-int/lit8 v6, v7, 0x8

    .local v6, "bits":I
    div-int/lit8 v8, v7, 0x8

    .line 196
    .local v8, "bytes":I
    if-nez v6, :cond_b

    .line 198
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Stretch:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    const/16 v16, 0x0

    const/16 v17, 0x10

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v14, v8, v15, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    :cond_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    .line 211
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 213
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockCount:J

    .line 214
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockCount:J

    .line 216
    const/16 v14, 0x10

    new-array v14, v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetHASH:[B

    .line 217
    const/16 v14, 0x10

    new-array v14, v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Sum:[B

    .line 218
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x10

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    const/16 v14, 0x10

    new-array v14, v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    if-eqz v14, :cond_9

    .line 223
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->processAADBytes([BII)V

    .line 225
    :cond_9
    return-void

    .line 176
    .end local v6    # "bits":I
    .end local v7    # "bottom":I
    .end local v8    # "bytes":I
    :cond_a
    move/from16 v0, p1

    if-eq v12, v0, :cond_7

    .line 178
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "cannot change encrypting state without providing key."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 202
    .restart local v6    # "bits":I
    .restart local v7    # "bottom":I
    .restart local v8    # "bytes":I
    :cond_b
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    const/16 v14, 0x10

    if-ge v9, v14, :cond_8

    .line 204
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Stretch:[B

    aget-byte v14, v14, v8

    and-int/lit16 v4, v14, 0xff

    .line 205
    .local v4, "b1":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Stretch:[B

    add-int/lit8 v8, v8, 0x1

    aget-byte v14, v14, v8

    and-int/lit16 v5, v14, 0xff

    .line 206
    .local v5, "b2":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    shl-int v15, v4, v6

    rsub-int/lit8 v16, v6, 0x8

    ushr-int v16, v5, v16

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v14, v9

    .line 202
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method

.method public processAADByte(B)V
    .locals 2
    .param p1, "input"    # B

    .prologue
    .line 290
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    aput-byte p1, v0, v1

    .line 291
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 293
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->processHashBlock()V

    .line 295
    :cond_0
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 4
    .param p1, "input"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 301
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 302
    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 304
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->processHashBlock()V

    .line 299
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_1
    return-void
.end method

.method public processByte(B[BI)I
    .locals 2
    .param p1, "input"    # B
    .param p2, "output"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    aput-byte p1, v0, v1

    .line 313
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 315
    invoke-virtual {p0, p2, p3}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->processMainBlock([BI)V

    .line 316
    const/16 v0, 0x10

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processBytes([BII[BI)I
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 324
    array-length v2, p1

    add-int v3, p2, p3

    if-ge v2, v3, :cond_0

    .line 326
    new-instance v2, Lorg/spongycastle/crypto/DataLengthException;

    const-string v3, "Input buffer too short"

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :cond_0
    const/4 v1, 0x0

    .line 330
    .local v1, "resultLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 332
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    .line 333
    iget v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 335
    add-int v2, p5, v1

    invoke-virtual {p0, p4, v2}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->processMainBlock([BI)V

    .line 336
    add-int/lit8 v1, v1, 0x10

    .line 330
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_2
    return v1
.end method

.method protected processHashBlock()V
    .locals 4

    .prologue
    .line 469
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockCount:J

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_ntz(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->getLSub(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->updateHASH([B)V

    .line 470
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    .line 471
    return-void
.end method

.method protected processMainBlock([BI)V
    .locals 8
    .param p1, "output"    # [B
    .param p2, "outOff"    # I

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 475
    array-length v0, p1

    add-int/lit8 v1, p2, 0x10

    if-ge v0, v1, :cond_0

    .line 477
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 487
    iput v6, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 490
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    iget-wide v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockCount:J

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OCB_ntz(J)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->getLSub(I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 492
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 493
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-interface {v0, v1, v6, v2, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 494
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 496
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v0, v6, p1, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->forEncryption:Z

    if-nez v0, :cond_2

    .line 500
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 501
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    invoke-static {v0, v7, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 502
    iget v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    iput v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 504
    :cond_2
    return-void
.end method

.method protected processNonce([B)I
    .locals 9
    .param p1, "N"    # [B

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0x10

    const/4 v6, 0x0

    .line 229
    new-array v3, v7, [B

    .line 230
    .local v3, "nonce":[B
    array-length v4, v3

    array-length v5, p1

    sub-int/2addr v4, v5

    array-length v5, p1

    invoke-static {p1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    iget v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macSize:I

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    .line 232
    array-length v4, p1

    rsub-int/lit8 v4, v4, 0xf

    aget-byte v5, v3, v4

    or-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 234
    aget-byte v4, v3, v8

    and-int/lit8 v1, v4, 0x3f

    .line 235
    .local v1, "bottom":I
    aget-byte v4, v3, v8

    and-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    .line 240
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->KtopInput:[B

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->KtopInput:[B

    invoke-static {v3, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    :cond_0
    new-array v0, v7, [B

    .line 243
    .local v0, "Ktop":[B
    iput-object v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->KtopInput:[B

    .line 244
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->KtopInput:[B

    invoke-interface {v4, v5, v6, v0, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 245
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Stretch:[B

    invoke-static {v0, v6, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    .line 248
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Stretch:[B

    add-int/lit8 v5, v2, 0x10

    aget-byte v6, v0, v2

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, v0, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "Ktop":[B
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->reset(Z)V

    .line 445
    return-void
.end method

.method protected reset(Z)V
    .locals 6
    .param p1, "clearMac"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 508
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 509
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 511
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    .line 512
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlock:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    .line 514
    iput v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockPos:I

    .line 515
    iput v3, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockPos:I

    .line 517
    iput-wide v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlockCount:J

    .line 518
    iput-wide v4, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->mainBlockCount:J

    .line 520
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetHASH:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    .line 521
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Sum:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    .line 522
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN_0:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetMAIN:[B

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Checksum:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->clear([B)V

    .line 525
    if-eqz p1, :cond_0

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->macBlock:[B

    .line 530
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v3, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->processAADBytes([BII)V

    .line 534
    :cond_1
    return-void
.end method

.method protected updateHASH([B)V
    .locals 4
    .param p1, "LSub"    # [B

    .prologue
    const/4 v3, 0x0

    .line 538
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetHASH:[B

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 539
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->OffsetHASH:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 540
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashCipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 541
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->Sum:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->hashBlock:[B

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/modes/OCBBlockCipher;->xor([B[B)V

    .line 542
    return-void
.end method
