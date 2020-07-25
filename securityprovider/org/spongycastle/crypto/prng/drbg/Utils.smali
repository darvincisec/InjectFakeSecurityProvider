.class Lorg/spongycastle/crypto/prng/drbg/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final maxSecurityStrengths:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xc0

    const/16 v3, 0x100

    .line 11
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    .line 15
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    const/16 v2, 0x80

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-512/224"

    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-512/256"

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMaxSecurityStrength(Lorg/spongycastle/crypto/Digest;)I
    .locals 2
    .param p0, "d"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 28
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getMaxSecurityStrength(Lorg/spongycastle/crypto/Mac;)I
    .locals 4
    .param p0, "m"    # Lorg/spongycastle/crypto/Mac;

    .prologue
    .line 33
    invoke-interface {p0}, Lorg/spongycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lorg/spongycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method static hash_df(Lorg/spongycastle/crypto/Digest;[BI)[B
    .locals 12
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "seedMaterial"    # [B
    .param p2, "seedLength"    # I

    .prologue
    const/4 v11, 0x0

    .line 54
    add-int/lit8 v9, p2, 0x7

    div-int/lit8 v9, v9, 0x8

    new-array v8, v9, [B

    .line 56
    .local v8, "temp":[B
    array-length v9, v8

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v10

    div-int v6, v9, v10

    .line 57
    .local v6, "len":I
    const/4 v3, 0x1

    .line 59
    .local v3, "counter":I
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v4, v9, [B

    .line 61
    .local v4, "dig":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-gt v5, v6, :cond_1

    .line 63
    int-to-byte v9, v3

    invoke-interface {p0, v9}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 65
    shr-int/lit8 v9, p2, 0x18

    int-to-byte v9, v9

    invoke-interface {p0, v9}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 66
    shr-int/lit8 v9, p2, 0x10

    int-to-byte v9, v9

    invoke-interface {p0, v9}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 67
    shr-int/lit8 v9, p2, 0x8

    int-to-byte v9, v9

    invoke-interface {p0, v9}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 68
    int-to-byte v9, p2

    invoke-interface {p0, v9}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 70
    array-length v9, p1

    invoke-interface {p0, p1, v11, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 72
    invoke-interface {p0, v4, v11}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 74
    array-length v9, v8

    array-length v10, v4

    mul-int/2addr v10, v5

    sub-int/2addr v9, v10

    array-length v10, v4

    if-le v9, v10, :cond_0

    array-length v1, v4

    .line 77
    .local v1, "bytesToCopy":I
    :goto_1
    array-length v9, v4

    mul-int/2addr v9, v5

    invoke-static {v4, v11, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 61
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "bytesToCopy":I
    :cond_0
    array-length v9, v8

    array-length v10, v4

    mul-int/2addr v10, v5

    sub-int v1, v9, v10

    goto :goto_1

    .line 83
    :cond_1
    rem-int/lit8 v9, p2, 0x8

    if-eqz v9, :cond_2

    .line 85
    rem-int/lit8 v9, p2, 0x8

    rsub-int/lit8 v7, v9, 0x8

    .line 86
    .local v7, "shift":I
    const/4 v2, 0x0

    .line 88
    .local v2, "carry":I
    const/4 v5, 0x0

    :goto_2
    array-length v9, v8

    if-eq v5, v9, :cond_2

    .line 90
    aget-byte v9, v8, v5

    and-int/lit16 v0, v9, 0xff

    .line 91
    .local v0, "b":I
    ushr-int v9, v0, v7

    rsub-int/lit8 v10, v7, 0x8

    shl-int v10, v2, v10

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v8, v5

    .line 92
    move v2, v0

    .line 88
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 96
    .end local v0    # "b":I
    .end local v2    # "carry":I
    .end local v7    # "shift":I
    :cond_2
    return-object v8
.end method

.method static isTooLarge([BI)Z
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "maxBytes"    # I

    .prologue
    .line 101
    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
