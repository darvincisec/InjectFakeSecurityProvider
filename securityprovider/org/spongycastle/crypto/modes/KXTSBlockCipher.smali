.class public Lorg/spongycastle/crypto/modes/KXTSBlockCipher;
.super Lorg/spongycastle/crypto/BufferedBlockCipher;
.source "KXTSBlockCipher.java"


# static fields
.field private static final RED_POLY_128:J = 0x87L

.field private static final RED_POLY_256:J = 0x425L

.field private static final RED_POLY_512:J = 0x125L


# instance fields
.field private final blockSize:I

.field private counter:I

.field private final reductionPolynomial:J

.field private final tw_current:[J

.field private final tw_init:[J


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 53
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    .line 54
    iget v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    invoke-static {v0}, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->getReductionPolynomial(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->reductionPolynomial:J

    .line 55
    iget v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    ushr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    .line 56
    iget v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    ushr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->counter:I

    .line 58
    return-void
.end method

.method private static GF_double(J[J)V
    .locals 12
    .param p0, "redPoly"    # J
    .param p2, "z"    # [J

    .prologue
    .line 189
    const-wide/16 v2, 0x0

    .line 190
    .local v2, "c":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 192
    aget-wide v6, p2, v4

    .line 193
    .local v6, "zVal":J
    const/16 v5, 0x3f

    ushr-long v0, v6, v5

    .line 194
    .local v0, "bit":J
    const/4 v5, 0x1

    shl-long v8, v6, v5

    xor-long/2addr v8, v2

    aput-wide v8, p2, v4

    .line 195
    move-wide v2, v0

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "bit":J
    .end local v6    # "zVal":J
    :cond_0
    const/4 v5, 0x0

    aget-wide v8, p2, v5

    neg-long v10, v2

    and-long/2addr v10, p0

    xor-long/2addr v8, v10

    aput-wide v8, p2, v5

    .line 199
    return-void
.end method

.method protected static getReductionPolynomial(I)J
    .locals 2
    .param p0, "blockSize"    # I

    .prologue
    .line 30
    sparse-switch p0, :sswitch_data_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only 128, 256, and 512 -bit block sizes supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :sswitch_0
    const-wide/16 v0, 0x87

    .line 37
    :goto_0
    return-wide v0

    .line 35
    :sswitch_1
    const-wide/16 v0, 0x425

    goto :goto_0

    .line 37
    :sswitch_2
    const-wide/16 v0, 0x125

    goto :goto_0

    .line 30
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method private processBlock([BI[BI)V
    .locals 7
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "output"    # [B
    .param p4, "outOff"    # I

    .prologue
    const/4 v6, 0x0

    .line 140
    iget v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->counter:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 142
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Attempt to process too many blocks"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 145
    :cond_0
    iget v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->counter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->counter:I

    .line 150
    iget-wide v4, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->reductionPolynomial:J

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    invoke-static {v4, v5, v3}, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->GF_double(J[J)V

    .line 152
    iget v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    new-array v2, v3, [B

    .line 153
    .local v2, "tweak":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    invoke-static {v3, v2, v6}, Lorg/spongycastle/util/Pack;->longToLittleEndian([J[BI)V

    .line 155
    iget v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    new-array v0, v3, [B

    .line 156
    .local v0, "buffer":[B
    iget v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    invoke-static {v2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-ge v1, v3, :cond_1

    .line 160
    aget-byte v3, v0, v1

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3, v0, v6, v0, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 165
    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-ge v1, v3, :cond_2

    .line 167
    add-int v3, p4, v1

    aget-byte v4, v0, v1

    aget-byte v5, v2, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 169
    :cond_2
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .param p1, "output"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->reset()V

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public getOutputSize(I)I
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 62
    return p1
.end method

.method public getUpdateOutputSize(I)I
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 67
    return p1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 7
    .param p1, "forEncryption"    # Z
    .param p2, "parameters"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    const/4 v6, 0x0

    .line 72
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v3, :cond_0

    .line 74
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid parameters passed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, p2

    .line 77
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 78
    .local v1, "ivParam":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 80
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 87
    .local v0, "iv":[B
    array-length v3, v0

    iget v4, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-eq v3, v4, :cond_1

    .line 89
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Currently only support IVs of exactly one block"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_1
    iget v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    new-array v2, v3, [B

    .line 93
    .local v2, "tweak":[B
    iget v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    invoke-static {v0, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v4, 0x1

    invoke-interface {v3, v4, p2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 96
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3, v2, v6, v2, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 98
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 99
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    invoke-static {v2, v6, v3}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI[J)V

    .line 100
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    array-length v5, v5

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iput v6, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->counter:I

    .line 102
    return-void
.end method

.method public processByte(B[BI)I
    .locals 2
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBytes([BII[BI)I
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I

    .prologue
    .line 114
    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v1, p3, :cond_0

    .line 116
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "Input buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_0
    array-length v1, p4

    sub-int/2addr v1, p2

    if-ge v1, p3, :cond_1

    .line 120
    new-instance v1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v2, "Output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_1
    iget v1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    rem-int v1, p3, v1

    if-eqz v1, :cond_2

    .line 124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Partial blocks not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_2
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 129
    add-int v1, p2, v0

    add-int v2, p5, v0

    invoke-direct {p0, p1, v1, p4, v2}, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->processBlock([BI[BI)V

    .line 127
    iget v1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 132
    :cond_3
    return p3
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    .line 183
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iput v3, p0, Lorg/spongycastle/crypto/modes/KXTSBlockCipher;->counter:I

    .line 185
    return-void
.end method
