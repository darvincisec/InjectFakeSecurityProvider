.class public abstract Lorg/spongycastle/math/ec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/math/ec/ECPoint$F2m;,
        Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;,
        Lorg/spongycastle/math/ec/ECPoint$Fp;,
        Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
    }
.end annotation


# static fields
.field protected static EMPTY_ZS:[Lorg/spongycastle/math/ec/ECFieldElement;


# instance fields
.field protected curve:Lorg/spongycastle/math/ec/ECCurve;

.field protected preCompTable:Ljava/util/Hashtable;

.field protected withCompression:Z

.field protected x:Lorg/spongycastle/math/ec/ECFieldElement;

.field protected y:Lorg/spongycastle/math/ec/ECFieldElement;

.field protected zs:[Lorg/spongycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/spongycastle/math/ec/ECFieldElement;

    sput-object v0, Lorg/spongycastle/math/ec/ECPoint;->EMPTY_ZS:[Lorg/spongycastle/math/ec/ECFieldElement;

    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 56
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECPoint;->getInitialZCoords(Lorg/spongycastle/math/ec/ECCurve;)[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 61
    iput-object p1, p0, Lorg/spongycastle/math/ec/ECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 62
    iput-object p2, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 63
    iput-object p3, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 64
    iput-object p4, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    .line 65
    return-void
.end method

.method protected static getInitialZCoords(Lorg/spongycastle/math/ec/ECCurve;)[Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6
    .param p0, "curve"    # Lorg/spongycastle/math/ec/ECCurve;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    if-nez p0, :cond_0

    move v0, v3

    .line 18
    .local v0, "coord":I
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 27
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 29
    .local v1, "one":Lorg/spongycastle/math/ec/ECFieldElement;
    packed-switch v0, :pswitch_data_0

    .line 40
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown coordinate system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 16
    .end local v0    # "coord":I
    .end local v1    # "one":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    goto :goto_0

    .line 22
    .restart local v0    # "coord":I
    :sswitch_0
    sget-object v2, Lorg/spongycastle/math/ec/ECPoint;->EMPTY_ZS:[Lorg/spongycastle/math/ec/ECFieldElement;

    .line 38
    :goto_1
    return-object v2

    .line 34
    .restart local v1    # "one":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_1
    new-array v2, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v1, v2, v3

    goto :goto_1

    .line 36
    :pswitch_2
    const/4 v2, 0x3

    new-array v2, v2, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v1, v2, v3

    aput-object v1, v2, v4

    aput-object v1, v2, v5

    goto :goto_1

    .line 38
    :pswitch_3
    new-array v2, v5, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_1

    .line 18
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
.end method

.method protected checkNormalized()V
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "point not in normal form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    return-void
.end method

.method protected createScaledPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 4
    .param p1, "sx"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "sy"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    iget-boolean v3, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected abstract detach()Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 389
    if-ne p1, p0, :cond_0

    .line 391
    const/4 v0, 0x1

    .line 399
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 394
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/ECPoint;

    if-nez v0, :cond_1

    .line 396
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/ECPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Lorg/spongycastle/math/ec/ECPoint;)Z
    .locals 13
    .param p1, "other"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 340
    if-nez p1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v10

    .line 345
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .local v0, "c1":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 346
    .local v1, "c2":Lorg/spongycastle/math/ec/ECCurve;
    if-nez v0, :cond_4

    move v4, v9

    .local v4, "n1":Z
    :goto_1
    if-nez v1, :cond_5

    move v5, v9

    .line 347
    .local v5, "n2":Z
    :goto_2
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    .local v2, "i1":Z
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    .line 349
    .local v3, "i2":Z
    if-nez v2, :cond_2

    if-eqz v3, :cond_7

    .line 351
    :cond_2
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->equals(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_3
    :goto_3
    move v10, v9

    goto :goto_0

    .end local v2    # "i1":Z
    .end local v3    # "i2":Z
    .end local v4    # "n1":Z
    .end local v5    # "n2":Z
    :cond_4
    move v4, v10

    .line 346
    goto :goto_1

    .restart local v4    # "n1":Z
    :cond_5
    move v5, v10

    goto :goto_2

    .restart local v2    # "i1":Z
    .restart local v3    # "i2":Z
    .restart local v5    # "n2":Z
    :cond_6
    move v9, v10

    .line 351
    goto :goto_3

    .line 354
    :cond_7
    move-object v6, p0

    .local v6, "p1":Lorg/spongycastle/math/ec/ECPoint;
    move-object v7, p1

    .line 355
    .local v7, "p2":Lorg/spongycastle/math/ec/ECPoint;
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 384
    :goto_4
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    :goto_5
    move v10, v9

    goto :goto_0

    .line 359
    :cond_8
    if-eqz v4, :cond_9

    .line 361
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    goto :goto_4

    .line 363
    :cond_9
    if-eqz v5, :cond_a

    .line 365
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    goto :goto_4

    .line 367
    :cond_a
    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->equals(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 375
    const/4 v11, 0x2

    new-array v8, v11, [Lorg/spongycastle/math/ec/ECPoint;

    aput-object p0, v8, v10

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECCurve;->importPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    aput-object v11, v8, v9

    .line 378
    .local v8, "points":[Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 380
    aget-object v6, v8, v10

    .line 381
    aget-object v7, v8, v9

    goto :goto_4

    .end local v8    # "points":[Lorg/spongycastle/math/ec/ECPoint;
    :cond_b
    move v9, v10

    .line 384
    goto :goto_5
.end method

.method public getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->checkNormalized()V

    .line 129
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->checkNormalized()V

    .line 141
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getCompressionYTilde()Z
.end method

.method public getCurve()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    return-object v0
.end method

.method protected getCurveCoordinateSystem()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    goto :goto_0
.end method

.method public final getDetachedPoint()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->detach()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Z)[B
    .locals 8
    .param p1, "compressed"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 457
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 459
    new-array v0, v7, [B

    .line 480
    :goto_0
    return-object v0

    .line 462
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 464
    .local v3, "normed":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v1

    .line 466
    .local v1, "X":[B
    if-eqz p1, :cond_2

    .line 468
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    .line 469
    .local v0, "PO":[B
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->getCompressionYTilde()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    :goto_1
    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 470
    array-length v4, v1

    invoke-static {v1, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 469
    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    .line 474
    .end local v0    # "PO":[B
    :cond_2
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v2

    .line 476
    .local v2, "Y":[B
    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    .line 477
    .restart local v0    # "PO":[B
    const/4 v4, 0x4

    aput-byte v4, v0, v6

    .line 478
    array-length v4, v1

    invoke-static {v1, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public final getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method protected final getRawZCoords()[Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getX()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getY()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 176
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getZCoords()[Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    array-length v1, v2

    .line 182
    .local v1, "zsLen":I
    if-nez v1, :cond_0

    .line 184
    sget-object v0, Lorg/spongycastle/math/ec/ECPoint;->EMPTY_ZS:[Lorg/spongycastle/math/ec/ECFieldElement;

    .line 188
    :goto_0
    return-object v0

    .line 186
    :cond_0
    new-array v0, v1, [Lorg/spongycastle/math/ec/ECFieldElement;

    .line 187
    .local v0, "copy":[Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 404
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 405
    .local v0, "c":Lorg/spongycastle/math/ec/ECCurve;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 407
    .local v1, "hc":I
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-nez v3, :cond_0

    .line 411
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 413
    .local v2, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x11

    xor-int/2addr v1, v3

    .line 414
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int/lit16 v3, v3, 0x101

    xor-int/2addr v1, v3

    .line 417
    .end local v2    # "p":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    return v1

    .line 405
    .end local v1    # "hc":I
    :cond_1
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->hashCode()I

    move-result v3

    xor-int/lit8 v1, v3, -0x1

    goto :goto_0
.end method

.method public isCompressed()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    return v0
.end method

.method public isInfinity()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isNormalized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    .line 218
    .local v0, "coord":I
    if-eqz v0, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 220
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v2, v2, v1

    .line 221
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 218
    :cond_1
    return v1
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v1

    .line 307
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 308
    .local v0, "curve":Lorg/spongycastle/math/ec/ECCurve;
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->satisfiesCurveEquation()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 312
    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->satisfiesCofactor()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 317
    goto :goto_0
.end method

.method public multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 525
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/spongycastle/math/ec/ECMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public abstract negate()Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public normalize()Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    :goto_0
    :sswitch_0
    return-object p0

    .line 237
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 246
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 247
    .local v0, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/math/ec/ECPoint;->normalize(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method normalize(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 4
    .param p1, "zInv"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 275
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "not a projective coordinate system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :pswitch_1
    invoke-virtual {p0, p1, p1}, Lorg/spongycastle/math/ec/ECPoint;->createScaledPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 271
    :goto_0
    return-object v2

    .line 270
    :pswitch_2
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .local v0, "zInv2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 271
    .local v1, "zInv3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->createScaledPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected satisfiesCofactor()Z
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v0

    .line 70
    .local v0, "h":Ljava/math/BigInteger;
    if-eqz v0, :cond_0

    sget-object v1, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->referenceMultiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract satisfiesCurveEquation()Z
.end method

.method public scaleX(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 5
    .param p1, "scale"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint;
    :goto_0
    return-object p0

    .line 328
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getRawZCoords()[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0
.end method

.method public scaleY(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 5
    .param p1, "scale"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 333
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint;
    :goto_0
    return-object p0

    .line 335
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getRawZCoords()[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0
.end method

.method public abstract subtract(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public threeTimes()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0, p0}, Lorg/spongycastle/math/ec/ECPoint;->twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "e"    # I

    .prologue
    .line 493
    if-gez p1, :cond_0

    .line 495
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'e\' cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_0
    move-object v0, p0

    .line 499
    .local v0, "p":Lorg/spongycastle/math/ec/ECPoint;
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 501
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0

    .line 503
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 422
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    const-string v2, "INF"

    .line 438
    :goto_0
    return-object v2

    .line 427
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 428
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 429
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 430
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 431
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 434
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 435
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 437
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 438
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public abstract twice()Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 510
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
