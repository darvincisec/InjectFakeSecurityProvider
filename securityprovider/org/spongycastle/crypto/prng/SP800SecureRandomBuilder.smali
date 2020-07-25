.class public Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;
.super Ljava/lang/Object;
.source "SP800SecureRandomBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;,
        Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;,
        Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;
    }
.end annotation


# instance fields
.field private entropyBitsRequired:I

.field private final entropySourceProvider:Lorg/spongycastle/crypto/prng/EntropySourceProvider;

.field private personalizationString:[B

.field private final random:Ljava/security/SecureRandom;

.field private securityStrength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;-><init>(Ljava/security/SecureRandom;Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 2
    .param p1, "entropySource"    # Ljava/security/SecureRandom;
    .param p2, "predictionResistant"    # Z

    .prologue
    const/16 v0, 0x100

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    .line 25
    iput v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    .line 52
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    .line 53
    new-instance v0, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/crypto/prng/BasicEntropySourceProvider;-><init>(Ljava/security/SecureRandom;Z)V

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/spongycastle/crypto/prng/EntropySourceProvider;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/prng/EntropySourceProvider;)V
    .locals 1
    .param p1, "entropySourceProvider"    # Lorg/spongycastle/crypto/prng/EntropySourceProvider;

    .prologue
    const/16 v0, 0x100

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    .line 25
    iput v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    .line 66
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/spongycastle/crypto/prng/EntropySourceProvider;

    .line 67
    return-void
.end method


# virtual methods
.method public buildCTR(Lorg/spongycastle/crypto/BlockCipher;I[BZ)Lorg/spongycastle/crypto/prng/SP800SecureRandom;
    .locals 9
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "keySizeInBits"    # I
    .param p3, "nonce"    # [B
    .param p4, "predictionResistant"    # Z

    .prologue
    .line 131
    new-instance v6, Lorg/spongycastle/crypto/prng/SP800SecureRandom;

    iget-object v7, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/spongycastle/crypto/prng/EntropySourceProvider;

    iget v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/spongycastle/crypto/prng/EntropySource;

    move-result-object v8

    new-instance v0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->personalizationString:[B

    iget v5, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;-><init>(Lorg/spongycastle/crypto/BlockCipher;I[B[BI)V

    invoke-direct {v6, v7, v8, v0, p4}, Lorg/spongycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/prng/EntropySource;Lorg/spongycastle/crypto/prng/DRBGProvider;Z)V

    return-object v6
.end method

.method public buildHMAC(Lorg/spongycastle/crypto/Mac;[BZ)Lorg/spongycastle/crypto/prng/SP800SecureRandom;
    .locals 6
    .param p1, "hMac"    # Lorg/spongycastle/crypto/Mac;
    .param p2, "nonce"    # [B
    .param p3, "predictionResistant"    # Z

    .prologue
    .line 144
    new-instance v0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/spongycastle/crypto/prng/EntropySourceProvider;

    iget v3, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    invoke-interface {v2, v3}, Lorg/spongycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/spongycastle/crypto/prng/EntropySource;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->personalizationString:[B

    iget v5, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    invoke-direct {v3, p1, p2, v4, v5}, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HMacDRBGProvider;-><init>(Lorg/spongycastle/crypto/Mac;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/spongycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/prng/EntropySource;Lorg/spongycastle/crypto/prng/DRBGProvider;Z)V

    return-object v0
.end method

.method public buildHash(Lorg/spongycastle/crypto/Digest;[BZ)Lorg/spongycastle/crypto/prng/SP800SecureRandom;
    .locals 6
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "nonce"    # [B
    .param p3, "predictionResistant"    # Z

    .prologue
    .line 117
    new-instance v0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->random:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->entropySourceProvider:Lorg/spongycastle/crypto/prng/EntropySourceProvider;

    iget v3, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    invoke-interface {v2, v3}, Lorg/spongycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/spongycastle/crypto/prng/EntropySource;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->personalizationString:[B

    iget v5, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    invoke-direct {v3, p1, p2, v4, v5}, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;-><init>(Lorg/spongycastle/crypto/Digest;[B[BI)V

    invoke-direct {v0, v1, v2, v3, p3}, Lorg/spongycastle/crypto/prng/SP800SecureRandom;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/prng/EntropySource;Lorg/spongycastle/crypto/prng/DRBGProvider;Z)V

    return-object v0
.end method

.method public setEntropyBitsRequired(I)Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;
    .locals 0
    .param p1, "entropyBitsRequired"    # I

    .prologue
    .line 102
    iput p1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->entropyBitsRequired:I

    .line 104
    return-object p0
.end method

.method public setPersonalizationString([B)Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;
    .locals 0
    .param p1, "personalizationString"    # [B

    .prologue
    .line 76
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->personalizationString:[B

    .line 78
    return-object p0
.end method

.method public setSecurityStrength(I)Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;
    .locals 0
    .param p1, "securityStrength"    # I

    .prologue
    .line 89
    iput p1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;->securityStrength:I

    .line 91
    return-object p0
.end method
