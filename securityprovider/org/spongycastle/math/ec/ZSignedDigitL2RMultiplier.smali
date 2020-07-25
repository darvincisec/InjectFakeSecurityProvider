.class public Lorg/spongycastle/math/ec/ZSignedDigitL2RMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source "ZSignedDigitL2RMultiplier.java"


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
    .locals 7
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 12
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .local v1, "addP":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 14
    .local v5, "subP":Lorg/spongycastle/math/ec/ECPoint;
    move-object v0, v1

    .line 16
    .local v0, "R0":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 17
    .local v3, "n":I
    invoke-virtual {p2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    .line 19
    .local v4, "s":I
    move v2, v3

    .line 20
    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-le v2, v4, :cond_1

    .line 22
    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    :goto_1
    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECPoint;->twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v6, v5

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 27
    return-object v0
.end method
