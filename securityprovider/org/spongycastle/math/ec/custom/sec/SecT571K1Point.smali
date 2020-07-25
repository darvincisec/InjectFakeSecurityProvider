.class public Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
.source "SecT571K1Point.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 18
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

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 27
    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 27
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 32
    :cond_2
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->withCompression:Z

    .line 33
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
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 39
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->withCompression:Z

    .line 40
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 36
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 84
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :goto_0
    return-object p1

    .line 88
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 p1, p0

    .line 90
    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 95
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v20, v0

    check-cast v20, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 96
    .local v20, "X1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    check-cast v21, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 98
    .local v21, "X2":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 105
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 108
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v14, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .local v14, "L1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v25, v2, v6

    check-cast v25, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 109
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

    .line 111
    .local v27, "Z2":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v31

    .line 112
    .local v31, "t1":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v32

    .line 113
    .local v32, "t2":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v33

    .line 114
    .local v33, "t3":[J
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->create64()[J

    move-result-object v34

    .line 116
    .local v34, "t4":[J
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v26, 0x0

    .line 118
    .local v26, "Z1Precomp":[J
    :goto_1
    if-nez v26, :cond_5

    .line 120
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v19, v0

    .line 121
    .local v19, "U2":[J
    iget-object v0, v15, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v17, v0

    .line 129
    .local v17, "S2":[J
    :goto_2
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v28, 0x0

    .line 131
    .local v28, "Z2Precomp":[J
    :goto_3
    if-nez v28, :cond_7

    .line 133
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v18, v0

    .line 134
    .local v18, "U1":[J
    iget-object v0, v14, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v16, v0

    .line 142
    .local v16, "S1":[J
    :goto_4
    move-object/from16 v8, v33

    .line 143
    .local v8, "A":[J
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 145
    move-object/from16 v12, v34

    .line 146
    .local v12, "B":[J
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 148
    invoke-static {v12}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 150
    invoke-static {v8}, Lorg/spongycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 152
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 116
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

    .line 125
    .restart local v26    # "Z1Precomp":[J
    :cond_5
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v19, v32

    .restart local v19    # "U2":[J
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 126
    iget-object v2, v15, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v17, v34

    .restart local v17    # "S2":[J
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    goto :goto_2

    .line 129
    :cond_6
    move-object/from16 v0, v27

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v28

    goto :goto_3

    .line 138
    .restart local v28    # "Z2Precomp":[J
    :cond_7
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v18, v31

    .restart local v18    # "U1":[J
    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 139
    iget-object v2, v14, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v16, v33

    .restart local v16    # "S1":[J
    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-static {v2, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    goto :goto_4

    .line 155
    .restart local v8    # "A":[J
    .restart local v12    # "B":[J
    :cond_8
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 159
    :cond_9
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 162
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v30

    .line 163
    .local v30, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    .end local v20    # "X1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    check-cast v20, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 164
    .restart local v20    # "X1":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 166
    .local v22, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v15

    .line 167
    .local v23, "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v22 .. v23}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 169
    .local v13, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 170
    .local v4, "X3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 172
    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->withCompression:Z

    move-object/from16 v0, p1

    invoke-direct {v0, v3, v4, v2, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 175
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

    .line 176
    .local v24, "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 177
    .local v5, "L3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    check-cast v29, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 224
    .end local v13    # "L":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v22    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v23    # "Y2":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v24    # "Y3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v30    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .local v29, "Z3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    :cond_b
    :goto_5
    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v29, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v2

    goto/16 :goto_0

    .line 181
    .end local v4    # "X3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v5    # "L3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    .end local v29    # "Z3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    :cond_c
    invoke-static {v12, v12}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 183
    invoke-static {v8}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v9

    .line 185
    .local v9, "APrecomp":[J
    move-object/from16 v10, v31

    .line 186
    .local v10, "AU1":[J
    move-object/from16 v11, v32

    .line 188
    .local v11, "AU2":[J
    move-object/from16 v0, v18

    invoke-static {v0, v9, v10}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 189
    move-object/from16 v0, v19

    invoke-static {v0, v9, v11}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 191
    new-instance v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object/from16 v0, v31

    invoke-direct {v4, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 192
    .restart local v4    # "X3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v2, v4, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v10, v11, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 194
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 196
    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->withCompression:Z

    move-object/from16 v0, p1

    invoke-direct {v0, v3, v4, v2, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 199
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_d
    new-instance v29, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 200
    .restart local v29    # "Z3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v12, v9, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 202
    if-eqz v28, :cond_e

    .line 204
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v29

    iget-object v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v28

    invoke-static {v2, v0, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 207
    :cond_e
    invoke-static {}, Lorg/spongycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v35

    .line 209
    .local v35, "tt":[J
    move-object/from16 v0, v34

    invoke-static {v11, v12, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 210
    invoke-static/range {v34 .. v35}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->squareAddToExt([J[J)V

    .line 212
    iget-object v2, v14, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v25

    iget-object v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v34

    invoke-static {v2, v6, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 213
    move-object/from16 v0, v29

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 215
    new-instance v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object/from16 v0, v34

    invoke-direct {v5, v0}, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 216
    .restart local v5    # "L3":Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;
    iget-object v2, v5, Lorg/spongycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 218
    if-eqz v26, :cond_b

    .line 220
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
    .line 44
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getCompressionYTilde()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 71
    .local v0, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v2

    .line 76
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 79
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
    .line 49
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v1, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 51
    .local v0, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->isInfinity()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v2, v0

    .line 65
    :cond_1
    :goto_0
    return-object v2

    .line 57
    :cond_2
    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 59
    .local v2, "Y":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v4, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 60
    .local v3, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v4

    if-nez v4, :cond_1

    .line 62
    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    goto :goto_0
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 338
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;
    :cond_0
    :goto_0
    return-object p0

    .line 343
    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 344
    .local v2, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v6, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v6, "L":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v7, v0, v5

    .line 351
    .local v7, "Z":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v7, v4, v5

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 15

    .prologue
    const/4 v5, 0x0

    .line 229
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;
    .local v1, "curve":Lorg/spongycastle/math/ec/ECCurve;
    .local v6, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v7, "T":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v8, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v9, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v10, "Z1IsOne":Z
    .local v11, "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_0
    return-object p0

    .line 234
    .end local v1    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v6    # "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v7    # "T":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v9    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v10    # "Z1IsOne":Z
    .end local v11    # "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 236
    .restart local v1    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    iget-object v8, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 237
    .restart local v8    # "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 244
    :cond_1
    iget-object v6, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .restart local v6    # "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v9, v0, v5

    .line 246
    .restart local v9    # "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v10

    .line 247
    .restart local v10    # "Z1IsOne":Z
    if-eqz v10, :cond_2

    move-object v11, v9

    .line 249
    .restart local v11    # "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    if-eqz v10, :cond_3

    .line 251
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 258
    .restart local v7    # "T":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->withCompression:Z

    invoke-direct {v0, v1, v7, v4, v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0

    .line 247
    .end local v7    # "T":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v11    # "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_2
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    goto :goto_1

    .line 255
    .restart local v11    # "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_3
    invoke-virtual {v6, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .restart local v7    # "T":Lorg/spongycastle/math/ec/ECFieldElement;
    goto :goto_2

    .line 263
    :cond_4
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 264
    .local v2, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v10, :cond_5

    move-object v12, v7

    .line 266
    .local v12, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_3
    invoke-virtual {v6, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 267
    .local v13, "t1":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v10, :cond_6

    move-object v14, v9

    .line 268
    .local v14, "t2":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_4
    invoke-virtual {v13, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v14}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 270
    .local v3, "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v12, v4, v5

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto/16 :goto_0

    .line 264
    .end local v3    # "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v12    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v13    # "t1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v14    # "t2":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_5
    invoke-virtual {v7, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    goto :goto_3

    .line 267
    .restart local v12    # "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    .restart local v13    # "t1":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_6
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    goto :goto_4
.end method

.method public twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 24
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 275
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    :goto_0
    return-object p1

    .line 279
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 286
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v16, v0

    .line 287
    .local v16, "X1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    .local v18, "X2":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 295
    .local v22, "Z2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-nez v2, :cond_4

    .line 297
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 300
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .local v10, "L1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v20, v2, v6

    .line 301
    .local v20, "Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getRawYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 303
    .local v13, "L2":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 304
    .local v17, "X1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 305
    .local v11, "L1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 306
    .local v21, "Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 308
    .local v12, "L1Z1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v11, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 309
    .local v15, "T":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->addOne()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 310
    .local v14, "L2plus1":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v2, v15, v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 311
    .local v8, "A":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 312
    .local v19, "X2Z1Sq":Lorg/spongycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 314
    .local v9, "B":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 316
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 318
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 321
    :cond_5
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 324
    :cond_6
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 326
    new-instance p1, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;

    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->withCompression:Z

    move-object/from16 v0, p1

    invoke-direct {v0, v3, v8, v2, v6}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    goto/16 :goto_0

    .line 329
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_7
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 330
    .local v4, "X3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 331
    .local v23, "Z3":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v15, v14, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 333
    .local v5, "L3":Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v23, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecT571K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v2

    goto/16 :goto_0
.end method
