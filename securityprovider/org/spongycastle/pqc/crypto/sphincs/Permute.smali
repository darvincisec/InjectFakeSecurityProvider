.class Lorg/spongycastle/pqc/crypto/sphincs/Permute;
.super Ljava/lang/Object;
.source "Permute.java"


# static fields
.field private static final CHACHA_ROUNDS:I = 0xc


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static permute(I[I)V
    .locals 21
    .param p0, "rounds"    # I
    .param p1, "x"    # [I

    .prologue
    .line 20
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 22
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 24
    :cond_0
    rem-int/lit8 v19, p0, 0x2

    if-eqz v19, :cond_1

    .line 26
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Number of rounds must be even"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 29
    :cond_1
    const/16 v19, 0x0

    aget v3, p1, v19

    .line 30
    .local v3, "x00":I
    const/16 v19, 0x1

    aget v4, p1, v19

    .line 31
    .local v4, "x01":I
    const/16 v19, 0x2

    aget v5, p1, v19

    .line 32
    .local v5, "x02":I
    const/16 v19, 0x3

    aget v6, p1, v19

    .line 33
    .local v6, "x03":I
    const/16 v19, 0x4

    aget v7, p1, v19

    .line 34
    .local v7, "x04":I
    const/16 v19, 0x5

    aget v8, p1, v19

    .line 35
    .local v8, "x05":I
    const/16 v19, 0x6

    aget v9, p1, v19

    .line 36
    .local v9, "x06":I
    const/16 v19, 0x7

    aget v10, p1, v19

    .line 37
    .local v10, "x07":I
    const/16 v19, 0x8

    aget v11, p1, v19

    .line 38
    .local v11, "x08":I
    const/16 v19, 0x9

    aget v12, p1, v19

    .line 39
    .local v12, "x09":I
    const/16 v19, 0xa

    aget v13, p1, v19

    .line 40
    .local v13, "x10":I
    const/16 v19, 0xb

    aget v14, p1, v19

    .line 41
    .local v14, "x11":I
    const/16 v19, 0xc

    aget v15, p1, v19

    .line 42
    .local v15, "x12":I
    const/16 v19, 0xd

    aget v16, p1, v19

    .line 43
    .local v16, "x13":I
    const/16 v19, 0xe

    aget v17, p1, v19

    .line 44
    .local v17, "x14":I
    const/16 v19, 0xf

    aget v18, p1, v19

    .line 46
    .local v18, "x15":I
    move/from16 v2, p0

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_2

    .line 48
    add-int/2addr v3, v7

    xor-int v19, v15, v3

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v15

    .line 49
    add-int/2addr v11, v15

    xor-int v19, v7, v11

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v7

    .line 50
    add-int/2addr v3, v7

    xor-int v19, v15, v3

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v15

    .line 51
    add-int/2addr v11, v15

    xor-int v19, v7, v11

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v7

    .line 52
    add-int/2addr v4, v8

    xor-int v19, v16, v4

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v16

    .line 53
    add-int v12, v12, v16

    xor-int v19, v8, v12

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v8

    .line 54
    add-int/2addr v4, v8

    xor-int v19, v16, v4

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v16

    .line 55
    add-int v12, v12, v16

    xor-int v19, v8, v12

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v8

    .line 56
    add-int/2addr v5, v9

    xor-int v19, v17, v5

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v17

    .line 57
    add-int v13, v13, v17

    xor-int v19, v9, v13

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v9

    .line 58
    add-int/2addr v5, v9

    xor-int v19, v17, v5

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v17

    .line 59
    add-int v13, v13, v17

    xor-int v19, v9, v13

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v9

    .line 60
    add-int/2addr v6, v10

    xor-int v19, v18, v6

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v18

    .line 61
    add-int v14, v14, v18

    xor-int v19, v10, v14

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v10

    .line 62
    add-int/2addr v6, v10

    xor-int v19, v18, v6

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v18

    .line 63
    add-int v14, v14, v18

    xor-int v19, v10, v14

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v10

    .line 64
    add-int/2addr v3, v8

    xor-int v19, v18, v3

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v18

    .line 65
    add-int v13, v13, v18

    xor-int v19, v8, v13

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v8

    .line 66
    add-int/2addr v3, v8

    xor-int v19, v18, v3

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v18

    .line 67
    add-int v13, v13, v18

    xor-int v19, v8, v13

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v8

    .line 68
    add-int/2addr v4, v9

    xor-int v19, v15, v4

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v15

    .line 69
    add-int/2addr v14, v15

    xor-int v19, v9, v14

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v9

    .line 70
    add-int/2addr v4, v9

    xor-int v19, v15, v4

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v15

    .line 71
    add-int/2addr v14, v15

    xor-int v19, v9, v14

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v9

    .line 72
    add-int/2addr v5, v10

    xor-int v19, v16, v5

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v16

    .line 73
    add-int v11, v11, v16

    xor-int v19, v10, v11

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v10

    .line 74
    add-int/2addr v5, v10

    xor-int v19, v16, v5

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v16

    .line 75
    add-int v11, v11, v16

    xor-int v19, v10, v11

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v10

    .line 76
    add-int/2addr v6, v7

    xor-int v19, v17, v6

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v17

    .line 77
    add-int v12, v12, v17

    xor-int v19, v7, v12

    const/16 v20, 0xc

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v7

    .line 78
    add-int/2addr v6, v7

    xor-int v19, v17, v6

    const/16 v20, 0x8

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v17

    .line 79
    add-int v12, v12, v17

    xor-int v19, v7, v12

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v7

    .line 46
    add-int/lit8 v2, v2, -0x2

    goto/16 :goto_0

    .line 82
    :cond_2
    const/16 v19, 0x0

    aput v3, p1, v19

    .line 83
    const/16 v19, 0x1

    aput v4, p1, v19

    .line 84
    const/16 v19, 0x2

    aput v5, p1, v19

    .line 85
    const/16 v19, 0x3

    aput v6, p1, v19

    .line 86
    const/16 v19, 0x4

    aput v7, p1, v19

    .line 87
    const/16 v19, 0x5

    aput v8, p1, v19

    .line 88
    const/16 v19, 0x6

    aput v9, p1, v19

    .line 89
    const/16 v19, 0x7

    aput v10, p1, v19

    .line 90
    const/16 v19, 0x8

    aput v11, p1, v19

    .line 91
    const/16 v19, 0x9

    aput v12, p1, v19

    .line 92
    const/16 v19, 0xa

    aput v13, p1, v19

    .line 93
    const/16 v19, 0xb

    aput v14, p1, v19

    .line 94
    const/16 v19, 0xc

    aput v15, p1, v19

    .line 95
    const/16 v19, 0xd

    aput v16, p1, v19

    .line 96
    const/16 v19, 0xe

    aput v17, p1, v19

    .line 97
    const/16 v19, 0xf

    aput v18, p1, v19

    .line 98
    return-void
.end method

.method protected static rotl(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 12
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method chacha_permute([B[B)V
    .locals 5
    .param p1, "out"    # [B
    .param p2, "in"    # [B

    .prologue
    const/16 v4, 0x10

    .line 104
    new-array v1, v4, [I

    .line 105
    .local v1, "x":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 107
    mul-int/lit8 v2, v0, 0x4

    invoke-static {p2, v2}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    const/16 v2, 0xc

    invoke-static {v2, v1}, Lorg/spongycastle/pqc/crypto/sphincs/Permute;->permute(I[I)V

    .line 113
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 115
    aget v2, v1, v0

    mul-int/lit8 v3, v0, 0x4

    invoke-static {v2, p1, v3}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_1
    return-void
.end method
