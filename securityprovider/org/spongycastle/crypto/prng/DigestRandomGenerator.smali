.class public Lorg/spongycastle/crypto/prng/DigestRandomGenerator;
.super Ljava/lang/Object;
.source "DigestRandomGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/prng/RandomGenerator;


# static fields
.field private static CYCLE_COUNT:J


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;

.field private seed:[B

.field private seedCounter:J

.field private state:[B

.field private stateCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0xa

    sput-wide v0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->CYCLE_COUNT:J

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 4
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    const-wide/16 v2, 0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    .line 29
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    .line 30
    iput-wide v2, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seedCounter:J

    .line 32
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->state:[B

    .line 33
    iput-wide v2, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    .line 34
    return-void
.end method

.method private cycleSeed()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 86
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seedCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seedCounter:J

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestAddCounter(J)V

    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    .line 89
    return-void
.end method

.method private digestAddCounter(J)V
    .locals 5
    .param p1, "seed"    # J

    .prologue
    const/16 v3, 0x8

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, v3, :cond_0

    .line 109
    iget-object v1, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 110
    ushr-long/2addr p1, v3

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method private digestDoFinal([B)V
    .locals 2
    .param p1, "result"    # [B

    .prologue
    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 122
    return-void
.end method

.method private digestUpdate([B)V
    .locals 3
    .param p1, "inSeed"    # [B

    .prologue
    .line 116
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 117
    return-void
.end method

.method private generateState()V
    .locals 4

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestAddCounter(J)V

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->state:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->state:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    .line 99
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    sget-wide v2, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->CYCLE_COUNT:J

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->cycleSeed()V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public addSeedMaterial(J)V
    .locals 1
    .param p1, "rSeed"    # J

    .prologue
    .line 48
    monitor-enter p0

    .line 50
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestAddCounter(J)V

    .line 51
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 53
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSeedMaterial([B)V
    .locals 1
    .param p1, "inSeed"    # [B

    .prologue
    .line 38
    monitor-enter p0

    .line 40
    :try_start_0
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 41
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nextBytes([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 59
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([BII)V

    .line 60
    return-void
.end method

.method public nextBytes([BII)V
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 64
    monitor-enter p0

    .line 66
    const/4 v2, 0x0

    .line 68
    .local v2, "stateOff":I
    :try_start_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->generateState()V

    .line 70
    add-int v0, p2, p3

    .line 71
    .local v0, "end":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-eq v1, v0, :cond_0

    .line 73
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->state:[B

    array-length v4, v4

    if-ne v2, v4, :cond_1

    .line 75
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->generateState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v2, 0x0

    move v3, v2

    .line 78
    .end local v2    # "stateOff":I
    .local v3, "stateOff":I
    :goto_1
    :try_start_1
    iget-object v4, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->state:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "stateOff":I
    .restart local v2    # "stateOff":I
    :try_start_2
    aget-byte v4, v4, v3

    aput-byte v4, p1, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    monitor-exit p0

    .line 81
    return-void

    .line 80
    .end local v0    # "end":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v2    # "stateOff":I
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    .restart local v3    # "stateOff":I
    :catchall_1
    move-exception v4

    move v2, v3

    .end local v3    # "stateOff":I
    .restart local v2    # "stateOff":I
    goto :goto_2

    :cond_1
    move v3, v2

    .end local v2    # "stateOff":I
    .restart local v3    # "stateOff":I
    goto :goto_1
.end method
