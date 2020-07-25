.class public Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;
.super Ljava/lang/Object;
.source "GOST28147WrapEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/Wrapper;


# instance fields
.field private cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

.field private mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    .line 18
    new-instance v0, Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-direct {v0}, Lorg/spongycastle/crypto/macs/GOST28147Mac;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "GOST28147Wrap"

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 22
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 24
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 25
    .local v2, "pr":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .end local v2    # "pr":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    :cond_0
    move-object v1, p2

    .line 28
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithUKM;

    .line 30
    .local v1, "pU":Lorg/spongycastle/crypto/params/ParametersWithUKM;
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 34
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    instance-of v3, v3, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    if-eqz v3, :cond_1

    .line 36
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 44
    .local v0, "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    new-instance v4, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getUKM()[B

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v3, v4}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 45
    return-void

    .line 40
    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_1
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    .restart local v0    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    goto :goto_0
.end method

.method public unwrap([BII)[B
    .locals 7
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 71
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->getMacSize()I

    move-result v3

    sub-int v3, p3, v3

    new-array v0, v3, [B

    .line 73
    .local v0, "decKey":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    invoke-virtual {v3, p1, p2, v0, v6}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 74
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    add-int/lit8 v4, p2, 0x8

    const/16 v5, 0x8

    invoke-virtual {v3, p1, v4, v0, v5}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 75
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    add-int/lit8 v4, p2, 0x10

    const/16 v5, 0x10

    invoke-virtual {v3, p1, v4, v0, v5}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 76
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    add-int/lit8 v4, p2, 0x18

    const/16 v5, 0x18

    invoke-virtual {v3, p1, v4, v0, v5}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 78
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->getMacSize()I

    move-result v3

    new-array v2, v3, [B

    .line 80
    .local v2, "macResult":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    array-length v4, v0

    invoke-virtual {v3, v0, v6, v4}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->update([BII)V

    .line 82
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {v3, v2, v6}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->doFinal([BI)I

    .line 84
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->getMacSize()I

    move-result v3

    new-array v1, v3, [B

    .line 86
    .local v1, "macExpected":[B
    add-int v3, p2, p3

    add-int/lit8 v3, v3, -0x4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->getMacSize()I

    move-result v4

    invoke-static {p1, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    invoke-static {v2, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "mac mismatch"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_0
    return-object v0
.end method

.method public wrap([BII)[B
    .locals 4
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .prologue
    .line 54
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {v1, p1, p2, p3}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->update([BII)V

    .line 56
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->getMacSize()I

    move-result v1

    add-int/2addr v1, p3

    new-array v0, v1, [B

    .line 58
    .local v0, "wrappedKey":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 59
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    add-int/lit8 v2, p2, 0x8

    const/16 v3, 0x8

    invoke-virtual {v1, p1, v2, v0, v3}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 60
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    add-int/lit8 v2, p2, 0x10

    const/16 v3, 0x10

    invoke-virtual {v1, p1, v2, v0, v3}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 61
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->cipher:Lorg/spongycastle/crypto/engines/GOST28147Engine;

    add-int/lit8 v2, p2, 0x18

    const/16 v3, 0x18

    invoke-virtual {v1, p1, v2, v0, v3}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->processBlock([BI[BI)I

    .line 63
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/GOST28147WrapEngine;->mac:Lorg/spongycastle/crypto/macs/GOST28147Mac;

    invoke-virtual {v1, v0, p3}, Lorg/spongycastle/crypto/macs/GOST28147Mac;->doFinal([BI)I

    .line 65
    return-object v0
.end method
