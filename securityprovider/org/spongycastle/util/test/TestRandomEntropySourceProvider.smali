.class public Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;
.super Ljava/lang/Object;
.source "TestRandomEntropySourceProvider.java"

# interfaces
.implements Lorg/spongycastle/crypto/prng/EntropySourceProvider;


# instance fields
.field private final _predictionResistant:Z

.field private final _sr:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isPredictionResistant"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;->_sr:Ljava/security/SecureRandom;

    .line 25
    iput-boolean p1, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;->_predictionResistant:Z

    .line 26
    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;)Z
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;

    .prologue
    .line 11
    iget-boolean v0, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;->_predictionResistant:Z

    return v0
.end method

.method static synthetic access$100(Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;)Ljava/security/SecureRandom;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;

    .prologue
    .line 11
    iget-object v0, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;->_sr:Ljava/security/SecureRandom;

    return-object v0
.end method


# virtual methods
.method public get(I)Lorg/spongycastle/crypto/prng/EntropySource;
    .locals 1
    .param p1, "bitsRequired"    # I

    .prologue
    .line 37
    new-instance v0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;-><init>(Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;I)V

    return-object v0
.end method
