.class public Lorg/spongycastle/crypto/macs/SkeinMac;
.super Ljava/lang/Object;
.source "SkeinMac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# static fields
.field public static final SKEIN_1024:I = 0x400

.field public static final SKEIN_256:I = 0x100

.field public static final SKEIN_512:I = 0x200


# instance fields
.field private engine:Lorg/spongycastle/crypto/digests/SkeinEngine;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "stateSizeBits"    # I
    .param p2, "digestSizeBits"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/crypto/digests/SkeinEngine;-><init>(II)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/macs/SkeinMac;)V
    .locals 2
    .param p1, "mac"    # Lorg/spongycastle/crypto/macs/SkeinMac;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/spongycastle/crypto/digests/SkeinEngine;

    iget-object v1, p1, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;-><init>(Lorg/spongycastle/crypto/digests/SkeinEngine;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    .line 56
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/digests/SkeinEngine;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skein-MAC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getOutputSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getOutputSize()I

    move-result v0

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 73
    instance-of v1, p1, Lorg/spongycastle/crypto/params/SkeinParameters;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 75
    check-cast v0, Lorg/spongycastle/crypto/params/SkeinParameters;

    .line 86
    .end local p1    # "params":Lorg/spongycastle/crypto/CipherParameters;
    .local v0, "skeinParameters":Lorg/spongycastle/crypto/params/SkeinParameters;
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/SkeinParameters;->getKey()[B

    move-result-object v1

    if-nez v1, :cond_2

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Skein MAC requires a key parameter."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    .end local v0    # "skeinParameters":Lorg/spongycastle/crypto/params/SkeinParameters;
    .restart local p1    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_1

    .line 79
    new-instance v1, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    invoke-direct {v1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;-><init>()V

    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p1    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->setKey([B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->build()Lorg/spongycastle/crypto/params/SkeinParameters;

    move-result-object v0

    .restart local v0    # "skeinParameters":Lorg/spongycastle/crypto/params/SkeinParameters;
    goto :goto_0

    .line 83
    .end local v0    # "skeinParameters":Lorg/spongycastle/crypto/params/SkeinParameters;
    .restart local p1    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid parameter passed to Skein MAC init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    .end local p1    # "params":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v0    # "skeinParameters":Lorg/spongycastle/crypto/params/SkeinParameters;
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->init(Lorg/spongycastle/crypto/params/SkeinParameters;)V

    .line 91
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->reset()V

    .line 101
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B

    .prologue
    .line 105
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->update(B)V

    .line 106
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/SkeinMac;->engine:Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/SkeinEngine;->update([BII)V

    .line 111
    return-void
.end method
