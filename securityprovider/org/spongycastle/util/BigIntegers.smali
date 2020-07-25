.class public final Lorg/spongycastle/util/BigIntegers;
.super Ljava/lang/Object;
.source "BigIntegers.java"


# static fields
.field private static final MAX_ITERATIONS:I = 0x3e8

.field private static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asUnsignedByteArray(ILjava/math/BigInteger;)[B
    .locals 6
    .param p0, "length"    # I
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 46
    .local v0, "bytes":[B
    array-length v4, v0

    if-ne v4, p0, :cond_0

    .line 61
    .end local v0    # "bytes":[B
    :goto_0
    return-object v0

    .line 51
    .restart local v0    # "bytes":[B
    :cond_0
    aget-byte v4, v0, v2

    if-nez v4, :cond_1

    const/4 v2, 0x1

    .line 52
    .local v2, "start":I
    :cond_1
    array-length v4, v0

    sub-int v1, v4, v2

    .line 54
    .local v1, "count":I
    if-le v1, p0, :cond_2

    .line 56
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "standard length exceeded for value"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 59
    :cond_2
    new-array v3, p0, [B

    .line 60
    .local v3, "tmp":[B
    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 61
    goto :goto_0
.end method

.method public static asUnsignedByteArray(Ljava/math/BigInteger;)[B
    .locals 5
    .param p0, "value"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x0

    .line 23
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 25
    .local v0, "bytes":[B
    aget-byte v2, v0, v4

    if-nez v2, :cond_0

    .line 27
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    .line 29
    .local v1, "tmp":[B
    const/4 v2, 0x1

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .end local v1    # "tmp":[B
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "min"    # Ljava/math/BigInteger;
    .param p1, "max"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 78
    .local v0, "cmp":I
    if-ltz v0, :cond_0

    .line 80
    if-lez v0, :cond_1

    .line 82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'min\' may not be greater than \'max\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_2

    .line 90
    sget-object v3, Lorg/spongycastle/util/BigIntegers;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v3, v4, p2}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 103
    .end local p0    # "min":Ljava/math/BigInteger;
    :cond_1
    :goto_0
    return-object p0

    .line 93
    .restart local p0    # "min":Ljava/math/BigInteger;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_4

    .line 95
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-direct {v2, v3, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 96
    .local v2, "x":Ljava/math/BigInteger;
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_3

    move-object p0, v2

    .line 98
    goto :goto_0

    .line 93
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    .end local v2    # "x":Ljava/math/BigInteger;
    :cond_4
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v3, v4, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0
.end method

.method public static fromUnsignedByteArray([B)Ljava/math/BigInteger;
    .locals 2
    .param p0, "buf"    # [B

    .prologue
    .line 108
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static fromUnsignedByteArray([BII)Ljava/math/BigInteger;
    .locals 3
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "length"    # I

    .prologue
    .line 113
    move-object v0, p0

    .line 114
    .local v0, "mag":[B
    if-nez p1, :cond_0

    array-length v1, p0

    if-eq p2, v1, :cond_1

    .line 116
    :cond_0
    new-array v0, p2, [B

    .line 117
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method
