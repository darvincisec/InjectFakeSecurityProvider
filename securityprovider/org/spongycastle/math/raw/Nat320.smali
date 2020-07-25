.class public abstract Lorg/spongycastle/math/raw/Nat320;
.super Ljava/lang/Object;
.source "Nat320.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy64([J[J)V
    .locals 7
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    aget-wide v0, p0, v2

    aput-wide v0, p1, v2

    .line 12
    aget-wide v0, p0, v3

    aput-wide v0, p1, v3

    .line 13
    aget-wide v0, p0, v4

    aput-wide v0, p1, v4

    .line 14
    aget-wide v0, p0, v5

    aput-wide v0, p1, v5

    .line 15
    aget-wide v0, p0, v6

    aput-wide v0, p1, v6

    .line 16
    return-void
.end method

.method public static create64()[J
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [J

    return-object v0
.end method

.method public static eq64([J[J)Z
    .locals 6
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .prologue
    .line 30
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 32
    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 34
    const/4 v1, 0x0

    .line 37
    :goto_1
    return v1

    .line 30
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static fromBigInteger64(Ljava/math/BigInteger;)[J
    .locals 6
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x140

    if-le v3, v4, :cond_1

    .line 44
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 47
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat320;->create64()[J

    move-result-object v2

    .line 48
    .local v2, "z":[J
    const/4 v0, 0x0

    .line 49
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 52
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 54
    :cond_2
    return-object v2
.end method

.method public static isOne64([J)Z
    .locals 6
    .param p0, "x"    # [J

    .prologue
    const/4 v1, 0x0

    .line 59
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    .line 65
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isZero64([J)Z
    .locals 6
    .param p0, "x"    # [J

    .prologue
    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 77
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 82
    :goto_1
    return v1

    .line 75
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static toBigInteger64([J)Ljava/math/BigInteger;
    .locals 6
    .param p0, "x"    # [J

    .prologue
    .line 87
    const/16 v4, 0x28

    new-array v0, v4, [B

    .line 88
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_1

    .line 90
    aget-wide v2, p0, v1

    .line 91
    .local v2, "x_i":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 93
    rsub-int/lit8 v4, v1, 0x4

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v0, v4}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "x_i":J
    :cond_1
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v4
.end method
