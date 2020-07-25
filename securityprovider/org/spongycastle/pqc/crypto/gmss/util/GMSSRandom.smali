.class public Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;
.super Ljava/lang/Object;
.source "GMSSRandom.java"


# instance fields
.field private messDigestTree:Lorg/spongycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "messDigestTree2"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 24
    return-void
.end method

.method private addByteArrays([B[B)V
    .locals 5
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 57
    .local v1, "overflow":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 59
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p2, v0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int v2, v3, v1

    .line 60
    .local v2, "temp":I
    int-to-byte v3, v2

    aput-byte v3, p1, v0

    .line 61
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v1, v3

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v2    # "temp":I
    :cond_0
    return-void
.end method

.method private addOne([B)V
    .locals 4
    .param p1, "a"    # [B

    .prologue
    .line 68
    const/4 v1, 0x1

    .line 71
    .local v1, "overflow":B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 73
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    add-int v2, v3, v1

    .line 74
    .local v2, "temp":I
    int-to-byte v3, v2

    aput-byte v3, p1, v0

    .line 75
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v1, v3

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "temp":I
    :cond_0
    return-void
.end method


# virtual methods
.method public nextSeed([B)[B
    .locals 4
    .param p1, "outseed"    # [B

    .prologue
    const/4 v3, 0x0

    .line 37
    array-length v1, p1

    new-array v0, v1, [B

    .line 38
    .local v0, "rand":[B
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 39
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 40
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1, v0, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 43
    invoke-direct {p0, p1, v0}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->addByteArrays([B[B)V

    .line 44
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->addOne([B)V

    .line 48
    return-object v0
.end method
