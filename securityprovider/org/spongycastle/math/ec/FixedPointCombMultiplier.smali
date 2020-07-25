.class public Lorg/spongycastle/math/ec/FixedPointCombMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source "FixedPointCombMultiplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWidthForCombSize(I)I
    .locals 1
    .param p1, "combSize"    # I

    .prologue
    .line 55
    const/16 v0, 0x101

    if-le p1, v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected multiplyPositive(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 15
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 9
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 10
    .local v2, "c":Lorg/spongycastle/math/ec/ECCurve;
    invoke-static {v2}, Lorg/spongycastle/math/ec/FixedPointUtil;->getCombSize(Lorg/spongycastle/math/ec/ECCurve;)I

    move-result v10

    .line 12
    .local v10, "size":I
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    if-le v13, v10, :cond_0

    .line 20
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 23
    :cond_0
    invoke-virtual {p0, v10}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;->getWidthForCombSize(I)I

    move-result v9

    .line 25
    .local v9, "minWidth":I
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/spongycastle/math/ec/FixedPointUtil;->precompute(Lorg/spongycastle/math/ec/ECPoint;I)Lorg/spongycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v6

    .line 26
    .local v6, "info":Lorg/spongycastle/math/ec/FixedPointPreCompInfo;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->getPreComp()[Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 27
    .local v8, "lookupTable":[Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v12

    .line 29
    .local v12, "width":I
    add-int v13, v10, v12

    add-int/lit8 v13, v13, -0x1

    div-int v3, v13, v12

    .line 31
    .local v3, "d":I
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 33
    .local v1, "R":Lorg/spongycastle/math/ec/ECPoint;
    mul-int v13, v3, v12

    add-int/lit8 v11, v13, -0x1

    .line 34
    .local v11, "top":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 36
    const/4 v5, 0x0

    .line 38
    .local v5, "index":I
    sub-int v7, v11, v4

    .local v7, "j":I
    :goto_1
    if-ltz v7, :cond_2

    .line 40
    shl-int/lit8 v5, v5, 0x1

    .line 41
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 43
    or-int/lit8 v5, v5, 0x1

    .line 38
    :cond_1
    sub-int/2addr v7, v3

    goto :goto_1

    .line 47
    :cond_2
    aget-object v13, v8, v5

    invoke-virtual {v1, v13}, Lorg/spongycastle/math/ec/ECPoint;->twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 34
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 50
    .end local v5    # "index":I
    .end local v7    # "j":I
    :cond_3
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/FixedPointPreCompInfo;->getOffset()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v1, v13}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    return-object v13
.end method
