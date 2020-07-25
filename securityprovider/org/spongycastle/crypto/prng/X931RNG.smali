.class public Lorg/spongycastle/crypto/prng/X931RNG;
.super Ljava/lang/Object;
.source "X931RNG.java"


# static fields
.field private static final BLOCK128_MAX_BITS_REQUEST:I = 0x40000

.field private static final BLOCK128_RESEED_MAX:J = 0x800000L

.field private static final BLOCK64_MAX_BITS_REQUEST:I = 0x1000

.field private static final BLOCK64_RESEED_MAX:J = 0x8000L


# instance fields
.field private final DT:[B

.field private final I:[B

.field private final R:[B

.field private V:[B

.field private final engine:Lorg/spongycastle/crypto/BlockCipher;

.field private final entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

.field private reseedCounter:J


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;[BLorg/spongycastle/crypto/prng/EntropySource;)V
    .locals 3
    .param p1, "engine"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "dateTimeVector"    # [B
    .param p3, "entropySource"    # Lorg/spongycastle/crypto/prng/EntropySource;

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/X931RNG;->reseedCounter:J

    .line 30
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/X931RNG;->engine:Lorg/spongycastle/crypto/BlockCipher;

    .line 31
    iput-object p3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    .line 33
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/X931RNG;->DT:[B

    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/X931RNG;->DT:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/X931RNG;->DT:[B

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/X931RNG;->I:[B

    .line 38
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/X931RNG;->R:[B

    .line 39
    return-void
.end method

.method private increment([B)V
    .locals 2
    .param p1, "val"    # [B

    .prologue
    .line 146
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 148
    aget-byte v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    return-void

    .line 146
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static isTooLarge([BI)Z
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "maxBytes"    # I

    .prologue
    .line 157
    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private process([B[B[B)V
    .locals 4
    .param p1, "res"    # [B
    .param p2, "a"    # [B
    .param p3, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 138
    aget-byte v1, p2, v0

    aget-byte v2, p3, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/prng/X931RNG;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1, p1, v3, p1, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 142
    return-void
.end method


# virtual methods
.method generate([BZ)I
    .locals 9
    .param p1, "output"    # [B
    .param p2, "predictionResistant"    # Z

    .prologue
    const/4 v3, -0x1

    const/4 v8, 0x0

    .line 51
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->R:[B

    array-length v4, v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 53
    iget-wide v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->reseedCounter:J

    const-wide/32 v6, 0x8000

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v3

    .line 58
    :cond_1
    const/16 v3, 0x200

    invoke-static {p1, v3}, Lorg/spongycastle/crypto/prng/X931RNG;->isTooLarge([BI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Number of bits per request limited to 4096"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    :cond_2
    iget-wide v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->reseedCounter:J

    const-wide/32 v6, 0x800000

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 70
    const v3, 0x8000

    invoke-static {p1, v3}, Lorg/spongycastle/crypto/prng/X931RNG;->isTooLarge([BI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Number of bits per request limited to 262144"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_3
    if-nez p2, :cond_4

    iget-object v3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->V:[B

    if-nez v3, :cond_5

    .line 78
    :cond_4
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v3}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->V:[B

    .line 79
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->V:[B

    array-length v3, v3

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v4}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 81
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Insufficient entropy returned"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_5
    array-length v3, p1

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->R:[B

    array-length v4, v4

    div-int v2, v3, v4

    .line 87
    .local v2, "m":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 89
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->DT:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/X931RNG;->I:[B

    invoke-interface {v3, v4, v8, v5, v8}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 90
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->R:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->I:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/X931RNG;->V:[B

    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/prng/X931RNG;->process([B[B[B)V

    .line 91
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->V:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->R:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/X931RNG;->I:[B

    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/prng/X931RNG;->process([B[B[B)V

    .line 93
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->R:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->R:[B

    array-length v4, v4

    mul-int/2addr v4, v1

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/X931RNG;->R:[B

    array-length v5, v5

    invoke-static {v3, v8, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->DT:[B

    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/prng/X931RNG;->increment([B)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    :cond_6
    array-length v3, p1

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->R:[B

    array-length v4, v4

    mul-int/2addr v4, v2

    sub-int v0, v3, v4

    .line 100
    .local v0, "bytesToCopy":I
    if-lez v0, :cond_7

    .line 102
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->DT:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/X931RNG;->I:[B

    invoke-interface {v3, v4, v8, v5, v8}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 103
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->R:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->I:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/X931RNG;->V:[B

    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/prng/X931RNG;->process([B[B[B)V

    .line 104
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->V:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->R:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/X931RNG;->I:[B

    invoke-direct {p0, v3, v4, v5}, Lorg/spongycastle/crypto/prng/X931RNG;->process([B[B[B)V

    .line 106
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->R:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->R:[B

    array-length v4, v4

    mul-int/2addr v4, v2

    invoke-static {v3, v8, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/X931RNG;->DT:[B

    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/prng/X931RNG;->increment([B)V

    .line 111
    :cond_7
    iget-wide v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->reseedCounter:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/spongycastle/crypto/prng/X931RNG;->reseedCounter:J

    .line 113
    array-length v3, p1

    goto/16 :goto_0
.end method

.method getEntropySource()Lorg/spongycastle/crypto/prng/EntropySource;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/X931RNG;->entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    return-object v0
.end method

.method reseed()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/X931RNG;->entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/X931RNG;->V:[B

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/X931RNG;->V:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/X931RNG;->engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Insufficient entropy returned"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/X931RNG;->reseedCounter:J

    .line 127
    return-void
.end method
