.class public Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;
.super Ljava/lang/Object;
.source "IndexGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;
    }
.end annotation


# instance fields
.field private N:I

.field private buf:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

.field private c:I

.field private counter:I

.field private hLen:I

.field private hashAlg:Lorg/spongycastle/crypto/Digest;

.field private initialized:Z

.field private minCallsR:I

.field private remLen:I

.field private seed:[B

.field private totLen:I


# direct methods
.method constructor <init>([BLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 2
    .param p1, "seed"    # [B
    .param p2, "params"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->seed:[B

    .line 32
    iget v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->N:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->N:I

    .line 33
    iget v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->c:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    .line 34
    iget v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->minCallsR:I

    .line 36
    iput v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->totLen:I

    .line 37
    iput v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    .line 38
    iput v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    .line 39
    iget-object v0, p2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    .line 41
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    .line 42
    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->initialized:Z

    .line 43
    return-void
.end method

.method static synthetic access$000([BI)[B
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I

    .prologue
    .line 9
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private appendHash(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;[B)V
    .locals 4
    .param p1, "m"    # Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;
    .param p2, "hash"    # [B

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->seed:[B

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->seed:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 103
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->putInt(Lorg/spongycastle/crypto/Digest;I)V

    .line 105
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p2, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 107
    invoke-virtual {p1, p2}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->appendBits([B)V

    .line 108
    return-void
.end method

.method private static copyOf([BI)[B
    .locals 3
    .param p0, "src"    # [B
    .param p1, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 231
    new-array v0, p1, [B

    .line 233
    .local v0, "tmp":[B
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .end local p1    # "len":I
    :goto_0
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    return-object v0

    .line 233
    .restart local p1    # "len":I
    :cond_0
    array-length p1, p0

    goto :goto_0
.end method

.method private putInt(Lorg/spongycastle/crypto/Digest;I)V
    .locals 1
    .param p1, "hashAlg"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "counter"    # I

    .prologue
    .line 112
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 113
    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 114
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 115
    int-to-byte v0, p2

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 116
    return-void
.end method


# virtual methods
.method nextIndex()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 50
    iget-boolean v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->initialized:Z

    if-nez v5, :cond_1

    .line 52
    new-instance v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;-><init>()V

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->buf:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    .line 53
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v2, v5, [B

    .line 54
    .local v2, "hash":[B
    :goto_0
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->minCallsR:I

    if-ge v5, v6, :cond_0

    .line 56
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->buf:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {p0, v5, v2}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->appendHash(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;[B)V

    .line 57
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    goto :goto_0

    .line 59
    :cond_0
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->minCallsR:I

    mul-int/lit8 v5, v5, 0x8

    iget v6, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->totLen:I

    .line 60
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->totLen:I

    iput v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    .line 61
    iput-boolean v8, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->initialized:Z

    .line 66
    .end local v2    # "hash":[B
    :cond_1
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->totLen:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    add-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->totLen:I

    .line 67
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->buf:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    iget v6, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->getTrailing(I)Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    move-result-object v0

    .line 68
    .local v0, "M":Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    if-ge v5, v6, :cond_4

    .line 70
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    sub-int v4, v5, v6

    .line 71
    .local v4, "tmpLen":I
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    div-int/2addr v6, v7

    add-int v1, v5, v6

    .line 72
    .local v1, "cThreshold":I
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v2, v5, [B

    .line 73
    .restart local v2    # "hash":[B
    :cond_2
    :goto_1
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    if-ge v5, v1, :cond_3

    .line 75
    invoke-direct {p0, v0, v2}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->appendHash(Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;[B)V

    .line 76
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->counter:I

    .line 77
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/lit8 v5, v5, 0x8

    if-le v4, v5, :cond_2

    .line 79
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    goto :goto_1

    .line 82
    :cond_3
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->hLen:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v5, v4

    iput v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    .line 83
    new-instance v5, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;-><init>()V

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->buf:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    .line 84
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->buf:Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;

    invoke-virtual {v5, v2}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->appendBits([B)V

    .line 91
    .end local v1    # "cThreshold":I
    .end local v2    # "hash":[B
    .end local v4    # "tmpLen":I
    :goto_2
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    invoke-virtual {v0, v5}, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator$BitString;->getLeadingAsInt(I)I

    move-result v3

    .line 92
    .local v3, "i":I
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    shl-int v5, v8, v5

    iget v6, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    shl-int v6, v8, v6

    iget v7, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->N:I

    rem-int/2addr v6, v7

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_1

    .line 94
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->N:I

    rem-int v5, v3, v5

    return v5

    .line 88
    .end local v3    # "i":I
    :cond_4
    iget v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->c:I

    sub-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/pqc/crypto/ntru/IndexGenerator;->remLen:I

    goto :goto_2
.end method
