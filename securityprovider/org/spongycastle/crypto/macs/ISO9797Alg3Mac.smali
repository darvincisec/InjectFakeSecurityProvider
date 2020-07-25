.class public Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;
.super Ljava/lang/Object;
.source "ISO9797Alg3Mac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private lastKey2:Lorg/spongycastle/crypto/params/KeyParameter;

.field private lastKey3:Lorg/spongycastle/crypto/params/KeyParameter;

.field private mac:[B

.field private macSize:I

.field private padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 43
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/spongycastle/crypto/BlockCipher;ILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;I)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "macSizeInBits"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/spongycastle/crypto/BlockCipher;ILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;ILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "macSizeInBits"    # I
    .param p3, "padding"    # Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/crypto/engines/DESEngine;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher must be instance of DESEngine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 111
    iput-object p3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    .line 112
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    .line 114
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    .line 116
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "padding"    # Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    .prologue
    .line 57
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;-><init>(Lorg/spongycastle/crypto/BlockCipher;ILorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    .line 58
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    const/4 v5, 0x0

    .line 241
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 243
    .local v0, "blockSize":I
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    if-nez v2, :cond_0

    .line 248
    :goto_0
    iget v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    if-ge v2, v0, :cond_2

    .line 250
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    aput-byte v5, v2, v3

    .line 251
    iget v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    goto :goto_0

    .line 256
    :cond_0
    iget v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    if-ne v2, v0, :cond_1

    .line 258
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 259
    iput v5, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 262
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->padding:Lorg/spongycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-interface {v2, v3, v4}, Lorg/spongycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 265
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v2, v3, v5, v4, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 268
    new-instance v1, Lorg/spongycastle/crypto/engines/DESEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/DESEngine;-><init>()V

    .line 270
    .local v1, "deseng":Lorg/spongycastle/crypto/engines/DESEngine;
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v1, v5, v2}, Lorg/spongycastle/crypto/engines/DESEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 271
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-virtual {v1, v2, v5, v3, v5}, Lorg/spongycastle/crypto/engines/DESEngine;->processBlock([BI[BI)I

    .line 273
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v1, v2, v3}, Lorg/spongycastle/crypto/engines/DESEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 274
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-virtual {v1, v2, v5, v3, v5}, Lorg/spongycastle/crypto/engines/DESEngine;->processBlock([BI[BI)I

    .line 277
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    iget v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    invoke-static {v2, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->reset()V

    .line 281
    iget v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    return v2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "ISO9797Alg3"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->macSize:I

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 9
    .param p1, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 127
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->reset()V

    .line 129
    instance-of v3, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v3, :cond_0

    instance-of v3, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v3, :cond_0

    .line 131
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "params must be an instance of KeyParameter or ParametersWithIV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    :cond_0
    instance-of v3, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 143
    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 151
    .local v2, "kp":Lorg/spongycastle/crypto/params/KeyParameter;
    :goto_0
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 153
    .local v1, "keyvalue":[B
    array-length v3, v1

    if-ne v3, v8, :cond_2

    .line 155
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v0, v1, v6, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 156
    .local v0, "key1":Lorg/spongycastle/crypto/params/KeyParameter;
    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v1, v5, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 157
    iput-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 171
    :goto_1
    instance-of v3, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_4

    .line 173
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v4, Lorg/spongycastle/crypto/params/ParametersWithIV;

    check-cast p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .end local p1    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-interface {v3, v7, v4}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 179
    :goto_2
    return-void

    .end local v0    # "key1":Lorg/spongycastle/crypto/params/KeyParameter;
    .end local v1    # "keyvalue":[B
    .end local v2    # "kp":Lorg/spongycastle/crypto/params/KeyParameter;
    .restart local p1    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    move-object v3, p1

    .line 147
    check-cast v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .restart local v2    # "kp":Lorg/spongycastle/crypto/params/KeyParameter;
    goto :goto_0

    .line 159
    .restart local v1    # "keyvalue":[B
    :cond_2
    array-length v3, v1

    const/16 v4, 0x18

    if-ne v3, v4, :cond_3

    .line 161
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v0, v1, v6, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 162
    .restart local v0    # "key1":Lorg/spongycastle/crypto/params/KeyParameter;
    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v1, v5, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->lastKey2:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 163
    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v1, v8, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    iput-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->lastKey3:Lorg/spongycastle/crypto/params/KeyParameter;

    goto :goto_1

    .line 167
    .end local v0    # "key1":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Key must be either 112 or 168 bit long"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    .restart local v0    # "key1":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_4
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3, v7, v0}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_2
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 295
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    aput-byte v2, v1, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    iput v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 303
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 304
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    .prologue
    const/4 v3, 0x0

    .line 189
    iget v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 192
    iput v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    aput-byte p1, v0, v1

    .line 196
    return-void
.end method

.method public update([BII)V
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v6, 0x0

    .line 204
    if-gez p3, :cond_0

    .line 206
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t have a negative input length!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 209
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 210
    .local v0, "blockSize":I
    const/4 v2, 0x0

    .line 211
    .local v2, "resultLen":I
    iget v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    sub-int v1, v0, v3

    .line 213
    .local v1, "gapLen":I
    if-le p3, v1, :cond_1

    .line 215
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v3, v4, v6, v5, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 219
    iput v6, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 220
    sub-int/2addr p3, v1

    .line 221
    add-int/2addr p2, v1

    .line 223
    :goto_0
    if-le p3, v0, :cond_1

    .line 225
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->mac:[B

    invoke-interface {v3, p1, p2, v4, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 227
    sub-int/2addr p3, v0

    .line 228
    add-int/2addr p2, v0

    goto :goto_0

    .line 232
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->buf:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iget v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lorg/spongycastle/crypto/macs/ISO9797Alg3Mac;->bufOff:I

    .line 235
    return-void
.end method
