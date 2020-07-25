.class public Lorg/spongycastle/crypto/engines/ChaCha7539Engine;
.super Lorg/spongycastle/crypto/engines/Salsa20Engine;
.source "ChaCha7539Engine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xc

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-nez v2, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to increase counter past 2^32."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    return-void
.end method

.method protected advanceCounter(J)V
    .locals 7
    .param p1, "diff"    # J

    .prologue
    const/16 v6, 0xc

    .line 30
    const/16 v3, 0x20

    ushr-long v4, p1, v3

    long-to-int v0, v4

    .line 31
    .local v0, "hi":I
    long-to-int v1, p1

    .line 33
    .local v1, "lo":I
    if-lez v0, :cond_0

    .line 35
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "attempt to increase counter past 2^32."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 38
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v2, v3, v6

    .line 40
    .local v2, "oldState":I
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v4, v3, v6

    add-int/2addr v4, v1

    aput v4, v3, v6

    .line 42
    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v3, v3, v6

    if-ge v3, v2, :cond_1

    .line 44
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "attempt to increase counter past 2^32."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    :cond_1
    return-void
.end method

.method protected generateKeyStream([B)V
    .locals 3
    .param p1, "output"    # [B

    .prologue
    .line 117
    iget v0, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->rounds:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->chachaCore(I[I[I)V

    .line 118
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 119
    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChaCha7539-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->rounds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCounter()J
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected getNonceSize()I
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0xc

    return v0
.end method

.method protected resetCounter()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 94
    return-void
.end method

.method protected retreatCounter()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    .line 84
    return-void
.end method

.method protected retreatCounter(J)V
    .locals 11
    .param p1, "diff"    # J

    .prologue
    const-wide v8, 0xffffffffL

    const/16 v6, 0xc

    .line 58
    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v0, v2

    .line 59
    .local v0, "hi":I
    long-to-int v1, p1

    .line 61
    .local v1, "lo":I
    if-eqz v0, :cond_0

    .line 63
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "attempt to reduce counter past zero."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v2, v2, v6

    int-to-long v2, v2

    and-long/2addr v2, v8

    int-to-long v4, v1

    and-long/2addr v4, v8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 68
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v3, v2, v6

    sub-int/2addr v3, v1

    aput v3, v2, v6

    .line 74
    return-void

    .line 72
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "attempt to reduce counter past zero."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected setKey([B[B)V
    .locals 4
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 98
    if-eqz p1, :cond_1

    .line 100
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires 256 bit key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    invoke-virtual {p0, v0, v1, v3}, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->packTauOrSigma(I[II)V

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {p1, v3, v0, v1, v2}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 112
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xd

    const/4 v2, 0x3

    invoke-static {p2, v3, v0, v1, v2}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 113
    return-void
.end method
