.class public Lorg/spongycastle/crypto/macs/BlockCipherMac;
.super Ljava/lang/Object;
.source "BlockCipherMac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 29
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/macs/BlockCipherMac;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;I)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "macSizeInBits"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 54
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->macSize:I

    .line 56
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->mac:[B

    .line 58
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    .line 60
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 139
    .local v0, "blockSize":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_0

    .line 141
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    aput-byte v4, v1, v2

    .line 142
    iget v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 147
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->mac:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->macSize:I

    invoke-static {v1, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/BlockCipherMac;->reset()V

    .line 151
    iget v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->macSize:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->macSize:I

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/BlockCipherMac;->reset()V

    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 73
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    aput-byte v2, v1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iput v2, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    .line 172
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 173
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    .prologue
    const/4 v3, 0x0

    .line 83
    iget v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 86
    iput v3, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    aput-byte p1, v0, v1

    .line 90
    return-void
.end method

.method public update([BII)V
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v6, 0x0

    .line 97
    if-gez p3, :cond_0

    .line 99
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t have a negative input length!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 103
    .local v0, "blockSize":I
    const/4 v2, 0x0

    .line 104
    .local v2, "resultLen":I
    iget v3, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    sub-int v1, v0, v3

    .line 106
    .local v1, "gapLen":I
    if-le p3, v1, :cond_1

    .line 108
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v3, v4, v6, v5, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 112
    iput v6, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    .line 113
    sub-int/2addr p3, v1

    .line 114
    add-int/2addr p2, v1

    .line 116
    :goto_0
    if-le p3, v0, :cond_1

    .line 118
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v3, p1, p2, v4, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 120
    sub-int/2addr p3, v0

    .line 121
    add-int/2addr p2, v0

    goto :goto_0

    .line 125
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget v3, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lorg/spongycastle/crypto/macs/BlockCipherMac;->bufOff:I

    .line 128
    return-void
.end method
