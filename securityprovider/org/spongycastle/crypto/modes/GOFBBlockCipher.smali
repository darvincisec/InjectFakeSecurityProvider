.class public Lorg/spongycastle/crypto/modes/GOFBBlockCipher;
.super Lorg/spongycastle/crypto/StreamBlockCipher;
.source "GOFBBlockCipher.java"


# static fields
.field static final C1:I = 0x1010104

.field static final C2:I = 0x1010101


# instance fields
.field private IV:[B

.field N3:I

.field N4:I

.field private final blockSize:I

.field private byteCount:I

.field private final cipher:Lorg/spongycastle/crypto/BlockCipher;

.field firstStep:Z

.field private ofbOutV:[B

.field private ofbV:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/StreamBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    .line 41
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 42
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    .line 44
    iget v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GCTR only for 64 bit block ciphers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    .line 50
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    .line 51
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    .line 52
    return-void
.end method

.method private bytesToint([BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 178
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private intTobytes(I[BI)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 188
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 189
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 190
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 191
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 192
    return-void
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 7
    .param p1, "b"    # B

    .prologue
    const v5, 0x1010104

    const/4 v4, 0x4

    const/4 v6, 0x0

    .line 196
    iget v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    if-nez v1, :cond_2

    .line 198
    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    if-eqz v1, :cond_0

    .line 200
    iput-boolean v6, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    .line 201
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 202
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-direct {p0, v1, v6}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->bytesToint([BI)I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N3:I

    .line 203
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-direct {p0, v1, v4}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->bytesToint([BI)I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 205
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N3:I

    const v2, 0x1010101

    add-int/2addr v1, v2

    iput v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N3:I

    .line 206
    iget v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N4:I

    add-int/2addr v1, v5

    iput v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 207
    iget v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N4:I

    if-ge v1, v5, :cond_1

    .line 209
    iget v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N4:I

    if-lez v1, :cond_1

    .line 211
    iget v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N4:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 214
    :cond_1
    iget v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N3:I

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    invoke-direct {p0, v1, v2, v6}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->intTobytes(I[BI)V

    .line 215
    iget v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N4:I

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    invoke-direct {p0, v1, v2, v4}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->intTobytes(I[BI)V

    .line 217
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 220
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v0, v1

    .line 222
    .local v0, "rv":B
    iget v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    iget v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    if-ne v1, v2, :cond_3

    .line 224
    iput v6, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    .line 229
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    array-length v4, v4

    iget v5, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    array-length v3, v3

    iget v4, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    :cond_3
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GCTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 8
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    iput-boolean v7, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    .line 71
    iput v6, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N3:I

    .line 72
    iput v6, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 74
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_3

    move-object v2, p2

    .line 76
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 77
    .local v2, "ivParam":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 79
    .local v1, "iv":[B
    array-length v3, v1

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 82
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v5, v1

    sub-int/2addr v4, v5

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    .line 85
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    aput-byte v6, v3, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->reset()V

    .line 96
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 98
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 111
    .end local v1    # "iv":[B
    .end local v2    # "ivParam":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :cond_2
    :goto_1
    return-void

    .line 103
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->reset()V

    .line 106
    if-eqz p2, :cond_2

    .line 108
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3, v7, p2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_1
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 154
    iget v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->processBytes([BII[BI)I

    .line 156
    iget v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    .line 166
    iput v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N3:I

    .line 167
    iput v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 168
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput v3, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->byteCount:I

    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 171
    return-void
.end method
