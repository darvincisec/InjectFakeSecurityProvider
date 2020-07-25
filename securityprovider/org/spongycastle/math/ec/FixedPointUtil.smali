.class public Lorg/spongycastle/math/ec/FixedPointUtil;
.super Ljava/lang/Object;
.source "FixedPointUtil.java"


# static fields
.field public static final PRECOMP_NAME:Ljava/lang/String; = "bc_fixed_point"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCombSize(Lorg/spongycastle/math/ec/ECCurve;)I
    .locals 2
    .param p0, "c"    # Lorg/spongycastle/math/ec/ECCurve;

    .prologue
    .line 11
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 12
    .local v0, "order":Ljava/math/BigInteger;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    goto :goto_0
.end method

.method public static getFixedPointPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/FixedPointPreCompInfo;
    .locals 1
    .param p0, "preCompInfo"    # Lorg/spongycastle/math/ec/PreCompInfo;

    .prologue
    .line 17
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    if-eqz v0, :cond_0

    .line 19
    check-cast p0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    .line 22
    .end local p0    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    :goto_0
    return-object p0

    .restart local p0    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    :cond_0
    new-instance p0, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    .end local p0    # "preCompInfo":Lorg/spongycastle/math/ec/PreCompInfo;
    invoke-direct {p0}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;-><init>()V

    goto :goto_0
.end method

.method public static precompute(Lorg/spongycastle/math/ec/ECPoint;I)Lorg/spongycastle/math/ec/FixedPointPreCompInfo;
    .locals 13
    .param p0, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p1, "minWidth"    # I

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 29
    .local v2, "c":Lorg/spongycastle/math/ec/ECCurve;
    const/4 v11, 0x1

    shl-int v7, v11, p1

    .line 30
    .local v7, "n":I
    const-string v11, "bc_fixed_point"

    invoke-virtual {v2, p0, v11}, Lorg/spongycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;

    move-result-object v11

    invoke-static {v11}, Lorg/spongycastle/math/ec/FixedPointUtil;->getFixedPointPreCompInfo(Lorg/spongycastle/math/ec/PreCompInfo;)Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v5

    .line 31
    .local v5, "info":Lorg/spongycastle/math/ec/FixedPointPreCompInfo;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 33
    .local v6, "lookupTable":[Lorg/spongycastle/math/ec/ECPoint;
    if-eqz v6, :cond_0

    array-length v11, v6

    if-ge v11, v7, :cond_4

    .line 35
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/math/ec/FixedPointUtil;->getCombSize(Lorg/spongycastle/math/ec/ECCurve;)I

    move-result v1

    .line 36
    .local v1, "bits":I
    add-int v11, v1, p1

    add-int/lit8 v11, v11, -0x1

    div-int v3, v11, p1

    .line 38
    .local v3, "d":I
    add-int/lit8 v11, p1, 0x1

    new-array v9, v11, [Lorg/spongycastle/math/ec/ECPoint;

    .line 39
    .local v9, "pow2Table":[Lorg/spongycastle/math/ec/ECPoint;
    const/4 v11, 0x0

    aput-object p0, v9, v11

    .line 40
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 42
    add-int/lit8 v11, v4, -0x1

    aget-object v11, v9, v11

    invoke-virtual {v11, v3}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    aput-object v11, v9, v4

    .line 40
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46
    :cond_1
    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Lorg/spongycastle/math/ec/ECPoint;->subtract(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    aput-object v11, v9, p1

    .line 48
    invoke-virtual {v2, v9}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 50
    new-array v6, v7, [Lorg/spongycastle/math/ec/ECPoint;

    .line 51
    const/4 v11, 0x0

    const/4 v12, 0x0

    aget-object v12, v9, v12

    aput-object v12, v6, v11

    .line 53
    add-int/lit8 v0, p1, -0x1

    .local v0, "bit":I
    :goto_1
    if-ltz v0, :cond_3

    .line 55
    aget-object v8, v9, v0

    .line 57
    .local v8, "pow2":Lorg/spongycastle/math/ec/ECPoint;
    const/4 v11, 0x1

    shl-int v10, v11, v0

    .line 58
    .local v10, "step":I
    move v4, v10

    :goto_2
    if-ge v4, v7, :cond_2

    .line 60
    sub-int v11, v4, v10

    aget-object v11, v6, v11

    invoke-virtual {v11, v8}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    aput-object v11, v6, v4

    .line 58
    shl-int/lit8 v11, v10, 0x1

    add-int/2addr v4, v11

    goto :goto_2

    .line 53
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 64
    .end local v8    # "pow2":Lorg/spongycastle/math/ec/ECPoint;
    .end local v10    # "step":I
    :cond_3
    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 66
    aget-object v11, v9, p1

    invoke-virtual {v5, v11}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->setOffset(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 67
    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->setPreComp([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 68
    invoke-virtual {v5, p1}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->setWidth(I)V

    .line 70
    const-string v11, "bc_fixed_point"

    invoke-virtual {v2, p0, v11, v5}, Lorg/spongycastle/math/ec/ECCurve;->setPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V

    .line 73
    .end local v0    # "bit":I
    .end local v1    # "bits":I
    .end local v3    # "d":I
    .end local v4    # "i":I
    .end local v9    # "pow2Table":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_4
    return-object v5
.end method
