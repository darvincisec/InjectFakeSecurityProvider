.class public abstract Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
.super Lorg/spongycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1350
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1351
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1355
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1356
    return-void
.end method


# virtual methods
.method protected satisfiesCurveEquation()Z
    .locals 18

    .prologue
    .line 1360
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v13

    .line 1361
    .local v13, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v4, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "A":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1363
    .local v2, "B":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v12

    .line 1364
    .local v12, "coord":I
    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v12, v0, :cond_3

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v7, v16, v17

    .line 1367
    .local v7, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v11

    .line 1369
    .local v11, "ZIsOne":Z
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1372
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1373
    .local v6, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .local v14, "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object v15, v2

    .line 1374
    .local v15, "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v11, :cond_0

    .line 1376
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1378
    :cond_0
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 1423
    .end local v6    # "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "ZIsOne":Z
    :goto_0
    return v16

    .line 1381
    .end local v14    # "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v7    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v11    # "ZIsOne":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v3, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1383
    .local v5, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v11, :cond_2

    .line 1385
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1386
    .restart local v14    # "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1395
    .restart local v15    # "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual {v14, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1396
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    goto :goto_0

    .line 1390
    .end local v14    # "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_2
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1391
    .local v10, "Z4":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v1, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1393
    .restart local v14    # "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v2, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .restart local v15    # "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    goto :goto_1

    .line 1399
    .end local v3    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v10    # "Z4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "ZIsOne":Z
    .end local v14    # "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1400
    .restart local v6    # "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1402
    .restart local v14    # "lhs":Lorg/spongycastle/math/ec/ECFieldElement;
    packed-switch v12, :pswitch_data_0

    .line 1419
    new-instance v16, Ljava/lang/IllegalStateException;

    const-string v17, "unsupported coordinate system"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1408
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v7, v16, v17

    .line 1409
    .restart local v7    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v16

    if-nez v16, :cond_4

    .line 1411
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .restart local v8    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1412
    .local v9, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1413
    invoke-virtual {v1, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1414
    invoke-virtual {v2, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1422
    .end local v7    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_4
    :pswitch_1
    invoke-virtual {v4, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1423
    .restart local v15    # "rhs":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    goto/16 :goto_0

    .line 1402
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scaleX(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 10
    .param p1, "scale"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    const/4 v9, 0x0

    .line 1428
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1461
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
    :goto_0
    return-object p0

    .line 1433
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getCurveCoordinateSystem()I

    move-result v6

    .line 1435
    .local v6, "coord":I
    packed-switch v6, :pswitch_data_0

    .line 1461
    invoke-super {p0, p1}, Lorg/spongycastle/math/ec/ECPoint;->scaleX(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1440
    :pswitch_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1442
    .local v0, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1443
    .local v3, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1445
    .local v1, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    iget-boolean v9, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v7, v2, v1, v8, v9}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1450
    .end local v0    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v1    # "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v2    # "X":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v3    # "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .restart local v2    # "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .restart local v0    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    aget-object v4, v7, v9

    .line 1453
    .local v4, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1454
    .restart local v3    # "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1455
    .restart local v1    # "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1457
    .local v5, "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v5, v8, v9

    iget-boolean v9, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v7, v3, v1, v8, v9}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1435
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scaleY(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 7
    .param p1, "scale"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1468
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1489
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
    :goto_0
    return-object p0

    .line 1473
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getCurveCoordinateSystem()I

    move-result v3

    .line 1475
    .local v3, "coord":I
    packed-switch v3, :pswitch_data_0

    .line 1489
    invoke-super {p0, p1}, Lorg/spongycastle/math/ec/ECPoint;->scaleY(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1480
    :pswitch_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1483
    .local v0, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1485
    .local v1, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v4, v2, v1, v5, v6}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1475
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 1496
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0
.end method

.method public tau()Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1507
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, p0

    .line 1529
    :goto_0
    return-object v5

    .line 1512
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 1513
    .local v4, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 1515
    .local v3, "coord":I
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1517
    .local v0, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    packed-switch v3, :pswitch_data_0

    .line 1534
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "unsupported coordinate system"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1522
    :pswitch_1
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1523
    .local v1, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-boolean v7, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v4, v5, v6, v7}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;

    goto :goto_0

    .line 1528
    .end local v1    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .restart local v1    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v2, v5, v9

    .line 1529
    .local v2, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1530
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    aput-object v8, v7, v9

    iget-boolean v8, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    .line 1529
    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;

    goto :goto_0

    .line 1517
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public tauPow(I)Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
    .locals 10
    .param p1, "pow"    # I

    .prologue
    const/4 v9, 0x0

    .line 1541
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, p0

    .line 1563
    :goto_0
    return-object v5

    .line 1546
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 1547
    .local v4, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 1549
    .local v3, "coord":I
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1551
    .local v0, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    packed-switch v3, :pswitch_data_0

    .line 1568
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "unsupported coordinate system"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1556
    :pswitch_1
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1557
    .local v1, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePow(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePow(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-boolean v7, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v4, v5, v6, v7}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;

    goto :goto_0

    .line 1562
    .end local v1    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .restart local v1    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v2, v5, v9

    .line 1563
    .local v2, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePow(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePow(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1564
    invoke-virtual {v2, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePow(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    aput-object v8, v7, v9

    iget-boolean v8, p0, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    .line 1563
    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/spongycastle/math/ec/ECCurve;->createRawPoint(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;

    goto :goto_0

    .line 1551
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
