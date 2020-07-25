.class public Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;
.super Ljava/lang/Object;
.source "MGF1BytesGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationFunction;


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;

.field private hLen:I

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    .line 27
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    .line 28
    return-void
.end method

.method private ItoOSP(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "sp"    # [B

    .prologue
    .line 58
    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 59
    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 60
    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 61
    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 62
    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 7
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 76
    array-length v3, p1

    sub-int/2addr v3, p3

    if-ge v3, p2, :cond_0

    .line 78
    new-instance v3, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v4, "output buffer too small"

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_0
    iget v3, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    new-array v2, v3, [B

    .line 82
    .local v2, "hashBuf":[B
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 83
    .local v0, "C":[B
    const/4 v1, 0x0

    .line 85
    .local v1, "counter":I
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 87
    iget v3, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    if-le p3, v3, :cond_2

    .line 91
    :cond_1
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->ItoOSP(I[B)V

    .line 93
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v4, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    array-length v5, v5

    invoke-interface {v3, v4, v6, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 94
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v4, v0

    invoke-interface {v3, v0, v6, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 95
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v2, v6}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 97
    iget v3, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v3, v1

    add-int/2addr v3, p2

    iget v4, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    invoke-static {v2, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    div-int v3, p3, v3

    if-lt v1, v3, :cond_1

    .line 102
    :cond_2
    iget v3, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v3, v1

    if-ge v3, p3, :cond_3

    .line 104
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->ItoOSP(I[B)V

    .line 106
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v4, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    array-length v5, v5

    invoke-interface {v3, v4, v6, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 107
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v4, v0

    invoke-interface {v3, v0, v6, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 108
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v2, v6}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 110
    iget v3, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v3, v1

    add-int/2addr v3, p2

    iget v4, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->hLen:I

    mul-int/2addr v4, v1

    sub-int v4, p3, v4

    invoke-static {v2, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    :cond_3
    return p3
.end method

.method public getDigest()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 3
    .param p1, "param"    # Lorg/spongycastle/crypto/DerivationParameters;

    .prologue
    .line 33
    instance-of v1, p1, Lorg/spongycastle/crypto/params/MGFParameters;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MGF parameters required for MGF1Generator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 38
    check-cast v0, Lorg/spongycastle/crypto/params/MGFParameters;

    .line 40
    .local v0, "p":Lorg/spongycastle/crypto/params/MGFParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/MGFParameters;->getSeed()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/MGF1BytesGenerator;->seed:[B

    .line 41
    return-void
.end method
