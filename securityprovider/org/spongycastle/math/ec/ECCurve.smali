.class public abstract Lorg/spongycastle/math/ec/ECCurve;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/math/ec/ECCurve$F2m;,
        Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;,
        Lorg/spongycastle/math/ec/ECCurve$Fp;,
        Lorg/spongycastle/math/ec/ECCurve$AbstractFp;,
        Lorg/spongycastle/math/ec/ECCurve$Config;
    }
.end annotation


# static fields
.field public static final COORD_AFFINE:I = 0x0

.field public static final COORD_HOMOGENEOUS:I = 0x1

.field public static final COORD_JACOBIAN:I = 0x2

.field public static final COORD_JACOBIAN_CHUDNOVSKY:I = 0x3

.field public static final COORD_JACOBIAN_MODIFIED:I = 0x4

.field public static final COORD_LAMBDA_AFFINE:I = 0x5

.field public static final COORD_LAMBDA_PROJECTIVE:I = 0x6

.field public static final COORD_SKEWED:I = 0x7


# instance fields
.field protected a:Lorg/spongycastle/math/ec/ECFieldElement;

.field protected b:Lorg/spongycastle/math/ec/ECFieldElement;

.field protected cofactor:Ljava/math/BigInteger;

.field protected coord:I

.field protected endomorphism:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

.field protected field:Lorg/spongycastle/math/field/FiniteField;

.field protected multiplier:Lorg/spongycastle/math/ec/ECMultiplier;

.field protected order:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/math/field/FiniteField;)V
    .locals 2
    .param p1, "field"    # Lorg/spongycastle/math/field/FiniteField;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/math/ec/ECCurve;->coord:I

    .line 95
    iput-object v1, p0, Lorg/spongycastle/math/ec/ECCurve;->endomorphism:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    .line 96
    iput-object v1, p0, Lorg/spongycastle/math/ec/ECCurve;->multiplier:Lorg/spongycastle/math/ec/ECMultiplier;

    .line 100
    iput-object p1, p0, Lorg/spongycastle/math/ec/ECCurve;->field:Lorg/spongycastle/math/field/FiniteField;

    .line 101
    return-void
.end method

