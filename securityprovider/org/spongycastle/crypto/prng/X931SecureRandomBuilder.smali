.class public Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;
.super Ljava/lang/Object;
.source "X931SecureRandomBuilder.java"


# instance fields
.field private dateTimeVector:[B

.field private entropySourceProvider:Lorg/spongycastle/crypto/prng/EntropySourceProvider;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;-><init>(Ljava/security/SecureRandom;Z)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 2
    .param p1, "entropySource"    # Ljava/security/SecureRandom;
    .param p2, "predictionResistant"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    .line 42
    new-instance v0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;-><init>(Ljava/security/SecureRandom;Z)V

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;->entropySourceProvider:Lorg/spongycastle/crypto/prng/EntropySourceProvider;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/prng/EntropySourceProvider;)V
    .locals 1
    .param p1, "entropySourceProvider"    # Lorg/spongycastle/crypto/prng/EntropySourceProvider;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    .line 55
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;->entropySourceProvider:Lorg/spongycastle/crypto/prng/EntropySourceProvider;

    .line 56
    return-void
.end method


# virtual methods
.method public build(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/params/KeyParameter;Z)Lorg/spongycastle/crypto/prng/X931SecureRandom;
    .locals 6
    .param p1, "engine"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "key"    # Lorg/spongycastle/crypto/params/KeyParameter;
    .param p3, "predictionResistant"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    if-nez v0, :cond_0

    .line 78
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 82
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 84
    new-instance v0, Lorg/spongycastle/crypto/prng/X931SecureRandom;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    new-instance v2, Lorg/spongycastle/crypto/prng/X931RNG;

    iget-object v3, p0, Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;->entropySourceProvider:Lorg/spongycastle/crypto/prng/EntropySourceProvider;

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    invoke-interface {v4, v5}, Lorg/spongycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/spongycastle/crypto/prng/EntropySource;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lorg/spongycastle/crypto/prng/X931RNG;-><init>(Lorg/spongycastle/crypto/BlockCipher;[BLorg/spongycastle/crypto/prng/EntropySource;)V

    invoke-direct {v0, v1, v2, p3}, Lorg/spongycastle/crypto/prng/X931SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/prng/X931RNG;Z)V

    return-object v0
.end method

.method public setDateTimeVector([B)Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;
    .locals 0
    .param p1, "dateTimeVector"    # [B

    .prologue
    .line 60
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/X931SecureRandomBuilder;->dateTimeVector:[B

    .line 62
    return-object p0
.end method
