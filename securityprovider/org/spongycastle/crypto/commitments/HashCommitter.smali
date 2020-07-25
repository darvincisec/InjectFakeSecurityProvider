.class public Lorg/spongycastle/crypto/commitments/HashCommitter;
.super Ljava/lang/Object;
.source "HashCommitter.java"

# interfaces
.implements Lorg/spongycastle/crypto/Committer;


# instance fields
.field private final byteLength:I

.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/ExtendedDigest;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "digest"    # Lorg/spongycastle/crypto/ExtendedDigest;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/spongycastle/crypto/commitments/HashCommitter;->digest:Lorg/spongycastle/crypto/Digest;

    .line 36
    invoke-interface {p1}, Lorg/spongycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/commitments/HashCommitter;->byteLength:I

    .line 37
    iput-object p2, p0, Lorg/spongycastle/crypto/commitments/HashCommitter;->random:Ljava/security/SecureRandom;

    .line 38
    return-void
.end method

.method private calculateCommitment([B[B)[B
    .locals 4
    .param p1, "w"    # [B
    .param p2, "message"    # [B

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v1, p0, Lorg/spongycastle/crypto/commitments/HashCommitter;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 83
    .local v0, "commitment":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/commitments/HashCommitter;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 84
    iget-object v1, p0, Lorg/spongycastle/crypto/commitments/HashCommitter;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v2, p2

    invoke-interface {v1, p2, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 85
    iget-object v1, p0, Lorg/spongycastle/crypto/commitments/HashCommitter;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1, v0, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 87
    return-object v0
.end method


# virtual methods
.method public commit([B)Lorg/spongycastle/crypto/Commitment;
    .locals 3
    .param p1, "message"    # [B

    .prologue
    .line 48
    array-length v1, p1

    iget v2, p0, Lorg/spongycastle/crypto/commitments/HashCommitter;->byteLength:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    .line 50
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "Message to be committed to too large for digest."

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/commitments/HashCommitter;->byteLength:I

    array-length v2, p1

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    .line 55
    .local v0, "w":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/commitments/HashCommitter;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 57
    new-instance v1, Lorg/spongycastle/crypto/Commitment;

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/commitments/HashCommitter;->calculateCommitment([B[B)[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/spongycastle/crypto/Commitment;-><init>([B[B)V

    return-object v1
.end method

.method public isRevealed(Lorg/spongycastle/crypto/Commitment;[B)Z
    .locals 3
    .param p1, "commitment"    # Lorg/spongycastle/crypto/Commitment;
    .param p2, "message"    # [B

    .prologue
    .line 69
    array-length v1, p2

    invoke-virtual {p1}, Lorg/spongycastle/crypto/Commitment;->getSecret()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/spongycastle/crypto/commitments/HashCommitter;->byteLength:I

    if-eq v1, v2, :cond_0

    .line 71
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "Message and witness secret lengths do not match."

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/Commitment;->getSecret()[B

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/spongycastle/crypto/commitments/HashCommitter;->calculateCommitment([B[B)[B

    move-result-object v0

    .line 76
    .local v0, "calcCommitment":[B
    invoke-virtual {p1}, Lorg/spongycastle/crypto/Commitment;->getCommitment()[B

    move-result-object v1

    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    return v1
.end method
