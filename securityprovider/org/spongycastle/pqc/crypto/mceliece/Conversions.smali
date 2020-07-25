.class final Lorg/spongycastle/pqc/crypto/mceliece/Conversions;
.super Ljava/lang/Object;
.source "Conversions.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ZERO:Ljava/math/BigInteger;

    .line 16
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static decode(IILorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[B
    .locals 12
    .param p0, "n"    # I
    .param p1, "t"    # I
    .param p2, "vec"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .prologue
    .line 93
    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getLength()I

    move-result v8

    if-ne v8, p0, :cond_0

    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getHammingWeight()I

    move-result v8

    if-eq v8, p1, :cond_1

    .line 95
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "vector has wrong length or hamming weight"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 98
    :cond_1
    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v7

    .line 100
    .local v7, "vecArray":[I
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v0

    .line 101
    .local v0, "bc":Ljava/math/BigInteger;
    sget-object v1, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ZERO:Ljava/math/BigInteger;

    .line 102
    .local v1, "d":Ljava/math/BigInteger;
    move v4, p0

    .line 103
    .local v4, "nn":I
    move v6, p1

    .line 104
    .local v6, "tt":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p0, :cond_4

    .line 106
    sub-int v8, v4, v6

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    int-to-long v10, v4

    .line 107
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 106
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 108
    add-int/lit8 v4, v4, -0x1

    .line 110
    shr-int/lit8 v5, v3, 0x5

    .line 111
    .local v5, "q":I
    aget v8, v7, v5

    const/4 v9, 0x1

    and-int/lit8 v10, v3, 0x1f

    shl-int/2addr v9, v10

    and-int v2, v8, v9

    .line 112
    .local v2, "e":I
    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 115
    add-int/lit8 v6, v6, -0x1

    .line 116
    if-ne v4, v6, :cond_3

    .line 118
    sget-object v0, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    .line 104
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_3
    add-int/lit8 v8, v6, 0x1

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    sub-int v9, v4, v6

    int-to-long v10, v9

    .line 123
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 122
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1

    .line 129
    .end local v2    # "e":I
    .end local v5    # "q":I
    :cond_4
    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/BigIntUtils;->toMinimalByteArray(Ljava/math/BigInteger;)[B

    move-result-object v8

    return-object v8
.end method

.method public static encode(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 10
    .param p0, "n"    # I
    .param p1, "t"    # I
    .param p2, "m"    # [B

    .prologue
    .line 37
    if-ge p0, p1, :cond_0

    .line 39
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "n < t"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 43
    :cond_0
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v0

    .line 45
    .local v0, "c":Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v1, v6, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 47
    .local v1, "i":Ljava/math/BigInteger;
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 49
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Encoded number too large."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 52
    :cond_1
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v4, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 54
    .local v4, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move v3, p0

    .line 55
    .local v3, "nn":I
    move v5, p1

    .line 56
    .local v5, "tt":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, p0, :cond_4

    .line 58
    sub-int v6, v3, v5

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    int-to-long v8, v3

    .line 59
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    .line 58
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 60
    add-int/lit8 v3, v3, -0x1

    .line 61
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gtz v6, :cond_2

    .line 63
    invoke-virtual {v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->setBit(I)V

    .line 64
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 65
    add-int/lit8 v5, v5, -0x1

    .line 66
    if-ne v3, v5, :cond_3

    .line 68
    sget-object v0, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    .line 56
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_3
    add-int/lit8 v6, v5, 0x1

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    sub-int v7, v3, v5

    int-to-long v8, v7

    .line 73
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1

    .line 78
    :cond_4
    return-object v4
.end method

.method public static signConversion(II[B)[B
    .locals 24
    .param p0, "n"    # I
    .param p1, "t"    # I
    .param p2, "m"    # [B

    .prologue
    .line 145
    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 147
    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "n < t"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 150
    :cond_0
    invoke-static/range {p0 .. p1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v4

    .line 152
    .local v4, "bc":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v21

    add-int/lit8 v17, v21, -0x1

    .line 154
    .local v17, "s":I
    shr-int/lit8 v18, v17, 0x3

    .line 155
    .local v18, "sq":I
    and-int/lit8 v19, v17, 0x7

    .line 156
    .local v19, "sr":I
    if-nez v19, :cond_1

    .line 158
    add-int/lit8 v18, v18, -0x1

    .line 159
    const/16 v19, 0x8

    .line 163
    :cond_1
    shr-int/lit8 v12, p0, 0x3

    .line 164
    .local v12, "nq":I
    and-int/lit8 v13, p0, 0x7

    .line 165
    .local v13, "nr":I
    if-nez v13, :cond_2

    .line 167
    add-int/lit8 v12, v12, -0x1

    .line 168
    const/16 v13, 0x8

    .line 171
    :cond_2
    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    new-array v6, v0, [B

    .line 172
    .local v6, "data":[B
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 174
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    move-object/from16 v0, p2

    array-length v10, v0

    .local v10, "i":I
    :goto_0
    array-length v0, v6

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_4

    .line 177
    const/16 v21, 0x0

    aput-byte v21, v6, v10

    .line 175
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 182
    .end local v10    # "i":I
    :cond_3
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v6, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    const/16 v21, 0x1

    shl-int v21, v21, v13

    add-int/lit8 v8, v21, -0x1

    .line 184
    .local v8, "h":I
    aget-byte v21, p2, v12

    and-int v21, v21, v8

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v6, v12

    .line 187
    .end local v8    # "h":I
    :cond_4
    sget-object v5, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ZERO:Ljava/math/BigInteger;

    .line 188
    .local v5, "d":Ljava/math/BigInteger;
    move/from16 v11, p0

    .line 189
    .local v11, "nn":I
    move/from16 v20, p1

    .line 190
    .local v20, "tt":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    move/from16 v0, p0

    if-ge v10, v0, :cond_7

    .line 192
    new-instance v21, Ljava/math/BigInteger;

    sub-int v22, v11, v20

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    new-instance v22, Ljava/math/BigInteger;

    .line 193
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 194
    add-int/lit8 v11, v11, -0x1

    .line 196
    ushr-int/lit8 v14, v10, 0x3

    .line 197
    .local v14, "q":I
    and-int/lit8 v15, v10, 0x7

    .line 198
    .local v15, "r":I
    const/16 v21, 0x1

    shl-int v15, v21, v15

    .line 199
    aget-byte v21, v6, v14

    and-int v21, v21, v15

    move/from16 v0, v21

    int-to-byte v7, v0

    .line 200
    .local v7, "e":B
    if-eqz v7, :cond_5

    .line 202
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 203
    add-int/lit8 v20, v20, -0x1

    .line 204
    move/from16 v0, v20

    if-ne v11, v0, :cond_6

    .line 206
    sget-object v4, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    .line 190
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 210
    :cond_6
    new-instance v21, Ljava/math/BigInteger;

    add-int/lit8 v22, v20, 0x1

    .line 211
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    new-instance v22, Ljava/math/BigInteger;

    sub-int v23, v11, v20

    .line 212
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_2

    .line 217
    .end local v7    # "e":B
    .end local v14    # "q":I
    .end local v15    # "r":I
    :cond_7
    add-int/lit8 v21, v18, 0x1

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 218
    .local v16, "result":[B
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    .line 219
    .local v9, "help":[B
    array-length v0, v9

    move/from16 v21, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 221
    const/16 v21, 0x0

    const/16 v22, 0x0

    array-length v0, v9

    move/from16 v23, v0

    move/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    array-length v10, v9

    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_9

    .line 224
    const/16 v21, 0x0

    aput-byte v21, v16, v10

    .line 222
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 229
    :cond_8
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-static {v9, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    const/16 v21, 0x1

    shl-int v21, v21, v19

    add-int/lit8 v21, v21, -0x1

    aget-byte v22, v9, v18

    and-int v21, v21, v22

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v16, v18

    .line 233
    :cond_9
    return-object v16
.end method
