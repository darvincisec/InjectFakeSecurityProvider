.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;
.super Ljava/lang/Object;
.source "GMSSRootSig.java"


# instance fields
.field private big8:J

.field private checksum:I

.field private counter:I

.field private gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private hash:[B

.field private height:I

.field private ii:I

.field private k:I

.field private keysize:I

.field private mdsize:I

.field private messDigestOTS:Lorg/spongycastle/crypto/Digest;

.field private messagesize:I

.field private privateKeyOTS:[B

.field private r:I

.field private seed:[B

.field private sign:[B

.field private steps:I

.field private test:I

.field private test8:J

.field private w:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;II)V
    .locals 6
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "w"    # I
    .param p3, "height"    # I

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    .line 162
    new-instance v1, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 164
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    .line 165
    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    .line 166
    iput p3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    .line 168
    const/4 v1, 0x1

    shl-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    .line 170
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v0, v1, 0x3

    .line 171
    .local v0, "mdsizeBit":I
    int-to-double v2, v0

    int-to-double v4, p2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    .line 172
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;[[B[I)V
    .locals 11
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "statByte"    # [[B
    .param p3, "statInt"    # [I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    .line 106
    new-instance v1, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 108
    aget v1, p3, v9

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    .line 109
    aget v1, p3, v7

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    .line 110
    aget v1, p3, v10

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    .line 111
    const/4 v1, 0x3

    aget v1, p3, v1

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    .line 112
    aget v1, p3, v6

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    .line 113
    const/4 v1, 0x5

    aget v1, p3, v1

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    .line 114
    const/4 v1, 0x6

    aget v1, p3, v1

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    .line 115
    const/4 v1, 0x7

    aget v1, p3, v1

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    .line 116
    aget v1, p3, v8

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    .line 118
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    .line 120
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int v1, v7, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    .line 122
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v0, v1, 0x3

    .line 123
    .local v0, "mdsizeBit":I
    int-to-double v2, v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    .line 125
    aget-object v1, p2, v9

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 126
    aget-object v1, p2, v7

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    .line 127
    aget-object v1, p2, v10

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    .line 129
    const/4 v1, 0x3

    aget-object v1, p2, v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    .line 131
    aget-object v1, p2, v6

    aget-byte v1, v1, v9

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    aget-object v1, p2, v6

    aget-byte v1, v1, v7

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    shl-long/2addr v4, v8

    or-long/2addr v2, v4

    aget-object v1, p2, v6

    aget-byte v1, v1, v10

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aget-object v1, p2, v6

    const/4 v4, 0x3

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aget-object v1, p2, v6

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aget-object v1, p2, v6

    const/4 v4, 0x5

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aget-object v1, p2, v6

    const/4 v4, 0x6

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aget-object v1, p2, v6

    const/4 v4, 0x7

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    .line 140
    aget-object v1, p2, v6

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    aget-object v1, p2, v6

    const/16 v4, 0x9

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    shl-long/2addr v4, v8

    or-long/2addr v2, v4

    aget-object v1, p2, v6

    const/16 v4, 0xa

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aget-object v1, p2, v6

    const/16 v4, 0xb

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aget-object v1, p2, v6

    const/16 v4, 0xc

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aget-object v1, p2, v6

    const/16 v4, 0xd

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aget-object v1, p2, v6

    const/16 v4, 0xe

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    aget-object v1, p2, v6

    const/16 v4, 0xf

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    .line 148
    return-void
.end method

.method private oneStep()V
    .locals 14

    .prologue
    const/16 v9, 0x8

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    .line 389
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    rem-int v5, v9, v5

    if-nez v5, :cond_4

    .line 391
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-nez v5, :cond_3

    .line 394
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 397
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v5, v6, :cond_2

    .line 399
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v5, v5, v6

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    .line 400
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v7, v7, v8

    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 416
    :cond_0
    :goto_0
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-nez v5, :cond_1

    .line 419
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    iget v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v7, v8

    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v5, v10, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    .line 423
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    div-int v6, v9, v6

    rem-int/2addr v5, v6

    if-nez v5, :cond_1

    .line 426
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    .line 553
    :cond_1
    :goto_1
    return-void

    .line 404
    :cond_2
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    .line 405
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    goto :goto_0

    .line 408
    :cond_3
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-lez v5, :cond_0

    .line 411
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v7, v7

    invoke-interface {v5, v6, v10, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 412
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 413
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v5, v6, v10}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 414
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    goto :goto_0

    .line 432
    :cond_4
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    if-ge v5, v9, :cond_a

    .line 435
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-nez v5, :cond_9

    .line 437
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    rem-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_6

    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v5, v6, :cond_6

    .line 440
    iput-wide v12, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    .line 441
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    div-int/2addr v6, v7

    shl-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_5

    .line 445
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    if-ge v2, v5, :cond_6

    .line 447
    iget-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v8, v2, 0x3

    shl-int/2addr v5, v8

    int-to-long v8, v5

    xor-long/2addr v6, v8

    iput-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    .line 448
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 453
    .end local v2    # "j":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    rem-int/2addr v5, v6

    if-ge v2, v5, :cond_6

    .line 455
    iget-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v8, v2, 0x3

    shl-int/2addr v5, v8

    int-to-long v8, v5

    xor-long/2addr v6, v8

    iput-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    .line 456
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 460
    .end local v2    # "j":I
    :cond_6
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    if-ne v5, v6, :cond_7

    .line 462
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    int-to-long v6, v5

    iput-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    .line 465
    :cond_7
    iget-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v8, v5

    and-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    .line 467
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 479
    :cond_8
    :goto_4
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-nez v5, :cond_1

    .line 482
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    iget v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v7, v8

    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v5, v10, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    iget-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-long/2addr v6, v5

    iput-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    .line 485
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    goto/16 :goto_1

    .line 471
    :cond_9
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-lez v5, :cond_8

    .line 474
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v7, v7

    invoke-interface {v5, v6, v10, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 475
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 476
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v5, v6, v10}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 477
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    goto :goto_4

    .line 490
    :cond_a
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v6, 0x39

    if-ge v5, v6, :cond_1

    .line 493
    iget-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    cmp-long v5, v6, v12

    if-nez v5, :cond_f

    .line 496
    iput-wide v12, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    .line 497
    iput v10, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    .line 498
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    rem-int/lit8 v3, v5, 0x8

    .line 499
    .local v3, "rest":I
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    ushr-int/lit8 v4, v5, 0x3

    .line 501
    .local v4, "s":I
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v4, v5, :cond_e

    .line 503
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v6, v6, 0x3

    iget v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_b

    .line 505
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    .line 506
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    add-int/lit8 v5, v5, 0x7

    ushr-int/lit8 v0, v5, 0x3

    .line 515
    .local v0, "f":I
    :goto_5
    move v1, v4

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_c

    .line 517
    iget-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    aget-byte v5, v5, v1

    and-int/lit16 v5, v5, 0xff

    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    shl-int/lit8 v8, v8, 0x3

    shl-int/2addr v5, v8

    int-to-long v8, v5

    xor-long/2addr v6, v8

    iput-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    .line 518
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 510
    .end local v0    # "f":I
    .end local v1    # "i":I
    :cond_b
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    .line 511
    .restart local v0    # "f":I
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    add-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    goto :goto_5

    .line 522
    .restart local v1    # "i":I
    :cond_c
    iget-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    ushr-long/2addr v6, v3

    iput-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    .line 523
    iget-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v8, v5

    and-long/2addr v6, v8

    iput-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    .line 532
    .end local v0    # "f":I
    .end local v1    # "i":I
    :goto_7
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 544
    .end local v3    # "rest":I
    .end local v4    # "s":I
    :cond_d
    :goto_8
    iget-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    cmp-long v5, v6, v12

    if-nez v5, :cond_1

    .line 547
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    iget v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v7, v8

    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    invoke-static {v5, v10, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    goto/16 :goto_1

    .line 528
    .restart local v3    # "rest":I
    .restart local v4    # "s":I
    :cond_e
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v5, v6

    int-to-long v6, v5

    iput-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    .line 529
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    goto :goto_7

    .line 536
    .end local v3    # "rest":I
    .end local v4    # "s":I
    :cond_f
    iget-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    cmp-long v5, v6, v12

    if-lez v5, :cond_d

    .line 539
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v7, v7

    invoke-interface {v5, v6, v10, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 540
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 541
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v5, v6, v10}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 542
    iget-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    goto :goto_8
.end method


# virtual methods
.method public getLog(I)I
    .locals 2
    .param p1, "intValue"    # I

    .prologue
    .line 565
    const/4 v1, 0x1

    .line 566
    .local v1, "log":I
    const/4 v0, 0x2

    .line 567
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 569
    shl-int/lit8 v0, v0, 0x1

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    :cond_0
    return v1
.end method

.method public getSig()[B
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    return-object v0
.end method

.method public getStatByte()[[B
    .locals 3

    .prologue
    .line 583
    const/4 v1, 0x5

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 584
    .local v0, "statByte":[[B
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    aput-object v2, v0, v1

    .line 585
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    aput-object v2, v0, v1

    .line 586
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    aput-object v2, v0, v1

    .line 587
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    aput-object v2, v0, v1

    .line 588
    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatLong()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 590
    return-object v0
.end method

.method public getStatInt()[I
    .locals 3

    .prologue
    .line 600
    const/16 v1, 0x9

    new-array v0, v1, [I

    .line 601
    .local v0, "statInt":[I
    const/4 v1, 0x0

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    aput v2, v0, v1

    .line 602
    const/4 v1, 0x1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    aput v2, v0, v1

    .line 603
    const/4 v1, 0x2

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aput v2, v0, v1

    .line 604
    const/4 v1, 0x3

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    aput v2, v0, v1

    .line 605
    const/4 v1, 0x4

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    aput v2, v0, v1

    .line 606
    const/4 v1, 0x5

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    aput v2, v0, v1

    .line 607
    const/4 v1, 0x6

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    aput v2, v0, v1

    .line 608
    const/4 v1, 0x7

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    aput v2, v0, v1

    .line 609
    const/16 v1, 0x8

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    aput v2, v0, v1

    .line 610
    return-object v0
.end method

.method public getStatLong()[B
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0x18

    const/16 v8, 0x10

    const/16 v5, 0x8

    const-wide/16 v6, 0xff

    .line 619
    new-array v0, v8, [B

    .line 621
    .local v0, "bytes":[B
    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 622
    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    shr-long/2addr v2, v5

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 623
    const/4 v1, 0x2

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    shr-long/2addr v2, v8

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 624
    const/4 v1, 0x3

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    shr-long/2addr v2, v9

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 625
    const/4 v1, 0x4

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    shr-long/2addr v2, v10

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 626
    const/4 v1, 0x5

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 627
    const/4 v1, 0x6

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 628
    const/4 v1, 0x7

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 630
    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    and-long/2addr v2, v6

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 631
    const/16 v1, 0x9

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v5

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 632
    const/16 v1, 0xa

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v8

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 633
    const/16 v1, 0xb

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v9

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 634
    const/16 v1, 0xc

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    shr-long/2addr v2, v10

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 635
    const/16 v1, 0xd

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    const/16 v4, 0x28

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 636
    const/16 v1, 0xe

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    const/16 v4, 0x30

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 637
    const/16 v1, 0xf

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    const/16 v4, 0x38

    shr-long/2addr v2, v4

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 639
    return-object v0
.end method

.method public initSign([B[B)V
    .locals 28
    .param p1, "seed0"    # [B
    .param p2, "message"    # [B

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 191
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 192
    .local v17, "messPart":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    const/4 v10, 0x0

    .line 194
    .local v10, "checkPart":I
    const/16 v21, 0x0

    .line 195
    .local v21, "sumH":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v23, v0

    shl-int v22, v22, v23

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getLog(I)I

    move-result v11

    .line 198
    .local v11, "checksumsize":I
    const/16 v22, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v23, v0

    rem-int v22, v22, v23

    if-nez v22, :cond_2

    .line 200
    const/16 v22, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v23, v0

    div-int v12, v22, v23

    .line 202
    .local v12, "dt":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_1

    .line 205
    const/4 v7, 0x0

    .local v7, "b":I
    :goto_1
    if-ge v7, v12, :cond_0

    .line 207
    aget-byte v22, v17, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    move/from16 v23, v0

    and-int v22, v22, v23

    add-int v21, v21, v22

    .line 208
    aget-byte v22, v17, v6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v23, v0

    ushr-int v22, v22, v23

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v17, v6

    .line 205
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 202
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 212
    .end local v7    # "b":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v23, v0

    shl-int v22, v22, v23

    sub-int v22, v22, v21

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    .line 213
    move-object/from16 v0, p0

    iget v10, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    .line 215
    const/4 v7, 0x0

    .restart local v7    # "b":I
    :goto_2
    if-ge v7, v11, :cond_d

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    move/from16 v22, v0

    and-int v22, v22, v10

    add-int v21, v21, v22

    .line 218
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v22, v0

    ushr-int v10, v10, v22

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v22, v0

    add-int v7, v7, v22

    goto :goto_2

    .line 221
    .end local v6    # "a":I
    .end local v7    # "b":I
    .end local v12    # "dt":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 224
    const/4 v15, 0x0

    .line 225
    .local v15, "ii":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v23, v0

    div-int v12, v22, v23

    .line 228
    .restart local v12    # "dt":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v12, :cond_5

    .line 230
    const-wide/16 v8, 0x0

    .line 231
    .local v8, "big8":J
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 233
    aget-byte v22, v17, v15

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v23, v16, 0x3

    shl-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    xor-long v8, v8, v22

    .line 234
    add-int/lit8 v15, v15, 0x1

    .line 231
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 237
    :cond_3
    const/16 v16, 0x0

    :goto_5
    const/16 v22, 0x8

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 239
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    and-long v22, v22, v8

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v22, v0

    ushr-long v8, v8, v22

    .line 237
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 228
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 244
    .end local v8    # "big8":J
    .end local v16    # "j":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v23, v0

    rem-int v12, v22, v23

    .line 245
    const-wide/16 v8, 0x0

    .line 246
    .restart local v8    # "big8":J
    const/16 v16, 0x0

    .restart local v16    # "j":I
    :goto_6
    move/from16 v0, v16

    if-ge v0, v12, :cond_6

    .line 248
    aget-byte v22, v17, v15

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v23, v16, 0x3

    shl-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    xor-long v8, v8, v22

    .line 249
    add-int/lit8 v15, v15, 0x1

    .line 246
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 251
    :cond_6
    shl-int/lit8 v12, v12, 0x3

    .line 253
    const/16 v16, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v0, v12, :cond_7

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    and-long v22, v22, v8

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    .line 256
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v22, v0

    ushr-long v8, v8, v22

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v22, v0

    add-int v16, v16, v22

    goto :goto_7

    .line 259
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v23, v0

    shl-int v22, v22, v23

    sub-int v22, v22, v21

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    .line 260
    move-object/from16 v0, p0

    iget v10, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    .line 262
    const/4 v14, 0x0

    :goto_8
    if-ge v14, v11, :cond_d

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    move/from16 v22, v0

    and-int v22, v22, v10

    add-int v21, v21, v22

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v22, v0

    ushr-int v10, v10, v22

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v22, v0

    add-int v14, v14, v22

    goto :goto_8

    .line 268
    .end local v8    # "big8":J
    .end local v12    # "dt":I
    .end local v14    # "i":I
    .end local v15    # "ii":I
    .end local v16    # "j":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v22, v0

    const/16 v23, 0x39

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 271
    const/16 v18, 0x0

    .line 276
    .local v18, "r":I
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move/from16 v22, v0

    shl-int/lit8 v22, v22, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v18

    move/from16 v1, v22

    if-gt v0, v1, :cond_a

    .line 278
    ushr-int/lit8 v20, v18, 0x3

    .line 279
    .local v20, "s":I
    rem-int/lit8 v19, v18, 0x8

    .line 280
    .local v19, "rest":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v22, v0

    add-int v18, v18, v22

    .line 281
    add-int/lit8 v22, v18, 0x7

    ushr-int/lit8 v13, v22, 0x3

    .line 282
    .local v13, "f":I
    const-wide/16 v8, 0x0

    .line 283
    .restart local v8    # "big8":J
    const/4 v15, 0x0

    .line 284
    .restart local v15    # "ii":I
    move/from16 v16, v20

    .restart local v16    # "j":I
    :goto_a
    move/from16 v0, v16

    if-ge v0, v13, :cond_9

    .line 286
    aget-byte v22, v17, v16

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v23, v15, 0x3

    shl-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    xor-long v8, v8, v22

    .line 287
    add-int/lit8 v15, v15, 0x1

    .line 284
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 289
    :cond_9
    ushr-long v8, v8, v19

    .line 291
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    and-long v24, v24, v8

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    goto :goto_9

    .line 295
    .end local v8    # "big8":J
    .end local v13    # "f":I
    .end local v15    # "ii":I
    .end local v16    # "j":I
    .end local v19    # "rest":I
    .end local v20    # "s":I
    :cond_a
    ushr-int/lit8 v20, v18, 0x3

    .line 296
    .restart local v20    # "s":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    .line 298
    rem-int/lit8 v19, v18, 0x8

    .line 299
    .restart local v19    # "rest":I
    const-wide/16 v8, 0x0

    .line 300
    .restart local v8    # "big8":J
    const/4 v15, 0x0

    .line 301
    .restart local v15    # "ii":I
    move/from16 v16, v20

    .restart local v16    # "j":I
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 303
    aget-byte v22, v17, v16

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v23, v15, 0x3

    shl-int v22, v22, v23

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    xor-long v8, v8, v22

    .line 304
    add-int/lit8 v15, v15, 0x1

    .line 301
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 307
    :cond_b
    ushr-long v8, v8, v19

    .line 309
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    and-long v24, v24, v8

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    .line 312
    .end local v8    # "big8":J
    .end local v15    # "ii":I
    .end local v16    # "j":I
    .end local v19    # "rest":I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v23, v0

    shl-int v22, v22, v23

    sub-int v22, v22, v21

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    .line 313
    move-object/from16 v0, p0

    iget v10, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    .line 315
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_c
    if-ge v14, v11, :cond_d

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    move/from16 v22, v0

    and-int v22, v22, v10

    add-int v21, v21, v22

    .line 318
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v22, v0

    ushr-int v10, v10, v22

    .line 315
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v22, v0

    add-int v14, v14, v22

    goto :goto_c

    .line 323
    .end local v14    # "i":I
    .end local v18    # "r":I
    .end local v20    # "s":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    move/from16 v22, v0

    int-to-double v0, v11

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    .line 324
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    move/from16 v22, v0

    add-int v22, v22, v21

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    move/from16 v25, v0

    shl-int v24, v24, v25

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    .line 334
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    .line 335
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    .line 336
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    .line 337
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    .line 338
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    .line 342
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    .line 343
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x5

    .line 649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, "out":Ljava/lang/String;
    new-array v3, v9, [I

    .line 651
    .local v3, "statInt":[I
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v3

    .line 652
    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    filled-new-array {v8, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    .line 653
    .local v2, "statByte":[[B
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v2

    .line 654
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v9, :cond_0

    .line 656
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 658
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_1

    .line 660
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    aget-object v6, v2, v0

    invoke-static {v6}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 663
    :cond_1
    return-object v1
.end method

.method public updateSign()Z
    .locals 3

    .prologue
    .line 357
    const/4 v0, 0x0

    .local v0, "s":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    if-ge v0, v1, :cond_2

    .line 360
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    if-ge v1, v2, :cond_0

    .line 363
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->oneStep()V

    .line 365
    :cond_0
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    if-ne v1, v2, :cond_1

    .line 367
    const/4 v1, 0x1

    .line 371
    :goto_1
    return v1

    .line 357
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
