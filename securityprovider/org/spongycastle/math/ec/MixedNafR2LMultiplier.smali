.class public Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source "MixedNafR2LMultiplier.java"


# instance fields
.field protected additionCoord:I

.field protected doublingCoord:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;-><init>(II)V

    .line 20
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "additionCoord"    # I
    .param p2, "doublingCoord"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    .line 24
    iput p1, p0, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->additionCoord:I

    .line 25
    iput p2, p0, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->doublingCoord:I

    .line 26
    return-void
.end method


# virtual methods
.method protected configureCurve(Lorg/spongycastle/math/ec/ECCurve;I)Lorg/spongycastle/math/ec/ECCurve;
    .locals 3
    .param p1, "c"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "coord"    # I

    .prologue
    .line 65
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 75
    .end local p1    # "c":Lorg/spongycastle/math/ec/ECCurve;
    :goto_0
    return-object p1

    .line 70
    .restart local p1    # "c":Lorg/spongycastle/math/ec/ECCurve;
    :cond_0
    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECCurve;->supportsCoordinateSystem(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Coordinate system "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported by this curve"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->configure()Lorg/spongycastle/math/ec/ECCurve$Config;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/spongycastle/math/ec/ECCurve$Config;->setCoordinateSystem(I)Lorg/spongycastle/math/ec/ECCurve$Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve$Config;->create()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p1

    goto :goto_0
.end method

.method protected multiplyPositive(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 12
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 30
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v5

    .line 32
    .local v5, "curveOrig":Lorg/spongycastle/math/ec/ECCurve;
    iget v11, p0, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->additionCoord:I

    invoke-virtual {p0, v5, v11}, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->configureCurve(Lorg/spongycastle/math/ec/ECCurve;I)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 33
    .local v3, "curveAdd":Lorg/spongycastle/math/ec/ECCurve;
    iget v11, p0, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->doublingCoord:I

    invoke-virtual {p0, v5, v11}, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->configureCurve(Lorg/spongycastle/math/ec/ECCurve;I)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 35
    .local v4, "curveDouble":Lorg/spongycastle/math/ec/ECCurve;
    invoke-static {p2}, Lorg/spongycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v8

    .line 37
    .local v8, "naf":[I
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 38
    .local v0, "Ra":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/ECCurve;->importPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 40
    .local v1, "Td":Lorg/spongycastle/math/ec/ECPoint;
    const/4 v10, 0x0

    .line 41
    .local v10, "zeroes":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v11, v8

    if-ge v7, v11, :cond_1

    .line 43
    aget v9, v8, v7

    .line 44
    .local v9, "ni":I
    shr-int/lit8 v6, v9, 0x10

    .line 45
    .local v6, "digit":I
    const v11, 0xffff

    and-int/2addr v11, v9

    add-int/2addr v10, v11

    .line 47
    invoke-virtual {v1, v10}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 49
    invoke-virtual {v3, v1}, Lorg/spongycastle/math/ec/ECCurve;->importPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 50
    .local v2, "Tj":Lorg/spongycastle/math/ec/ECPoint;
    if-gez v6, :cond_0

    .line 52
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 55
    :cond_0
    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 57
    const/4 v10, 0x1

    .line 41
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 60
    .end local v2    # "Tj":Lorg/spongycastle/math/ec/ECPoint;
    .end local v6    # "digit":I
    .end local v9    # "ni":I
    :cond_1
    invoke-virtual {v5, v0}, Lorg/spongycastle/math/ec/ECCurve;->importPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    return-object v11
.end method
