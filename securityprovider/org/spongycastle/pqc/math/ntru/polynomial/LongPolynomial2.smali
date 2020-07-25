.class public Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
.super Ljava/lang/Object;
.source "LongPolynomial2.java"


# instance fields
.field private coeffs:[J

.field private numCoeffs:I


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "N"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 14
    .param p1, "p"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .prologue
    const-wide/16 v6, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iget-object v8, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v8, v8

    iput v8, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    .line 23
    iget v8, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    add-int/lit8 v8, v8, 0x1

    div-int/lit8 v8, v8, 0x2

    new-array v8, v8, [J

    iput-object v8, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, "idx":I
    const/4 v4, 0x0

    .local v4, "pIdx":I
    :goto_0
    iget v8, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ge v4, v8, :cond_3

    .line 27
    iget-object v8, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pIdx":I
    .local v5, "pIdx":I
    aget v0, v8, v4

    .line 28
    .local v0, "c0":I
    :goto_1
    if-gez v0, :cond_0

    .line 30
    add-int/lit16 v0, v0, 0x800

    goto :goto_1

    .line 32
    :cond_0
    iget v8, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ge v5, v8, :cond_1

    iget-object v8, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pIdx":I
    .restart local v4    # "pIdx":I
    aget v8, v8, v5

    int-to-long v2, v8

    .line 33
    .local v2, "c1":J
    :goto_2
    cmp-long v8, v2, v6

    if-gez v8, :cond_2

    .line 35
    const-wide/16 v8, 0x800

    add-long/2addr v2, v8

    goto :goto_2

    .end local v2    # "c1":J
    .end local v4    # "pIdx":I
    .restart local v5    # "pIdx":I
    :cond_1
    move-wide v2, v6

    move v4, v5

    .line 32
    .end local v5    # "pIdx":I
    .restart local v4    # "pIdx":I
    goto :goto_2

    .line 37
    .restart local v2    # "c1":J
    :cond_2
    iget-object v8, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    int-to-long v10, v0

    const/16 v9, 0x18

    shl-long v12, v2, v9

    add-long/2addr v10, v12

    aput-wide v10, v8, v1

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    .end local v0    # "c0":I
    .end local v2    # "c1":J
    :cond_3
    return-void
.end method

.method private constructor <init>([J)V
    .locals 0
    .param p1, "coeffs"    # [J

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 45
    return-void
.end method

.method private add(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V
    .locals 6
    .param p1, "b"    # Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    .prologue
    .line 179
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 181
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 183
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 185
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v2, v2, v0

    iget-object v4, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    const-wide v4, 0x7ff0007ffL

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    return-void
.end method

.method private multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .locals 32
    .param p1, "poly2"    # Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 114
    .local v4, "a":[J
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 116
    .local v7, "b":[J
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v23, v0

    .line 117
    .local v23, "n":I
    const/16 v25, 0x20

    move/from16 v0, v23

    move/from16 v1, v25

    if-gt v0, v1, :cond_1

    .line 119
    mul-int/lit8 v16, v23, 0x2

    .line 120
    .local v16, "cn":I
    new-instance v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move/from16 v0, v16

    new-array v0, v0, [J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 121
    .local v10, "c":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    const/16 v22, 0x0

    .local v22, "k":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 123
    const/16 v25, 0x0

    sub-int v26, v22, v23

    add-int/lit8 v26, v26, 0x1

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v17

    .local v17, "i":I
    :goto_1
    add-int/lit8 v25, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v0, v17

    move/from16 v1, v25

    if-gt v0, v1, :cond_0

    .line 125
    sub-int v25, v22, v17

    aget-wide v26, v4, v25

    aget-wide v28, v7, v17

    mul-long v12, v26, v28

    .line 126
    .local v12, "c0":J
    const-wide v26, 0x7ff000000L

    const-wide/16 v28, 0x7ff

    and-long v28, v28, v12

    add-long v26, v26, v28

    and-long v20, v12, v26

    .line 127
    .local v20, "cu":J
    const/16 v25, 0x30

    ushr-long v26, v12, v25

    const-wide/16 v28, 0x7ff

    and-long v18, v26, v28

    .line 129
    .local v18, "co":J
    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v25, v0

    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v26, v0

    aget-wide v26, v26, v22

    add-long v26, v26, v20

    const-wide v28, 0x7ff0007ffL

    and-long v26, v26, v28

    aput-wide v26, v25, v22

    .line 130
    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v25, v0

    add-int/lit8 v26, v22, 0x1

    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v27, v0

    add-int/lit8 v28, v22, 0x1

    aget-wide v28, v27, v28

    add-long v28, v28, v18

    const-wide v30, 0x7ff0007ffL

    and-long v28, v28, v30

    aput-wide v28, v25, v26

    .line 123
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 121
    .end local v12    # "c0":J
    .end local v18    # "co":J
    .end local v20    # "cu":J
    :cond_0
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 137
    .end local v10    # "c":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .end local v16    # "cn":I
    .end local v17    # "i":I
    .end local v22    # "k":I
    :cond_1
    div-int/lit8 v24, v23, 0x2

    .line 139
    .local v24, "n1":I
    new-instance v5, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move/from16 v0, v24

    invoke-static {v4, v0}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 140
    .local v5, "a1":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    new-instance v6, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v4, v0, v1}, Lorg/spongycastle/util/Arrays;->copyOfRange([JII)[J

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 141
    .local v6, "a2":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    new-instance v8, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move/from16 v0, v24

    invoke-static {v7, v0}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 142
    .local v8, "b1":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    new-instance v9, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v7, v0, v1}, Lorg/spongycastle/util/Arrays;->copyOfRange([JII)[J

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 144
    .local v9, "b2":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    .line 145
    .local v2, "A":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    invoke-direct {v2, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 146
    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    .line 147
    .local v3, "B":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    invoke-direct {v3, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 149
    invoke-direct {v5, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v11

    .line 150
    .local v11, "c1":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    invoke-direct {v6, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v14

    .line 151
    .local v14, "c2":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    invoke-direct {v2, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v15

    .line 152
    .local v15, "c3":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    invoke-direct {v15, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 153
    invoke-direct {v15, v14}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V

    .line 155
    new-instance v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    mul-int/lit8 v25, v23, 0x2

    move/from16 v0, v25

    invoke-direct {v10, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>(I)V

    .line 156
    .restart local v10    # "c":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_2
    iget-object v0, v11, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 158
    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v25, v0

    iget-object v0, v11, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v26, v0

    aget-wide v26, v26, v17

    const-wide v28, 0x7ff0007ffL

    and-long v26, v26, v28

    aput-wide v26, v25, v17

    .line 156
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 160
    :cond_2
    const/16 v17, 0x0

    :goto_3
    iget-object v0, v15, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 162
    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v25, v0

    add-int v26, v24, v17

    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v27, v0

    add-int v28, v24, v17

    aget-wide v28, v27, v28

    iget-object v0, v15, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v27, v0

    aget-wide v30, v27, v17

    add-long v28, v28, v30

    const-wide v30, 0x7ff0007ffL

    and-long v28, v28, v30

    aput-wide v28, v25, v26

    .line 160
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 164
    :cond_3
    const/16 v17, 0x0

    :goto_4
    iget-object v0, v14, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v17

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 166
    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v25, v0

    mul-int/lit8 v26, v24, 0x2

    add-int v26, v26, v17

    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v27, v0

    mul-int/lit8 v28, v24, 0x2

    add-int v28, v28, v17

    aget-wide v28, v27, v28

    iget-object v0, v14, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move-object/from16 v27, v0

    aget-wide v30, v27, v17

    add-long v28, v28, v30

    const-wide v30, 0x7ff0007ffL

    and-long v28, v28, v30

    aput-wide v28, v25, v26

    .line 164
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 168
    .end local v2    # "A":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .end local v3    # "B":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .end local v5    # "a1":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .end local v6    # "a2":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .end local v8    # "b1":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .end local v9    # "b2":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .end local v11    # "c1":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .end local v14    # "c2":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .end local v15    # "c3":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .end local v17    # "i":I
    .end local v24    # "n1":I
    :cond_4
    return-object v10
.end method

.method private sub(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)V
    .locals 6
    .param p1, "b"    # Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    .prologue
    .line 196
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 198
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 200
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 202
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    const-wide v2, 0x800000800000L

    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    iget-object v4, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v4, v4, v0

    sub-long/2addr v2, v4

    const-wide v4, 0x7ff0007ffL

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 240
    .local v0, "p":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    iget v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iput v1, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    .line 241
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 246
    instance-of v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    check-cast p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->areEqual([J[J)Z

    move-result v0

    .line 252
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mult(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .locals 12
    .param p1, "poly2"    # Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    .prologue
    .line 57
    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v4

    .line 58
    .local v0, "N":I
    iget-object v4, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v4, v4

    if-ne v4, v0, :cond_0

    iget v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iget v5, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-eq v4, v5, :cond_1

    .line 60
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Number of coefficients must be the same"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    :cond_1
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v1

    .line 65
    .local v1, "c":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    iget-object v4, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v4, v4

    if-le v4, v0, :cond_3

    .line 67
    iget v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    .line 69
    move v3, v0

    .local v3, "k":I
    :goto_0
    iget-object v4, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 71
    iget-object v4, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v5, v3, v0

    iget-object v6, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v7, v3, v0

    aget-wide v6, v6, v7

    iget-object v8, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v8, v8, v3

    add-long/2addr v6, v8

    const-wide v8, 0x7ff0007ffL

    and-long/2addr v6, v8

    aput-wide v6, v4, v5

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_2
    iget-object v4, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-static {v4, v0}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 88
    .end local v3    # "k":I
    :cond_3
    :goto_1
    new-instance v2, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    iget-object v4, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-direct {v2, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    .line 89
    .end local v1    # "c":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .local v2, "c":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    iget v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iput v4, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    .line 90
    return-object v2

    .line 77
    .end local v2    # "c":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .restart local v1    # "c":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    :cond_4
    move v3, v0

    .restart local v3    # "k":I
    :goto_2
    iget-object v4, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 79
    iget-object v4, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v5, v3, v0

    iget-object v6, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v7, v3, v0

    aget-wide v6, v6, v7

    iget-object v8, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int/lit8 v9, v3, -0x1

    aget-wide v8, v8, v9

    const/16 v10, 0x18

    shr-long/2addr v8, v10

    add-long/2addr v6, v8

    aput-wide v6, v4, v5

    .line 80
    iget-object v4, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v5, v3, v0

    iget-object v6, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v7, v3, v0

    aget-wide v6, v6, v7

    iget-object v8, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v8, v8, v3

    const-wide/16 v10, 0x7ff

    and-long/2addr v8, v10

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    aput-wide v6, v4, v5

    .line 81
    iget-object v4, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v5, v3, v0

    aget-wide v6, v4, v5

    const-wide v8, 0x7ff0007ffL

    and-long/2addr v6, v8

    aput-wide v6, v4, v5

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 83
    :cond_5
    iget-object v4, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-static {v4, v0}, Lorg/spongycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    .line 84
    iget-object v4, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v5, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget-wide v6, v4, v5

    const-wide/16 v8, 0x7ff

    and-long/2addr v6, v8

    aput-wide v6, v4, v5

    goto :goto_1
.end method

.method public mult2And(I)V
    .locals 8
    .param p1, "mask"    # I

    .prologue
    .line 230
    int-to-long v4, p1

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    int-to-long v6, p1

    add-long v2, v4, v6

    .line 231
    .local v2, "longMask":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v4, v4, v0

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    and-long/2addr v4, v2

    aput-wide v4, v1, v0

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method public subAnd(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;I)V
    .locals 8
    .param p1, "b"    # Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .param p2, "mask"    # I

    .prologue
    .line 215
    int-to-long v4, p2

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    int-to-long v6, p2

    add-long v2, v4, v6

    .line 216
    .local v2, "longMask":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 218
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    const-wide v4, 0x800000800000L

    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v6, v6, v0

    add-long/2addr v4, v6

    iget-object v6, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    and-long/2addr v4, v2

    aput-wide v4, v1, v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method public toIntegerPolynomial()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 10

    .prologue
    const-wide/16 v8, 0x7ff

    .line 95
    iget v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    new-array v1, v4, [I

    .line 96
    .local v1, "intCoeffs":[I
    const/4 v2, 0x0

    .line 97
    .local v2, "uIdx":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 99
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "uIdx":I
    .local v3, "uIdx":I
    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v4, v4, v0

    and-long/2addr v4, v8

    long-to-int v4, v4

    aput v4, v1, v2

    .line 100
    iget v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ge v3, v4, :cond_1

    .line 102
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "uIdx":I
    .restart local v2    # "uIdx":I
    iget-object v4, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v4, v4, v0

    const/16 v6, 0x18

    shr-long/2addr v4, v6

    and-long/2addr v4, v8

    long-to-int v4, v4

    aput v4, v1, v3

    .line 97
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    new-instance v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v4, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v4

    .end local v2    # "uIdx":I
    .restart local v3    # "uIdx":I
    :cond_1
    move v2, v3

    .end local v3    # "uIdx":I
    .restart local v2    # "uIdx":I
    goto :goto_1
.end method
