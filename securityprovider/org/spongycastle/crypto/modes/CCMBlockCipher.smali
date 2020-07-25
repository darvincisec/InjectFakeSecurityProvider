.class public Lorg/spongycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blockSize:I

.field private cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private keyParam:Lorg/spongycastle/crypto/CipherParameters;

.field private macBlock:[B

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "c"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lorg/spongycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 34
    new-instance v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lorg/spongycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 43
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 44
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    .line 45
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    .line 47
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    return-void
.end method

.method private calculateMac([BII[B)I
    .locals 11
    .param p1, "data"    # [B
    .param p2, "dataOff"    # I
    .param p3, "dataLen"    # I
    .param p4, "macBlock"    # [B

    .prologue
    .line 352
    new-instance v1, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget v8, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    mul-int/lit8 v8, v8, 0x8

    invoke-direct {v1, v7, v8}, Lorg/spongycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    .line 354
    .local v1, "cMac":Lorg/spongycastle/crypto/Mac;
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/spongycastle/crypto/CipherParameters;

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 359
    const/16 v7, 0x10

    new-array v0, v7, [B

    .line 361
    .local v0, "b0":[B
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 363
    const/4 v7, 0x0

    aget-byte v8, v0, v7

    or-int/lit8 v8, v8, 0x40

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 366
    :cond_0
    const/4 v7, 0x0

    aget-byte v8, v0, v7

    invoke-interface {v1}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    div-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x3

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 368
    const/4 v7, 0x0

    aget-byte v8, v0, v7

    iget-object v9, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v9, v9

    rsub-int/lit8 v9, v9, 0xf

    add-int/lit8 v9, v9, -0x1

    and-int/lit8 v9, v9, 0x7

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 370
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v10, v10

    invoke-static {v7, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    move v5, p3

    .line 373
    .local v5, "q":I
    const/4 v2, 0x1

    .line 374
    .local v2, "count":I
    :goto_0
    if-lez v5, :cond_1

    .line 376
    array-length v7, v0

    sub-int/2addr v7, v2

    and-int/lit16 v8, v5, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 377
    ushr-int/lit8 v5, v5, 0x8

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 381
    :cond_1
    const/4 v7, 0x0

    array-length v8, v0

    invoke-interface {v1, v0, v7, v8}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 386
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 390
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v6

    .line 391
    .local v6, "textLength":I
    const v7, 0xff00

    if-ge v6, v7, :cond_4

    .line 393
    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 394
    int-to-byte v7, v6

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 396
    const/4 v3, 0x2

    .line 410
    .local v3, "extra":I
    :goto_1
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-eqz v7, :cond_2

    .line 412
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v9, v9

    invoke-interface {v1, v7, v8, v9}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 414
    :cond_2
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 416
    iget-object v7, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v9

    invoke-interface {v1, v7, v8, v9}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 419
    :cond_3
    add-int v7, v3, v6

    rem-int/lit8 v3, v7, 0x10

    .line 420
    if-eqz v3, :cond_5

    .line 422
    move v4, v3

    .local v4, "i":I
    :goto_2
    const/16 v7, 0x10

    if-eq v4, v7, :cond_5

    .line 424
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 422
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 400
    .end local v3    # "extra":I
    .end local v4    # "i":I
    :cond_4
    const/4 v7, -0x1

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 401
    const/4 v7, -0x2

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 402
    shr-int/lit8 v7, v6, 0x18

    int-to-byte v7, v7

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 403
    shr-int/lit8 v7, v6, 0x10

    int-to-byte v7, v7

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 404
    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 405
    int-to-byte v7, v6

    invoke-interface {v1, v7}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 407
    const/4 v3, 0x6

    .restart local v3    # "extra":I
    goto :goto_1

    .line 432
    .end local v3    # "extra":I
    .end local v6    # "textLength":I
    :cond_5
    invoke-interface {v1, p1, p2, p3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 434
    const/4 v7, 0x0

    invoke-interface {v1, p4, v7}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    move-result v7

    return v7
.end method

.method private getAssociatedTextLength()I
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v1

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v0, v0

    goto :goto_0
.end method

.method private hasAssociatedText()Z
    .locals 1

    .prologue
    .line 444
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v3

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    move-result v6

    .line 148
    .local v6, "len":I
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 150
    return v6
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    iget v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    new-array v0, v1, [B

    .line 170
    .local v0, "mac":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 182
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v1

    add-int v0, p1, v1

    .line 184
    .local v0, "totalData":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 186
    iget v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v1, v0

    .line 189
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    .line 70
    instance-of v2, p2, Lorg/spongycastle/crypto/params/AEADParameters;

    if-eqz v2, :cond_2

    move-object v1, p2

    .line 72
    check-cast v1, Lorg/spongycastle/crypto/params/AEADParameters;

    .line 74
    .local v1, "param":Lorg/spongycastle/crypto/params/AEADParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 75
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 76
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 77
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/AEADParameters;->getKey()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v0

    .line 94
    .end local v1    # "param":Lorg/spongycastle/crypto/params/AEADParameters;
    .local v0, "cipherParameters":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    if-eqz v0, :cond_0

    .line 96
    iput-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/spongycastle/crypto/CipherParameters;

    .line 99
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v2, v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v2, v2

    const/16 v3, 0xd

    if-le v2, v3, :cond_4

    .line 101
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "nonce must have length from 7 to 13 octets"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    .end local v0    # "cipherParameters":Lorg/spongycastle/crypto/CipherParameters;
    :cond_2
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_3

    move-object v1, p2

    .line 81
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 83
    .local v1, "param":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 84
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 85
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 86
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    .line 87
    .restart local v0    # "cipherParameters":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 90
    .end local v0    # "cipherParameters":Lorg/spongycastle/crypto/CipherParameters;
    .end local v1    # "param":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid parameters passed to CCM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    .restart local v0    # "cipherParameters":Lorg/spongycastle/crypto/CipherParameters;
    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 105
    return-void
.end method

.method public processAADByte(B)V
    .locals 1
    .param p1, "in"    # B

    .prologue
    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    .line 115
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 121
    return-void
.end method

.method public processByte(B[BI)I
    .locals 1
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 134
    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 136
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public processPacket([BII[BI)I
    .locals 21
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;,
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/spongycastle/crypto/CipherParameters;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 245
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "CCM cipher unitialized."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 248
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v13, v0

    .line 249
    .local v13, "n":I
    rsub-int/lit8 v16, v13, 0xf

    .line 250
    .local v16, "q":I
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 252
    const/16 v17, 0x1

    mul-int/lit8 v18, v16, 0x8

    shl-int v12, v17, v18

    .line 253
    .local v12, "limitLen":I
    move/from16 v0, p3

    if-lt v0, v12, :cond_1

    .line 255
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "CCM packet too large for choice of q."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 259
    .end local v12    # "limitLen":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v11, v0, [B

    .line 260
    .local v11, "iv":[B
    const/16 v17, 0x0

    add-int/lit8 v18, v16, -0x1

    and-int/lit8 v18, v18, 0x7

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    new-instance v7, Lorg/spongycastle/crypto/modes/SICBlockCipher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 264
    .local v7, "ctrCipher":Lorg/spongycastle/crypto/BlockCipher;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    move/from16 v17, v0

    new-instance v18, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->keyParam:Lorg/spongycastle/crypto/CipherParameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v11}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v7, v0, v1}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 267
    move/from16 v10, p2

    .line 268
    .local v10, "inIndex":I
    move/from16 v14, p5

    .line 270
    .local v14, "outIndex":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 272
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    move/from16 v17, v0

    add-int v15, p3, v17

    .line 273
    .local v15, "outputLen":I
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v17, v0

    add-int v18, v15, p5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 275
    new-instance v17, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v18, "Output buffer too short."

    invoke-direct/range {v17 .. v18}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 278
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 280
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v8, v0, [B

    .line 282
    .local v8, "encMac":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v7, v0, v1, v8, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 284
    :goto_0
    add-int v17, p2, p3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-ge v10, v0, :cond_3

    .line 286
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v7, v0, v10, v1, v14}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v17, v0

    add-int v14, v14, v17

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v17, v0

    add-int v10, v10, v17

    goto :goto_0

    .line 291
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 293
    .local v5, "block":[B
    const/16 v17, 0x0

    add-int v18, p3, p2

    sub-int v18, v18, v10

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v10, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v7, v5, v0, v5, v1}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 297
    const/16 v17, 0x0

    add-int v18, p3, p2

    sub-int v18, v18, v10

    move/from16 v0, v17

    move-object/from16 v1, p4

    move/from16 v2, v18

    invoke-static {v5, v0, v1, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    const/16 v17, 0x0

    add-int v18, p5, p3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    move/from16 v19, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    .end local v8    # "encMac":[B
    :cond_4
    return v15

    .line 303
    .end local v5    # "block":[B
    .end local v15    # "outputLen":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    move/from16 v17, v0

    move/from16 v0, p3

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 305
    new-instance v17, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v18, "data too short"

    invoke-direct/range {v17 .. v18}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 307
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    move/from16 v17, v0

    sub-int v15, p3, v17

    .line 308
    .restart local v15    # "outputLen":I
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v17, v0

    add-int v18, v15, p5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 310
    new-instance v17, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v18, "Output buffer too short."

    invoke-direct/range {v17 .. v18}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 313
    :cond_7
    add-int v17, p2, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v7, v0, v1, v2, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 317
    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_8

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-byte v18, v17, v9

    .line 317
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 322
    :cond_8
    :goto_2
    add-int v17, p2, v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-ge v10, v0, :cond_9

    .line 324
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v7, v0, v10, v1, v14}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v17, v0

    add-int v14, v14, v17

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v17, v0

    add-int v10, v10, v17

    goto :goto_2

    .line 329
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 331
    .restart local v5    # "block":[B
    const/16 v17, 0x0

    sub-int v18, v10, p2

    sub-int v18, v15, v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v10, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v7, v5, v0, v5, v1}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 335
    const/16 v17, 0x0

    sub-int v18, v10, p2

    sub-int v18, v15, v18

    move/from16 v0, v17

    move-object/from16 v1, p4

    move/from16 v2, v18

    invoke-static {v5, v0, v1, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 339
    .local v6, "calculatedMacBlock":[B
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2, v15, v6}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v17

    if-nez v17, :cond_4

    .line 343
    new-instance v17, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v18, "mac check in CCM failed"

    invoke-direct/range {v17 .. v18}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method public processPacket([BII)[B
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 207
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 209
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v0, p3

    new-array v4, v0, [B

    .line 220
    .local v4, "output":[B
    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    .line 222
    return-object v4

    .line 213
    .end local v4    # "output":[B
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge p3, v0, :cond_1

    .line 215
    new-instance v0, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    iget v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v0, p3, v0

    new-array v4, v0, [B

    .restart local v4    # "output":[B
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 156
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->associatedText:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 157
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/CCMBlockCipher;->data:Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 158
    return-void
.end method
