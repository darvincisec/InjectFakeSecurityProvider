.class public Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source "Curve25519Point.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    .line 22
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

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 38
    if-nez p2, :cond_0

    move v2, v0

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    .line 38
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 43
    :cond_2
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->withCompression:Z

    .line 44
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
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 50
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->withCompression:Z

    .line 51
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 35
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 70
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :goto_0
    return-object p1

    .line 74
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 p1, p0

    .line 76
    goto :goto_0

    .line 78
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 80
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 85
    .local v4, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v19, v0

    check-cast v19, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    .local v19, "X1":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v21, v0

    check-cast v21, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 86
    .local v21, "Y1":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v23, v3, v8

    check-cast v23, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 87
    .local v23, "Z1":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v20

    check-cast v20, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    .local v20, "X2":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v22

    check-cast v22, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 88
    .local v22, "Y2":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v25

    check-cast v25, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 91
    .local v25, "Z2":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->createExt()[I

    move-result-object v33

    .line 92
    .local v33, "tt1":[I
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v30

    .line 93
    .local v30, "t2":[I
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v31

    .line 94
    .local v31, "t3":[I
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v32

    .line 96
    .local v32, "t4":[I
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->isOne()Z

    move-result v24

    .line 98
    .local v24, "Z1IsOne":Z
    if-eqz v24, :cond_3

    .line 100
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v16, v0

    .line 101
    .local v16, "U2":[I
    move-object/from16 v0, v22

    iget-object v14, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    .line 115
    .local v14, "S2":[I
    :goto_1
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->isOne()Z

    move-result v26

    .line 117
    .local v26, "Z2IsOne":Z
    if-eqz v26, :cond_4

    .line 119
    move-object/from16 v0, v19

    iget-object v15, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    .line 120
    .local v15, "U1":[I
    move-object/from16 v0, v21

    iget-object v13, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    .line 134
    .local v13, "S1":[I
    :goto_2
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v10

    .line 135
    .local v10, "H":[I
    move-object/from16 v0, v16

    invoke-static {v15, v0, v10}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 137
    move-object/from16 v12, v30

    .line 138
    .local v12, "R":[I
    invoke-static {v13, v14, v12}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 141
    invoke-static {v10}, Lorg/spongycastle/math/raw/Nat256;->isZero([I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 143
    invoke-static {v12}, Lorg/spongycastle/math/raw/Nat256;->isZero([I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 146
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 105
    .end local v10    # "H":[I
    .end local v12    # "R":[I
    .end local v13    # "S1":[I
    .end local v14    # "S2":[I
    .end local v15    # "U1":[I
    .end local v16    # "U2":[I
    .end local v26    # "Z2IsOne":Z
    :cond_3
    move-object/from16 v14, v31

    .line 106
    .restart local v14    # "S2":[I
    move-object/from16 v0, v23

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v3, v14}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 108
    move-object/from16 v16, v30

    .line 109
    .restart local v16    # "U2":[I
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v0, v16

    invoke-static {v14, v3, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 111
    move-object/from16 v0, v23

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v14, v3, v14}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 112
    move-object/from16 v0, v22

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v14, v3, v14}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    goto :goto_1

    .line 124
    .restart local v26    # "Z2IsOne":Z
    :cond_4
    move-object/from16 v13, v32

    .line 125
    .restart local v13    # "S1":[I
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v3, v13}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 127
    move-object/from16 v15, v33

    .line 128
    .restart local v15    # "U1":[I
    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v13, v3, v15}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 130
    move-object/from16 v0, v25

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v13, v3, v13}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 131
    move-object/from16 v0, v21

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v13, v3, v13}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    goto :goto_2

    .line 150
    .restart local v10    # "H":[I
    .restart local v12    # "R":[I
    :cond_5
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 153
    :cond_6
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v11

    .line 154
    .local v11, "HSquared":[I
    invoke-static {v10, v11}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 156
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v9

    .line 157
    .local v9, "G":[I
    invoke-static {v11, v10, v9}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 159
    move-object/from16 v17, v31

    .line 160
    .local v17, "V":[I
    move-object/from16 v0, v17

    invoke-static {v11, v15, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 162
    invoke-static {v9, v9}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->negate([I[I)V

    .line 163
    move-object/from16 v0, v33

    invoke-static {v13, v9, v0}, Lorg/spongycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 165
    move-object/from16 v0, v17

    move-object/from16 v1, v17

    invoke-static {v0, v1, v9}, Lorg/spongycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v29

    .line 166
    .local v29, "c":I
    move/from16 v0, v29

    invoke-static {v0, v9}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->reduce27(I[I)V

    .line 168
    new-instance v5, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object/from16 v0, v32

    invoke-direct {v5, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 169
    .local v5, "X3":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v3, v5, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v12, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 170
    iget-object v3, v5, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v8, v5, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v3, v9, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 172
    new-instance v6, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v6, v9}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 173
    .local v6, "Y3":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v3, v5, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v8, v6, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v0, v17

    invoke-static {v0, v3, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 174
    iget-object v3, v6, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v0, v33

    invoke-static {v3, v12, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiplyAddToExt([I[I[I)V

    .line 175
    iget-object v3, v6, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v0, v33

    invoke-static {v0, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    .line 177
    new-instance v27, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object/from16 v0, v27

    invoke-direct {v0, v10}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 178
    .local v27, "Z3":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    if-nez v24, :cond_7

    .line 180
    move-object/from16 v0, v27

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v0, v23

    iget-object v8, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v3, v8, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 182
    :cond_7
    if-nez v26, :cond_8

    .line 184
    move-object/from16 v0, v27

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v0, v25

    iget-object v8, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v3, v8, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 187
    :cond_8
    if-eqz v24, :cond_9

    if-eqz v26, :cond_9

    move-object/from16 v28, v11

    .line 190
    .local v28, "Z3Squared":[I
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->calculateJacobianModifiedW(Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v18

    .line 192
    .local v18, "W3":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    const/4 v3, 0x2

    new-array v7, v3, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v27, v7, v3

    const/4 v3, 0x1

    aput-object v18, v7, v3

    .line 194
    .local v7, "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->withCompression:Z

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v3

    goto/16 :goto_0

    .line 187
    .end local v7    # "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v18    # "W3":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    .end local v28    # "Z3Squared":[I
    :cond_9
    const/16 v28, 0x0

    goto :goto_3
.end method

.method protected calculateJacobianModifiedW(Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    .locals 5
    .param p1, "Z"    # Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    .param p2, "ZSquared"    # [I

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 268
    .local v1, "a4":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    .end local v1    # "a4":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    :goto_0
    return-object v1

    .line 273
    .restart local v1    # "a4":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>()V

    .line 274
    .local v0, "W":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    if-nez p2, :cond_1

    .line 276
    iget-object p2, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    .line 277
    iget-object v2, p1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, p2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 279
    :cond_1
    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {p2, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 280
    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v3, v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v4, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v3, v4}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    move-object v1, v0

    .line 281
    goto :goto_0
.end method

.method protected detach()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getJacobianModifiedW()Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 286
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v0, v1, v4

    check-cast v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 287
    .local v0, "W":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    if-nez v0, :cond_0

    .line 290
    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    check-cast v1, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->calculateJacobianModifiedW(Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v0

    aput-object v0, v2, v4

    .line 292
    :cond_0
    return-object v0
.end method

.method public getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 60
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->getJacobianModifiedW()Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .prologue
    .line 257
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public threeTimes()Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;
    :cond_0
    :goto_0
    return-object p0

    .line 246
    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 247
    .local v0, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->twiceJacobianModified(Z)Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;
    .local v0, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .local v1, "curve":Lorg/spongycastle/math/ec/ECCurve;
    :goto_0
    return-object p0

    .line 204
    .end local v0    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v1    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 206
    .restart local v1    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 207
    .restart local v0    # "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 212
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->twiceJacobianModified(Z)Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object p0

    goto :goto_0
.end method

.method protected twiceJacobianModified(Z)Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;
    .locals 20
    .param p1, "calculateW"    # Z

    .prologue
    .line 297
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v12, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    .local v12, "X1":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v13, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 298
    .local v13, "Y1":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v14, v2, v3

    check-cast v14, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    .local v14, "Z1":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->getJacobianModifiedW()Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v10

    .line 302
    .local v10, "W1":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v8

    .line 303
    .local v8, "M":[I
    iget-object v2, v12, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 304
    invoke-static {v8, v8, v8}, Lorg/spongycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v19

    .line 305
    .local v19, "c":I
    iget-object v2, v10, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v8}, Lorg/spongycastle/math/raw/Nat256;->addTo([I[I)I

    move-result v2

    add-int v19, v19, v2

    .line 306
    move/from16 v0, v19

    invoke-static {v0, v8}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->reduce27(I[I)V

    .line 308
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v16

    .line 309
    .local v16, "_2Y1":[I
    iget-object v2, v13, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    .line 311
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v17

    .line 312
    .local v17, "_2Y1Squared":[I
    iget-object v2, v13, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 314
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v9

    .line 315
    .local v9, "S":[I
    iget-object v2, v12, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v0, v17

    invoke-static {v0, v2, v9}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 316
    invoke-static {v9, v9}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    .line 318
    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v18

    .line 319
    .local v18, "_8T":[I
    invoke-static/range {v17 .. v18}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 320
    move-object/from16 v0, v18

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    .line 322
    new-instance v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 323
    .local v4, "X3":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v2, v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v8, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 324
    iget-object v2, v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v3, v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v9, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 325
    iget-object v2, v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v3, v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v9, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 327
    new-instance v5, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v5, v9}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 328
    .local v5, "Y3":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v2, v4, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v3, v5, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v9, v2, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 329
    iget-object v2, v5, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v3, v5, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v8, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 330
    iget-object v2, v5, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v3, v5, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    move-object/from16 v0, v18

    invoke-static {v2, v0, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 332
    new-instance v15, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct/range {v15 .. v16}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 333
    .local v15, "Z3":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v2, v14, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat256;->isOne([I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    iget-object v2, v15, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v3, v14, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v6, v15, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v3, v6}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 338
    :cond_0
    const/4 v11, 0x0

    .line 339
    .local v11, "W3":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    if-eqz p1, :cond_1

    .line 341
    new-instance v11, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    .end local v11    # "W3":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 342
    .restart local v11    # "W3":Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;
    iget-object v2, v11, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v3, v10, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v6, v11, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v3, v6}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 343
    iget-object v2, v11, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v3, v11, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v2, v3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    .line 346
    :cond_1
    new-instance v2, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    const/4 v7, 0x1

    aput-object v11, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v2
.end method

.method public twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 217
    if-ne p0, p1, :cond_1

    .line 219
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->threeTimes()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 236
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    :goto_0
    return-object p1

    .line 221
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->isInfinity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 231
    .local v0, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->twiceJacobianModified(Z)Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0
.end method
