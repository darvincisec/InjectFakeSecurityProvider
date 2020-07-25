.class public Lorg/spongycastle/crypto/engines/XSalsa20Engine;
.super Lorg/spongycastle/crypto/engines/Salsa20Engine;
.source "XSalsa20Engine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string v0, "XSalsa20"

    return-object v0
.end method

.method protected getNonceSize()I
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x18

    return v0
.end method

.method protected setKey([B[B)V
    .locals 10
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x2

    const/16 v6, 0x8

    .line 29
    if-nez p1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t support re-init with null key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_0
    array-length v1, p1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    .line 36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires a 256 bit key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    .line 43
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    invoke-static {p2, v6, v1, v6, v7}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 46
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    array-length v1, v1

    new-array v0, v1, [I

    .line 47
    .local v0, "hsalsa20Out":[I
    const/16 v1, 0x14

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->salsaCore(I[I[I)V

    .line 50
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v2, 0x1

    aget v3, v0, v5

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 51
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v2, v0, v9

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v3, v3, v9

    sub-int/2addr v2, v3

    aput v2, v1, v7

    .line 52
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v2, 0x3

    const/16 v3, 0xa

    aget v3, v0, v3

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 53
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v2, 0x4

    const/16 v3, 0xf

    aget v3, v0, v3

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 55
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0xb

    aget v3, v0, v8

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v4, v8

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 56
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0xc

    const/4 v3, 0x7

    aget v3, v0, v3

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 57
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0xd

    aget v3, v0, v6

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v4, v6

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 58
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0xe

    const/16 v3, 0x9

    aget v3, v0, v3

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 61
    const/16 v1, 0x10

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    invoke-static {p2, v1, v2, v8, v7}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 62
    return-void
.end method
