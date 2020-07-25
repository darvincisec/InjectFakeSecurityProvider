.class public Lorg/spongycastle/crypto/modes/KCTRBlockCipher;
.super Lorg/spongycastle/crypto/StreamBlockCipher;
.source "KCTRBlockCipher.java"


# instance fields
.field private byteCount:I

.field private engine:Lorg/spongycastle/crypto/BlockCipher;

.field private initialised:Z

.field private iv:[B

.field private ofbOutV:[B

.field private ofbV:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "engine"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/StreamBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 30
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    .line 31
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    .line 32
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    .line 33
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->ofbOutV:[B

    .line 34
    return-void
.end method

.method private checkCounter()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method private incrementCounterAt(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 126
    move v0, p1

    .line 127
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 129
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-byte v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    if-eqz v3, :cond_1

    move v0, v1

    .line 134
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-void

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_1
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 5
    .param p1, "b"    # B

    .prologue
    const/4 v4, 0x0

    .line 76
    iget v1, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    if-nez v1, :cond_1

    .line 78
    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->incrementCounterAt(I)V

    .line 80
    invoke-direct {p0}, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->checkCounter()V

    .line 82
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->ofbOutV:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 84
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->ofbOutV:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v0, v1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->ofbOutV:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v0, v1

    .line 89
    .local v0, "rv":B
    iget v1, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 91
    iput v4, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/KCTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 7
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    iput-boolean v6, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->initialised:Z

    .line 41
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_1

    move-object v2, p2

    .line 43
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 44
    .local v2, "ivParam":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 45
    .local v1, "iv":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    array-length v3, v3

    array-length v4, v1

    sub-int v0, v3, v4

    .line 47
    .local v0, "diff":I
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    invoke-static {v3, v5}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 48
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    array-length v4, v1

    invoke-static {v1, v5, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 56
    if-eqz p2, :cond_0

    .line 58
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3, v6, p2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->reset()V

    .line 62
    return-void

    .line 53
    .end local v0    # "diff":I
    .end local v1    # "iv":[B
    .end local v2    # "ivParam":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid parameter passed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 100
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->getBlockSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 102
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    array-length v0, p3

    sub-int/2addr v0, p4

    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->getBlockSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 106
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->getBlockSize()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->processBytes([BII[BI)I

    .line 111
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->initialised:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 121
    iput v3, p0, Lorg/spongycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    .line 122
    return-void
.end method
