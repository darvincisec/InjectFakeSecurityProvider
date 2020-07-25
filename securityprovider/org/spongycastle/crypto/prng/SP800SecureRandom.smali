.class public Lorg/spongycastle/crypto/prng/SP800SecureRandom;
.super Ljava/security/SecureRandom;
.source "SP800SecureRandom.java"


# instance fields
.field private drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

.field private final drbgProvider:Lorg/spongycastle/crypto/prng/DRBGProvider;

.field private final entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

.field private final predictionResistant:Z

.field private final randomSource:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/prng/EntropySource;Lorg/spongycastle/crypto/prng/DRBGProvider;Z)V
    .locals 0
    .param p1, "randomSource"    # Ljava/security/SecureRandom;
    .param p2, "entropySource"    # Lorg/spongycastle/crypto/prng/EntropySource;
    .param p3, "drbgProvider"    # Lorg/spongycastle/crypto/prng/DRBGProvider;
    .param p4, "predictionResistant"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    .line 20
    iput-object p2, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    .line 21
    iput-object p3, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbgProvider:Lorg/spongycastle/crypto/prng/DRBGProvider;

    .line 22
    iput-boolean p4, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->predictionResistant:Z

    .line 23
    return-void
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1
    .param p1, "numBytes"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/prng/EntropyUtil;->generateSeed(Lorg/spongycastle/crypto/prng/EntropySource;I)[B

    move-result-object v0

    return-object v0
.end method

.method public nextBytes([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 50
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbgProvider:Lorg/spongycastle/crypto/prng/DRBGProvider;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/prng/DRBGProvider;->get(Lorg/spongycastle/crypto/prng/EntropySource;)Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->predictionResistant:Z

    invoke-interface {v0, p1, v1, v2}, Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;->generate([B[BZ)I

    move-result v0

    if-gez v0, :cond_1

    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;->reseed([B)V

    .line 61
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->predictionResistant:Z

    invoke-interface {v0, p1, v1, v2}, Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;->generate([B[BZ)I

    .line 63
    :cond_1
    monitor-exit p0

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reseed([B)V
    .locals 2
    .param p1, "additionalInput"    # [B

    .prologue
    .line 78
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbgProvider:Lorg/spongycastle/crypto/prng/DRBGProvider;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/prng/DRBGProvider;->get(Lorg/spongycastle/crypto/prng/EntropySource;)Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->drbg:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;->reseed([B)V

    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 38
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, p2}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 45
    :cond_0
    monitor-exit p0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSeed([B)V
    .locals 1
    .param p1, "seed"    # [B

    .prologue
    .line 27
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->randomSource:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 33
    :cond_0
    monitor-exit p0

    .line 34
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
