.class public Lorg/spongycastle/math/ec/ECPoint$F2m;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1588
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 1589
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 3
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1601
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1603
    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 1605
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 1603
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1608
    :cond_2
    if-eqz p2, :cond_3

    .line 1611
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1614
    if-eqz p1, :cond_3

    .line 1616
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1620
    :cond_3
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    .line 1623
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lorg/spongycastle/math/ec/ECFieldElement;
    .param p5, "withCompression"    # Z

    .prologue
    .line 1627
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 1629
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    .line 1632
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 48
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 1701
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1871
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :goto_0
    return-object p1

    .line 1705
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 p1, p0

    .line 1707
    goto :goto_0

    .line 1710
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v5

    .line 1711
    .local v5, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v43

    .line 1713
    .local v43, "coord":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v34, v0

    .line 1714
    .local v34, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v35, v0

    .line 1716
    .local v35, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    sparse-switch v43, :sswitch_data_0

    .line 1875
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v8, "unsupported coordinate system"

    invoke-direct {v4, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1720
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v36, v0

    .line 1721
    .local v36, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v37, v0

    .line 1723
    .local v37, "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v34 .. v35}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v44

    .local v44, "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v36 .. v37}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v45

    .line 1724
    .local v45, "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v44 .. v44}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1726
    invoke-virtual/range {v45 .. v45}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1728
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 1731
    :cond_2
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 1734
    :cond_3
    move-object/from16 v0, v45

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1736
    .local v19, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1737
    .local v6, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1739
    .local v7, "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object/from16 v0, p1

    invoke-direct {v0, v5, v6, v7, v4}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1743
    .end local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v19    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v36    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v37    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v44    # "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v45    # "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v36, v0

    .restart local v36    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v38, v4, v8

    .line 1744
    .local v38, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v37, v0

    .restart local v37    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v40, v4, v8

    .line 1746
    .local v40, "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v41

    .line 1748
    .local v41, "Z2IsOne":Z
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 1749
    .local v25, "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_4

    move-object/from16 v26, v36

    .line 1750
    .local v26, "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual/range {v25 .. v26}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 1751
    .local v24, "U":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v28

    .line 1752
    .local v28, "V1":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_5

    move-object/from16 v29, v34

    .line 1753
    .local v29, "V2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual/range {v28 .. v29}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v27

    .line 1755
    .local v27, "V":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1757
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1759
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 1749
    .end local v24    # "U":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v26    # "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v27    # "V":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v28    # "V1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v29    # "V2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_4
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    goto :goto_1

    .line 1752
    .restart local v24    # "U":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v26    # "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v28    # "V1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_5
    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    goto :goto_2

    .line 1762
    .restart local v27    # "V":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v29    # "V2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_6
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 1765
    :cond_7
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v31

    .line 1766
    .local v31, "VSq":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v30

    .line 1767
    .local v30, "VCu":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_8

    move-object/from16 v33, v38

    .line 1768
    .local v33, "W":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v47

    .line 1769
    .local v47, "uv":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v47

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1771
    .local v14, "A":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1772
    .restart local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v41, :cond_9

    move-object/from16 v32, v31

    .line 1773
    .local v32, "VSqZ2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_4
    move-object/from16 v0, v24

    move-object/from16 v1, v34

    move-object/from16 v2, v27

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v47

    invoke-virtual {v4, v0, v1, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1774
    .restart local v7    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v42

    .line 1776
    .local v42, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v4, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v8, 0x1

    new-array v8, v8, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v9, 0x0

    aput-object v42, v8, v9

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v4 .. v9}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v4

    goto/16 :goto_0

    .line 1767
    .end local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v14    # "A":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v32    # "VSqZ2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v33    # "W":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v42    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v47    # "uv":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_8
    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v33

    goto :goto_3

    .line 1772
    .restart local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v14    # "A":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v33    # "W":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v47    # "uv":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_9
    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v32

    goto :goto_4

    .line 1780
    .end local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v14    # "A":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v24    # "U":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v25    # "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v26    # "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v27    # "V":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v28    # "V1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v29    # "V2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v30    # "VCu":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v31    # "VSq":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v33    # "W":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v36    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v37    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v38    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v40    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v41    # "Z2IsOne":Z
    .end local v47    # "uv":Lorg/spongycastle/math/ec/ECFieldElement;
    :sswitch_2
    invoke-virtual/range {v34 .. v34}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1782
    invoke-virtual/range {v35 .. v35}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1784
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 1787
    :cond_a
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 1790
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v20, v0

    .local v20, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v38, v4, v8

    .line 1791
    .restart local v38    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v21, v0

    .local v21, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v40, v4, v8

    .line 1793
    .restart local v40    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v38 .. v38}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v39

    .line 1794
    .local v39, "Z1IsOne":Z
    move-object/from16 v26, v35

    .restart local v26    # "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v21

    .line 1795
    .local v23, "S2":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v39, :cond_c

    .line 1797
    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 1798
    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 1801
    :cond_c
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v41

    .line 1802
    .restart local v41    # "Z2IsOne":Z
    move-object/from16 v25, v34

    .restart local v25    # "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v20

    .line 1803
    .local v22, "S1":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v41, :cond_d

    .line 1805
    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 1806
    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 1809
    :cond_d
    invoke-virtual/range {v22 .. v23}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1810
    .restart local v14    # "A":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v25 .. v26}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1812
    .local v18, "B":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1814
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1816
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 1819
    :cond_e
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 1823
    :cond_f
    invoke-virtual/range {v35 .. v35}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1826
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v46

    .line 1827
    .local v46, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual/range {v46 .. v46}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v34

    .line 1828
    invoke-virtual/range {v46 .. v46}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 1830
    .restart local v36    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v37, v21

    .line 1831
    .restart local v37    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v36 .. v37}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1833
    .restart local v19    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1834
    .restart local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1836
    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object/from16 v0, p1

    invoke-direct {v0, v5, v6, v4, v8}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1839
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_10
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1840
    .restart local v7    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1841
    .local v11, "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    sget-object v4, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v4}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v42

    .line 1871
    .end local v7    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v19    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v36    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v37    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v46    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .restart local v42    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_11
    :goto_5
    new-instance v8, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v4, 0x1

    new-array v12, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aput-object v42, v12, v4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object v9, v5

    move-object v10, v6

    invoke-direct/range {v8 .. v13}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v8

    goto/16 :goto_0

    .line 1845
    .end local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v42    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_12
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1847
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1848
    .local v16, "AU1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1850
    .local v17, "AU2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1851
    .restart local v6    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1853
    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object/from16 v0, p1

    invoke-direct {v0, v5, v6, v4, v8}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1856
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_13
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1857
    .local v15, "ABZ2":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v41, :cond_14

    .line 1859
    move-object/from16 v0, v40

    invoke-virtual {v15, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1862
    :cond_14
    invoke-virtual/range {v17 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v4, v15, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1864
    .restart local v11    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v42, v15

    .line 1865
    .restart local v42    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v39, :cond_11

    .line 1867
    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v42

    goto :goto_5

    .line 1716
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected detach()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .prologue
    .line 1636
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getCompressionYTilde()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1676
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1677
    .local v0, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1694
    :cond_0
    :goto_0
    return v2

    .line 1682
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1684
    .local v1, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1694
    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v2

    goto :goto_0

    .line 1690
    :pswitch_0
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v3

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 1684
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 7

    .prologue
    .line 1641
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v4

    .line 1643
    .local v4, "coord":I
    packed-switch v4, :pswitch_data_0

    .line 1669
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    :cond_0
    :goto_0
    return-object v2

    .line 1648
    :pswitch_0
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v1, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1650
    .local v0, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v2, v0

    .line 1652
    goto :goto_0

    .line 1656
    :cond_2
    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1657
    .local v2, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v5, 0x6

    if-ne v5, v4, :cond_0

    .line 1659
    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v3, v5, v6

    .line 1660
    .local v3, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1662
    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    goto :goto_0

    .line 1643
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2067
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2099
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    .local v2, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_0
    :goto_0
    return-object p0

    .line 2072
    .end local v2    # "X":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 2073
    .restart local v2    # "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2078
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2103
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2082
    :pswitch_1
    iget-object v7, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 2083
    .local v7, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v7, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 2087
    .end local v7    # "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v7, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .restart local v7    # "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v8, v0, v5

    .line 2088
    .local v8, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v7, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    new-array v4, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v8, v4, v5

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 2092
    .end local v7    # "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_3
    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 2093
    .local v6, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 2098
    .end local v6    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_4
    iget-object v6, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .restart local v6    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v8, v0, v5

    .line 2099
    .restart local v8    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v6, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    new-array v4, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v8, v4, v5

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 2078
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 36

    .prologue
    .line 1882
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1981
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    .local v4, "curve":Lorg/spongycastle/math/ec/ECCurve;
    .local v18, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v30, "coord":I
    :goto_0
    return-object p0

    .line 1887
    .end local v4    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v18    # "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v30    # "coord":I
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$F2m;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 1889
    .restart local v4    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v18, v0

    .line 1890
    .restart local v18    # "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1893
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1896
    :cond_1
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v30

    .line 1898
    .restart local v30    # "coord":I
    sparse-switch v30, :sswitch_data_0

    .line 1985
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v7, "unsupported coordinate system"

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1902
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v21, v0

    .line 1904
    .local v21, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1906
    .local v13, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1907
    .local v5, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1909
    .local v6, "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/spongycastle/math/ec/ECPoint$F2m;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v3

    goto :goto_0

    .line 1913
    .end local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v13    # "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v21    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v21, v0

    .restart local v21    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v23, v3, v7

    .line 1915
    .local v23, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v24

    .line 1916
    .local v24, "Z1IsOne":Z
    if-eqz v24, :cond_2

    move-object/from16 v20, v18

    .line 1917
    .local v20, "X1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    if-eqz v24, :cond_3

    move-object/from16 v22, v21

    .line 1919
    .local v22, "Y1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1920
    .local v19, "X1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1921
    .local v15, "S":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v20

    .line 1922
    .local v17, "V":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v35

    .line 1923
    .local v35, "vSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v32

    .line 1924
    .local v32, "sv":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v15, v1, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v31

    .line 1926
    .local v31, "h":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1927
    .restart local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v3, v0, v1, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1928
    .restart local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 1930
    .local v26, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aput-object v26, v7, v8

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v3

    goto/16 :goto_0

    .line 1916
    .end local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "S":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v17    # "V":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v19    # "X1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v20    # "X1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v22    # "Y1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v26    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v31    # "h":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v32    # "sv":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v35    # "vSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    goto :goto_1

    .line 1917
    .restart local v20    # "X1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_3
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    goto :goto_2

    .line 1934
    .end local v20    # "X1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v21    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v23    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v24    # "Z1IsOne":Z
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .restart local v13    # "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v23, v3, v7

    .line 1936
    .restart local v23    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v24

    .line 1937
    .restart local v24    # "Z1IsOne":Z
    if-eqz v24, :cond_4

    move-object v14, v13

    .line 1938
    .local v14, "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_3
    if-eqz v24, :cond_5

    move-object/from16 v25, v23

    .line 1939
    .local v25, "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_4
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v27

    .line 1940
    .local v27, "a":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v24, :cond_6

    move-object/from16 v28, v27

    .line 1941
    .local v28, "aZ1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_5
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1942
    .local v16, "T":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1944
    new-instance v3, Lorg/spongycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0, v7, v8}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v3

    goto/16 :goto_0

    .line 1937
    .end local v14    # "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "T":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v25    # "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v27    # "a":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v28    # "aZ1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_4
    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    goto :goto_3

    .line 1938
    .restart local v14    # "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_5
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v25

    goto :goto_4

    .line 1940
    .restart local v25    # "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v27    # "a":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_6
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v28

    goto :goto_5

    .line 1947
    .restart local v16    # "T":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v28    # "aZ1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1948
    .restart local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v24, :cond_9

    move-object/from16 v26, v16

    .line 1950
    .restart local v26    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_6
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 1952
    .local v29, "b":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v7

    shr-int/lit8 v7, v7, 0x1

    if-ge v3, v7, :cond_c

    .line 1954
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v33

    .line 1956
    .local v33, "t1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1958
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v34

    .line 1965
    .local v34, "t2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_7
    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1966
    .local v10, "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1968
    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1981
    .end local v33    # "t1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v34    # "t2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_8
    :goto_8
    new-instance v7, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v3, 0x1

    new-array v11, v3, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v26, v11, v3

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object v8, v4

    move-object v9, v5

    invoke-direct/range {v7 .. v12}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v7

    goto/16 :goto_0

    .line 1948
    .end local v10    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v26    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v29    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_9
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    goto :goto_6

    .line 1963
    .restart local v26    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v29    # "b":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v33    # "t1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_a
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v34

    .restart local v34    # "t2":Lorg/spongycastle/math/ec/ECFieldElement;
    goto :goto_7

    .line 1970
    .restart local v10    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_b
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1972
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v10, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    goto :goto_8

    .line 1977
    .end local v10    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v33    # "t1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v34    # "t2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_c
    if-eqz v24, :cond_d

    move-object/from16 v20, v18

    .line 1978
    .restart local v20    # "X1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_9
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .restart local v10    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    goto :goto_8

    .line 1977
    .end local v10    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v20    # "X1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_d
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    goto :goto_9

    .line 1898
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 25
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 1992
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2060
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    :goto_0
    return-object p1

    .line 1996
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1998
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 2001
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 2003
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v16, v0

    .line 2004
    .local v16, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2010
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v24

    .line 2012
    .local v24, "coord":I
    packed-switch v24, :pswitch_data_0

    .line 2060
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 2017
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v18, v0

    .local v18, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v22, v2, v6

    .line 2018
    .local v22, "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2020
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$F2m;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 2023
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v10, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v20, v2, v6

    .line 2024
    .local v20, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 2026
    .local v13, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 2027
    .local v17, "X1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 2028
    .local v11, "L1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 2029
    .local v21, "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 2031
    .local v12, "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 2032
    .local v15, "T":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 2033
    .local v14, "L2plus1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v2, v15, v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 2034
    .local v8, "A":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 2035
    .local v19, "X2Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 2037
    .local v9, "B":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2039
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2041
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 2044
    :cond_5
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 2047
    :cond_6
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2049
    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$F2m;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object/from16 v0, p1

    invoke-direct {v0, v3, v8, v2, v6}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 2052
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_7
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 2053
    .local v4, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 2054
    .local v23, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v15, v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 2056
    .local v5, "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$F2m;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v23, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$F2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v2

    goto/16 :goto_0

    .line 2012
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
