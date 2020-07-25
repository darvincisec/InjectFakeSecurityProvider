.class public Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;
.super Ljava/lang/Object;
.source "RFC3211WrapEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/Wrapper;


# instance fields
.field private engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private param:Lorg/spongycastle/crypto/params/ParametersWithIV;

.field private rand:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "engine"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    .line 28
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/RFC3211Wrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 34
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    .line 36
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 38
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 40
    .local v0, "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    .line 41
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 52
    .end local v0    # "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 45
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    if-eqz p1, :cond_1

    .line 47
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    .line 50
    :cond_1
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/spongycastle/crypto/params/ParametersWithIV;

    goto :goto_0
.end method

.method public unwrap([BII)[B
    .locals 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 114
    iget-boolean v7, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    if-eqz v7, :cond_0

    .line 116
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "not set for unwrapping"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 119
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    .line 121
    .local v0, "blockSize":I
    mul-int/lit8 v7, v0, 0x2

    if-ge p3, v7, :cond_1

    .line 123
    new-instance v7, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v8, "input too short"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 126
    :cond_1
    new-array v1, p3, [B

    .line 127
    .local v1, "cekBlock":[B
    new-array v4, v0, [B

    .line 129
    .local v4, "iv":[B
    invoke-static {p1, p2, v1, v10, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    array-length v7, v4

    invoke-static {p1, p2, v4, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v8, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v9, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v7, v10, v8}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 134
    move v3, v0

    .local v3, "i":I
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_2

    .line 136
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7, v1, v3, v1, v3}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 134
    add-int/2addr v3, v0

    goto :goto_0

    .line 139
    :cond_2
    array-length v7, v1

    array-length v8, v4

    sub-int/2addr v7, v8

    array-length v8, v4

    invoke-static {v1, v7, v4, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v8, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v9, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v7, v10, v8}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 143
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7, v1, v10, v1, v10}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 145
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    iget-object v8, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v7, v10, v8}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 147
    const/4 v3, 0x0

    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_3

    .line 149
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7, v1, v3, v1, v3}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 147
    add-int/2addr v3, v0

    goto :goto_1

    .line 152
    :cond_3
    aget-byte v7, v1, v10

    and-int/lit16 v7, v7, 0xff

    array-length v8, v1

    add-int/lit8 v8, v8, -0x4

    if-le v7, v8, :cond_4

    .line 154
    new-instance v7, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v8, "wrapped key corrupted"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 157
    :cond_4
    aget-byte v7, v1, v10

    and-int/lit16 v7, v7, 0xff

    new-array v5, v7, [B

    .line 159
    .local v5, "key":[B
    const/4 v7, 0x4

    aget-byte v8, v1, v10

    invoke-static {v1, v7, v5, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    const/4 v6, 0x0

    .line 163
    .local v6, "nonEqual":I
    const/4 v3, 0x0

    :goto_2
    const/4 v7, 0x3

    if-eq v3, v7, :cond_5

    .line 165
    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v1, v7

    xor-int/lit8 v7, v7, -0x1

    int-to-byte v2, v7

    .line 166
    .local v2, "check":B
    aget-byte v7, v5, v3

    xor-int/2addr v7, v2

    or-int/2addr v6, v7

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 168
    .end local v2    # "check":B
    :cond_5
    if-eqz v6, :cond_6

    .line 170
    new-instance v7, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v8, "wrapped key fails checksum"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 173
    :cond_6
    return-object v5
.end method

.method public wrap([BII)[B
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    iget-boolean v4, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->forWrapping:Z

    if-nez v4, :cond_0

    .line 66
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "not set for wrapping"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 69
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->param:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v4, v7, v5}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 71
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    .line 74
    .local v0, "blockSize":I
    add-int/lit8 v4, p3, 0x4

    mul-int/lit8 v5, v0, 0x2

    if-ge v4, v5, :cond_1

    .line 76
    mul-int/lit8 v4, v0, 0x2

    new-array v1, v4, [B

    .line 83
    .local v1, "cekBlock":[B
    :goto_0
    int-to-byte v4, p3

    aput-byte v4, v1, v6

    .line 84
    aget-byte v4, p1, p2

    xor-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v7

    .line 85
    const/4 v4, 0x2

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    xor-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 86
    const/4 v4, 0x3

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    xor-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 88
    const/4 v4, 0x4

    invoke-static {p1, p2, v1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    array-length v4, v1

    add-int/lit8 v5, p3, 0x4

    sub-int/2addr v4, v5

    new-array v3, v4, [B

    .line 92
    .local v3, "pad":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 93
    add-int/lit8 v4, p3, 0x4

    array-length v5, v3

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 97
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v4, v1, v2, v1, v2}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 95
    add-int/2addr v2, v0

    goto :goto_1

    .line 80
    .end local v1    # "cekBlock":[B
    .end local v2    # "i":I
    .end local v3    # "pad":[B
    :cond_1
    add-int/lit8 v4, p3, 0x4

    rem-int/2addr v4, v0

    if-nez v4, :cond_2

    add-int/lit8 v4, p3, 0x4

    :goto_2
    new-array v1, v4, [B

    .restart local v1    # "cekBlock":[B
    goto :goto_0

    .end local v1    # "cekBlock":[B
    :cond_2
    add-int/lit8 v4, p3, 0x4

    div-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, v0

    goto :goto_2

    .line 100
    .restart local v1    # "cekBlock":[B
    .restart local v2    # "i":I
    .restart local v3    # "pad":[B
    :cond_3
    const/4 v2, 0x0

    :goto_3
    array-length v4, v1

    if-ge v2, v4, :cond_4

    .line 102
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/RFC3211WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v4, v1, v2, v1, v2}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 100
    add-int/2addr v2, v0

    goto :goto_3

    .line 105
    :cond_4
    return-object v1
.end method
