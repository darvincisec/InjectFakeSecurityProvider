.class public Lorg/spongycastle/crypto/macs/DSTU7624Mac;
.super Ljava/lang/Object;
.source "DSTU7624Mac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# static fields
.field private static final BITS_IN_BYTE:I = 0x8


# instance fields
.field private blockSize:I

.field private buf:[B

.field private bufOff:I

.field private c:[B

.field private cTemp:[B

.field private engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

.field private kDelta:[B

.field private macSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "blockBitLength"    # I
    .param p2, "q"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    .line 31
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    .line 32
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->macSize:I

    .line 33
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    .line 34
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    .line 35
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    .line 36
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    .line 37
    return-void
.end method

.method private processBlock([BI)V
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->xor([BI[BI[B)V

    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    invoke-virtual {v0, v1, v2, v3, v2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    .line 114
    return-void
.end method

.method private xor([BI[BI[B)V
    .locals 3
    .param p1, "x"    # [B
    .param p2, "xOff"    # I
    .param p3, "y"    # [B
    .param p4, "yOff"    # I
    .param p5, "x_xor_y"    # [B

    .prologue
    .line 153
    array-length v1, p1

    sub-int/2addr v1, p2

    iget v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    if-lt v1, v2, :cond_0

    array-length v1, p3

    sub-int/2addr v1, p4

    iget v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    if-lt v1, v2, :cond_0

    array-length v1, p5

    iget v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    if-ge v1, v2, :cond_1

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "some of input buffers too short"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_1
    const/4 v0, 0x0

    .local v0, "byteIndex":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->blockSize:I

    if-ge v0, v1, :cond_2

    .line 159
    add-int v1, v0, p2

    aget-byte v1, p1, v1

    add-int v2, v0, p4

    aget-byte v2, p3, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p5, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_2
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 119
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    array-length v1, v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input must be a multiple of blocksize"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->xor([BI[BI[B)V

    .line 126
    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->xor([BI[BI[B)V

    .line 127
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    invoke-virtual {v0, v1, v2, v3, v2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    .line 129
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->macSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 131
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->macSize:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->macSize:I

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "DSTU7624Mac"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->macSize:I

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
    const/4 v3, 0x0

    .line 42
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 45
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    invoke-virtual {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    .line 51
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter passed to DSTU7624Mac"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->c:[B

    invoke-static {v0, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 142
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->cTemp:[B

    invoke-static {v0, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    invoke-static {v0, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    invoke-static {v0, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->reset()V

    .line 146
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->kDelta:[B

    invoke-virtual {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->processBlock([BI[BI)I

    .line 147
    iput v3, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    .line 148
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "in"    # B

    .prologue
    const/4 v2, 0x0

    .line 65
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    invoke-direct {p0, v0, v2}, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->processBlock([BI)V

    .line 68
    iput v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    aput-byte p1, v0, v1

    .line 72
    return-void
.end method

.method public update([BII)V
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 76
    if-gez p3, :cond_0

    .line 78
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "can\'t have a negative input length!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->engine:Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;->getBlockSize()I

    move-result v0

    .line 83
    .local v0, "blockSize":I
    iget v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    sub-int v1, v0, v2

    .line 85
    .local v1, "gapLen":I
    if-le p3, v1, :cond_1

    .line 87
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    invoke-direct {p0, v2, v4}, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->processBlock([BI)V

    .line 91
    iput v4, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    .line 92
    sub-int/2addr p3, v1

    .line 93
    add-int/2addr p2, v1

    .line 95
    :goto_0
    if-le p3, v0, :cond_1

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->processBlock([BI)V

    .line 99
    sub-int/2addr p3, v0

    .line 100
    add-int/2addr p2, v0

    goto :goto_0

    .line 104
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/spongycastle/crypto/macs/DSTU7624Mac;->bufOff:I

    .line 107
    return-void
.end method
