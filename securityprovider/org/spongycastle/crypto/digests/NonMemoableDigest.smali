.class public Lorg/spongycastle/crypto/digests/NonMemoableDigest;
.super Ljava/lang/Object;
.source "NonMemoableDigest.java"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;


# instance fields
.field private baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/ExtendedDigest;)V
    .locals 2
    .param p1, "baseDigest"    # Lorg/spongycastle/crypto/ExtendedDigest;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseDigest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    .line 28
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/ExtendedDigest;->doFinal([BI)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->reset()V

    .line 58
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B

    .prologue
    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/ExtendedDigest;->update(B)V

    .line 43
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/NonMemoableDigest;->baseDigest:Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/ExtendedDigest;->update([BII)V

    .line 48
    return-void
.end method
