.class public Lorg/spongycastle/crypto/engines/XTEAEngine;
.super Ljava/lang/Object;
.source "XTEAEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final block_size:I = 0x8

.field private static final delta:I = -0x61c88647

.field private static final rounds:I = 0x20


# instance fields
.field private _S:[I

.field private _forEncryption:Z

.field private _initialised:Z

.field private _sum0:[I

.field private _sum1:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_S:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_sum0:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_sum1:[I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_initialised:Z

    .line 36
    return-void
.end method

.method private bytesToInt([BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 175
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "inOff":I
    .local v0, "inOff":I
    aget-byte v1, p1, p2

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 p2, v0, 0x1

    .end local v0    # "inOff":I
    .restart local p2    # "inOff":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method private decryptBlock([BI[BI)I
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/XTEAEngine;->bytesToInt([BI)I

    move-result v1

    .line 159
    .local v1, "v0":I
    add-int/lit8 v3, p2, 0x4

    invoke-direct {p0, p1, v3}, Lorg/spongycastle/crypto/engines/XTEAEngine;->bytesToInt([BI)I

    move-result v2

    .line 161
    .local v2, "v1":I
    const/16 v0, 0x1f

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 163
    shl-int/lit8 v3, v1, 0x4

    ushr-int/lit8 v4, v1, 0x5

    xor-int/2addr v3, v4

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_sum1:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 164
    shl-int/lit8 v3, v2, 0x4

    ushr-int/lit8 v4, v2, 0x5

    xor-int/2addr v3, v4

    add-int/2addr v3, v2

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_sum0:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 161
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0, v1, p3, p4}, Lorg/spongycastle/crypto/engines/XTEAEngine;->unpackInt(I[BI)V

    .line 168
    add-int/lit8 v3, p4, 0x4

    invoke-direct {p0, v2, p3, v3}, Lorg/spongycastle/crypto/engines/XTEAEngine;->unpackInt(I[BI)V

    .line 170
    const/16 v3, 0x8

    return v3
.end method

.method private encryptBlock([BI[BI)I
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/XTEAEngine;->bytesToInt([BI)I

    move-result v1

    .line 137
    .local v1, "v0":I
    add-int/lit8 v3, p2, 0x4

    invoke-direct {p0, p1, v3}, Lorg/spongycastle/crypto/engines/XTEAEngine;->bytesToInt([BI)I

    move-result v2

    .line 139
    .local v2, "v1":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x20

    if-ge v0, v3, :cond_0

    .line 141
    shl-int/lit8 v3, v2, 0x4

    ushr-int/lit8 v4, v2, 0x5

    xor-int/2addr v3, v4

    add-int/2addr v3, v2

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_sum0:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 142
    shl-int/lit8 v3, v1, 0x4

    ushr-int/lit8 v4, v1, 0x5

    xor-int/2addr v3, v4

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_sum1:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0, v1, p3, p4}, Lorg/spongycastle/crypto/engines/XTEAEngine;->unpackInt(I[BI)V

    .line 146
    add-int/lit8 v3, p4, 0x4

    invoke-direct {p0, v2, p3, v3}, Lorg/spongycastle/crypto/engines/XTEAEngine;->unpackInt(I[BI)V

    .line 148
    const/16 v3, 0x8

    return v3
.end method

.method private setKey([B)V
    .locals 5
    .param p1, "key"    # [B

    .prologue
    .line 110
    array-length v2, p1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    .line 112
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key size must be 128 bits."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 118
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_S:[I

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/engines/XTEAEngine;->bytesToInt([BI)I

    move-result v3

    aput v3, v2, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 121
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_2

    .line 123
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_sum0:[I

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_S:[I

    and-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    add-int/2addr v3, v1

    aput v3, v2, v0

    .line 124
    const v2, 0x61c88647

    sub-int/2addr v1, v2

    .line 125
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_sum1:[I

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_S:[I

    ushr-int/lit8 v4, v1, 0xb

    and-int/lit8 v4, v4, 0x3

    aget v3, v3, v4

    add-int/2addr v3, v1

    aput v3, v2, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_2
    return-void
.end method

.method private unpackInt(I[BI)V
    .locals 2
    .param p1, "v"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 183
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .local v0, "outOff":I
    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 184
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p3    # "outOff":I
    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 185
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .restart local v0    # "outOff":I
    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 186
    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 187
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "XTEA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 60
    instance-of v1, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to TEA init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_forEncryption:Z

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_initialised:Z

    move-object v0, p2

    .line 68
    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 70
    .local v0, "p":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/XTEAEngine;->setKey([B)V

    .line 71
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_initialised:Z

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/XTEAEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 86
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 91
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/XTEAEngine;->_forEncryption:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/XTEAEngine;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    .line 95
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/XTEAEngine;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method
