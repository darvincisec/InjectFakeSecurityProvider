.class public Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;
.super Ljava/lang/Object;
.source "GOST3410ParametersGenerator.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private init_random:Ljava/security/SecureRandom;

.field private size:I

.field private typeproc:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    .line 19
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private procedure_A(II[Ljava/math/BigInteger;I)I
    .locals 26
    .param p1, "x0"    # I
    .param p2, "c"    # I
    .param p3, "pq"    # [Ljava/math/BigInteger;
    .param p4, "size"    # I

    .prologue
    .line 42
    :goto_0
    if-ltz p1, :cond_0

    const/high16 v21, 0x10000

    move/from16 v0, p1

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 44
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/SecureRandom;->nextInt()I

    move-result v21

    const v22, 0x8000

    div-int p1, v21, v22

    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    if-ltz p2, :cond_2

    const/high16 v21, 0x10000

    move/from16 v0, p2

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    div-int/lit8 v21, p2, 0x2

    if-nez v21, :cond_3

    .line 49
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/SecureRandom;->nextInt()I

    move-result v21

    const v22, 0x8000

    div-int v21, v21, v22

    add-int/lit8 p2, v21, 0x1

    goto :goto_1

    .line 52
    :cond_3
    new-instance v6, Ljava/math/BigInteger;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 53
    .local v6, "C":Ljava/math/BigInteger;
    new-instance v9, Ljava/math/BigInteger;

    const-string v21, "19381"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 56
    .local v9, "constA16":Ljava/math/BigInteger;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v20, v0

    .line 57
    .local v20, "y":[Ljava/math/BigInteger;
    const/16 v21, 0x0

    new-instance v22, Ljava/math/BigInteger;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v22, v20, v21

    .line 60
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 61
    .local v17, "t":[I
    const/16 v21, 0x0

    aput p4, v17, v21

    .line 62
    const/16 v16, 0x0

    .line 63
    .local v16, "s":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    aget v21, v17, v10

    const/16 v22, 0x11

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    .line 66
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 67
    .local v18, "tmp_t":[I
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 69
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v17

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    add-int/lit8 v21, v10, 0x1

    aget v22, v17, v10

    div-int/lit8 v22, v22, 0x2

    aput v22, v17, v21

    .line 72
    add-int/lit8 v16, v10, 0x1

    .line 63
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 76
    .end local v18    # "tmp_t":[I
    :cond_4
    add-int/lit8 v21, v16, 0x1

    move/from16 v0, v21

    new-array v14, v0, [Ljava/math/BigInteger;

    .line 77
    .local v14, "p":[Ljava/math/BigInteger;
    new-instance v21, Ljava/math/BigInteger;

    const-string v22, "8003"

    const/16 v23, 0x10

    invoke-direct/range {v21 .. v23}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v21, v14, v16

    .line 79
    add-int/lit8 v13, v16, -0x1

    .line 81
    .local v13, "m":I
    const/4 v10, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v10, v0, :cond_b

    .line 83
    aget v21, v17, v13

    div-int/lit8 v15, v21, 0x10

    .line 88
    .local v15, "rm":I
    :cond_5
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v19, v0

    .line 89
    .local v19, "tmp_y":[Ljava/math/BigInteger;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    add-int/lit8 v21, v15, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v20, v0

    .line 91
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    if-ge v11, v15, :cond_6

    .line 95
    add-int/lit8 v21, v11, 0x1

    aget-object v22, v20, v11

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    sget-object v23, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v24, 0x10

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aput-object v22, v20, v21

    .line 93
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 99
    :cond_6
    new-instance v8, Ljava/math/BigInteger;

    const-string v21, "0"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 100
    .local v8, "Ym":Ljava/math/BigInteger;
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v15, :cond_7

    .line 102
    aget-object v21, v20, v11

    sget-object v22, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v23, v11, 0x10

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 100
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 105
    :cond_7
    const/16 v21, 0x0

    aget-object v22, v20, v15

    aput-object v22, v20, v21

    .line 108
    sget-object v21, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v22, v17, v13

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v21

    add-int/lit8 v22, v13, 0x1

    aget-object v22, v14, v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    sget-object v22, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v23, v17, v13

    add-int/lit8 v23, v23, -0x1

    .line 109
    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    add-int/lit8 v23, v13, 0x1

    aget-object v23, v14, v23

    sget-object v24, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v25, v15, 0x10

    .line 110
    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    .line 109
    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 112
    .local v7, "N":Ljava/math/BigInteger;
    sget-object v21, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    sget-object v22, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    if-nez v21, :cond_8

    .line 114
    sget-object v21, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 117
    :cond_8
    const/4 v12, 0x0

    .line 122
    .local v12, "k":I
    :goto_6
    add-int/lit8 v21, v13, 0x1

    aget-object v21, v14, v21

    int-to-long v0, v12

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    sget-object v22, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    aput-object v21, v14, v13

    .line 124
    aget-object v21, v14, v13

    sget-object v22, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v23, v17, v13

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 130
    sget-object v21, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    add-int/lit8 v22, v13, 0x1

    aget-object v22, v14, v22

    int-to-long v0, v12

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aget-object v23, v14, v13

    invoke-virtual/range {v21 .. v23}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    sget-object v22, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    if-nez v21, :cond_9

    sget-object v21, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v0, v12

    move-wide/from16 v22, v0

    .line 131
    invoke-static/range {v22 .. v23}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aget-object v23, v14, v13

    invoke-virtual/range {v21 .. v23}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    sget-object v22, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    if-eqz v21, :cond_9

    .line 133
    add-int/lit8 v13, v13, -0x1

    .line 143
    if-ltz v13, :cond_a

    .line 81
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 138
    :cond_9
    add-int/lit8 v12, v12, 0x2

    .line 139
    goto :goto_6

    .line 149
    :cond_a
    const/16 v21, 0x0

    const/16 v22, 0x0

    aget-object v22, v14, v22

    aput-object v22, p3, v21

    .line 150
    const/16 v21, 0x1

    const/16 v22, 0x1

    aget-object v22, v14, v22

    aput-object v22, p3, v21

    .line 151
    const/16 v21, 0x0

    aget-object v21, v20, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->intValue()I

    move-result v21

    .line 155
    .end local v7    # "N":Ljava/math/BigInteger;
    .end local v8    # "Ym":Ljava/math/BigInteger;
    .end local v11    # "j":I
    .end local v12    # "k":I
    .end local v15    # "rm":I
    .end local v19    # "tmp_y":[Ljava/math/BigInteger;
    :goto_7
    return v21

    :cond_b
    const/16 v21, 0x0

    aget-object v21, v20, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->intValue()I

    move-result v21

    goto :goto_7
.end method

.method private procedure_Aa(JJ[Ljava/math/BigInteger;I)J
    .locals 27
    .param p1, "x0"    # J
    .param p3, "c"    # J
    .param p5, "pq"    # [Ljava/math/BigInteger;
    .param p6, "size"    # I

    .prologue
    .line 162
    :goto_0
    const-wide/16 v22, 0x0

    cmp-long v21, p1, v22

    if-ltz v21, :cond_0

    const-wide v22, 0x100000000L

    cmp-long v21, p1, v22

    if-lez v21, :cond_1

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/SecureRandom;->nextInt()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 p1, v0

    goto :goto_0

    .line 167
    :cond_1
    :goto_1
    const-wide/16 v22, 0x0

    cmp-long v21, p3, v22

    if-ltz v21, :cond_2

    const-wide v22, 0x100000000L

    cmp-long v21, p3, v22

    if-gtz v21, :cond_2

    const-wide/16 v22, 0x2

    div-long v22, p3, v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-nez v21, :cond_3

    .line 169
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/SecureRandom;->nextInt()I

    move-result v21

    mul-int/lit8 v21, v21, 0x2

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 p3, v0

    goto :goto_1

    .line 172
    :cond_3
    new-instance v6, Ljava/math/BigInteger;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 173
    .local v6, "C":Ljava/math/BigInteger;
    new-instance v9, Ljava/math/BigInteger;

    const-string v21, "97781173"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 176
    .local v9, "constA32":Ljava/math/BigInteger;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v20, v0

    .line 177
    .local v20, "y":[Ljava/math/BigInteger;
    const/16 v21, 0x0

    new-instance v22, Ljava/math/BigInteger;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v22, v20, v21

    .line 180
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 181
    .local v17, "t":[I
    const/16 v21, 0x0

    aput p6, v17, v21

    .line 182
    const/16 v16, 0x0

    .line 183
    .local v16, "s":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    aget v21, v17, v10

    const/16 v22, 0x21

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    .line 186
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 187
    .local v18, "tmp_t":[I
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 189
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v17

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    add-int/lit8 v21, v10, 0x1

    aget v22, v17, v10

    div-int/lit8 v22, v22, 0x2

    aput v22, v17, v21

    .line 192
    add-int/lit8 v16, v10, 0x1

    .line 183
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 196
    .end local v18    # "tmp_t":[I
    :cond_4
    add-int/lit8 v21, v16, 0x1

    move/from16 v0, v21

    new-array v14, v0, [Ljava/math/BigInteger;

    .line 197
    .local v14, "p":[Ljava/math/BigInteger;
    new-instance v21, Ljava/math/BigInteger;

    const-string v22, "8000000B"

    const/16 v23, 0x10

    invoke-direct/range {v21 .. v23}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v21, v14, v16

    .line 199
    add-int/lit8 v13, v16, -0x1

    .line 201
    .local v13, "m":I
    const/4 v10, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v10, v0, :cond_b

    .line 203
    aget v21, v17, v13

    div-int/lit8 v15, v21, 0x20

    .line 208
    .local v15, "rm":I
    :cond_5
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v19, v0

    .line 209
    .local v19, "tmp_y":[Ljava/math/BigInteger;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    add-int/lit8 v21, v15, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v20, v0

    .line 211
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    if-ge v11, v15, :cond_6

    .line 215
    add-int/lit8 v21, v11, 0x1

    aget-object v22, v20, v11

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    sget-object v23, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v24, 0x20

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aput-object v22, v20, v21

    .line 213
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 219
    :cond_6
    new-instance v8, Ljava/math/BigInteger;

    const-string v21, "0"

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 220
    .local v8, "Ym":Ljava/math/BigInteger;
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v15, :cond_7

    .line 222
    aget-object v21, v20, v11

    sget-object v22, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v23, v11, 0x20

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 220
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 225
    :cond_7
    const/16 v21, 0x0

    aget-object v22, v20, v15

    aput-object v22, v20, v21

    .line 228
    sget-object v21, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v22, v17, v13

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v21

    add-int/lit8 v22, v13, 0x1

    aget-object v22, v14, v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    sget-object v22, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v23, v17, v13

    add-int/lit8 v23, v23, -0x1

    .line 229
    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    add-int/lit8 v23, v13, 0x1

    aget-object v23, v14, v23

    sget-object v24, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v25, v15, 0x20

    .line 230
    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    .line 229
    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 232
    .local v7, "N":Ljava/math/BigInteger;
    sget-object v21, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    sget-object v22, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    if-nez v21, :cond_8

    .line 234
    sget-object v21, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 237
    :cond_8
    const/4 v12, 0x0

    .line 242
    .local v12, "k":I
    :goto_6
    add-int/lit8 v21, v13, 0x1

    aget-object v21, v14, v21

    int-to-long v0, v12

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    sget-object v22, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    aput-object v21, v14, v13

    .line 244
    aget-object v21, v14, v13

    sget-object v22, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    aget v23, v17, v13

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 250
    sget-object v21, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    add-int/lit8 v22, v13, 0x1

    aget-object v22, v14, v22

    int-to-long v0, v12

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aget-object v23, v14, v13

    invoke-virtual/range {v21 .. v23}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    sget-object v22, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    if-nez v21, :cond_9

    sget-object v21, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v0, v12

    move-wide/from16 v22, v0

    .line 251
    invoke-static/range {v22 .. v23}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aget-object v23, v14, v13

    invoke-virtual/range {v21 .. v23}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    sget-object v22, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    if-eqz v21, :cond_9

    .line 253
    add-int/lit8 v13, v13, -0x1

    .line 263
    if-ltz v13, :cond_a

    .line 201
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 258
    :cond_9
    add-int/lit8 v12, v12, 0x2

    .line 259
    goto :goto_6

    .line 269
    :cond_a
    const/16 v21, 0x0

    const/16 v22, 0x0

    aget-object v22, v14, v22

    aput-object v22, p5, v21

    .line 270
    const/16 v21, 0x1

    const/16 v22, 0x1

    aget-object v22, v14, v22

    aput-object v22, p5, v21

    .line 271
    const/16 v21, 0x0

    aget-object v21, v20, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v22

    .line 275
    .end local v7    # "N":Ljava/math/BigInteger;
    .end local v8    # "Ym":Ljava/math/BigInteger;
    .end local v11    # "j":I
    .end local v12    # "k":I
    .end local v15    # "rm":I
    .end local v19    # "tmp_y":[Ljava/math/BigInteger;
    :goto_7
    return-wide v22

    :cond_b
    const/16 v21, 0x0

    aget-object v21, v20, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v22

    goto :goto_7
.end method

.method private procedure_B(II[Ljava/math/BigInteger;)V
    .locals 21
    .param p1, "x0"    # I
    .param p2, "c"    # I
    .param p3, "pq"    # [Ljava/math/BigInteger;

    .prologue
    .line 282
    :goto_0
    if-ltz p1, :cond_0

    const/high16 v16, 0x10000

    move/from16 v0, p1

    move/from16 v1, v16

    if-le v0, v1, :cond_1

    .line 284
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/security/SecureRandom;->nextInt()I

    move-result v16

    const v17, 0x8000

    div-int p1, v16, v17

    goto :goto_0

    .line 287
    :cond_1
    :goto_1
    if-ltz p2, :cond_2

    const/high16 v16, 0x10000

    move/from16 v0, p2

    move/from16 v1, v16

    if-gt v0, v1, :cond_2

    div-int/lit8 v16, p2, 0x2

    if-nez v16, :cond_3

    .line 289
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/security/SecureRandom;->nextInt()I

    move-result v16

    const v17, 0x8000

    div-int v16, v16, v17

    add-int/lit8 p2, v16, 0x1

    goto :goto_1

    .line 292
    :cond_3
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v13, v0, [Ljava/math/BigInteger;

    .line 293
    .local v13, "qp":[Ljava/math/BigInteger;
    const/4 v12, 0x0

    .local v12, "q":Ljava/math/BigInteger;
    const/4 v6, 0x0

    .local v6, "Q":Ljava/math/BigInteger;
    const/4 v11, 0x0

    .line 294
    .local v11, "p":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 295
    .local v4, "C":Ljava/math/BigInteger;
    new-instance v8, Ljava/math/BigInteger;

    const-string v16, "19381"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 298
    .local v8, "constA16":Ljava/math/BigInteger;
    const/16 v16, 0x100

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v13, v3}, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_A(II[Ljava/math/BigInteger;I)I

    move-result p1

    .line 299
    const/16 v16, 0x0

    aget-object v12, v13, v16

    .line 302
    const/16 v16, 0x200

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v13, v3}, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_A(II[Ljava/math/BigInteger;I)I

    move-result p1

    .line 303
    const/16 v16, 0x0

    aget-object v6, v13, v16

    .line 305
    const/16 v16, 0x41

    move/from16 v0, v16

    new-array v15, v0, [Ljava/math/BigInteger;

    .line 306
    .local v15, "y":[Ljava/math/BigInteger;
    const/16 v16, 0x0

    new-instance v17, Ljava/math/BigInteger;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v17, v15, v16

    .line 308
    const/16 v14, 0x400

    .line 313
    .local v14, "tp":I
    :cond_4
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v9, v0, :cond_5

    .line 315
    add-int/lit8 v16, v9, 0x1

    aget-object v17, v15, v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    sget-object v18, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v19, 0x10

    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    aput-object v17, v15, v16

    .line 313
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 319
    :cond_5
    new-instance v7, Ljava/math/BigInteger;

    const-string v16, "0"

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 321
    .local v7, "Y":Ljava/math/BigInteger;
    const/4 v9, 0x0

    :goto_3
    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v9, v0, :cond_6

    .line 323
    aget-object v16, v15, v9

    sget-object v17, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v18, v9, 0x10

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 321
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 326
    :cond_6
    const/16 v16, 0x0

    const/16 v17, 0x40

    aget-object v17, v15, v17

    aput-object v17, v15, v16

    .line 329
    sget-object v16, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v17, 0x3ff

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual {v12, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    sget-object v17, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v18, 0x3ff

    .line 330
    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 331
    invoke-virtual {v12, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    sget-object v19, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v20, 0x400

    invoke-virtual/range {v19 .. v20}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 330
    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 333
    .local v5, "N":Ljava/math/BigInteger;
    sget-object v16, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    sget-object v17, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-nez v16, :cond_7

    .line 335
    sget-object v16, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 338
    :cond_7
    const/4 v10, 0x0

    .line 343
    .local v10, "k":I
    :goto_4
    invoke-virtual {v12, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    int-to-long v0, v10

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    sget-object v17, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 345
    sget-object v16, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 351
    sget-object v16, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    int-to-long v0, v10

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    sget-object v17, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-nez v16, :cond_8

    sget-object v16, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v0, v10

    move-wide/from16 v18, v0

    .line 352
    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    sget-object v17, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-eqz v16, :cond_8

    .line 354
    const/16 v16, 0x0

    aput-object v11, p3, v16

    .line 355
    const/16 v16, 0x1

    aput-object v12, p3, v16

    .line 356
    return-void

    .line 360
    :cond_8
    add-int/lit8 v10, v10, 0x2

    .line 361
    goto/16 :goto_4
.end method

.method private procedure_Bb(JJ[Ljava/math/BigInteger;)V
    .locals 21
    .param p1, "x0"    # J
    .param p3, "c"    # J
    .param p5, "pq"    # [Ljava/math/BigInteger;

    .prologue
    .line 371
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-ltz v3, :cond_0

    const-wide v4, 0x100000000L

    cmp-long v3, p1, v4

    if-lez v3, :cond_1

    .line 373
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-long v0, v3

    move-wide/from16 p1, v0

    goto :goto_0

    .line 376
    :cond_1
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-ltz v3, :cond_2

    const-wide v4, 0x100000000L

    cmp-long v3, p3, v4

    if-gtz v3, :cond_2

    const-wide/16 v4, 0x2

    div-long v4, p3, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 378
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    int-to-long v0, v3

    move-wide/from16 p3, v0

    goto :goto_1

    .line 381
    :cond_3
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/math/BigInteger;

    .line 382
    .local v8, "qp":[Ljava/math/BigInteger;
    const/16 v17, 0x0

    .local v17, "q":Ljava/math/BigInteger;
    const/4 v11, 0x0

    .local v11, "Q":Ljava/math/BigInteger;
    const/16 v16, 0x0

    .line 383
    .local v16, "p":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 384
    .local v2, "C":Ljava/math/BigInteger;
    new-instance v13, Ljava/math/BigInteger;

    const-string v3, "97781173"

    invoke-direct {v13, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 387
    .local v13, "constA32":Ljava/math/BigInteger;
    const/16 v9, 0x100

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v9}, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Aa(JJ[Ljava/math/BigInteger;I)J

    move-result-wide p1

    .line 388
    const/4 v3, 0x0

    aget-object v17, v8, v3

    .line 391
    const/16 v9, 0x200

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v9}, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Aa(JJ[Ljava/math/BigInteger;I)J

    move-result-wide p1

    .line 392
    const/4 v3, 0x0

    aget-object v11, v8, v3

    .line 394
    const/16 v3, 0x21

    new-array v0, v3, [Ljava/math/BigInteger;

    move-object/from16 v19, v0

    .line 395
    .local v19, "y":[Ljava/math/BigInteger;
    const/4 v3, 0x0

    new-instance v4, Ljava/math/BigInteger;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    aput-object v4, v19, v3

    .line 397
    const/16 v18, 0x400

    .line 402
    .local v18, "tp":I
    :cond_4
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    const/16 v3, 0x20

    if-ge v14, v3, :cond_5

    .line 404
    add-int/lit8 v3, v14, 0x1

    aget-object v4, v19, v14

    invoke-virtual {v4, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v19, v3

    .line 402
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 408
    :cond_5
    new-instance v12, Ljava/math/BigInteger;

    const-string v3, "0"

    invoke-direct {v12, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 409
    .local v12, "Y":Ljava/math/BigInteger;
    const/4 v14, 0x0

    :goto_3
    const/16 v3, 0x20

    if-ge v14, v3, :cond_6

    .line 411
    aget-object v3, v19, v14

    sget-object v4, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    mul-int/lit8 v5, v14, 0x20

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 409
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 414
    :cond_6
    const/4 v3, 0x0

    const/16 v4, 0x20

    aget-object v4, v19, v4

    aput-object v4, v19, v3

    .line 417
    sget-object v3, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v4, 0x3ff

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v5, 0x3ff

    .line 418
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 419
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 418
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 421
    .local v10, "N":Ljava/math/BigInteger;
    sget-object v3, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-nez v3, :cond_7

    .line 423
    sget-object v3, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 426
    :cond_7
    const/4 v15, 0x0

    .line 431
    .local v15, "k":I
    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    int-to-long v4, v15

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 433
    sget-object v3, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 439
    sget-object v3, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    int-to-long v6, v15

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->TWO:Ljava/math/BigInteger;

    int-to-long v4, v15

    .line 440
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-eqz v3, :cond_8

    .line 442
    const/4 v3, 0x0

    aput-object v16, p5, v3

    .line 443
    const/4 v3, 0x1

    aput-object v17, p5, v3

    .line 444
    return-void

    .line 448
    :cond_8
    add-int/lit8 v15, v15, 0x2

    .line 449
    goto :goto_4
.end method

.method private procedure_C(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;

    .prologue
    .line 463
    sget-object v5, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 464
    .local v3, "pSub1":Ljava/math/BigInteger;
    invoke-virtual {v3, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 465
    .local v4, "pSub1DivQ":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 469
    .local v2, "length":I
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-direct {v1, v2, v5}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 472
    .local v1, "d":Ljava/math/BigInteger;
    sget-object v5, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gez v5, :cond_0

    .line 474
    invoke-virtual {v1, v4, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 476
    .local v0, "a":Ljava/math/BigInteger;
    sget-object v5, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 478
    return-object v0
.end method


# virtual methods
.method public generateParameters()Lorg/spongycastle/crypto/params/GOST3410Parameters;
    .locals 14

    .prologue
    const/16 v7, 0x200

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 490
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/math/BigInteger;

    .line 491
    .local v6, "pq":[Ljava/math/BigInteger;
    const/4 v10, 0x0

    .local v10, "q":Ljava/math/BigInteger;
    const/4 v9, 0x0

    .local v9, "p":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .line 496
    .local v0, "a":Ljava/math/BigInteger;
    iget v1, p0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->typeproc:I

    if-ne v1, v12, :cond_0

    .line 498
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v11

    .line 499
    .local v11, "x0":I
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v8

    .line 501
    .local v8, "c":I
    iget v1, p0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->size:I

    sparse-switch v1, :sswitch_data_0

    .line 510
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v7, "Ooops! key size 512 or 1024 bit."

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 504
    :sswitch_0
    invoke-direct {p0, v11, v8, v6, v7}, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_A(II[Ljava/math/BigInteger;I)I

    .line 512
    :goto_0
    aget-object v9, v6, v13

    aget-object v10, v6, v12

    .line 513
    invoke-direct {p0, v9, v10}, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_C(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 516
    new-instance v1, Lorg/spongycastle/crypto/params/GOST3410Parameters;

    new-instance v7, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;

    invoke-direct {v7, v11, v8}, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;-><init>(II)V

    invoke-direct {v1, v9, v10, v0, v7}, Lorg/spongycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;)V

    .line 538
    .end local v8    # "c":I
    .end local v11    # "x0":I
    :goto_1
    return-object v1

    .line 507
    .restart local v8    # "c":I
    .restart local v11    # "x0":I
    :sswitch_1
    invoke-direct {p0, v11, v8, v6}, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_B(II[Ljava/math/BigInteger;)V

    goto :goto_0

    .line 520
    .end local v8    # "c":I
    .end local v11    # "x0":I
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    .line 521
    .local v2, "x0L":J
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v4

    .line 523
    .local v4, "cL":J
    iget v1, p0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->size:I

    sparse-switch v1, :sswitch_data_1

    .line 532
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v7, "Ooops! key size 512 or 1024 bit."

    invoke-direct {v1, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2
    move-object v1, p0

    .line 526
    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Aa(JJ[Ljava/math/BigInteger;I)J

    .line 534
    :goto_2
    aget-object v9, v6, v13

    aget-object v10, v6, v12

    .line 535
    invoke-direct {p0, v9, v10}, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_C(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 538
    new-instance v1, Lorg/spongycastle/crypto/params/GOST3410Parameters;

    new-instance v7, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;

    invoke-direct {v7, v2, v3, v4, v5}, Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;-><init>(JJ)V

    invoke-direct {v1, v9, v10, v0, v7}, Lorg/spongycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/GOST3410ValidationParameters;)V

    goto :goto_1

    :sswitch_3
    move-object v1, p0

    .line 529
    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->procedure_Bb(JJ[Ljava/math/BigInteger;)V

    goto :goto_2

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch

    .line 523
    :sswitch_data_1
    .sparse-switch
        0x200 -> :sswitch_2
        0x400 -> :sswitch_3
    .end sparse-switch
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "typeproc"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 33
    iput p1, p0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->size:I

    .line 34
    iput p2, p0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->typeproc:I

    .line 35
    iput-object p3, p0, Lorg/spongycastle/crypto/generators/GOST3410ParametersGenerator;->init_random:Ljava/security/SecureRandom;

    .line 36
    return-void
.end method
