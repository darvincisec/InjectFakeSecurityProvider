.class public Lorg/spongycastle/math/ec/MontgomeryLadderMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source "MontgomeryLadderMultiplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected multiplyPositive(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 9
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x2

    new-array v0, v7, [Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    aput-object v7, v0, v6

    aput-object p1, v0, v5

    .line 14
    .local v0, "R":[Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 15
    .local v4, "n":I
    move v3, v4

    .line 16
    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 18
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_0

    move v1, v5

    .line 19
    .local v1, "b":I
    :goto_1
    rsub-int/lit8 v2, v1, 0x1

    .line 20
    .local v2, "bp":I
    aget-object v7, v0, v2

    aget-object v8, v0, v1

    invoke-virtual {v7, v8}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    aput-object v7, v0, v2

    .line 21
    aget-object v7, v0, v1

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    aput-object v7, v0, v1

    goto :goto_0

    .end local v1    # "b":I
    .end local v2    # "bp":I
    :cond_0
    move v1, v6

    .line 18
    goto :goto_1

    .line 23
    :cond_1
    aget-object v5, v0, v6

    return-object v5
.end method
