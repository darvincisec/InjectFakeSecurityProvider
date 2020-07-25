.class public Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
.source "SecT571R1Point.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 19
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

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 28
    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 28
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 33
    :cond_2
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    .line 34
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
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 40
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    .line 41
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 36
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 85
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :goto_0
    return-object p1

    .line 89
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 p1, p0

    .line 91
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 96
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v20, v0

    check-cast v20, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 97
    .local v20, "X1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    check-cast v21, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 99
    .local v21, "X2":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 106
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 109
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v14, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .local v14, "L1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v25, v2, v6

    check-cast v25, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 110
    .local v25, "Z1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .local v15, "L2":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v27

    check-cast v27, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 112
    .local v27, "Z2":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v31

    .line 113
    .local v31, "t1":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v32

    .line 114
    .local v32, "t2":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v33

    .line 115
    .local v33, "t3":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v34

    .line 117
    .local v34, "t4":[J
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v26, 0x0

    .line 119
    .local v26, "Z1Precomp":[J
    :goto_1
    if-nez v26, :cond_5

    .line 121
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v19, v0

    .line 122
    .local v19, "U2":[J
    iget-object v0, v15, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v17, v0

    .line 130
    .local v17, "S2":[J
    :goto_2
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v28, 0x0

    .line 132
    .local v28, "Z2Precomp":[J
    :goto_3
    if-nez v28, :cond_7

    .line 134
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v18, v0

    .line 135
    .local v18, "U1":[J
    iget-object v0, v14, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v16, v0

    .line 143
    .local v16, "S1":[J
    :goto_4
    move-object/from16 v8, v33

    .line 144
    .local v8, "A":[J
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 146
    move-object/from16 v12, v34

    .line 147
    .local v12, "B":[J
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 149
    invoke-static {v12}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 151
    invoke-static {v8}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 153
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 117
    .end local v8    # "A":[J
    .end local v12    # "B":[J
    .end local v16    # "S1":[J
    .end local v17    # "S2":[J
    .end local v18    # "U1":[J
    .end local v19    # "U2":[J
    .end local v26    # "Z1Precomp":[J
    .end local v28    # "Z2Precomp":[J
    :cond_4
    move-object/from16 v0, v25

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v26

    goto :goto_1

    .line 126
    .restart local v26    # "Z1Precomp":[J
    :cond_5
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v19, v32

    .restart local v19    # "U2":[J
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 127
    iget-object v2, v15, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v17, v34

    .restart local v17    # "S2":[J
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    goto :goto_2

    .line 130
    :cond_6
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v28

    goto :goto_3

    .line 139
    .restart local v28    # "Z2Precomp":[J
    :cond_7
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v18, v31

    .restart local v18    # "U1":[J
    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 140
    iget-object v2, v14, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v16, v33

    .restart local v16    # "S1":[J
    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    goto :goto_4

    .line 156
    .restart local v8    # "A":[J
    .restart local v12    # "B":[J
    :cond_8
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 160
    :cond_9
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 163
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v30

    .line 164
    .local v30, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .end local v20    # "X1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    check-cast v20, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 165
    .restart local v20    # "X1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 167
    .local v22, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v15

    .line 168
    .local v23, "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v22 .. v23}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 170
    .local v13, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 171
    .local v4, "X3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 173
    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    move-object/from16 v0, p1

    invoke-direct {v0, v3, v4, v2, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 176
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_a
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 177
    .local v24, "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 178
    .local v5, "L3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    check-cast v29, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 225
    .end local v13    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v22    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v23    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v24    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v30    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .local v29, "Z3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    :cond_b
    :goto_5
    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v29, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v2

    goto/16 :goto_0

    .line 182
    .end local v4    # "X3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v5    # "L3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v29    # "Z3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    :cond_c
    invoke-static {v12, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 184
    invoke-static {v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v9

    .line 186
    .local v9, "APrecomp":[J
    move-object/from16 v10, v31

    .line 187
    .local v10, "AU1":[J
    move-object/from16 v11, v32

    .line 189
    .local v11, "AU2":[J
    move-object/from16 v0, v18

    invoke-static {v0, v9, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 190
    move-object/from16 v0, v19

    invoke-static {v0, v9, v11}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 192
    new-instance v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object/from16 v0, v31

    invoke-direct {v4, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 193
    .restart local v4    # "X3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v2, v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v10, v11, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 195
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 197
    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    sget-object v2, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    move-object/from16 v0, p1

    invoke-direct {v0, v3, v4, v2, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 200
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_d
    new-instance v29, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 201
    .restart local v29    # "Z3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v12, v9, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 203
    if-eqz v28, :cond_e

    .line 205
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v29

    iget-object v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v28

    invoke-static {v2, v0, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 208
    :cond_e
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v35

    .line 210
    .local v35, "tt":[J
    move-object/from16 v0, v34

    invoke-static {v11, v12, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 211
    invoke-static/range {v34 .. v35}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareAddToExt([J[J)V

    .line 213
    iget-object v2, v14, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v25

    iget-object v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v34

    invoke-static {v2, v6, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 214
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 216
    new-instance v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object/from16 v0, v34

    invoke-direct {v5, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 217
    .restart local v5    # "L3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v2, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 219
    if-eqz v26, :cond_b

    .line 221
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v29

    iget-object v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v26

    invoke-static {v2, v0, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    goto/16 :goto_5
.end method

.method protected detach()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getCompressionYTilde()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 72
    .local v0, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v2

    .line 77
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 80
    .local v1, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v3

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 6

    .prologue
    .line 50
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v1, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 52
    .local v0, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v2, v0

    .line 66
    :cond_1
    :goto_0
    return-object v2

    .line 58
    :cond_2
    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 60
    .local v2, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v4, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 61
    .local v3, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v4

    if-nez v4, :cond_1

    .line 63
    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    goto :goto_0
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 406
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;
    :cond_0
    :goto_0
    return-object p0

    .line 411
    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 412
    .local v2, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v6, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v6, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v7, v0, v5

    .line 419
    .local v7, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v7, v4, v5

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 21

    .prologue
    .line 230
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    .local v8, "L1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v9, "L1Z1":[J
    .local v10, "T":[J
    .local v11, "X1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v13, "Z1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    .local v14, "Z1Precomp":[J
    .local v15, "Z1Sq":[J
    .local v17, "t1":[J
    .local v18, "t2":[J
    :goto_0
    return-object p0

    .line 235
    .end local v3    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v8    # "L1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v9    # "L1Z1":[J
    .end local v10    # "T":[J
    .end local v11    # "X1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v13    # "Z1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v14    # "Z1Precomp":[J
    .end local v15    # "Z1Sq":[J
    .end local v17    # "t1":[J
    .end local v18    # "t2":[J
    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 237
    .restart local v3    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v11, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 238
    .restart local v11    # "X1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 244
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v8, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .restart local v8    # "L1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v13, v2, v6

    check-cast v13, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 246
    .restart local v13    # "Z1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v17

    .line 247
    .restart local v17    # "t1":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v18

    .line 249
    .restart local v18    # "t2":[J
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v14, 0x0

    .line 251
    .restart local v14    # "Z1Precomp":[J
    :goto_1
    if-nez v14, :cond_3

    .line 253
    iget-object v9, v8, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .line 254
    .restart local v9    # "L1Z1":[J
    iget-object v15, v13, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .line 262
    .restart local v15    # "Z1Sq":[J
    :goto_2
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v10

    .line 263
    .restart local v10    # "T":[J
    iget-object v2, v8, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v2, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 264
    invoke-static {v9, v15, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->addBothTo([J[J[J)V

    .line 266
    invoke-static {v10}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 268
    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    new-instance v6, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v6, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    sget-object v7, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v2, v3, v6, v7, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v2

    goto :goto_0

    .line 249
    .end local v9    # "L1Z1":[J
    .end local v10    # "T":[J
    .end local v14    # "Z1Precomp":[J
    .end local v15    # "Z1Sq":[J
    :cond_2
    iget-object v2, v13, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v14

    goto :goto_1

    .line 258
    .restart local v14    # "Z1Precomp":[J
    :cond_3
    iget-object v2, v8, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v9, v17

    .restart local v9    # "L1Z1":[J
    move-object/from16 v0, v17

    invoke-static {v2, v14, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 259
    iget-object v2, v13, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v15, v18

    .restart local v15    # "Z1Sq":[J
    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    goto :goto_2

    .line 271
    .restart local v10    # "T":[J
    :cond_4
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v19

    .line 272
    .local v19, "tt":[J
    move-object/from16 v0, v19

    invoke-static {v10, v9, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 274
    new-instance v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 275
    .local v4, "X3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v2, v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v10, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 277
    new-instance v16, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 278
    .local v16, "Z3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    if-eqz v14, :cond_5

    .line 280
    move-object/from16 v0, v16

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v16

    iget-object v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v2, v15, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 284
    :cond_5
    if-nez v14, :cond_6

    .line 286
    iget-object v12, v11, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .line 293
    .local v12, "X1Z1":[J
    :goto_3
    move-object/from16 v0, v19

    invoke-static {v12, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareAddToExt([J[J)V

    .line 294
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 295
    iget-object v2, v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v16

    iget-object v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v18

    invoke-static {v2, v6, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->addBothTo([J[J[J)V

    .line 296
    new-instance v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 298
    .local v5, "L3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v2

    goto/16 :goto_0

    .line 290
    .end local v5    # "L3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v12    # "X1Z1":[J
    :cond_6
    iget-object v2, v11, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v12, v18

    .restart local v12    # "X1Z1":[J
    move-object/from16 v0, v18

    invoke-static {v2, v14, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    goto :goto_3
.end method

.method public twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 30
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 303
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    :goto_0
    return-object p1

    .line 307
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 314
    .local v4, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v16, v0

    check-cast v16, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 315
    .local v16, "X1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v3

    if-nez v3, :cond_0

    .line 321
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    check-cast v18, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .local v18, "X2":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    check-cast v23, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 322
    .local v23, "Z2":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v3

    if-nez v3, :cond_4

    .line 324
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 327
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v11, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .local v11, "L1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v20, v3, v7

    check-cast v20, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 328
    .local v20, "Z1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    check-cast v14, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 330
    .local v14, "L2":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v25

    .line 331
    .local v25, "t1":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v26

    .line 332
    .local v26, "t2":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v27

    .line 333
    .local v27, "t3":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v28

    .line 335
    .local v28, "t4":[J
    move-object/from16 v17, v25

    .line 336
    .local v17, "X1Sq":[J
    move-object/from16 v0, v16

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 338
    move-object/from16 v12, v26

    .line 339
    .local v12, "L1Sq":[J
    iget-object v3, v11, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v3, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 341
    move-object/from16 v21, v27

    .line 342
    .local v21, "Z1Sq":[J
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 344
    move-object/from16 v13, v28

    .line 345
    .local v13, "L1Z1":[J
    iget-object v3, v11, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v20

    iget-object v7, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v3, v7, v13}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 347
    move-object v15, v13

    .line 348
    .local v15, "T":[J
    move-object/from16 v0, v21

    invoke-static {v0, v12, v15}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->addBothTo([J[J[J)V

    .line 350
    invoke-static/range {v21 .. v21}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v22

    .line 352
    .local v22, "Z1SqPrecomp":[J
    move-object/from16 v9, v27

    .line 353
    .local v9, "A":[J
    iget-object v3, v14, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v22

    invoke-static {v3, v0, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 354
    invoke-static {v9, v12, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 356
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v29

    .line 357
    .local v29, "tt":[J
    move-object/from16 v0, v29

    invoke-static {v9, v15, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 358
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecompAddToExt([J[J[J)V

    .line 359
    move-object/from16 v0, v29

    invoke-static {v0, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 361
    move-object/from16 v19, v25

    .line 362
    .local v19, "X2Z1Sq":[J
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v3, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 364
    move-object/from16 v10, v26

    .line 365
    .local v10, "B":[J
    move-object/from16 v0, v19

    invoke-static {v0, v15, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 366
    invoke-static {v10, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 368
    invoke-static {v10}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 370
    invoke-static {v9}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 372
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 375
    :cond_5
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 378
    :cond_6
    invoke-static {v9}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 380
    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v3, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v3, v9}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    sget-object v7, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    move-object/from16 v0, p1

    invoke-direct {v0, v4, v3, v7, v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 383
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_7
    new-instance v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>()V

    .line 384
    .local v5, "X3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v3, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 385
    iget-object v3, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v7, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v19

    invoke-static {v3, v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 387
    new-instance v24, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct/range {v24 .. v25}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 388
    .local v24, "Z3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    move-object/from16 v0, v24

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, v10, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 389
    move-object/from16 v0, v24

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v24

    iget-object v7, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v22

    invoke-static {v3, v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 391
    new-instance v6, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 392
    .local v6, "L3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v3, v6, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, v10, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 393
    iget-object v3, v6, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v7, v6, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v3, v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 395
    const/16 v3, 0x12

    move-object/from16 v0, v29

    invoke-static {v3, v0}, Lorg/spongycastle/math/raw/Nat;->zero64(I[J)V

    .line 396
    iget-object v3, v6, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v29

    invoke-static {v3, v15, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 397
    iget-object v3, v14, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v28

    invoke-static {v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->addOne([J[J)V

    .line 398
    move-object/from16 v0, v24

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v3, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 399
    iget-object v3, v6, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v29

    invoke-static {v0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 401
    new-instance v3, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aput-object v24, v7, v8

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;->withCompression:Z

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v3

    goto/16 :goto_0
.end method
