.class public Lorg/spongycastle/math/ec/ECPoint$Fp;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 616
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

    .line 630
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 632
    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 632
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 637
    :cond_2
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    .line 638
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
    .line 642
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 644
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    .line 645
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 52
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 665
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v3, p1

    .line 871
    :goto_0
    return-object v3

    .line 669
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v3, p0

    .line 671
    goto :goto_0

    .line 673
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 675
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0

    .line 678
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 679
    .local v4, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v38

    .line 681
    .local v38, "coord":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v24, v0

    .local v24, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v26, v0

    .line 682
    .local v26, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v25, v0

    .local v25, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v27, v0

    .line 684
    .local v27, "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    packed-switch v38, :pswitch_data_0

    .line 876
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v8, "unsupported coordinate system"

    invoke-direct {v3, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 688
    :pswitch_1
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v39

    .local v39, "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v40

    .line 690
    .local v40, "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 692
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 695
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0

    .line 699
    :cond_3
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0

    .line 702
    :cond_4
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v41

    .line 703
    .local v41, "gamma":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v41 .. v41}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 704
    .local v5, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 706
    .local v6, "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v3, v4, v5, v6, v8}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 711
    .end local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v39    # "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v40    # "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v41    # "gamma":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v28, v3, v8

    .line 712
    .local v28, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v32, v3, v8

    .line 714
    .local v32, "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v30

    .line 715
    .local v30, "Z1IsOne":Z
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v34

    .line 717
    .local v34, "Z2IsOne":Z
    if-eqz v30, :cond_5

    move-object/from16 v43, v27

    .line 718
    .local v43, "u1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    if-eqz v34, :cond_6

    move-object/from16 v44, v26

    .line 719
    .local v44, "u2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual/range {v43 .. v44}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v42

    .line 720
    .local v42, "u":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v30, :cond_7

    move-object/from16 v46, v25

    .line 721
    .local v46, "v1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_3
    if-eqz v34, :cond_8

    move-object/from16 v47, v24

    .line 722
    .local v47, "v2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_4
    invoke-virtual/range {v46 .. v47}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v45

    .line 725
    .local v45, "v":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v45 .. v45}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 727
    invoke-virtual/range {v42 .. v42}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 730
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 717
    .end local v42    # "u":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v43    # "u1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v44    # "u2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v45    # "v":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v46    # "v1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v47    # "v2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_5
    invoke-virtual/range {v27 .. v28}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v43

    goto :goto_1

    .line 718
    .restart local v43    # "u1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_6
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v44

    goto :goto_2

    .line 720
    .restart local v42    # "u":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v44    # "u2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_7
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v46

    goto :goto_3

    .line 721
    .restart local v46    # "v1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_8
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v47

    goto :goto_4

    .line 734
    .restart local v45    # "v":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v47    # "v2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_9
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 738
    :cond_a
    if-eqz v30, :cond_b

    move-object/from16 v51, v32

    .line 739
    .local v51, "w":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_5
    invoke-virtual/range {v45 .. v45}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v49

    .line 740
    .local v49, "vSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v49

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v48

    .line 741
    .local v48, "vCubed":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v50

    .line 742
    .local v50, "vSquaredV2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v42 .. v42}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 744
    .local v9, "A":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 745
    .restart local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v50

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v48

    invoke-virtual {v3, v0, v1, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 746
    .restart local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v48

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 748
    .local v36, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v8, 0x1

    new-array v7, v8, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aput-object v36, v7, v8

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 738
    .end local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "A":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v36    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v48    # "vCubed":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v49    # "vSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v50    # "vSquaredV2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v51    # "w":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_b
    if-eqz v34, :cond_c

    move-object/from16 v51, v28

    goto :goto_5

    :cond_c
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v51

    goto :goto_5

    .line 754
    .end local v28    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v30    # "Z1IsOne":Z
    .end local v32    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v42    # "u":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v43    # "u1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v44    # "u2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v45    # "v":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v46    # "v1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v47    # "v2":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v28, v3, v8

    .line 755
    .restart local v28    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v32, v3, v8

    .line 757
    .restart local v32    # "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v30

    .line 759
    .restart local v30    # "Z1IsOne":Z
    const/16 v37, 0x0

    .line 761
    .local v37, "Z3Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v30, :cond_10

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 765
    invoke-virtual/range {v24 .. v25}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v39

    .restart local v39    # "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v27}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v40

    .line 766
    .restart local v40    # "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 768
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 770
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 772
    :cond_d
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 775
    :cond_e
    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 776
    .local v11, "C":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .local v21, "W1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 777
    .local v22, "W2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v21 .. v22}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 779
    .local v10, "A1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 780
    .restart local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 781
    .restart local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v36, v39

    .line 783
    .restart local v36    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 859
    .end local v10    # "A1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "C":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v21    # "W1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v22    # "W2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v39    # "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v40    # "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_f
    :goto_6
    const/4 v3, 0x4

    move/from16 v0, v38

    if-ne v0, v3, :cond_17

    .line 862
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 864
    .local v23, "W3":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v3, 0x2

    new-array v7, v3, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v36, v7, v3

    const/4 v3, 0x1

    aput-object v23, v7, v3

    .line 871
    .end local v23    # "W3":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v7, "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_7
    new-instance v3, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 788
    .end local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v36    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_10
    if-eqz v30, :cond_11

    .line 790
    move-object/from16 v31, v28

    .local v31, "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v25

    .local v19, "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v27

    .line 800
    .local v17, "S2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_8
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v34

    .line 802
    .restart local v34    # "Z2IsOne":Z
    if-eqz v34, :cond_12

    .line 804
    move-object/from16 v35, v32

    .local v35, "Z2Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v18, v24

    .local v18, "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v16, v26

    .line 814
    .local v16, "S1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_9
    invoke-virtual/range {v18 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 815
    .local v13, "H":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 818
    .local v15, "R":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 820
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 823
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 794
    .end local v13    # "H":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "R":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "S1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v17    # "S2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v18    # "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v19    # "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v31    # "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v35    # "Z2Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_11
    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v31

    .line 795
    .restart local v31    # "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 796
    .restart local v19    # "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 797
    .local v29, "Z1Cubed":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .restart local v17    # "S2":Lorg/spongycastle/math/ec/ECFieldElement;
    goto :goto_8

    .line 808
    .end local v29    # "Z1Cubed":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v34    # "Z2IsOne":Z
    :cond_12
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v35

    .line 809
    .restart local v35    # "Z2Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 810
    .restart local v18    # "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v33

    .line 811
    .local v33, "Z2Cubed":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .restart local v16    # "S1":Lorg/spongycastle/math/ec/ECFieldElement;
    goto :goto_9

    .line 827
    .end local v33    # "Z2Cubed":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v13    # "H":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v15    # "R":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_13
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto/16 :goto_0

    .line 830
    :cond_14
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 831
    .local v14, "HSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 832
    .local v12, "G":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 834
    .local v20, "V":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 835
    .restart local v5    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v12, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 837
    .restart local v6    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v36, v13

    .line 838
    .restart local v36    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v30, :cond_15

    .line 840
    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 842
    :cond_15
    if-nez v34, :cond_16

    .line 844
    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 852
    :cond_16
    move-object/from16 v0, v36

    if-ne v0, v13, :cond_f

    .line 854
    move-object/from16 v37, v14

    goto/16 :goto_6

    .line 868
    .end local v12    # "G":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v13    # "H":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v14    # "HSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "R":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "S1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v17    # "S2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v18    # "U1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v19    # "U2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v20    # "V":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v31    # "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v35    # "Z2Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_17
    const/4 v3, 0x1

    new-array v7, v3, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v36, v7, v3

    .restart local v7    # "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    goto/16 :goto_7

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "Z"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "ZSquared"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1291
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1292
    .local v1, "a4":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 1312
    :goto_0
    return-object v0

    .line 1297
    :cond_1
    if-nez p2, :cond_2

    .line 1299
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 1302
    :cond_2
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1303
    .local v0, "W":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1304
    .local v2, "a4Neg":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1306
    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0

    .line 1310
    :cond_3
    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0
.end method

.method protected detach()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .prologue
    .line 649
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected doubleProductFromSquares(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "a"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p2, "b"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "aSquared"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p4, "bSquared"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1268
    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected eight(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1258
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1253
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected getJacobianModifiedW()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1317
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v0, v1, v4

    .line 1318
    .local v0, "W":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v0, :cond_0

    .line 1321
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    aput-object v0, v1, v4

    .line 1323
    :cond_0
    return-object v0
.end method

.method public getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 654
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurveCoordinateSystem()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 656
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 659
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    .prologue
    .line 1273
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$Fp;
    .local v1, "curve":Lorg/spongycastle/math/ec/ECCurve;
    .local v6, "coord":I
    :goto_0
    return-object p0

    .line 1278
    .end local v1    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v6    # "coord":I
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$Fp;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 1279
    .restart local v1    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v6

    .line 1281
    .restart local v6    # "coord":I
    if-eqz v6, :cond_1

    .line 1283
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 1286
    :cond_1
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method protected three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1248
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public threeTimes()Lorg/spongycastle/math/ec/ECPoint;
    .locals 19

    .prologue
    .line 1093
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1140
    .end local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$Fp;
    .local v10, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v14, "coord":I
    .local v15, "curve":Lorg/spongycastle/math/ec/ECCurve;
    :cond_0
    :goto_0
    return-object p0

    .line 1098
    .end local v10    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v14    # "coord":I
    .end local v15    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .restart local p0    # "this":Lorg/spongycastle/math/ec/ECPoint$Fp;
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1099
    .restart local v10    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v15

    .line 1105
    .restart local v15    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v14

    .line 1107
    .restart local v14    # "coord":I
    sparse-switch v14, :sswitch_data_0

    .line 1140
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1111
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1113
    .local v7, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1114
    .local v13, "_2Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1115
    .local v6, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1116
    .local v12, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1118
    .local v9, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1119
    .local v16, "d":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 1124
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1125
    .local v2, "D":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1126
    .local v3, "I":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1127
    .local v4, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1129
    .local v5, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    invoke-virtual {v4, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1130
    .local v8, "X4":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1131
    .local v11, "Y4":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v17, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v15, v8, v11, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v17

    goto/16 :goto_0

    .line 1135
    .end local v2    # "D":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v3    # "I":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v4    # "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "X":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "X4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "Y4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v12    # "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v13    # "_2Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "d":Lorg/spongycastle/math/ec/ECFieldElement;
    :sswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto/16 :goto_0

    .line 1107
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;
    .locals 24
    .param p1, "e"    # I

    .prologue
    .line 1147
    if-gez p1, :cond_0

    .line 1149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "\'e\' cannot be negative"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1151
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object/from16 v2, p0

    .line 1235
    :goto_0
    return-object v2

    .line 1155
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    .line 1160
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 1162
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1163
    .local v5, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1165
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    .line 1168
    :cond_4
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v18

    .line 1170
    .local v18, "coord":I
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1171
    .local v10, "W1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1172
    .local v4, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    array-length v2, v2

    const/4 v6, 0x1

    if-ge v2, v6, :cond_5

    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1174
    .local v12, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1176
    packed-switch v18, :pswitch_data_0

    .line 1193
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "unsupported coordinate system"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1172
    .end local v12    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v12, v2, v6

    goto :goto_1

    .line 1181
    .restart local v12    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_1
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1182
    .local v13, "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1183
    invoke-virtual {v5, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1184
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/spongycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1197
    .end local v13    # "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_6
    :goto_2
    :pswitch_2
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_a

    .line 1199
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1201
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    .line 1187
    .end local v19    # "i":I
    :pswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1188
    goto :goto_2

    .line 1190
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1191
    goto :goto_2

    .line 1204
    .restart local v19    # "i":I
    :cond_7
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1205
    .local v11, "X1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1206
    .local v8, "M":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1207
    .local v14, "_2Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1208
    .local v15, "_2Y1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1209
    .local v9, "S":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1210
    .local v16, "_4T":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1212
    .local v17, "_8T":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1214
    invoke-virtual {v8, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1215
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1218
    :cond_8
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1219
    invoke-virtual {v9, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1220
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v12, v14

    .line 1197
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 1220
    :cond_9
    invoke-virtual {v14, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    goto :goto_4

    .line 1223
    .end local v8    # "M":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "S":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "X1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v14    # "_2Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "_2Y1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "_4T":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v17    # "_8T":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_a
    packed-switch v18, :pswitch_data_1

    .line 1237
    :pswitch_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "unsupported coordinate system"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1226
    :pswitch_6
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .local v20, "zInv":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .local v21, "zInv2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 1227
    .local v22, "zInv3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-direct {v2, v3, v6, v7, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1229
    .end local v20    # "zInv":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v21    # "zInv2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v22    # "zInv3":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_7
    invoke-virtual {v4, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1230
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v12, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1231
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1233
    :pswitch_8
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1235
    :pswitch_9
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    const/4 v7, 0x1

    aput-object v10, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 1223
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 33

    .prologue
    .line 884
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v2, p0

    .line 1004
    :goto_0
    return-object v2

    .line 889
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 891
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 892
    .local v14, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 894
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    .line 897
    :cond_1
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v27

    .line 899
    .local v27, "coord":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 901
    .local v12, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    packed-switch v27, :pswitch_data_0

    .line 1009
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "unsupported coordinate system"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 905
    :pswitch_1
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 906
    .local v13, "X1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v28

    .line 907
    .local v28, "gamma":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 908
    .local v4, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 910
    .local v5, "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto :goto_0

    .line 915
    .end local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v13    # "X1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v28    # "gamma":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v16, v2, v6

    .line 917
    .local v16, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v17

    .line 920
    .local v17, "Z1IsOne":Z
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v32

    .line 921
    .local v32, "w":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v17, :cond_2

    .line 923
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v32

    .line 925
    :cond_2
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v32

    .line 927
    if-eqz v17, :cond_3

    move-object/from16 v30, v14

    .line 928
    .local v30, "s":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    if-eqz v17, :cond_4

    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v31

    .line 929
    .local v31, "t":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_2
    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 930
    .local v8, "B":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECPoint$Fp;->four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 931
    .local v23, "_4B":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 933
    .local v29, "h":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 934
    .local v21, "_2s":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 935
    .restart local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 936
    .local v22, "_2t":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 937
    .restart local v5    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 938
    .local v24, "_4sSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 940
    .local v20, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 927
    .end local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "B":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v20    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v21    # "_2s":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v22    # "_2t":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v23    # "_4B":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v24    # "_4sSquared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v29    # "h":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v30    # "s":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v31    # "t":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v30

    goto/16 :goto_1

    .line 928
    .restart local v30    # "s":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_4
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v31

    goto/16 :goto_2

    .line 937
    .restart local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v5    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v8    # "B":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v21    # "_2s":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v22    # "_2t":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v23    # "_4B":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v29    # "h":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v31    # "t":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    goto :goto_3

    .line 945
    .end local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "B":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v17    # "Z1IsOne":Z
    .end local v21    # "_2s":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v22    # "_2t":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v23    # "_4B":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v29    # "h":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v30    # "s":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v31    # "t":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v32    # "w":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v16, v2, v6

    .line 947
    .restart local v16    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v17

    .line 949
    .restart local v17    # "Z1IsOne":Z
    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 950
    .local v15, "Y1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 952
    .local v11, "T":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 953
    .local v25, "a4":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 956
    .local v26, "a4Neg":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 958
    if-eqz v17, :cond_7

    move-object/from16 v19, v16

    .line 959
    .local v19, "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 960
    .local v9, "M":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 987
    .end local v19    # "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v10, "S":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_5
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 988
    .restart local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECPoint$Fp;->eight(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 990
    .restart local v5    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 991
    .restart local v20    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-nez v17, :cond_6

    .line 993
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 999
    :cond_6
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 958
    .end local v4    # "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "M":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v10    # "S":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v20    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    goto :goto_4

    .line 964
    :cond_8
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 965
    .restart local v13    # "X1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 966
    .restart local v9    # "M":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v17, :cond_a

    .line 968
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 984
    :cond_9
    :goto_6
    invoke-virtual {v12, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .restart local v10    # "S":Lorg/spongycastle/math/ec/ECFieldElement;
    goto :goto_5

    .line 970
    .end local v10    # "S":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_a
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_9

    .line 972
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 973
    .restart local v19    # "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 974
    .local v18, "Z1Pow4":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v26}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v2

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v6

    if-ge v2, v6, :cond_b

    .line 976
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    goto :goto_6

    .line 980
    :cond_b
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v9, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    goto :goto_6

    .line 1004
    .end local v9    # "M":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "T":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v13    # "X1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v15    # "Y1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v17    # "Z1IsOne":Z
    .end local v18    # "Z1Pow4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v19    # "Z1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v25    # "a4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v26    # "a4Neg":Lorg/spongycastle/math/ec/ECFieldElement;
    :pswitch_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-result-object v2

    goto/16 :goto_0

    .line 901
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected twiceJacobianModified(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;
    .locals 21
    .param p1, "calculateW"    # Z

    .prologue
    .line 1328
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v12, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v14, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v15, v2, v3

    .local v15, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1330
    .local v10, "W1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1331
    .local v13, "X1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1332
    .local v8, "M":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1333
    .local v17, "_2Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1334
    .local v18, "_2Y1Squared":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1335
    .local v9, "S":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1336
    .local v4, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1337
    .local v19, "_4T":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 1338
    .local v20, "_8T":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1339
    .local v5, "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz p1, :cond_0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1340
    .local v11, "W3":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v16, v17

    .line 1342
    .local v16, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    const/4 v7, 0x1

    aput-object v11, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v2

    .line 1339
    .end local v11    # "W3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 1340
    .restart local v11    # "W3":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    goto :goto_1
.end method

.method public twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 21
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 1016
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 1018
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->threeTimes()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 1086
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    :goto_0
    return-object p1

    .line 1020
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1024
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1026
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 1029
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1030
    .local v11, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-nez v19, :cond_0

    .line 1035
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v15

    .line 1036
    .local v15, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v14

    .line 1038
    .local v14, "coord":I
    sparse-switch v14, :sswitch_data_0

    .line 1086
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 1042
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1043
    .local v7, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v8, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1045
    .local v12, "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .local v17, "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1047
    .local v18, "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1049
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1052
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->threeTimes()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object/from16 p1, p0

    .line 1056
    goto :goto_0

    .line 1064
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .local v6, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1065
    .local v10, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1066
    .local v16, "d":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1068
    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 1071
    :cond_5
    invoke-virtual/range {v16 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1072
    .local v2, "D":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1073
    .local v3, "I":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1074
    .local v4, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1075
    .local v5, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    invoke-virtual {v4, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1076
    .local v9, "X4":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1078
    .local v13, "Y4":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance p1, Lorg/spongycastle/math/ec/ECPoint$Fp;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-direct {v0, v15, v9, v13, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 1082
    .end local v2    # "D":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v3    # "I":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v4    # "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "X":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "X4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v10    # "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v12    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v13    # "Y4":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v16    # "d":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v17    # "dx":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v18    # "dy":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :sswitch_1
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 1038
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method protected two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 1243
    invoke-virtual {p1, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
