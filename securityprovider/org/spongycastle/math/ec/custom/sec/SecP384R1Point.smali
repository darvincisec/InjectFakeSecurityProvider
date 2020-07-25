.class public Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source "SecP384R1Point.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "x"    # Lorg/spongycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

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
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

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
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

    .line 60
    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 33
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 69
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :goto_0
    return-object p1

    .line 73
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 p1, p0

    .line 75
    goto :goto_0

    .line 77
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 79
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    .line 84
    .local v4, "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v18, v0

    check-cast v18, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .local v18, "X1":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    move-object/from16 v20, v0

    check-cast v20, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 85
    .local v20, "Y1":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .local v19, "X2":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v21

    check-cast v21, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 87
    .local v21, "Y2":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v22, v3, v8

    check-cast v22, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 88
    .local v22, "Z1":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v24

    check-cast v24, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 91
    .local v24, "Z2":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    const/16 v3, 0x18

    invoke-static {v3}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v30

    .line 92
    .local v30, "tt1":[I
    const/16 v3, 0x18

    invoke-static {v3}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v31

    .line 93
    .local v31, "tt2":[I
    const/16 v3, 0xc

    invoke-static {v3}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v28

    .line 94
    .local v28, "t3":[I
    const/16 v3, 0xc

    invoke-static {v3}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v29

    .line 96
    .local v29, "t4":[I
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v23

    .line 98
    .local v23, "Z1IsOne":Z
    if-eqz v23, :cond_3

    .line 100
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v16, v0

    .line 101
    .local v16, "U2":[I
    move-object/from16 v0, v21

    iget-object v14, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 115
    .local v14, "S2":[I
    :goto_1
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v25

    .line 117
    .local v25, "Z2IsOne":Z
    if-eqz v25, :cond_4

    .line 119
    move-object/from16 v0, v18

    iget-object v15, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 120
    .local v15, "U1":[I
    move-object/from16 v0, v20

    iget-object v13, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 134
    .local v13, "S1":[I
    :goto_2
    const/16 v3, 0xc

    invoke-static {v3}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v10

    .line 135
    .local v10, "H":[I
    move-object/from16 v0, v16

    invoke-static {v15, v0, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 137
    const/16 v3, 0xc

    invoke-static {v3}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v12

    .line 138
    .local v12, "R":[I
    invoke-static {v13, v14, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 141
    const/16 v3, 0xc

    invoke-static {v3, v10}, Lorg/spongycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 143
    const/16 v3, 0xc

    invoke-static {v3, v12}, Lorg/spongycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 146
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto/16 :goto_0

    .line 105
    .end local v10    # "H":[I
    .end local v12    # "R":[I
    .end local v13    # "S1":[I
    .end local v14    # "S2":[I
    .end local v15    # "U1":[I
    .end local v16    # "U2":[I
    .end local v25    # "Z2IsOne":Z
    :cond_3
    move-object/from16 v14, v28

    .line 106
    .restart local v14    # "S2":[I
    move-object/from16 v0, v22

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 108
    move-object/from16 v16, v31

    .line 109
    .restart local v16    # "U2":[I
    move-object/from16 v0, v19

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v0, v16

    invoke-static {v14, v3, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 111
    move-object/from16 v0, v22

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v14, v3, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 112
    move-object/from16 v0, v21

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v14, v3, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    goto :goto_1

    .line 124
    .restart local v25    # "Z2IsOne":Z
    :cond_4
    move-object/from16 v13, v29

    .line 125
    .restart local v13    # "S1":[I
    move-object/from16 v0, v24

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 127
    move-object/from16 v15, v30

    .line 128
    .restart local v15    # "U1":[I
    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v13, v3, v15}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 130
    move-object/from16 v0, v24

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v13, v3, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 131
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v13, v3, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

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
    move-object/from16 v11, v28

    .line 154
    .local v11, "HSquared":[I
    invoke-static {v10, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 156
    const/16 v3, 0xc

    invoke-static {v3}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v9

    .line 157
    .local v9, "G":[I
    invoke-static {v11, v10, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 159
    move-object/from16 v17, v28

    .line 160
    .local v17, "V":[I
    move-object/from16 v0, v17

    invoke-static {v11, v15, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 162
    invoke-static {v9, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->negate([I[I)V

    .line 163
    move-object/from16 v0, v30

    invoke-static {v13, v9, v0}, Lorg/spongycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 165
    const/16 v3, 0xc

    move-object/from16 v0, v17

    move-object/from16 v1, v17

    invoke-static {v3, v0, v1, v9}, Lorg/spongycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    move-result v27

    .line 166
    .local v27, "c":I
    move/from16 v0, v27

    invoke-static {v0, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 168
    new-instance v5, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 169
    .local v5, "X3":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v5, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v12, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 170
    iget-object v3, v5, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v8, v5, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v9, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 172
    new-instance v6, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v6, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 173
    .local v6, "Y3":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v5, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v8, v6, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v0, v17

    invoke-static {v0, v3, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 174
    iget-object v3, v6, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v0, v31

    invoke-static {v3, v12, v0}, Lorg/spongycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 175
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->addExt([I[I[I)V

    .line 176
    iget-object v3, v6, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 178
    new-instance v26, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object/from16 v0, v26

    invoke-direct {v0, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 179
    .local v26, "Z3":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    if-nez v23, :cond_7

    .line 181
    move-object/from16 v0, v26

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v0, v22

    iget-object v8, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v3, v8, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 183
    :cond_7
    if-nez v25, :cond_8

    .line 185
    move-object/from16 v0, v26

    iget-object v3, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v0, v24

    iget-object v8, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v3, v8, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 188
    :cond_8
    const/4 v3, 0x1

    new-array v7, v3, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v26, v7, v3

    .line 190
    .local v7, "zs":[Lorg/spongycastle/math/ec/ECFieldElement;
    new-instance v3, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p1, v3

    goto/16 :goto_0
.end method

.method protected detach()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;
    :cond_0
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->curve:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public threeTimes()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 20

    .prologue
    .line 195
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    .end local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;
    .local v2, "curve":Lorg/spongycastle/math/ec/ECCurve;
    .local v3, "X3":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v4, "Y3":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v7, "M":[I
    .local v8, "S":[I
    .local v9, "T":[I
    .local v10, "X1":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v11, "Y1":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v12, "Y1Squared":[I
    .local v13, "Z1":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v14, "Z1IsOne":Z
    .local v15, "Z1Squared":[I
    .local v16, "Z3":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v17, "c":I
    .local v18, "t1":[I
    .local v19, "t2":[I
    :goto_0
    return-object p0

    .line 200
    .end local v2    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    .end local v3    # "X3":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .end local v4    # "Y3":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .end local v7    # "M":[I
    .end local v8    # "S":[I
    .end local v9    # "T":[I
    .end local v10    # "X1":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .end local v11    # "Y1":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .end local v12    # "Y1Squared":[I
    .end local v13    # "Z1":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .end local v14    # "Z1IsOne":Z
    .end local v15    # "Z1Squared":[I
    .end local v16    # "Z3":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .end local v17    # "c":I
    .end local v18    # "t1":[I
    .end local v19    # "t2":[I
    .restart local p0    # "this":Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 202
    .restart local v2    # "curve":Lorg/spongycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v11, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 203
    .restart local v11    # "Y1":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_0

    .line 208
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    check-cast v10, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .restart local v10    # "X1":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v13, v1, v5

    check-cast v13, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 211
    .restart local v13    # "Z1":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    const/16 v1, 0xc

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v18

    .line 212
    .restart local v18    # "t1":[I
    const/16 v1, 0xc

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v19

    .line 214
    .restart local v19    # "t2":[I
    const/16 v1, 0xc

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v12

    .line 215
    .restart local v12    # "Y1Squared":[I
    iget-object v1, v11, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 217
    const/16 v1, 0xc

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v9

    .line 218
    .restart local v9    # "T":[I
    invoke-static {v12, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 220
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v14

    .line 222
    .restart local v14    # "Z1IsOne":Z
    iget-object v15, v13, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 223
    .restart local v15    # "Z1Squared":[I
    if-nez v14, :cond_2

    .line 225
    move-object/from16 v15, v19

    .line 226
    iget-object v1, v13, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v15}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 229
    :cond_2
    iget-object v1, v10, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v0, v18

    invoke-static {v1, v15, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 231
    move-object/from16 v7, v19

    .line 232
    .restart local v7    # "M":[I
    iget-object v1, v10, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v15, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->add([I[I[I)V

    .line 233
    move-object/from16 v0, v18

    invoke-static {v7, v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 234
    const/16 v1, 0xc

    invoke-static {v1, v7, v7, v7}, Lorg/spongycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    move-result v17

    .line 235
    .restart local v17    # "c":I
    move/from16 v0, v17

    invoke-static {v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 237
    move-object v8, v12

    .line 238
    .restart local v8    # "S":[I
    iget-object v1, v10, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v12, v1, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 239
    const/16 v1, 0xc

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v8, v5, v6}, Lorg/spongycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v17

    .line 240
    move/from16 v0, v17

    invoke-static {v0, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 242
    const/16 v1, 0xc

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-static {v1, v9, v5, v6, v0}, Lorg/spongycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v17

    .line 243
    invoke-static/range {v17 .. v18}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 245
    new-instance v3, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v3, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 246
    .restart local v3    # "X3":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v1, v3, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v7, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 247
    iget-object v1, v3, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v5, v3, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v8, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 248
    iget-object v1, v3, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v5, v3, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v8, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 250
    new-instance v4, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v4, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 251
    .restart local v4    # "Y3":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v1, v3, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v5, v4, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v8, v1, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 252
    iget-object v1, v4, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v5, v4, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v7, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 253
    iget-object v1, v4, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v5, v4, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v0, v18

    invoke-static {v1, v0, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 255
    new-instance v16, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 256
    .restart local v16    # "Z3":Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v1, v11, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->twice([I[I)V

    .line 257
    if-nez v14, :cond_3

    .line 259
    move-object/from16 v0, v16

    iget-object v1, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v5, v13, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v0, v16

    iget-object v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v5, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 262
    :cond_3
    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    move-object/from16 p0, v1

    goto/16 :goto_0
.end method

.method public twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "b"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 267
    if-ne p0, p1, :cond_1

    .line 269
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->threeTimes()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 286
    .end local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    :goto_0
    return-object p1

    .line 271
    .restart local p1    # "b":Lorg/spongycastle/math/ec/ECPoint;
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 281
    .local v0, "Y1":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_0
.end method
