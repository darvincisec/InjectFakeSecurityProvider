.class public Lorg/spongycastle/crypto/macs/GMac;
.super Ljava/lang/Object;
.source "GMac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private final cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

.field private final macSizeBits:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/modes/GCMBlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    .line 36
    const/16 v0, 0x80

    iput v0, p0, Lorg/spongycastle/crypto/macs/GMac;->macSizeBits:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/modes/GCMBlockCipher;I)V
    .locals 0
    .param p1, "cipher"    # Lorg/spongycastle/crypto/modes/GCMBlockCipher;
    .param p2, "macSizeBits"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    .line 51
    iput p2, p0, Lorg/spongycastle/crypto/macs/GMac;->macSizeBits:I

    .line 52
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
    .line 102
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v1, p1, p2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 107
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
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-GMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/spongycastle/crypto/macs/GMac;->macSizeBits:I

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
    .line 60
    instance-of v3, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 62
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 64
    .local v2, "param":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 65
    .local v0, "iv":[B
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 68
    .local v1, "keyParam":Lorg/spongycastle/crypto/params/KeyParameter;
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    const/4 v4, 0x1

    new-instance v5, Lorg/spongycastle/crypto/params/AEADParameters;

    iget v6, p0, Lorg/spongycastle/crypto/macs/GMac;->macSizeBits:I

    invoke-direct {v5, v1, v6, v0}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V

    invoke-virtual {v3, v4, v5}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 74
    return-void

    .line 72
    .end local v0    # "iv":[B
    .end local v1    # "keyParam":Lorg/spongycastle/crypto/params/KeyParameter;
    .end local v2    # "param":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "GMAC requires ParametersWithIV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->reset()V

    .line 114
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
    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->processAADByte(B)V

    .line 89
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
    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    .line 95
    return-void
.end method
