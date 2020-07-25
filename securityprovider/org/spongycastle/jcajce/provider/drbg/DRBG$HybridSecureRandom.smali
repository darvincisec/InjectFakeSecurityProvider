.class Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;
.super Ljava/security/SecureRandom;
.source "DRBG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/drbg/DRBG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HybridSecureRandom"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom$SignallingEntropySource;
    }
.end annotation


# instance fields
.field private final baseRandom:Ljava/security/SecureRandom;

.field private final drbg:Lorg/spongycastle/crypto/prng/SP800SecureRandom;

.field private final samples:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 224
    invoke-direct {p0, v0, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V

    .line 216
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 217
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->samples:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 218
    invoke-static {}, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->access$300()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->baseRandom:Ljava/security/SecureRandom;

    .line 225
    new-instance v0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;

    new-instance v1, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom$1;

    invoke-direct {v1, p0}, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom$1;-><init>(Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;-><init>(Lorg/spongycastle/crypto/prng/EntropySourceProvider;)V

    const-string v1, "Bouncy Castle Hybrid Entropy Source"

    .line 232
    invoke-static {v1}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->setPersonalizationString([B)Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/crypto/macs/HMac;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->baseRandom:Ljava/security/SecureRandom;

    const/16 v3, 0x20

    .line 233
    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->buildHMAC(Lorg/spongycastle/crypto/Mac;[BZ)Lorg/spongycastle/crypto/prng/SP800SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->drbg:Lorg/spongycastle/crypto/prng/SP800SecureRandom;

    .line 234
    return-void
.end method

.method static synthetic access$400(Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;)Ljava/security/SecureRandom;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;

    .prologue
    .line 213
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->baseRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic access$600(Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;

    .prologue
    .line 213
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 4
    .param p1, "numBytes"    # I

    .prologue
    const/4 v3, 0x0

    .line 254
    new-array v0, p1, [B

    .line 257
    .local v0, "data":[B
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->samples:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 259
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->seedAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->samples:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 262
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->drbg:Lorg/spongycastle/crypto/prng/SP800SecureRandom;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->reseed([B)V

    .line 266
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->drbg:Lorg/spongycastle/crypto/prng/SP800SecureRandom;

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->nextBytes([B)V

    .line 268
    return-object v0
.end method

.method public setSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    .prologue
    .line 246
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->drbg:Lorg/spongycastle/crypto/prng/SP800SecureRandom;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->drbg:Lorg/spongycastle/crypto/prng/SP800SecureRandom;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->setSeed(J)V

    .line 250
    :cond_0
    return-void
.end method

.method public setSeed([B)V
    .locals 1
    .param p1, "seed"    # [B

    .prologue
    .line 238
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->drbg:Lorg/spongycastle/crypto/prng/SP800SecureRandom;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;->drbg:Lorg/spongycastle/crypto/prng/SP800SecureRandom;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->setSeed([B)V

    .line 242
    :cond_0
    return-void
.end method
