.class public Lorg/spongycastle/math/ec/NafL2RMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source "NafL2RMultiplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected multiplyPositive(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 9
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 12
    invoke-static {p2}, Lorg/spongycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v4

    .line 14
    .local v4, "naf":[I
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .local v1, "addP":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 16
    .local v6, "subP":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 18
    .local v0, "R":Lorg/spongycastle/math/ec/ECPoint;
    array-length v3, v4

    .line 19
    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 21
    aget v5, v4, v3

    .line 22
    .local v5, "ni":I
    shr-int/lit8 v2, v5, 0x10

    .local v2, "digit":I
    const v8, 0xffff

    and-int v7, v5, v8

    .line 24
    .local v7, "zeroes":I
    if-gez v2, :cond_0

    move-object v8, v6

    :goto_1
    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECPoint;->twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 26
    goto :goto_0

    :cond_0
    move-object v8, v1

    .line 24
    goto :goto_1

    .line 28
    .end local v2    # "digit":I
    .end local v5    # "ni":I
    .end local v7    # "zeroes":I
    :cond_1
    return-object v0
.end method
