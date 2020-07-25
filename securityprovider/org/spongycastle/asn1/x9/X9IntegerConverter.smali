.class public Lorg/spongycastle/asn1/x9/X9IntegerConverter;
.super Ljava/lang/Object;
.source "X9IntegerConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getByteLength(Lorg/spongycastle/math/ec/ECCurve;)I
    .locals 1
    .param p1, "c"    # Lorg/spongycastle/math/ec/ECCurve;

    .prologue
    .line 23
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getByteLength(Lorg/spongycastle/math/ec/ECFieldElement;)I
    .locals 1
    .param p1, "fe"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 35
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public integerToBytes(Ljava/math/BigInteger;I)[B
    .locals 5
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "qLength"    # I

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 51
    .local v0, "bytes":[B
    array-length v2, v0

    if-ge p2, v2, :cond_0

    .line 53
    new-array v1, p2, [B

    .line 55
    .local v1, "tmp":[B
    array-length v2, v0

    array-length v3, v1

    sub-int/2addr v2, v3

    array-length v3, v1

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .end local v1    # "tmp":[B
    :goto_0
    return-object v1

    .line 59
    :cond_0
    array-length v2, v0

    if-le p2, v2, :cond_1

    .line 61
    new-array v1, p2, [B

    .line 63
    .restart local v1    # "tmp":[B
    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .end local v1    # "tmp":[B
    :cond_1
    move-object v1, v0

    .line 68
    goto :goto_0
.end method
