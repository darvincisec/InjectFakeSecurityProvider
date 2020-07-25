.class public Lorg/spongycastle/crypto/digests/SHAKEDigest;
.super Lorg/spongycastle/crypto/digests/KeccakDigest;
.source "SHAKEDigest.java"

# interfaces
.implements Lorg/spongycastle/crypto/Xof;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bitLength"    # I

    .prologue
    .line 34
    invoke-static {p1}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->checkBitLength(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHAKEDigest;)V
    .locals 0
    .param p1, "source"    # Lorg/spongycastle/crypto/digests/SHAKEDigest;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;-><init>(Lorg/spongycastle/crypto/digests/KeccakDigest;)V

    .line 39
    return-void
.end method

.method private static checkBitLength(I)I
    .locals 3
    .param p0, "bitLength"    # I

    .prologue
    .line 17
    sparse-switch p0, :sswitch_data_0

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'bitLength\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported for SHAKE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :sswitch_0
    return p0

    .line 17
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->getDigestSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    move-result v0

    return v0
.end method

.method protected doFinal([BIBI)I
    .locals 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "partialByte"    # B
    .param p4, "partialBits"    # I

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->getDigestSize()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->doFinal([BIIBI)I

    move-result v0

    return v0
.end method

.method public doFinal([BII)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "outLen"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    move-result v0

    .line 55
    .local v0, "length":I
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->reset()V

    .line 57
    return v0
.end method

.method protected doFinal([BIIBI)I
    .locals 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "outLen"    # I
    .param p4, "partialByte"    # B
    .param p5, "partialBits"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 85
    if-ltz p5, :cond_0

    const/4 v2, 0x7

    if-le p5, v2, :cond_1

    .line 87
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'partialBits\' must be in the range [0,7]"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_1
    shl-int v2, v4, p5

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p4

    const/16 v3, 0xf

    shl-int/2addr v3, p5

    or-int v1, v2, v3

    .line 91
    .local v1, "finalInput":I
    add-int/lit8 v0, p5, 0x4

    .line 93
    .local v0, "finalBits":I
    const/16 v2, 0x8

    if-lt v0, v2, :cond_2

    .line 95
    new-array v2, v4, [B

    int-to-byte v3, v1

    aput-byte v3, v2, v5

    invoke-virtual {p0, v2, v5, v4}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->absorb([BII)V

    .line 96
    add-int/lit8 v0, v0, -0x8

    .line 97
    ushr-int/lit8 v1, v1, 0x8

    .line 100
    :cond_2
    if-lez v0, :cond_3

    .line 102
    invoke-virtual {p0, v1, v0}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->absorbBits(II)V

    .line 105
    :cond_3
    int-to-long v2, p3

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->squeeze([BIJ)V

    .line 107
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->reset()V

    .line 109
    return p3
.end method

.method public doOutput([BII)I
    .locals 4
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "outLen"    # I

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/spongycastle/crypto/digests/SHAKEDigest;->squeezing:Z

    if-nez v0, :cond_0

    .line 64
    const/16 v0, 0xf

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->absorbBits(II)V

    .line 67
    :cond_0
    int-to-long v0, p3

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->squeeze([BIJ)V

    .line 69
    return p3
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHAKE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHAKEDigest;->fixedOutputLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
