.class public Lorg/spongycastle/crypto/modes/EAXBlockCipher;
.super Ljava/lang/Object;
.source "EAXBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final cTAG:B = 0x2t

.field private static final hTAG:B = 0x1t

.field private static final nTAG:B


# instance fields
.field private associatedTextMac:[B

.field private blockSize:I

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lorg/spongycastle/crypto/modes/SICBlockCipher;

.field private cipherInitialized:Z

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private mac:Lorg/spongycastle/crypto/Mac;

.field private macBlock:[B

.field private macSize:I

.field private nonceMac:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    .line 63
    new-instance v0, Lorg/spongycastle/crypto/macs/CMac;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/macs/CMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    .line 64
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    .line 66
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    .line 67
    new-instance v0, Lorg/spongycastle/crypto/modes/SICBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    .line 68
    return-void
.end method

.method private calculateMac()V
    .locals 5

    .prologue
    .line 152
    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v1, v2, [B

    .line 153
    .local v1, "outC":[B
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 157
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    aget-byte v3, v3, v0

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    aget-byte v4, v1, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method private initCipher()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    if-eqz v1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    .line 143
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->associatedTextMac:[B

    invoke-interface {v1, v2, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 145
    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v1, [B

    .line 146
    .local v0, "tag":[B
    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 147
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v1, v0, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    goto :goto_0
.end method

.method private process(B[BI)I
    .locals 6
    .param p1, "b"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    aput-byte p1, v2, v3

    .line 339
    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    array-length v3, v3

    if-ne v2, v3, :cond_3

    .line 341
    array-length v2, p2

    iget v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/2addr v3, p3

    if-ge v2, v3, :cond_0

    .line 343
    new-instance v1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v2, "Output buffer is too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 350
    :cond_0
    iget-boolean v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_2

    .line 352
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v2, v3, v1, p2, p3}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    move-result v0

    .line 354
    .local v0, "size":I
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    iget v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v2, p2, p3, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 363
    :goto_0
    iput v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 364
    iget-boolean v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-nez v2, :cond_1

    .line 366
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v5, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    iput v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 373
    .end local v0    # "size":I
    :cond_1
    :goto_1
    return v0

    .line 358
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v2, v3, v1, v4}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 360
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v2, v3, v1, p2, p3}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    move-result v0

    .restart local v0    # "size":I
    goto :goto_0

    .end local v0    # "size":I
    :cond_3
    move v0, v1

    .line 373
    goto :goto_1
.end method

.method private reset(Z)V
    .locals 4
    .param p1, "clearMac"    # Z

    .prologue
    const/4 v3, 0x0

    .line 169
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 170
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Mac;->reset()V

    .line 172
    iput v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 173
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-static {v1, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 175
    if-eqz p1, :cond_0

    .line 177
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    invoke-static {v1, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 180
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v0, v1, [B

    .line 181
    .local v0, "tag":[B
    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 182
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v1, v0, v3, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 184
    iput-boolean v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    .line 186
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    array-length v2, v2

    invoke-virtual {p0, v1, v3, v2}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->processAADBytes([BII)V

    .line 190
    :cond_1
    return-void
.end method

.method private verifyMac([BI)Z
    .locals 4
    .param p1, "mac"    # [B
    .param p2, "off"    # I

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 380
    .local v1, "nonEqual":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v0, v2, :cond_0

    .line 382
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 241
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->initCipher()V

    .line 243
    iget v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 244
    .local v0, "extra":I
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 246
    .local v1, "tmp":[B
    iput v5, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    .line 248
    iget-boolean v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_1

    .line 250
    array-length v2, p1

    add-int v3, p2, v0

    iget v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 252
    new-instance v2, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v3, "Output buffer too short"

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v2, v3, v5, v1, v5}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    .line 256
    invoke-static {v1, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v2, v1, v5, v0}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 260
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->calculateMac()V

    .line 262
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    add-int v3, p2, v0

    iget v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {v2, v5, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    .line 266
    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v2, v0

    .line 296
    :goto_0
    return v2

    .line 270
    :cond_1
    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v0, v2, :cond_2

    .line 272
    new-instance v2, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v3, "data too short"

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    :cond_2
    array-length v2, p1

    add-int v3, p2, v0

    iget v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    .line 276
    new-instance v2, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v3, "Output buffer too short"

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_3
    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-le v0, v2, :cond_4

    .line 280
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v4, v0, v4

    invoke-interface {v2, v3, v5, v4}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 282
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    invoke-virtual {v2, v3, v5, v1, v5}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->processBlock([BI[BI)I

    .line 284
    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v2, v0, v2

    invoke-static {v1, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    :cond_4
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->calculateMac()V

    .line 289
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v3, v0, v3

    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->verifyMac([BI)Z

    move-result v2

    if-nez v2, :cond_5

    .line 291
    new-instance v2, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v3, "mac check in EAX failed"

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :cond_5
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    .line 296
    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v2, v0, v2

    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/EAX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getMac()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    new-array v0, v1, [B

    .line 304
    .local v0, "mac":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macBlock:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 325
    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int v0, p1, v1

    .line 327
    .local v0, "totalData":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 329
    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v1, v0

    .line 332
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 311
    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufOff:I

    add-int v0, p1, v1

    .line 312
    .local v0, "totalData":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    if-nez v1, :cond_1

    .line 314
    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    if-ge v0, v1, :cond_0

    .line 316
    const/4 v1, 0x0

    .line 320
    :goto_0
    return v1

    .line 318
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    .line 320
    :cond_1
    iget v1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    rem-int v1, v0, v1

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 9
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 88
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->forEncryption:Z

    .line 93
    instance-of v4, p2, Lorg/spongycastle/crypto/params/AEADParameters;

    if-eqz v4, :cond_0

    move-object v2, p2

    .line 95
    check-cast v2, Lorg/spongycastle/crypto/params/AEADParameters;

    .line 97
    .local v2, "param":Lorg/spongycastle/crypto/params/AEADParameters;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    .line 98
    .local v1, "nonce":[B
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    .line 99
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    .line 100
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/AEADParameters;->getKey()Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v0

    .line 116
    .end local v2    # "param":Lorg/spongycastle/crypto/params/AEADParameters;
    .local v0, "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    if-eqz p1, :cond_2

    iget v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    :goto_1
    new-array v4, v4, [B

    iput-object v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->bufBlock:[B

    .line 118
    iget v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    new-array v3, v4, [B

    .line 121
    .local v3, "tag":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v4, v0}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 123
    iget v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x1

    aput-byte v6, v3, v4

    .line 124
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    iget v5, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    invoke-interface {v4, v3, v6, v5}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 125
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    array-length v5, v1

    invoke-interface {v4, v1, v6, v5}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 126
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    invoke-interface {v4, v5, v6}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 129
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipher:Lorg/spongycastle/crypto/modes/SICBlockCipher;

    const/4 v5, 0x1

    new-instance v6, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v7, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->nonceMac:[B

    invoke-direct {v6, v8, v7}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v4, v5, v6}, Lorg/spongycastle/crypto/modes/SICBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 131
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->reset()V

    .line 132
    return-void

    .line 102
    .end local v0    # "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    .end local v1    # "nonce":[B
    .end local v3    # "tag":[B
    :cond_0
    instance-of v4, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v4, :cond_1

    move-object v2, p2

    .line 104
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 106
    .local v2, "param":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 107
    .restart local v1    # "nonce":[B
    iput-object v8, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->initialAssociatedText:[B

    .line 108
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    .line 109
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    .line 110
    .restart local v0    # "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 113
    .end local v0    # "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    .end local v1    # "nonce":[B
    .end local v2    # "param":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid parameters passed to EAX"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    .restart local v0    # "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v1    # "nonce":[B
    :cond_2
    iget v4, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->blockSize:I

    iget v5, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->macSize:I

    add-int/2addr v4, v5

    goto :goto_1
.end method

.method public processAADByte(B)V
    .locals 2
    .param p1, "in"    # B

    .prologue
    .line 194
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AAD data cannot be added after encryption/decryption processing has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 199
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 203
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->cipherInitialized:Z

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AAD data cannot be added after encryption/decryption processing has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 208
    return-void
.end method

.method public processByte(B[BI)I
    .locals 1
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->initCipher()V

    .line 215
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->process(B[BI)I

    move-result v0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->initCipher()V

    .line 223
    array-length v2, p1

    add-int v3, p2, p3

    if-ge v2, v3, :cond_0

    .line 225
    new-instance v2, Lorg/spongycastle/crypto/DataLengthException;

    const-string v3, "Input buffer too short"

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    :cond_0
    const/4 v1, 0x0

    .line 230
    .local v1, "resultLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, p3, :cond_1

    .line 232
    add-int v2, p2, v0

    aget-byte v2, p1, v2

    add-int v3, p5, v1

    invoke-direct {p0, v2, p4, v3}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->process(B[BI)I

    move-result v2

    add-int/2addr v1, v2

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_1
    return v1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;->reset(Z)V

    .line 164
    return-void
.end method
