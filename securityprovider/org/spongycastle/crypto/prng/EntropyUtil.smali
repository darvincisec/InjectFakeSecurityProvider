.class public Lorg/spongycastle/crypto/prng/EntropyUtil;
.super Ljava/lang/Object;
.source "EntropyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateSeed(Lorg/spongycastle/crypto/prng/EntropySource;I)[B
    .locals 7
    .param p0, "entropySource"    # Lorg/spongycastle/crypto/prng/EntropySource;
    .param p1, "numBytes"    # I

    .prologue
    const/4 v6, 0x0

    .line 17
    new-array v0, p1, [B

    .line 19
    .local v0, "bytes":[B
    mul-int/lit8 v4, p1, 0x8

    invoke-interface {p0}, Lorg/spongycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 21
    invoke-interface {p0}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v1

    .line 23
    .local v1, "ent":[B
    array-length v4, v0

    invoke-static {v1, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .end local v1    # "ent":[B
    :cond_0
    return-object v0

    .line 27
    :cond_1
    invoke-interface {p0}, Lorg/spongycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v4

    div-int/lit8 v2, v4, 0x8

    .line 29
    .local v2, "entSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 31
    invoke-interface {p0}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v1

    .line 33
    .restart local v1    # "ent":[B
    array-length v4, v1

    array-length v5, v0

    sub-int/2addr v5, v3

    if-gt v4, v5, :cond_2

    .line 35
    array-length v4, v1

    invoke-static {v1, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    :goto_1
    add-int/2addr v3, v2

    goto :goto_0

    .line 39
    :cond_2
    array-length v4, v0

    sub-int/2addr v4, v3

    invoke-static {v1, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method
