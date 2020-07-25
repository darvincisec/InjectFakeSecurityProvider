.class final Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;
.super Ljava/lang/Object;
.source "KeyedHashFunctions.java"


# instance fields
.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private final digestSize:I


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;I)V
    .locals 2
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "digestSize"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "digest == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/spongycastle/crypto/Digest;

    .line 23
    iput p2, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    .line 24
    return-void
.end method

.method private coreDigest(I[B[B)[B
    .locals 6
    .param p1, "fixedValue"    # I
    .param p2, "key"    # [B
    .param p3, "index"    # [B

    .prologue
    const/4 v5, 0x0

    .line 28
    int-to-long v2, p1

    iget v4, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    invoke-static {v2, v3, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v0

    .line 30
    .local v0, "in":[B
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v3, v0

    invoke-interface {v2, v0, v5, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 32
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v3, p2

    invoke-interface {v2, p2, v5, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 34
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v3, p3

    invoke-interface {v2, p3, v5, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 36
    iget v2, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    new-array v1, v2, [B

    .line 37
    .local v1, "out":[B
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/spongycastle/crypto/Digest;

    instance-of v2, v2, Lorg/spongycastle/crypto/Xof;

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/spongycastle/crypto/Digest;

    check-cast v2, Lorg/spongycastle/crypto/Xof;

    iget v3, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    invoke-interface {v2, v1, v5, v3}, Lorg/spongycastle/crypto/Xof;->doFinal([BII)I

    .line 45
    :goto_0
    return-object v1

    .line 43
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2, v1, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    goto :goto_0
.end method


# virtual methods
.method protected F([B[B)[B
    .locals 2
    .param p1, "key"    # [B
    .param p2, "in"    # [B

    .prologue
    .line 50
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    if-eq v0, v1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong key length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    array-length v0, p2

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    if-eq v0, v1, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong in length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->coreDigest(I[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected H([B[B)[B
    .locals 2
    .param p1, "key"    # [B
    .param p2, "in"    # [B

    .prologue
    .line 63
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    if-eq v0, v1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong key length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    array-length v0, p2

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    mul-int/lit8 v1, v1, 0x2

    if-eq v0, v1, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong in length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->coreDigest(I[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected HMsg([B[B)[B
    .locals 2
    .param p1, "key"    # [B
    .param p2, "in"    # [B

    .prologue
    .line 76
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    mul-int/lit8 v1, v1, 0x3

    if-eq v0, v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong key length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->coreDigest(I[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected PRF([B[B)[B
    .locals 2
    .param p1, "key"    # [B
    .param p2, "address"    # [B

    .prologue
    .line 85
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    if-eq v0, v1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong key length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    array-length v0, p2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong address length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->coreDigest(I[B[B)[B

    move-result-object v0

    return-object v0
.end method
