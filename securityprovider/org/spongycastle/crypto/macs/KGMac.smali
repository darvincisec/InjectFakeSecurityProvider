.class public Lorg/spongycastle/crypto/macs/KGMac;
.super Ljava/lang/Object;
.source "KGMac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private final cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

.field private final macSizeBits:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/modes/KGCMBlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    .line 37
    invoke-virtual {p1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/macs/KGMac;->macSizeBits:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/modes/KGCMBlockCipher;I)V
    .locals 0
    .param p1, "cipher"    # Lorg/spongycastle/crypto/modes/KGCMBlockCipher;
    .param p2, "macSizeBits"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    .line 52
    iput p2, p0, Lorg/spongycastle/crypto/macs/KGMac;->macSizeBits:I

    .line 53
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    invoke-virtual {v1, p1, p2}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-KGMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lorg/spongycastle/crypto/macs/KGMac;->macSizeBits:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 7
    .param p1, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 61
    instance-of v3, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 63
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 65
    .local v2, "param":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 66
    .local v0, "iv":[B
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 69
    .local v1, "keyParam":Lorg/spongycastle/crypto/params/KeyParameter;
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    const/4 v4, 0x1

    new-instance v5, Lorg/spongycastle/crypto/params/AEADParameters;

    iget v6, p0, Lorg/spongycastle/crypto/macs/KGMac;->macSizeBits:I

    invoke-direct {v5, v1, v6, v0}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V

    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 75
    return-void

    .line 73
    .end local v0    # "iv":[B
    .end local v1    # "keyParam":Lorg/spongycastle/crypto/params/KeyParameter;
    .end local v2    # "param":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "KGMAC requires ParametersWithIV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->reset()V

    .line 115
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->processAADByte(B)V

    .line 90
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/KGMac;->cipher:Lorg/spongycastle/crypto/modes/KGCMBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/KGCMBlockCipher;->processAADBytes([BII)V

    .line 96
    return-void
.end method
