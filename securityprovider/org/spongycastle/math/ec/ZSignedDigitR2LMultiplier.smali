.class public Lorg/spongycastle/math/ec/ZSignedDigitR2LMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source "ZSignedDigitR2LMultiplier.java"


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
    .locals 6
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 12
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .local v0, "R0":Lorg/spongycastle/math/ec/ECPoint;
    move-object v1, p1

    .line 14
    .local v1, "R1":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 15
    .local v3, "n":I
    invoke-virtual {p2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    .line 17
    .local v4, "s":I
    invoke-virtual {v1, v4}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 19
    move v2, v4

    .line 20
    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_1

    .line 22
    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    :goto_1
    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 23
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 28
    return-object v0
.end method
