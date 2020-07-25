.class public Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;
.super Ljava/lang/Object;
.source "ReversedWindowGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/prng/RandomGenerator;


# instance fields
.field private final generator:Lorg/spongycastle/crypto/prng/RandomGenerator;

.field private window:[B

.field private windowCount:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/prng/RandomGenerator;I)V
    .locals 2
    .param p1, "generator"    # Lorg/spongycastle/crypto/prng/RandomGenerator;
    .param p2, "windowSize"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "generator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "windowSize must be at least 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/spongycastle/crypto/prng/RandomGenerator;

    .line 32
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    .line 33
    return-void
.end method

.method private doNextBytes([BII)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 96
    monitor-enter p0

    .line 98
    const/4 v0, 0x0

    .local v0, "done":I
    move v1, v0

    .line 99
    .end local v0    # "done":I
    .local v1, "done":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 101
    :try_start_0
    iget v2, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 103
    iget-object v2, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/spongycastle/crypto/prng/RandomGenerator;

    iget-object v3, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    array-length v5, v5

    invoke-interface {v2, v3, v4, v5}, Lorg/spongycastle/crypto/prng/RandomGenerator;->nextBytes([BII)V

    .line 104
    iget-object v2, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    array-length v2, v2

    iput v2, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "done":I
    .restart local v0    # "done":I
    add-int v2, p2, v1

    :try_start_1
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->window:[B

    iget v4, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    aget-byte v3, v3, v4

    aput-byte v3, p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v0

    .end local v0    # "done":I
    .restart local v1    # "done":I
    goto :goto_0

    .line 109
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v2

    move v0, v1

    .end local v1    # "done":I
    .restart local v0    # "done":I
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public addSeedMaterial(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 58
    monitor-enter p0

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    .line 61
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/spongycastle/crypto/prng/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/prng/RandomGenerator;->addSeedMaterial(J)V

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSeedMaterial([B)V
    .locals 1
    .param p1, "seed"    # [B

    .prologue
    .line 43
    monitor-enter p0

    .line 45
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->windowCount:I

    .line 46
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->generator:Lorg/spongycastle/crypto/prng/RandomGenerator;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/prng/RandomGenerator;->addSeedMaterial([B)V

    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 47
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
    .line 73
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->doNextBytes([BII)V

    .line 74
    return-void
.end method

.method public nextBytes([BII)V
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/prng/ReversedWindowGenerator;->doNextBytes([BII)V

    .line 89
    return-void
.end method
