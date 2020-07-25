.class public Lorg/spongycastle/jcajce/provider/drbg/DRBG;
.super Ljava/lang/Object;
.source "DRBG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;,
        Lorg/spongycastle/jcajce/provider/drbg/DRBG$Mappings;,
        Lorg/spongycastle/jcajce/provider/drbg/DRBG$NonceAndIV;,
        Lorg/spongycastle/jcajce/provider/drbg/DRBG$Default;,
        Lorg/spongycastle/jcajce/provider/drbg/DRBG$CoreSecureRandom;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;

.field private static final initialEntropySourceAndSpi:[Ljava/lang/Object;

.field private static final initialEntropySourceNames:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    const-class v0, Lorg/spongycastle/jcajce/provider/drbg/DRBG;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->PREFIX:Ljava/lang/String;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "sun.security.provider.Sun"

    aput-object v2, v1, v4

    const-string v2, "sun.security.provider.SecureRandom"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    aput-object v2, v1, v4

    const-string v2, "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "com.android.org.conscrypt.OpenSSLProvider"

    aput-object v2, v1, v4

    const-string v2, "com.android.org.conscrypt.OpenSSLRandom"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "org.conscrypt.OpenSSLProvider"

    aput-object v3, v2, v4

    const-string v3, "org.conscrypt.OpenSSLRandom"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->initialEntropySourceNames:[[Ljava/lang/String;

    .line 41
    invoke-static {}, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->findSource()[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->initialEntropySourceAndSpi:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->initialEntropySourceAndSpi:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Z)Ljava/security/SecureRandom;
    .locals 1
    .param p0, "x0"    # Z

    .prologue
    .line 25
    invoke-static {p0}, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->createBaseRandom(Z)Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->createInitialEntropySource()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method private static createBaseRandom(Z)Ljava/security/SecureRandom;
    .locals 8
    .param p0, "isPredictionResistant"    # Z

    .prologue
    const/16 v5, 0x10

    .line 111
    const-string v4, "org.spongycastle.drbg.entropysource"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 113
    invoke-static {}, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->createEntropySource()Lorg/spongycastle/crypto/prng/EntropySourceProvider;

    move-result-object v0

    .line 115
    .local v0, "entropyProvider":Lorg/spongycastle/crypto/prng/EntropySourceProvider;
    const/16 v4, 0x80

    invoke-interface {v0, v4}, Lorg/spongycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/spongycastle/crypto/prng/EntropySource;

    move-result-object v1

    .line 117
    .local v1, "initSource":Lorg/spongycastle/crypto/prng/EntropySource;
    if-eqz p0, :cond_0

    invoke-interface {v1}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->generateDefaultPersonalizationString([B)[B

    move-result-object v2

    .line 120
    .local v2, "personalisationString":[B
    :goto_0
    new-instance v4, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;-><init>(Lorg/spongycastle/crypto/prng/EntropySourceProvider;)V

    .line 121
    invoke-virtual {v4, v2}, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->setPersonalizationString([B)Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;

    move-result-object v4

    new-instance v5, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v5}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    .line 122
    invoke-interface {v1}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v6

    invoke-interface {v1}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v7

    invoke-static {v6, v7}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6, p0}, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->buildHash(Lorg/spongycastle/crypto/Digest;[BZ)Lorg/spongycastle/crypto/prng/SP800SecureRandom;

    move-result-object v4

    .line 131
    .end local v0    # "entropyProvider":Lorg/spongycastle/crypto/prng/EntropySourceProvider;
    .end local v1    # "initSource":Lorg/spongycastle/crypto/prng/EntropySource;
    :goto_1
    return-object v4

    .line 118
    .end local v2    # "personalisationString":[B
    .restart local v0    # "entropyProvider":Lorg/spongycastle/crypto/prng/EntropySourceProvider;
    .restart local v1    # "initSource":Lorg/spongycastle/crypto/prng/EntropySource;
    :cond_0
    invoke-interface {v1}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->generateNonceIVPersonalizationString([B)[B

    move-result-object v2

    goto :goto_0

    .line 126
    .end local v0    # "entropyProvider":Lorg/spongycastle/crypto/prng/EntropySourceProvider;
    .end local v1    # "initSource":Lorg/spongycastle/crypto/prng/EntropySource;
    :cond_1
    new-instance v3, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;

    invoke-direct {v3}, Lorg/spongycastle/jcajce/provider/drbg/DRBG$HybridSecureRandom;-><init>()V

    .line 128
    .local v3, "randomSource":Ljava/security/SecureRandom;
    if-eqz p0, :cond_2

    invoke-virtual {v3, v5}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->generateDefaultPersonalizationString([B)[B

    move-result-object v2

    .line 131
    .restart local v2    # "personalisationString":[B
    :goto_2
    new-instance v4, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;-><init>(Ljava/security/SecureRandom;Z)V

    .line 132
    invoke-virtual {v4, v2}, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->setPersonalizationString([B)Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;

    move-result-object v4

    new-instance v5, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v5}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    const/16 v6, 0x20

    .line 133
    invoke-virtual {v3, v6}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6, p0}, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->buildHash(Lorg/spongycastle/crypto/Digest;[BZ)Lorg/spongycastle/crypto/prng/SP800SecureRandom;

    move-result-object v4

    goto :goto_1

    .line 129
    .end local v2    # "personalisationString":[B
    :cond_2
    invoke-virtual {v3, v5}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->generateNonceIVPersonalizationString([B)[B

    move-result-object v2

    goto :goto_2
.end method

.method private static createEntropySource()Lorg/spongycastle/crypto/prng/EntropySourceProvider;
    .locals 2

    .prologue
    .line 89
    const-string v1, "org.spongycastle.drbg.entropysource"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "sourceClass":Ljava/lang/String;
    new-instance v1, Lorg/spongycastle/jcajce/provider/drbg/DRBG$1;

    invoke-direct {v1, v0}, Lorg/spongycastle/jcajce/provider/drbg/DRBG$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/prng/EntropySourceProvider;

    return-object v1
.end method

.method private static createInitialEntropySource()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->initialEntropySourceAndSpi:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$CoreSecureRandom;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/drbg/DRBG$CoreSecureRandom;-><init>()V

    .line 83
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method

.method private static final findSource()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 46
    const/4 v3, 0x0

    .local v3, "t":I
    :goto_0
    sget-object v4, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->initialEntropySourceNames:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 48
    sget-object v4, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->initialEntropySourceNames:[[Ljava/lang/String;

    aget-object v1, v4, v3

    .line 51
    .local v1, "pair":[Ljava/lang/String;
    const/4 v4, 0x2

    :try_start_0
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1    # "pair":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 55
    .restart local v1    # "pair":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/lang/Throwable;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "pair":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static generateDefaultPersonalizationString([B)[B
    .locals 4
    .param p0, "seed"    # [B

    .prologue
    .line 203
    const-string v0, "Default"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/spongycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object v2

    .line 203
    invoke-static {v0, p0, v1, v2}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static generateNonceIVPersonalizationString([B)[B
    .locals 4
    .param p0, "seed"    # [B

    .prologue
    .line 209
    const-string v0, "Nonce"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 210
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J)[B

    move-result-object v2

    .line 209
    invoke-static {v0, p0, v1, v2}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method
