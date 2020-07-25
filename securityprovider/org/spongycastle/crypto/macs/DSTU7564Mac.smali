.class public Lorg/spongycastle/crypto/macs/DSTU7564Mac;
.super Ljava/lang/Object;
.source "DSTU7564Mac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# static fields
.field private static final BITS_IN_BYTE:I = 0x8


# instance fields
.field private engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

.field private inputLength:J

.field private invertedKey:[B

.field private macSize:I

.field private paddedKey:[B


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "macBitSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    .line 32
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->macSize:I

    .line 34
    iput-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    .line 35
    iput-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    .line 36
    return-void
.end method

.method private pad()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 129
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v2

    iget-wide v4, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v3

    int-to-long v6, v3

    rem-long/2addr v4, v6

    long-to-int v3, v4

    sub-int v0, v2, v3

    .line 130
    .local v0, "extra":I
    const/16 v2, 0xd

    if-ge v0, v2, :cond_0

    .line 132
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v2

    add-int/2addr v0, v2

    .line 135
    :cond_0
    new-array v1, v0, [B

    .line 137
    .local v1, "padded":[B
    const/16 v2, -0x80

    aput-byte v2, v1, v8

    .line 140
    iget-wide v2, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    array-length v4, v1

    add-int/lit8 v4, v4, -0xc

    invoke-static {v2, v3, v1, v4}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 142
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    array-length v3, v1

    invoke-virtual {v2, v1, v8, v3}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    .line 143
    return-void
.end method

.method private padKey([B)[B
    .locals 7
    .param p1, "in"    # [B

    .prologue
    const/4 v6, 0x0

    .line 147
    array-length v3, p1

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v4

    div-int/2addr v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v4

    mul-int v2, v3, v4

    .line 149
    .local v2, "paddedLen":I
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v3

    array-length v4, p1

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v5

    rem-int/2addr v4, v5

    sub-int v0, v3, v4

    .line 150
    .local v0, "extra":I
    const/16 v3, 0xd

    if-ge v0, v3, :cond_0

    .line 152
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v3

    add-int/2addr v2, v3

    .line 155
    :cond_0
    new-array v1, v2, [B

    .line 157
    .local v1, "padded":[B
    array-length v3, p1

    invoke-static {p1, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    array-length v3, p1

    const/16 v4, -0x80

    aput-byte v4, v1, v3

    .line 160
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x8

    array-length v4, v1

    add-int/lit8 v4, v4, -0xc

    invoke-static {v3, v1, v4}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 162
    return-object v1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->getAlgorithmName()Ljava/lang/String;

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

    .line 103
    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->macSize:I

    if-ge v0, v1, :cond_1

    .line 105
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->pad()V

    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "DSTU7564Mac"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->macSize:I

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 41
    instance-of v2, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_0

    .line 43
    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p1    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 45
    .local v1, "key":[B
    array-length v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    .line 47
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->padKey([B)[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    .line 49
    const/4 v0, 0x0

    .local v0, "byteIndex":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 51
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    aget-byte v3, v1, v0

    xor-int/lit8 v3, v3, -0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "byteIndex":I
    .end local v1    # "key":[B
    .restart local p1    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad parameter passed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    .end local p1    # "params":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v0    # "byteIndex":I
    .restart local v1    # "key":[B
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    .line 60
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->reset()V

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    .line 125
    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update(B)V

    .line 76
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    .line 77
    return-void
.end method

.method public update([BII)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 82
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_0

    .line 84
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->getAlgorithmName()Ljava/lang/String;

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

    .line 92
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/spongycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    .line 93
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    .line 94
    return-void
.end method
