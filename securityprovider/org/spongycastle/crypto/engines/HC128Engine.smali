.class public Lorg/spongycastle/crypto/engines/HC128Engine;
.super Ljava/lang/Object;
.source "HC128Engine.java"

# interfaces
.implements Lorg/spongycastle/crypto/StreamCipher;


# instance fields
.field private buf:[B

.field private cnt:I

.field private idx:I

.field private initialised:Z

.field private iv:[B

.field private key:[B

.field private p:[I

.field private q:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x200

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->p:[I

    .line 27
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->q:[I

    .line 28
    iput v1, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->cnt:I

    .line 202
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->buf:[B

    .line 203
    iput v1, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->idx:I

    return-void
.end method

.method private static dim(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 89
    sub-int v0, p0, p1

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->mod512(I)I

    move-result v0

    return v0
.end method

.method private static f1(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 32
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x12

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private static f2(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 38
    const/16 v0, 0x11

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x13

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xa

    xor-int/2addr v0, v1

    return v0
.end method

.method private g1(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 44
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {p3, v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    .line 45
    invoke-static {p2, v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateRight(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    return v0
.end method

.method private g2(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 50
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v0

    const/16 v1, 0x17

    invoke-static {p3, v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lorg/spongycastle/crypto/engines/HC128Engine;->rotateLeft(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getByte()B
    .locals 5

    .prologue
    .line 207
    iget v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->idx:I

    if-nez v2, :cond_0

    .line 209
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->step()I

    move-result v1

    .line 210
    .local v1, "step":I
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->buf:[B

    const/4 v3, 0x0

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 211
    shr-int/lit8 v1, v1, 0x8

    .line 212
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->buf:[B

    const/4 v3, 0x1

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 213
    shr-int/lit8 v1, v1, 0x8

    .line 214
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->buf:[B

    const/4 v3, 0x2

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 215
    shr-int/lit8 v1, v1, 0x8

    .line 216
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->buf:[B

    const/4 v3, 0x3

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 218
    .end local v1    # "step":I
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->idx:I

    aget-byte v0, v2, v3

    .line 219
    .local v0, "ret":B
    iget v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->idx:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->idx:I

    .line 220
    return v0
.end method

.method private h1(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->q:[I

    and-int/lit16 v1, p1, 0xff

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->q:[I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private h2(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->p:[I

    and-int/lit16 v1, p1, 0xff

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->p:[I

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 11

    .prologue
    const/16 v10, 0x500

    const/16 v9, 0x10

    const/4 v8, 0x4

    const/16 v7, 0x200

    const/4 v6, 0x0

    .line 115
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->key:[B

    array-length v2, v2

    if-eq v2, v9, :cond_0

    .line 117
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The key must be 128 bits long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    iput v6, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->idx:I

    .line 122
    iput v6, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->cnt:I

    .line 124
    new-array v1, v10, [I

    .line 126
    .local v1, "w":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_1

    .line 128
    shr-int/lit8 v2, v0, 0x2

    aget v3, v1, v2

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->key:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v0, 0x3

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v1, v2

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {v1, v6, v1, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->iv:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    if-ge v0, v9, :cond_2

    .line 134
    shr-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x8

    aget v3, v1, v2

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->iv:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v0, 0x3

    mul-int/lit8 v5, v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    aput v3, v1, v2

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_2
    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-static {v1, v2, v1, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    const/16 v0, 0x10

    :goto_2
    if-ge v0, v10, :cond_3

    .line 140
    add-int/lit8 v2, v0, -0x2

    aget v2, v1, v2

    invoke-static {v2}, Lorg/spongycastle/crypto/engines/HC128Engine;->f2(I)I

    move-result v2

    add-int/lit8 v3, v0, -0x7

    aget v3, v1, v3

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, -0xf

    aget v3, v1, v3

    invoke-static {v3}, Lorg/spongycastle/crypto/engines/HC128Engine;->f1(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, -0x10

    aget v3, v1, v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    aput v2, v1, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 143
    :cond_3
    const/16 v2, 0x100

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v1, v2, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    const/16 v2, 0x300

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v1, v2, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v7, :cond_4

    .line 148
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->p:[I

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->step()I

    move-result v3

    aput v3, v2, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 150
    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v7, :cond_5

    .line 152
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->q:[I

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->step()I

    move-result v3

    aput v3, v2, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 155
    :cond_5
    iput v6, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->cnt:I

    .line 156
    return-void
.end method

.method private static mod1024(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 79
    and-int/lit16 v0, p0, 0x3ff

    return v0
.end method

.method private static mod512(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 84
    and-int/lit16 v0, p0, 0x1ff

    return v0
.end method

.method private static rotateLeft(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "bits"    # I

    .prologue
    .line 57
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static rotateRight(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "bits"    # I

    .prologue
    .line 64
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private step()I
    .locals 9

    .prologue
    const/16 v7, 0x1ff

    const/16 v8, 0xc

    const/16 v6, 0xa

    const/4 v5, 0x3

    .line 94
    iget v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->cnt:I

    invoke-static {v2}, Lorg/spongycastle/crypto/engines/HC128Engine;->mod512(I)I

    move-result v0

    .line 96
    .local v0, "j":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->cnt:I

    const/16 v3, 0x200

    if-ge v2, v3, :cond_0

    .line 98
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->p:[I

    aget v3, v2, v0

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v5}, Lorg/spongycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v6}, Lorg/spongycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v6

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v7}, Lorg/spongycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v7

    aget v6, v6, v7

    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/engines/HC128Engine;->g1(III)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v0

    .line 99
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->p:[I

    invoke-static {v0, v8}, Lorg/spongycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v3

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lorg/spongycastle/crypto/engines/HC128Engine;->h1(I)I

    move-result v2

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->p:[I

    aget v3, v3, v0

    xor-int v1, v2, v3

    .line 106
    .local v1, "ret":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->cnt:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lorg/spongycastle/crypto/engines/HC128Engine;->mod1024(I)I

    move-result v2

    iput v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->cnt:I

    .line 107
    return v1

    .line 103
    .end local v1    # "ret":I
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->q:[I

    aget v3, v2, v0

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v5}, Lorg/spongycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v5

    aget v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v6}, Lorg/spongycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v6

    aget v5, v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v7}, Lorg/spongycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v7

    aget v6, v6, v7

    invoke-direct {p0, v4, v5, v6}, Lorg/spongycastle/crypto/engines/HC128Engine;->g2(III)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v0

    .line 104
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->q:[I

    invoke-static {v0, v8}, Lorg/spongycastle/crypto/engines/HC128Engine;->dim(II)I

    move-result v3

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lorg/spongycastle/crypto/engines/HC128Engine;->h2(I)I

    move-result v2

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->q:[I

    aget v3, v3, v0

    xor-int v1, v2, v3

    .restart local v1    # "ret":I
    goto :goto_0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "HC-128"

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p2

    .line 177
    .local v0, "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 179
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->iv:[B

    move-object v1, p2

    .line 180
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    .line 187
    :goto_0
    instance-of v1, v0, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_1

    .line 189
    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local v0    # "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->key:[B

    .line 190
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->init()V

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->initialised:Z

    .line 200
    return-void

    .line 184
    .restart local v0    # "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->iv:[B

    goto :goto_0

    .line 194
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid parameter passed to HC128 init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 196
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
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    .line 226
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/HC128Engine;->initialised:Z

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not initialised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_0
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 234
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_1
    add-int v1, p5, p3

    array-length v2, p4

    if-le v1, v2, :cond_2

    .line 239
    new-instance v1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 244
    add-int v1, p5, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->getByte()B

    move-result v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_3
    return p3
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->init()V

    .line 253
    return-void
.end method

.method public returnByte(B)B
    .locals 1
    .param p1, "in"    # B

    .prologue
    .line 257
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/HC128Engine;->getByte()B

    move-result v0

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method
