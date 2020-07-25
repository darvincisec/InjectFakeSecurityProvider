.class public Lorg/spongycastle/crypto/agreement/srp/SRP6Util;
.super Ljava/lang/Object;
.source "SRP6Util.java"


# static fields
.field private static ONE:Ljava/math/BigInteger;

.field private static ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ZERO:Ljava/math/BigInteger;

    .line 13
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateK(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;

    .prologue
    .line 17
    invoke-static {p0, p1, p1, p2}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->hashPaddedPair(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static calculateKey(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "S"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x0

    .line 102
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v2, v3, 0x8

    .line 103
    .local v2, "padLength":I
    invoke-static {p2, v2}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object v0

    .line 104
    .local v0, "_S":[B
    array-length v3, v0

    invoke-interface {p0, v0, v4, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 106
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 107
    .local v1, "output":[B
    invoke-interface {p0, v1, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 108
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v3
.end method

.method public static calculateM1(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "A"    # Ljava/math/BigInteger;
    .param p3, "B"    # Ljava/math/BigInteger;
    .param p4, "S"    # Ljava/math/BigInteger;

    .prologue
    .line 75
    invoke-static {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->hashPaddedTriplet(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 76
    .local v0, "M1":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static calculateM2(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "A"    # Ljava/math/BigInteger;
    .param p3, "M1"    # Ljava/math/BigInteger;
    .param p4, "S"    # Ljava/math/BigInteger;

    .prologue
    .line 90
    invoke-static {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->hashPaddedTriplet(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 91
    .local v0, "M2":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static calculateU(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "A"    # Ljava/math/BigInteger;
    .param p3, "B"    # Ljava/math/BigInteger;

    .prologue
    .line 22
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->hashPaddedPair(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static calculateX(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;[B[B[B)Ljava/math/BigInteger;
    .locals 3
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "salt"    # [B
    .param p3, "identity"    # [B
    .param p4, "password"    # [B

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 29
    .local v0, "output":[B
    array-length v1, p3

    invoke-interface {p0, p3, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 30
    const/16 v1, 0x3a

    invoke-interface {p0, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 31
    array-length v1, p4

    invoke-interface {p0, p4, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 32
    invoke-interface {p0, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 34
    array-length v1, p2

    invoke-interface {p0, p2, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 35
    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 36
    invoke-interface {p0, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 38
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static generatePrivateValue(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 43
    const/16 v3, 0x100

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 44
    .local v2, "minBits":I
    sget-object v3, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 45
    .local v1, "min":Ljava/math/BigInteger;
    sget-object v3, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 47
    .local v0, "max":Ljava/math/BigInteger;
    invoke-static {v1, v0, p3}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method private static getPadded(Ljava/math/BigInteger;I)[B
    .locals 5
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "length"    # I

    .prologue
    .line 146
    invoke-static {p0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 147
    .local v0, "bs":[B
    array-length v2, v0

    if-ge v2, p1, :cond_0

    .line 149
    new-array v1, p1, [B

    .line 150
    .local v1, "tmp":[B
    const/4 v2, 0x0

    array-length v3, v0

    sub-int v3, p1, v3

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    move-object v0, v1

    .line 153
    .end local v1    # "tmp":[B
    :cond_0
    return-object v0
.end method

.method private static hashPaddedPair(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "n1"    # Ljava/math/BigInteger;
    .param p3, "n2"    # Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x0

    .line 130
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v3, v4, 0x8

    .line 132
    .local v3, "padLength":I
    invoke-static {p2, v3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object v0

    .line 133
    .local v0, "n1_bytes":[B
    invoke-static {p3, v3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 135
    .local v1, "n2_bytes":[B
    array-length v4, v0

    invoke-interface {p0, v0, v5, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 136
    array-length v4, v1

    invoke-interface {p0, v1, v5, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 138
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v2, v4, [B

    .line 139
    .local v2, "output":[B
    invoke-interface {p0, v2, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 141
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v4
.end method

.method private static hashPaddedTriplet(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "n1"    # Ljava/math/BigInteger;
    .param p3, "n2"    # Ljava/math/BigInteger;
    .param p4, "n3"    # Ljava/math/BigInteger;

    .prologue
    const/4 v6, 0x0

    .line 112
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v4, v5, 0x8

    .line 114
    .local v4, "padLength":I
    invoke-static {p2, v4}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object v0

    .line 115
    .local v0, "n1_bytes":[B
    invoke-static {p3, v4}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 116
    .local v1, "n2_bytes":[B
    invoke-static {p4, v4}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object v2

    .line 118
    .local v2, "n3_bytes":[B
    array-length v5, v0

    invoke-interface {p0, v0, v6, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 119
    array-length v5, v1

    invoke-interface {p0, v1, v6, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 120
    array-length v5, v2

    invoke-interface {p0, v2, v6, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 122
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v3, v5, [B

    .line 123
    .local v3, "output":[B
    invoke-interface {p0, v3, v6}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 125
    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v5
.end method

.method public static validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "N"    # Ljava/math/BigInteger;
    .param p1, "val"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 56
    sget-object v0, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lorg/spongycastle/crypto/CryptoException;

    const-string v1, "Invalid public value: 0"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    return-object p1
.end method
