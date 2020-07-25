.class public Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;
.super Ljava/lang/Object;
.source "BaseKDFBytesGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/DigestDerivationFunction;


# instance fields
.field private counterStart:I

.field private digest:Lorg/spongycastle/crypto/Digest;

.field private iv:[B

.field private shared:[B


# direct methods
.method protected constructor <init>(ILorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "counterStart"    # I
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    .line 37
    iput-object p2, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    .line 38
    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 12
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
    .line 82
    array-length v8, p1

    sub-int/2addr v8, p3

    if-ge v8, p2, :cond_0

    .line 84
    new-instance v8, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v9, "output buffer too small"

    invoke-direct {v8, v9}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 87
    :cond_0
    int-to-long v6, p3

    .line 88
    .local v6, "oBytes":J
    iget-object v8, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v8}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    .line 96
    .local v5, "outLen":I
    const-wide v8, 0x1ffffffffL

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 98
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Output length too large"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 101
    :cond_1
    int-to-long v8, v5

    add-long/2addr v8, v6

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    int-to-long v10, v5

    div-long/2addr v8, v10

    long-to-int v1, v8

    .line 103
    .local v1, "cThreshold":I
    iget-object v8, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v8}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    new-array v3, v8, [B

    .line 105
    .local v3, "dig":[B
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 106
    .local v0, "C":[B
    iget v8, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    const/4 v9, 0x0

    invoke-static {v8, v0, v9}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 108
    iget v8, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    and-int/lit16 v2, v8, -0x100

    .line 110
    .local v2, "counterBase":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_5

    .line 112
    iget-object v8, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v9, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    array-length v11, v11

    invoke-interface {v8, v9, v10, v11}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 113
    iget-object v8, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v9, 0x0

    array-length v10, v0

    invoke-interface {v8, v0, v9, v10}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 115
    iget-object v8, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    if-eqz v8, :cond_2

    .line 117
    iget-object v8, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v9, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    array-length v11, v11

    invoke-interface {v8, v9, v10, v11}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 120
    :cond_2
    iget-object v8, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v9, 0x0

    invoke-interface {v8, v3, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 122
    if-le p3, v5, :cond_4

    .line 124
    const/4 v8, 0x0

    invoke-static {v3, v8, p1, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    add-int/2addr p2, v5

    .line 126
    sub-int/2addr p3, v5

    .line 133
    :goto_1
    const/4 v8, 0x3

    aget-byte v9, v0, v8

    add-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    if-nez v9, :cond_3

    .line 135
    add-int/lit16 v2, v2, 0x100

    .line 136
    const/4 v8, 0x0

    invoke-static {v2, v0, v8}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 110
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    :cond_4
    const/4 v8, 0x0

    invoke-static {v3, v8, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 140
    :cond_5
    iget-object v8, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v8}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 142
    long-to-int v8, v6

    return v8
.end method

.method public getDigest()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 3
    .param p1, "param"    # Lorg/spongycastle/crypto/DerivationParameters;

    .prologue
    .line 42
    instance-of v1, p1, Lorg/spongycastle/crypto/params/KDFParameters;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 44
    check-cast v0, Lorg/spongycastle/crypto/params/KDFParameters;

    .line 46
    .local v0, "p":Lorg/spongycastle/crypto/params/KDFParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    .line 47
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    .line 60
    .end local v0    # "p":Lorg/spongycastle/crypto/params/KDFParameters;
    :goto_0
    return-void

    .line 49
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/crypto/params/ISO18033KDFParameters;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 51
    check-cast v0, Lorg/spongycastle/crypto/params/ISO18033KDFParameters;

    .line 53
    .local v0, "p":Lorg/spongycastle/crypto/params/ISO18033KDFParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ISO18033KDFParameters;->getSeed()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    goto :goto_0

    .line 58
    .end local v0    # "p":Lorg/spongycastle/crypto/params/ISO18033KDFParameters;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "KDF parameters required for generator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
