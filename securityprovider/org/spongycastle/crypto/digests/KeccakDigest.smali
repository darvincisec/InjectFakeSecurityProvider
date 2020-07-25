.class public Lorg/spongycastle/crypto/digests/KeccakDigest;
.super Ljava/lang/Object;
.source "KeccakDigest.java"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;


# static fields
.field private static KeccakRhoOffsets:[I

.field private static KeccakRoundConstants:[J


# instance fields
.field protected bitsInQueue:I

.field protected dataQueue:[B

.field protected fixedOutputLength:I

.field protected rate:I

.field protected squeezing:Z

.field protected state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lorg/spongycastle/crypto/digests/KeccakDigest;->keccakInitializeRoundConstants()[J

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakRoundConstants:[J

    .line 17
    invoke-static {}, Lorg/spongycastle/crypto/digests/KeccakDigest;->keccakInitializeRhoOffsets()[I

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakRhoOffsets:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x120

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;-><init>(I)V

    .line 87
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bitLength"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    .line 78
    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 91
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->init(I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/KeccakDigest;)V
    .locals 4
    .param p1, "source"    # Lorg/spongycastle/crypto/digests/KeccakDigest;

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    .line 78
    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 96
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    .line 99
    iget v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 100
    iget v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    .line 101
    iget-boolean v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    iput-boolean v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    .line 102
    return-void
.end method

.method private KeccakAbsorb([BI)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "off"    # I

    .prologue
    .line 333
    iget v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    shr-int/lit8 v0, v2, 0x6

    .line 334
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 336
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v4, v2, v1

    invoke-static {p1, p2}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v1

    .line 337
    add-int/lit8 p2, p2, 0x8

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    .line 341
    return-void
.end method

.method private KeccakExtract()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 345
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    shr-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v0, v3, v1, v2, v3}, Lorg/spongycastle/util/Pack;->longToLittleEndian([JII[BI)V

    .line 346
    return-void
.end method

.method private KeccakPermutation()V
    .locals 2

    .prologue
    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 356
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    invoke-static {v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->theta([J)V

    .line 359
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    invoke-static {v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->rho([J)V

    .line 362
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    invoke-static {v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->pi([J)V

    .line 365
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    invoke-static {v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->chi([J)V

    .line 368
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->iota([JI)V

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method

.method private static LFSR86540([B)Z
    .locals 3
    .param p0, "LFSR"    # [B

    .prologue
    const/4 v1, 0x0

    .line 45
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 46
    .local v0, "result":Z
    :goto_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 48
    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v2, v2, 0x71

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 55
    :goto_1
    return v0

    .end local v0    # "result":Z
    :cond_0
    move v0, v1

    .line 45
    goto :goto_0

    .line 52
    .restart local v0    # "result":Z
    :cond_1
    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    goto :goto_1
.end method

.method private static chi([J)V
    .locals 18
    .param p0, "A"    # [J

    .prologue
    .line 469
    const/4 v10, 0x0

    .local v10, "yBy5":I
    :goto_0
    const/16 v11, 0x19

    if-ge v10, v11, :cond_0

    .line 471
    add-int/lit8 v11, v10, 0x0

    aget-wide v12, p0, v11

    add-int/lit8 v11, v10, 0x1

    aget-wide v14, p0, v11

    const-wide/16 v16, -0x1

    xor-long v14, v14, v16

    add-int/lit8 v11, v10, 0x2

    aget-wide v16, p0, v11

    and-long v14, v14, v16

    xor-long v0, v12, v14

    .line 472
    .local v0, "chiC0":J
    add-int/lit8 v11, v10, 0x1

    aget-wide v12, p0, v11

    add-int/lit8 v11, v10, 0x2

    aget-wide v14, p0, v11

    const-wide/16 v16, -0x1

    xor-long v14, v14, v16

    add-int/lit8 v11, v10, 0x3

    aget-wide v16, p0, v11

    and-long v14, v14, v16

    xor-long v2, v12, v14

    .line 473
    .local v2, "chiC1":J
    add-int/lit8 v11, v10, 0x2

    aget-wide v12, p0, v11

    add-int/lit8 v11, v10, 0x3

    aget-wide v14, p0, v11

    const-wide/16 v16, -0x1

    xor-long v14, v14, v16

    add-int/lit8 v11, v10, 0x4

    aget-wide v16, p0, v11

    and-long v14, v14, v16

    xor-long v4, v12, v14

    .line 474
    .local v4, "chiC2":J
    add-int/lit8 v11, v10, 0x3

    aget-wide v12, p0, v11

    add-int/lit8 v11, v10, 0x4

    aget-wide v14, p0, v11

    const-wide/16 v16, -0x1

    xor-long v14, v14, v16

    add-int/lit8 v11, v10, 0x0

    aget-wide v16, p0, v11

    and-long v14, v14, v16

    xor-long v6, v12, v14

    .line 475
    .local v6, "chiC3":J
    add-int/lit8 v11, v10, 0x4

    aget-wide v12, p0, v11

    add-int/lit8 v11, v10, 0x0

    aget-wide v14, p0, v11

    const-wide/16 v16, -0x1

    xor-long v14, v14, v16

    add-int/lit8 v11, v10, 0x1

    aget-wide v16, p0, v11

    and-long v14, v14, v16

    xor-long v8, v12, v14

    .line 477
    .local v8, "chiC4":J
    add-int/lit8 v11, v10, 0x0

    aput-wide v0, p0, v11

    .line 478
    add-int/lit8 v11, v10, 0x1

    aput-wide v2, p0, v11

    .line 479
    add-int/lit8 v11, v10, 0x2

    aput-wide v4, p0, v11

    .line 480
    add-int/lit8 v11, v10, 0x3

    aput-wide v6, p0, v11

    .line 481
    add-int/lit8 v11, v10, 0x4

    aput-wide v8, p0, v11

    .line 469
    add-int/lit8 v10, v10, 0x5

    goto :goto_0

    .line 483
    .end local v0    # "chiC0":J
    .end local v2    # "chiC1":J
    .end local v4    # "chiC2":J
    .end local v6    # "chiC3":J
    .end local v8    # "chiC4":J
    :cond_0
    return-void
.end method

.method private init(I)V
    .locals 2
    .param p1, "bitLength"    # I

    .prologue
    .line 167
    sparse-switch p1, :sswitch_data_0

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength must be one of 128, 224, 256, 288, 384, or 512."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :sswitch_0
    shl-int/lit8 v0, p1, 0x1

    rsub-int v0, v0, 0x640

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->initSponge(I)V

    .line 180
    return-void

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0xe0 -> :sswitch_0
        0x100 -> :sswitch_0
        0x120 -> :sswitch_0
        0x180 -> :sswitch_0
        0x200 -> :sswitch_0
    .end sparse-switch
.end method

.method private initSponge(I)V
    .locals 5
    .param p1, "rate"    # I

    .prologue
    const/4 v4, 0x0

    .line 184
    if-lez p1, :cond_0

    const/16 v1, 0x640

    if-ge p1, v1, :cond_0

    rem-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "invalid rate value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_1
    iput p1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 192
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v1, v4}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 195
    iput v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 196
    iput-boolean v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    .line 197
    rsub-int v1, p1, 0x640

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    .line 198
    return-void
.end method

.method private static iota([JI)V
    .locals 6
    .param p0, "A"    # [J
    .param p1, "indexRound"    # I

    .prologue
    .line 487
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    sget-object v1, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakRoundConstants:[J

    aget-wide v4, v1, p1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    .line 488
    return-void
.end method

.method private static keccakInitializeRhoOffsets()[I
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 60
    const/16 v6, 0x19

    new-array v0, v6, [I

    .line 63
    .local v0, "keccakRhoOffsets":[I
    aput v7, v0, v7

    .line 64
    const/4 v4, 0x1

    .line 65
    .local v4, "x":I
    const/4 v5, 0x0

    .line 66
    .local v5, "y":I
    const/4 v3, 0x0

    .local v3, "t":I
    :goto_0
    const/16 v6, 0x18

    if-ge v3, v6, :cond_0

    .line 68
    rem-int/lit8 v6, v4, 0x5

    rem-int/lit8 v7, v5, 0x5

    mul-int/lit8 v7, v7, 0x5

    add-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v3, 0x2

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    rem-int/lit8 v7, v7, 0x40

    aput v7, v0, v6

    .line 69
    mul-int/lit8 v6, v4, 0x0

    mul-int/lit8 v7, v5, 0x1

    add-int/2addr v6, v7

    rem-int/lit8 v1, v6, 0x5

    .line 70
    .local v1, "newX":I
    mul-int/lit8 v6, v4, 0x2

    mul-int/lit8 v7, v5, 0x3

    add-int/2addr v6, v7

    rem-int/lit8 v2, v6, 0x5

    .line 71
    .local v2, "newY":I
    move v4, v1

    .line 72
    move v5, v2

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "newX":I
    .end local v2    # "newY":I
    :cond_0
    return-object v0
.end method

.method private static keccakInitializeRoundConstants()[J
    .locals 12

    .prologue
    const/16 v11, 0x18

    const/4 v10, 0x1

    .line 21
    new-array v4, v11, [J

    .line 22
    .local v4, "keccakRoundConstants":[J
    new-array v0, v10, [B

    .line 24
    .local v0, "LFSRstate":[B
    const/4 v5, 0x0

    aput-byte v10, v0, v5

    .line 27
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v11, :cond_2

    .line 29
    const-wide/16 v6, 0x0

    aput-wide v6, v4, v2

    .line 30
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/4 v5, 0x7

    if-ge v3, v5, :cond_1

    .line 32
    shl-int v5, v10, v3

    add-int/lit8 v1, v5, -0x1

    .line 33
    .local v1, "bitPosition":I
    invoke-static {v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->LFSR86540([B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 35
    aget-wide v6, v4, v2

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v1

    xor-long/2addr v6, v8

    aput-wide v6, v4, v2

    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 27
    .end local v1    # "bitPosition":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v3    # "j":I
    :cond_2
    return-object v4
.end method

.method private static leftRotate(JI)J
    .locals 4
    .param p0, "v"    # J
    .param p2, "r"    # I

    .prologue
    .line 375
    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private padAndSwitchToSqueezingPhase()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-wide/16 v12, 0x1

    .line 269
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v7, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    shr-int/lit8 v7, v7, 0x3

    aget-byte v8, v6, v7

    iget v9, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    and-int/lit8 v9, v9, 0x7

    shl-long v10, v12, v9

    long-to-int v9, v10

    int-to-byte v9, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 271
    iget v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iget v7, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    if-ne v6, v7, :cond_0

    .line 273
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-direct {p0, v6, v14}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    .line 274
    iput v14, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 278
    :cond_0
    iget v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    shr-int/lit8 v0, v6, 0x6

    .local v0, "full":I
    iget v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    and-int/lit8 v5, v6, 0x3f

    .line 279
    .local v5, "partial":I
    const/4 v4, 0x0

    .line 280
    .local v4, "off":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 282
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v8, v6, v1

    iget-object v7, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v7, v4}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v10

    xor-long/2addr v8, v10

    aput-wide v8, v6, v1

    .line 283
    add-int/lit8 v4, v4, 0x8

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_1
    if-lez v5, :cond_2

    .line 287
    shl-long v6, v12, v5

    sub-long v2, v6, v12

    .line 288
    .local v2, "mask":J
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v8, v6, v0

    iget-object v7, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v7, v4}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v10

    and-long/2addr v10, v2

    xor-long/2addr v8, v10

    aput-wide v8, v6, v0

    .line 290
    .end local v2    # "mask":J
    :cond_2
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    iget v7, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    add-int/lit8 v7, v7, -0x1

    shr-int/lit8 v7, v7, 0x6

    aget-wide v8, v6, v7

    const-wide/high16 v10, -0x8000000000000000L

    xor-long/2addr v8, v10

    aput-wide v8, v6, v7

    .line 293
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    .line 296
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakExtract()V

    .line 297
    iget v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    iput v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 300
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    .line 301
    return-void
.end method

.method private static pi([J)V
    .locals 10
    .param p0, "A"    # [J

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 438
    aget-wide v0, p0, v4

    .line 439
    .local v0, "a1":J
    const/4 v2, 0x6

    aget-wide v2, p0, v2

    aput-wide v2, p0, v4

    .line 440
    const/4 v2, 0x6

    const/16 v3, 0x9

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 441
    const/16 v2, 0x9

    const/16 v3, 0x16

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 442
    const/16 v2, 0x16

    const/16 v3, 0xe

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 443
    const/16 v2, 0xe

    const/16 v3, 0x14

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 444
    const/16 v2, 0x14

    aget-wide v4, p0, v6

    aput-wide v4, p0, v2

    .line 445
    const/16 v2, 0xc

    aget-wide v2, p0, v2

    aput-wide v2, p0, v6

    .line 446
    const/16 v2, 0xc

    const/16 v3, 0xd

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 447
    const/16 v2, 0xd

    const/16 v3, 0x13

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 448
    const/16 v2, 0x13

    const/16 v3, 0x17

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 449
    const/16 v2, 0x17

    const/16 v3, 0xf

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 450
    const/16 v2, 0xf

    aget-wide v4, p0, v8

    aput-wide v4, p0, v2

    .line 451
    const/16 v2, 0x18

    aget-wide v2, p0, v2

    aput-wide v2, p0, v8

    .line 452
    const/16 v2, 0x18

    const/16 v3, 0x15

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 453
    const/16 v2, 0x15

    const/16 v3, 0x8

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 454
    const/16 v2, 0x8

    const/16 v3, 0x10

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 455
    const/16 v2, 0x10

    aget-wide v4, p0, v9

    aput-wide v4, p0, v2

    .line 456
    aget-wide v2, p0, v7

    aput-wide v2, p0, v9

    .line 457
    const/16 v2, 0x12

    aget-wide v2, p0, v2

    aput-wide v2, p0, v7

    .line 458
    const/16 v2, 0x12

    const/16 v3, 0x11

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 459
    const/16 v2, 0x11

    const/16 v3, 0xb

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 460
    const/16 v2, 0xb

    const/4 v3, 0x7

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 461
    const/4 v2, 0x7

    const/16 v3, 0xa

    aget-wide v4, p0, v3

    aput-wide v4, p0, v2

    .line 462
    const/16 v2, 0xa

    aput-wide v0, p0, v2

    .line 463
    return-void
.end method

.method private static rho([J)V
    .locals 4
    .param p0, "A"    # [J

    .prologue
    .line 430
    const/4 v0, 0x1

    .local v0, "x":I
    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 432
    aget-wide v2, p0, v0

    sget-object v1, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakRhoOffsets:[I

    aget v1, v1, v0

    invoke-static {v2, v3, v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_0
    return-void
.end method

.method private static theta([J)V
    .locals 16
    .param p0, "A"    # [J

    .prologue
    .line 380
    const/4 v12, 0x0

    aget-wide v12, p0, v12

    const/4 v14, 0x5

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0xa

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0xf

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x14

    aget-wide v14, p0, v14

    xor-long v0, v12, v14

    .line 381
    .local v0, "C0":J
    const/4 v12, 0x1

    aget-wide v12, p0, v12

    const/4 v14, 0x6

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0xb

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x10

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x15

    aget-wide v14, p0, v14

    xor-long v2, v12, v14

    .line 382
    .local v2, "C1":J
    const/4 v12, 0x2

    aget-wide v12, p0, v12

    const/4 v14, 0x7

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0xc

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x11

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x16

    aget-wide v14, p0, v14

    xor-long v4, v12, v14

    .line 383
    .local v4, "C2":J
    const/4 v12, 0x3

    aget-wide v12, p0, v12

    const/16 v14, 0x8

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0xd

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x12

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x17

    aget-wide v14, p0, v14

    xor-long v6, v12, v14

    .line 384
    .local v6, "C3":J
    const/4 v12, 0x4

    aget-wide v12, p0, v12

    const/16 v14, 0x9

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0xe

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x13

    aget-wide v14, p0, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x18

    aget-wide v14, p0, v14

    xor-long v8, v12, v14

    .line 386
    .local v8, "C4":J
    const/4 v12, 0x1

    invoke-static {v2, v3, v12}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    move-result-wide v12

    xor-long v10, v12, v8

    .line 388
    .local v10, "dX":J
    const/4 v12, 0x0

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 389
    const/4 v12, 0x5

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 390
    const/16 v12, 0xa

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 391
    const/16 v12, 0xf

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 392
    const/16 v12, 0x14

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 394
    const/4 v12, 0x1

    invoke-static {v4, v5, v12}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    move-result-wide v12

    xor-long v10, v12, v0

    .line 396
    const/4 v12, 0x1

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 397
    const/4 v12, 0x6

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 398
    const/16 v12, 0xb

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 399
    const/16 v12, 0x10

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 400
    const/16 v12, 0x15

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 402
    const/4 v12, 0x1

    invoke-static {v6, v7, v12}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    move-result-wide v12

    xor-long v10, v12, v2

    .line 404
    const/4 v12, 0x2

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 405
    const/4 v12, 0x7

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 406
    const/16 v12, 0xc

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 407
    const/16 v12, 0x11

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 408
    const/16 v12, 0x16

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 410
    const/4 v12, 0x1

    invoke-static {v8, v9, v12}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    move-result-wide v12

    xor-long v10, v12, v4

    .line 412
    const/4 v12, 0x3

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 413
    const/16 v12, 0x8

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 414
    const/16 v12, 0xd

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 415
    const/16 v12, 0x12

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 416
    const/16 v12, 0x17

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 418
    const/4 v12, 0x1

    invoke-static {v0, v1, v12}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    move-result-wide v12

    xor-long v10, v12, v6

    .line 420
    const/4 v12, 0x4

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 421
    const/16 v12, 0x9

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 422
    const/16 v12, 0xe

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 423
    const/16 v12, 0x13

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 424
    const/16 v12, 0x18

    aget-wide v14, p0, v12

    xor-long/2addr v14, v10

    aput-wide v14, p0, v12

    .line 425
    return-void
.end method


# virtual methods
.method protected absorb([BII)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 202
    iget v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    .line 204
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "attempt to absorb with odd length queue"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 206
    :cond_0
    iget-boolean v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-eqz v4, :cond_1

    .line 208
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "attempt to absorb while squeezing"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 211
    :cond_1
    iget v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    shr-int/lit8 v0, v4, 0x3

    .line 212
    .local v0, "bytesInQueue":I
    iget v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    shr-int/lit8 v3, v4, 0x3

    .line 214
    .local v3, "rateBytes":I
    const/4 v1, 0x0

    .line 215
    .local v1, "count":I
    :cond_2
    :goto_0
    if-ge v1, p3, :cond_5

    .line 217
    if-nez v0, :cond_4

    sub-int v4, p3, v3

    if-gt v1, v4, :cond_4

    .line 221
    :cond_3
    add-int v4, p2, v1

    invoke-direct {p0, p1, v4}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    .line 222
    add-int/2addr v1, v3

    .line 224
    sub-int v4, p3, v3

    if-le v1, v4, :cond_3

    goto :goto_0

    .line 228
    :cond_4
    sub-int v4, v3, v0

    sub-int v5, p3, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 229
    .local v2, "partialBlock":I
    add-int v4, p2, v1

    iget-object v5, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {p1, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    add-int/2addr v0, v2

    .line 232
    add-int/2addr v1, v2

    .line 234
    if-ne v0, v3, :cond_2

    .line 236
    iget-object v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    .line 237
    const/4 v0, 0x0

    goto :goto_0

    .line 242
    .end local v2    # "partialBlock":I
    :cond_5
    shl-int/lit8 v4, v0, 0x3

    iput v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 243
    return-void
.end method

.method protected absorbBits(II)V
    .locals 4
    .param p1, "data"    # I
    .param p2, "bits"    # I

    .prologue
    const/4 v2, 0x1

    .line 247
    if-lt p2, v2, :cond_0

    const/4 v1, 0x7

    if-le p2, v1, :cond_1

    .line 249
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'bits\' must be in the range 1 to 7"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_1
    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    .line 253
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "attempt to absorb with odd length queue"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_2
    iget-boolean v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-eqz v1, :cond_3

    .line 257
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "attempt to absorb while squeezing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_3
    shl-int v1, v2, p2

    add-int/lit8 v0, v1, -0x1

    .line 261
    .local v0, "mask":I
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    shr-int/lit8 v2, v2, 0x3

    and-int v3, p1, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 264
    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    add-int/2addr v1, p2

    iput v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 265
    return-void
.end method

.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 126
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeeze([BIJ)V

    .line 128
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->reset()V

    .line 130
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method protected doFinal([BIBI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "partialByte"    # B
    .param p4, "partialBits"    # I

    .prologue
    .line 138
    if-lez p4, :cond_0

    .line 140
    invoke-virtual {p0, p3, p4}, Lorg/spongycastle/crypto/digests/KeccakDigest;->absorbBits(II)V

    .line 143
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeeze([BIJ)V

    .line 145
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->reset()V

    .line 147
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keccak-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->init(I)V

    .line 153
    return-void
.end method

.method protected squeeze([BIJ)V
    .locals 11
    .param p1, "output"    # [B
    .param p2, "offset"    # I
    .param p3, "outputLength"    # J

    .prologue
    const-wide/16 v8, 0x8

    .line 305
    iget-boolean v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v3, :cond_0

    .line 307
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->padAndSwitchToSqueezingPhase()V

    .line 309
    :cond_0
    rem-long v4, p3, v8

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 311
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "outputLength not a multiple of 8"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 314
    :cond_1
    const-wide/16 v0, 0x0

    .line 315
    .local v0, "i":J
    :goto_0
    cmp-long v3, v0, p3

    if-gez v3, :cond_3

    .line 317
    iget v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    if-nez v3, :cond_2

    .line 319
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    .line 320
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakExtract()V

    .line 321
    iget v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    iput v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 324
    :cond_2
    iget v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    int-to-long v4, v3

    sub-long v6, p3, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 325
    .local v2, "partialBlock":I
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    iget v5, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x8

    div-long v6, v0, v8

    long-to-int v5, v6

    add-int/2addr v5, p2

    div-int/lit8 v6, v2, 0x8

    invoke-static {v3, v4, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iget v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 327
    int-to-long v4, v2

    add-long/2addr v0, v4

    .line 328
    goto :goto_0

    .line 329
    .end local v2    # "partialBlock":I
    :cond_3
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "in"    # B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    new-array v0, v2, [B

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/spongycastle/crypto/digests/KeccakDigest;->absorb([BII)V

    .line 117
    return-void
.end method

.method public update([BII)V
    .locals 0
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/KeccakDigest;->absorb([BII)V

    .line 122
    return-void
.end method