.method public static getAllCoordinateSystems()[I
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method


# virtual methods
.method protected checkPoint(Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 2
    .param p1, "point"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 446
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 448
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'point\' must be non-null and on this curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_1
    return-void
.end method

.method protected checkPoints([Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 2
    .param p1, "points"    # [Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 454
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->checkPoints([Lorg/spongycastle/math/ec/ECPoint;II)V

    .line 455
    return-void
.end method

.method protected checkPoints([Lorg/spongycastle/math/ec/ECPoint;II)V
    .locals 4
    .param p1, "points"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 459
    if-nez p1, :cond_0

    .line 461
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'points\' cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v2, p1

    sub-int/2addr v2, p3

    if-le p2, v2, :cond_2

    .line 465
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid range specified for \'points\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 468
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_4

    .line 470
    add-int v2, p2, v0

    aget-object v1, p1, v2

    .line 471
    .local v1, "point":Lorg/spongycastle/math/ec/ECPoint;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    if-eq p0, v2, :cond_3

    .line 473
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'points\' entries must be null or on this curve"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 468
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "point":Lorg/spongycastle/math/ec/ECPoint;
    :cond_4
    return-void
.end method

.method protected abstract cloneCurve()Lorg/spongycastle/math/ec/ECCurve;
.end method

.method public declared-synchronized configure()Lorg/spongycastle/math/ec/ECCurve$Config;
    .locals 4

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Config;

    iget v1, p0, Lorg/spongycastle/math/ec/ECCurve;->coord:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECCurve;->endomorphism:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECCurve;->multiplier:Lorg/spongycastle/math/ec/ECMultiplier;

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECCurve$Config;-><init>(Lorg/spongycastle/math/ec/ECCurve;ILorg/spongycastle/math/ec/endo/ECEndomorphism;Lorg/spongycastle/math/ec/ECMultiplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createDefaultMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->endomorphism:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    instance-of v0, v0, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v0, :cond_0

    .line 162
    new-instance v1, Lorg/spongycastle/math/ec/GLVMultiplier;

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->endomorphism:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    check-cast v0, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/math/ec/GLVMultiplier;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVEndomorphism;)V

    move-object v0, v1

    .line 165
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/WNafL2RMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/WNafL2RMultiplier;-><init>()V

    goto :goto_0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/spongycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
.end method

.method protected abstract createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;
    .locals 10
    .param p1, "encoded"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 365
    const/4 v3, 0x0

    .line 366
    .local v3, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v8

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v2, v8, 0x8

    .line 368
    .local v2, "expectedLength":I
    aget-byte v4, p1, v7

    .line 369
    .local v4, "type":B
    packed-switch v4, :pswitch_data_0

    .line 433
    :pswitch_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid point encoding 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v4, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 373
    :pswitch_1
    array-length v7, p1

    if-eq v7, v6, :cond_0

    .line 375
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Incorrect length for infinity encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 378
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 436
    :cond_1
    :goto_0
    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 438
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid infinity encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 384
    :pswitch_2
    array-length v7, p1

    add-int/lit8 v8, v2, 0x1

    if-eq v7, v8, :cond_2

    .line 386
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Incorrect length for compressed encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 389
    :cond_2
    and-int/lit8 v5, v4, 0x1

    .line 390
    .local v5, "yTilde":I
    invoke-static {p1, v6, v2}, Lorg/spongycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 392
    .local v0, "X":Ljava/math/BigInteger;
    invoke-virtual {p0, v5, v0}, Lorg/spongycastle/math/ec/ECCurve;->decompressPoint(ILjava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 393
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->satisfiesCofactor()Z

    move-result v6

    if-nez v6, :cond_1

    .line 395
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid point"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 402
    .end local v0    # "X":Ljava/math/BigInteger;
    .end local v5    # "yTilde":I
    :pswitch_3
    array-length v7, p1

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    if-eq v7, v8, :cond_3

    .line 404
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Incorrect length for uncompressed encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 407
    :cond_3
    invoke-static {p1, v6, v2}, Lorg/spongycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 408
    .restart local v0    # "X":Ljava/math/BigInteger;
    add-int/lit8 v6, v2, 0x1

    invoke-static {p1, v6, v2}, Lorg/spongycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v1

    .line 410
    .local v1, "Y":Ljava/math/BigInteger;
    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 411
    goto :goto_0

    .line 416
    .end local v0    # "X":Ljava/math/BigInteger;
    .end local v1    # "Y":Ljava/math/BigInteger;
    :pswitch_4
    array-length v8, p1

    mul-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, 0x1

    if-eq v8, v9, :cond_4

    .line 418
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Incorrect length for hybrid encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 421
    :cond_4
    invoke-static {p1, v6, v2}, Lorg/spongycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 422
    .restart local v0    # "X":Ljava/math/BigInteger;
    add-int/lit8 v8, v2, 0x1

    invoke-static {p1, v8, v2}, Lorg/spongycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v1

    .line 424
    .restart local v1    # "Y":Ljava/math/BigInteger;
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    const/4 v9, 0x7

    if-ne v4, v9, :cond_5

    :goto_1
    if-eq v8, v6, :cond_6

    .line 426
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Inconsistent Y coordinate in hybrid encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    move v6, v7

    .line 424
    goto :goto_1

    .line 429
    :cond_6
    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 430
    goto/16 :goto_0

    .line 441
    .end local v0    # "X":Ljava/math/BigInteger;
    .end local v1    # "Y":Ljava/math/BigInteger;
    :cond_7
    return-object v3

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected abstract decompressPoint(ILjava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 489
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/math/ec/ECCurve;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/spongycastle/math/ec/ECCurve;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->equals(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/spongycastle/math/ec/ECCurve;)Z
    .locals 2
    .param p1, "other"    # Lorg/spongycastle/math/ec/ECCurve;

    .prologue
    .line 480
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    .line 482
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 480
    :goto_0
    return v0

    .line 484
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
.end method

.method public getA()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->a:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getB()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->b:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getCofactor()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCoordinateSystem()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lorg/spongycastle/math/ec/ECCurve;->coord:I

    return v0
.end method

.method public getEndomorphism()Lorg/spongycastle/math/ec/endo/ECEndomorphism;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->endomorphism:Lorg/spongycastle/math/ec/endo/ECEndomorphism;

    return-object v0
.end method

.method public getField()Lorg/spongycastle/math/field/FiniteField;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->field:Lorg/spongycastle/math/field/FiniteField;

    return-object v0
.end method

.method public abstract getFieldSize()I
.end method

.method public abstract getInfinity()Lorg/spongycastle/math/ec/ECPoint;
.end method

.method public declared-synchronized getMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->multiplier:Lorg/spongycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->createDefaultMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->multiplier:Lorg/spongycastle/math/ec/ECMultiplier;

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->multiplier:Lorg/spongycastle/math/ec/ECMultiplier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/spongycastle/math/ec/PreCompInfo;
    .locals 2
    .param p1, "point"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->checkPoint(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 176
    monitor-enter p1

    .line 178
    :try_start_0
    iget-object v0, p1, Lorg/spongycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 179
    .local v0, "table":Ljava/util/Hashtable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p1

    return-object v1

    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/PreCompInfo;

    goto :goto_0

    .line 180
    .end local v0    # "table":Ljava/util/Hashtable;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 494
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 495
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lorg/spongycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 496
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/spongycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 494
    return v0
.end method

.method public importPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 4
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 211
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    if-ne p0, v1, :cond_0

    move-object v0, p1

    .end local p1    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .local v0, "p":Lorg/spongycastle/math/ec/ECPoint;
    move-object v1, p1

    .line 223
    :goto_0
    return-object v1

    .line 215
    .end local v0    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .restart local p1    # "p":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    move-object v0, p1

    .end local p1    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .restart local v0    # "p":Lorg/spongycastle/math/ec/ECPoint;
    goto :goto_0

    .line 221
    .end local v0    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .restart local p1    # "p":Lorg/spongycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    iget-boolean v3, p1, Lorg/spongycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {p0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    move-object v0, p1

    .end local p1    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .restart local v0    # "p":Lorg/spongycastle/math/ec/ECPoint;
    goto :goto_0
.end method

.method public abstract isValidFieldElement(Ljava/math/BigInteger;)Z
.end method

.method public normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 3
    .param p1, "points"    # [Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 238
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;IILorg/spongycastle/math/ec/ECFieldElement;)V

    .line 239
    return-void
.end method

.method public normalizeAll([Lorg/spongycastle/math/ec/ECPoint;IILorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 10
    .param p1, "points"    # [Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "iso"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    const/4 v9, 0x0

    .line 261
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECCurve;->checkPoints([Lorg/spongycastle/math/ec/ECPoint;II)V

    .line 263
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 279
    new-array v7, p3, [Lorg/spongycastle/math/ec/ECFieldElement;

    .line 280
    .local v7, "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    new-array v4, p3, [I

    .line 281
    .local v4, "indices":[I
    const/4 v0, 0x0

    .line 282
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 284
    add-int v8, p2, v2

    aget-object v6, p1, v8

    .line 285
    .local v6, "p":Lorg/spongycastle/math/ec/ECPoint;
    if-eqz v6, :cond_4

    if-nez p4, :cond_0

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v8

    if-nez v8, :cond_4

    .line 287
    :cond_0
    invoke-virtual {v6, v9}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    aput-object v8, v7, v1

    .line 288
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    add-int v8, p2, v2

    aput v8, v4, v1

    .line 282
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 268
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "indices":[I
    .end local v6    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .end local v7    # "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    :sswitch_0
    if-eqz p4, :cond_2

    .line 270
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "\'iso\' not valid for affine coordinates"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 292
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "indices":[I
    .restart local v7    # "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_1
    if-nez v1, :cond_3

    .line 304
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "indices":[I
    .end local v7    # "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_2
    return-void

    .line 297
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "indices":[I
    .restart local v7    # "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_3
    invoke-static {v7, v9, v1, p4}, Lorg/spongycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lorg/spongycastle/math/ec/ECFieldElement;IILorg/spongycastle/math/ec/ECFieldElement;)V

    .line 299
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v1, :cond_2

    .line 301
    aget v3, v4, v5

    .line 302
    .local v3, "index":I
    aget-object v8, p1, v3

    aget-object v9, v7, v5

    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECPoint;->normalize(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    aput-object v8, p1, v3

    .line 299
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v3    # "index":I
    .end local v5    # "j":I
    .restart local v6    # "p":Lorg/spongycastle/math/ec/ECPoint;
    :cond_4
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .line 263
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public setPreCompInfo(Lorg/spongycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/spongycastle/math/ec/PreCompInfo;)V
    .locals 2
    .param p1, "point"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "preCompInfo"    # Lorg/spongycastle/math/ec/PreCompInfo;

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;->checkPoint(Lorg/spongycastle/math/ec/ECPoint;)V

    .line 198
    monitor-enter p1

    .line 200
    :try_start_0
    iget-object v0, p1, Lorg/spongycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 201
    .local v0, "table":Ljava/util/Hashtable;
    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "table":Ljava/util/Hashtable;
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .restart local v0    # "table":Ljava/util/Hashtable;
    iput-object v0, p1, Lorg/spongycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 205
    :cond_0
    invoke-virtual {v0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit p1

    .line 207
    return-void

    .line 206
    .end local v0    # "table":Ljava/util/Hashtable;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I

    .prologue
    .line 170
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 117
    .local v0, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid point coordinates"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_0
    return-object v0
.end method

.method public validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 131
    .local v0, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid point coordinates"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_0
    return-object v0
.end method
