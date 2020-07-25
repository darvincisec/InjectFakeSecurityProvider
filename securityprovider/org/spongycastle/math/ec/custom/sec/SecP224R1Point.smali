.class public Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source "SecP224R1Point.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 26
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

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 47
    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 47
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 52
    :cond_2
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->withCompression:Z

    .line 53
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
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 59
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->withCompression:Z

    .line 60
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 32
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 69
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :goto_0
    return-object p1

    .line 73
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 p1, p0

    .line 75
    goto :goto_0

    .line 77
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 79
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 84
    .local v3, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v17, v0

    check-cast v17, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .local v17, "X1":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v19, v0

    check-cast v19, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 85
    .local v19, "Y1":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v18

    check-cast v18, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .local v18, "X2":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    check-cast v20, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 87
    .local v20, "Y2":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v21, v2, v7

    check-cast v21, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 88
    .local v21, "Z1":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v23

    check-cast v23, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 91
    .local v23, "Z2":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->createExt()[I

    move-result-object v30

    .line 92
    .local v30, "tt1":[I
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v27

    .line 93
    .local v27, "t2":[I
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v28

    .line 94
    .local v28, "t3":[I
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v29

    .line 96
    .local v29, "t4":[I
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->isOne()Z

    move-result v22

    .line 98
    .local v22, "Z1IsOne":Z
    if-eqz v22, :cond_3

    .line 100
    move-object/from16 v0, v18

    iget-object v15, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 101
    .local v15, "U2":[I
    move-object/from16 v0, v20

    iget-object v13, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 115
    .local v13, "S2":[I
    :goto_1
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->isOne()Z

    move-result v24

    .line 117
    .local v24, "Z2IsOne":Z
    if-eqz v24, :cond_4

    .line 119
    move-object/from16 v0, v17

    iget-object v14, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 120
    .local v14, "U1":[I
    move-object/from16 v0, v19

    iget-object v12, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 134
    .local v12, "S1":[I
    :goto_2
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v9

    .line 135
    .local v9, "H":[I
    invoke-static {v14, v15, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 137
    move-object/from16 v11, v27

    .line 138
    .local v11, "R":[I
    invoke-static {v12, v13, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 141
    invoke-static {v9}, Lorg/spongycastle/math/raw/Nat224;->isZero([I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 143
    invoke-static {v11}, Lorg/spongycastle/math/raw/Nat224;->isZero([I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 105
    .end local v9    # "H":[I
    .end local v11    # "R":[I
    .end local v12    # "S1":[I
    .end local v13    # "S2":[I
    .end local v14    # "U1":[I
    .end local v15    # "U2":[I
    .end local v24    # "Z2IsOne":Z
    :cond_3
    move-object/from16 v13, v28

    .line 106
    .restart local v13    # "S2":[I
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v2, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 108
    move-object/from16 v15, v27

    .line 109
    .restart local v15    # "U2":[I
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v13, v2, v15}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 111
    move-object/from16 v0, v21

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v13, v2, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 112
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v13, v2, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    goto :goto_1

    .line 124
    .restart local v24    # "Z2IsOne":Z
    :cond_4
    move-object/from16 v12, v29

    .line 125
    .restart local v12    # "S1":[I
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v2, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 127
    move-object/from16 v14, v30

    .line 128
    .restart local v14    # "U1":[I
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v12, v2, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 130
    move-object/from16 v0, v23

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v12, v2, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 131
    move-object/from16 v0, v19

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v12, v2, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    goto :goto_2

    .line 150
    .restart local v9    # "H":[I
    .restart local v11    # "R":[I
    :cond_5
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 153
    :cond_6
    move-object/from16 v10, v28

    .line 154
    .local v10, "HSquared":[I
    invoke-static {v9, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 156
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v8

    .line 157
    .local v8, "G":[I
    invoke-static {v10, v9, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 159
    move-object/from16 v16, v28

    .line 160
    .local v16, "V":[I
    move-object/from16 v0, v16

    invoke-static {v10, v14, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 162
    invoke-static {v8, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    .line 163
    move-object/from16 v0, v30

    invoke-static {v12, v8, v0}, Lorg/spongycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 165
    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-static {v0, v1, v8}, Lorg/spongycastle/math/raw/Nat224;->addBothTo([I[I[I)I

    move-result v26

    .line 166
    .local v26, "c":I
    move/from16 v0, v26

    invoke-static {v0, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 168
    new-instance v4, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 169
    .local v4, "X3":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v2, v4, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v11, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 170
    iget-object v2, v4, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v7, v4, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v2, v8, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 172
    new-instance v5, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v5, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 173
    .local v5, "Y3":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v2, v4, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v7, v5, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v0, v16

    invoke-static {v0, v2, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 174
    iget-object v2, v5, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v0, v30

    invoke-static {v2, v11, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiplyAddToExt([I[I[I)V

    .line 175
    iget-object v2, v5, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 177
    new-instance v25, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    move-object/from16 v0, v25

    invoke-direct {v0, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 178
    .local v25, "Z3":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    if-nez v22, :cond_7

    .line 180
    move-object/from16 v0, v25

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v0, v21

    iget-object v7, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v2, v7, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 182
    :cond_7
    if-nez v24, :cond_8

    .line 184
    move-object/from16 v0, v25

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v0, v23

    iget-object v7, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v2, v7, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 187
    :cond_8
    const/4 v2, 0x1

    new-array v6, v2, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v25, v6, v2

    .line 189
    .local v6, "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v2, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v2

    goto/16 :goto_0
.end method

.method protected detach()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .prologue
    .line 301
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->curve:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public threeTimes()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 20

    .prologue
    .line 194
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;
    .local v2, "curve":Lorg/spongycastle/math/ec/ECCurve;
    .local v3, "X3":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .local v4, "Y3":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .local v7, "M":[I
    .local v8, "S":[I
    .local v9, "T":[I
    .local v10, "X1":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .local v11, "Y1":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .local v12, "Y1Squared":[I
    .local v13, "Z1":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .local v14, "Z1IsOne":Z
    .local v15, "Z1Squared":[I
    .local v16, "Z3":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .local v17, "c":I
    .local v18, "t1":[I
    .local v19, "t2":[I
    :goto_0
    return-object p0

    .line 199
    .end local v2    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v3    # "X3":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .end local v4    # "Y3":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .end local v7    # "M":[I
    .end local v8    # "S":[I
    .end local v9    # "T":[I
    .end local v10    # "X1":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .end local v11    # "Y1":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .end local v12    # "Y1Squared":[I
    .end local v13    # "Z1":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .end local v14    # "Z1IsOne":Z
    .end local v15    # "Z1Squared":[I
    .end local v16    # "Z3":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .end local v17    # "c":I
    .end local v18    # "t1":[I
    .end local v19    # "t2":[I
    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 201
    .restart local v2    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v11, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 202
    .restart local v11    # "Y1":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 207
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v10, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .restart local v10    # "X1":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v13, v1, v5

    check-cast v13, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 210
    .restart local v13    # "Z1":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v18

    .line 211
    .restart local v18    # "t1":[I
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v19

    .line 213
    .restart local v19    # "t2":[I
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v12

    .line 214
    .restart local v12    # "Y1Squared":[I
    iget-object v1, v11, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 216
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->create()[I

    move-result-object v9

    .line 217
    .restart local v9    # "T":[I
    invoke-static {v12, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 219
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->isOne()Z

    move-result v14

    .line 221
    .restart local v14    # "Z1IsOne":Z
    iget-object v15, v13, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 222
    .restart local v15    # "Z1Squared":[I
    if-nez v14, :cond_2

    .line 224
    move-object/from16 v15, v19

    .line 225
    iget-object v1, v13, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v15}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 228
    :cond_2
    iget-object v1, v10, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v0, v18

    invoke-static {v1, v15, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 230
    move-object/from16 v7, v19

    .line 231
    .restart local v7    # "M":[I
    iget-object v1, v10, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v15, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 232
    move-object/from16 v0, v18

    invoke-static {v7, v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 233
    invoke-static {v7, v7, v7}, Lorg/spongycastle/math/raw/Nat224;->addBothTo([I[I[I)I

    move-result v17

    .line 234
    .restart local v17    # "c":I
    move/from16 v0, v17

    invoke-static {v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 236
    move-object v8, v12

    .line 237
    .restart local v8    # "S":[I
    iget-object v1, v10, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v12, v1, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 238
    const/4 v1, 0x7

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v8, v5, v6}, Lorg/spongycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v17

    .line 239
    move/from16 v0, v17

    invoke-static {v0, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 241
    const/4 v1, 0x7

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-static {v1, v9, v5, v6, v0}, Lorg/spongycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v17

    .line 242
    invoke-static/range {v17 .. v18}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 244
    new-instance v3, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v3, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 245
    .restart local v3    # "X3":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v1, v3, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v7, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 246
    iget-object v1, v3, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v5, v3, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v8, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 247
    iget-object v1, v3, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v5, v3, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v8, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 249
    new-instance v4, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v4, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 250
    .restart local v4    # "Y3":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v1, v3, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v5, v4, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v8, v1, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 251
    iget-object v1, v4, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v5, v4, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v7, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 252
    iget-object v1, v4, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v5, v4, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v0, v18

    invoke-static {v1, v0, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 254
    new-instance v16, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 255
    .restart local v16    # "Z3":Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v1, v11, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->twice([I[I)V

    .line 256
    if-nez v14, :cond_3

    .line 258
    move-object/from16 v0, v16

    iget-object v1, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v5, v13, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v0, v16

    iget-object v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v5, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 261
    :cond_3
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->withCompression:Z

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v1

    goto/16 :goto_0
.end method

.method public twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 266
    if-ne p0, p1, :cond_1

    .line 268
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->threeTimes()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 285
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    :goto_0
    return-object p1

    .line 270
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->isInfinity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 280
    .local v0, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0
.end method
