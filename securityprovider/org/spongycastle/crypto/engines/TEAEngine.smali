.class public Lorg/spongycastle/crypto/engines/TEAEngine;
.super Ljava/lang/Object;
.source "TEAEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final block_size:I = 0x8

.field private static final d_sum:I = -0x3910c8e0

.field private static final delta:I = -0x61c88647

.field private static final rounds:I = 0x20


# instance fields
.field private _a:I

.field private _b:I

.field private _c:I

.field private _d:I

.field private _forEncryption:Z

.field private _initialised:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_initialised:Z

    .line 34
    return-void
.end method

.method private bytesToInt([BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 171
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
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v2

    .line 152
    .local v2, "v0":I
    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Lorg/spongycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v3

    .line 154
    .local v3, "v1":I
    const v1, -0x3910c8e0

    .line 156
    .local v1, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x20

    if-eq v0, v4, :cond_0

    .line 158
    shl-int/lit8 v4, v2, 0x4

    iget v5, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_c:I

    add-int/2addr v4, v5

    add-int v5, v2, v1

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v2, 0x5

    iget v6, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_d:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 159
    shl-int/lit8 v4, v3, 0x4

    iget v5, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_a:I

    add-int/2addr v4, v5

    add-int v5, v3, v1

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v3, 0x5

    iget v6, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_b:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    sub-int/2addr v2, v4

    .line 160
    const v4, 0x61c88647

    add-int/2addr v1, v4

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0, v2, p3, p4}, Lorg/spongycastle/crypto/engines/TEAEngine;->unpackInt(I[BI)V

    .line 164
    add-int/lit8 v4, p4, 0x4

    invoke-direct {p0, v3, p3, v4}, Lorg/spongycastle/crypto/engines/TEAEngine;->unpackInt(I[BI)V

    .line 166
    const/16 v4, 0x8

    return v4
.end method

.method private encryptBlock([BI[BI)I
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v2

    .line 127
    .local v2, "v0":I
    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Lorg/spongycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v3

    .line 129
    .local v3, "v1":I
    const/4 v1, 0x0

    .line 131
    .local v1, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x20

    if-eq v0, v4, :cond_0

    .line 133
    const v4, 0x61c88647

    sub-int/2addr v1, v4

    .line 134
    shl-int/lit8 v4, v3, 0x4

    iget v5, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_a:I

    add-int/2addr v4, v5

    add-int v5, v3, v1

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v3, 0x5

    iget v6, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_b:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 135
    shl-int/lit8 v4, v2, 0x4

    iget v5, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_c:I

    add-int/2addr v4, v5

    add-int v5, v2, v1

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v2, 0x5

    iget v6, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_d:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    invoke-direct {p0, v2, p3, p4}, Lorg/spongycastle/crypto/engines/TEAEngine;->unpackInt(I[BI)V

    .line 139
    add-int/lit8 v4, p4, 0x4

    invoke-direct {p0, v3, p3, v4}, Lorg/spongycastle/crypto/engines/TEAEngine;->unpackInt(I[BI)V

    .line 141
    const/16 v4, 0x8

    return v4
.end method

.method private setKey([B)V
    .locals 2
    .param p1, "key"    # [B

    .prologue
    .line 108
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key size must be 128 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_a:I

    .line 114
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_b:I

    .line 115
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_c:I

    .line 116
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_d:I

    .line 117
    return-void
.end method

.method private unpackInt(I[BI)V
    .locals 2
    .param p1, "v"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 179
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .local v0, "outOff":I
    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 180
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p3    # "outOff":I
    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 181
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .restart local v0    # "outOff":I
    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 182
    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 183
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "TEA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 58
    instance-of v1, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v1, :cond_0

    .line 60
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

    .line 63
    :cond_0
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_forEncryption:Z

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_initialised:Z

    move-object v0, p2

    .line 66
    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 68
    .local v0, "p":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/TEAEngine;->setKey([B)V

    .line 69
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_initialised:Z

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/TEAEngine;->getAlgorithmName()Ljava/lang/String;

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

    .line 82
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 84
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 89
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/TEAEngine;->_forEncryption:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/TEAEngine;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    .line 93
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/TEAEngine;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method
