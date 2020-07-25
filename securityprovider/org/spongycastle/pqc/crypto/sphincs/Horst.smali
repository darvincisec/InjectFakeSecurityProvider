.class Lorg/spongycastle/pqc/crypto/sphincs/Horst;
.super Ljava/lang/Object;
.source "Horst.java"


# static fields
.field static final HORST_K:I = 0x20

.field static final HORST_LOGT:I = 0x10

.field static final HORST_SIGBYTES:I = 0x3400

.field static final HORST_SKBYTES:I = 0x20

.field static final HORST_T:I = 0x10000

.field static final N_MASKS:I = 0x20


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static expand_seed([B[B)V
    .locals 6
    .param p0, "outseeds"    # [B
    .param p1, "inseed"    # [B

    .prologue
    const/4 v1, 0x0

    .line 15
    const-wide/32 v2, 0x200000

    move-object v0, p0

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/sphincs/Seed;->prg([BIJ[BI)V

    .line 16
    return-void
.end method

.method static horst_sign(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B[B)I
    .locals 22
    .param p0, "hs"    # Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "sig"    # [B
    .param p2, "sigOff"    # I
    .param p3, "pk"    # [B
    .param p4, "seed"    # [B
    .param p5, "masks"    # [B
    .param p6, "m_hash"    # [B

    .prologue
    .line 24
    const/high16 v2, 0x200000

    new-array v0, v2, [B

    move-object/from16 v19, v0

    .line 27
    .local v19, "sk":[B
    move/from16 v13, p2

    .line 29
    .local v13, "sigpos":I
    const v2, 0x3fffe0

    new-array v3, v2, [B

    .line 31
    .local v3, "tree":[B
    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/sphincs/Horst;->expand_seed([B[B)V

    .line 36
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/high16 v2, 0x10000

    if-ge v9, v2, :cond_0

    .line 38
    const v2, 0xffff

    add-int/2addr v2, v9

    mul-int/lit8 v2, v2, 0x20

    mul-int/lit8 v4, v9, 0x20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v2, v1, v4}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    .line 36
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 42
    :cond_0
    const/4 v9, 0x0

    :goto_1
    const/16 v2, 0x10

    if-ge v9, v2, :cond_2

    .line 44
    const/4 v2, 0x1

    rsub-int/lit8 v4, v9, 0x10

    shl-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    int-to-long v14, v2

    .line 45
    .local v14, "offset_in":J
    const/4 v2, 0x1

    rsub-int/lit8 v4, v9, 0x10

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 46
    .local v16, "offset_out":J
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    const/4 v2, 0x1

    rsub-int/lit8 v4, v9, 0x10

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v2, v4

    if-ge v11, v2, :cond_1

    .line 48
    int-to-long v4, v11

    add-long v4, v4, v16

    const-wide/16 v6, 0x20

    mul-long/2addr v4, v6

    long-to-int v4, v4

    mul-int/lit8 v2, v11, 0x2

    int-to-long v6, v2

    add-long/2addr v6, v14

    const-wide/16 v20, 0x20

    mul-long v6, v6, v20

    long-to-int v6, v6

    mul-int/lit8 v2, v9, 0x2

    mul-int/lit8 v8, v2, 0x20

    move-object/from16 v2, p0

    move-object v5, v3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 46
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 42
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 53
    .end local v11    # "j":I
    .end local v14    # "offset_in":J
    .end local v16    # "offset_out":J
    :cond_2
    const/16 v11, 0x7e0

    .restart local v11    # "j":I
    move/from16 v18, v13

    .end local v13    # "sigpos":I
    .local v18, "sigpos":I
    :goto_3
    const/16 v2, 0xfe0

    if-ge v11, v2, :cond_3

    .line 55
    add-int/lit8 v13, v18, 0x1

    .end local v18    # "sigpos":I
    .restart local v13    # "sigpos":I
    aget-byte v2, v3, v11

    aput-byte v2, p1, v18

    .line 53
    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v13

    .end local v13    # "sigpos":I
    .restart local v18    # "sigpos":I
    goto :goto_3

    .line 59
    :cond_3
    const/4 v9, 0x0

    move/from16 v13, v18

    .end local v18    # "sigpos":I
    .restart local v13    # "sigpos":I
    :goto_4
    const/16 v2, 0x20

    if-ge v9, v2, :cond_8

    .line 61
    mul-int/lit8 v2, v9, 0x2

    aget-byte v2, p6, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v4, v9, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p6, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int v10, v2, v4

    .line 63
    .local v10, "idx":I
    const/4 v12, 0x0

    .local v12, "k":I
    move/from16 v18, v13

    .end local v13    # "sigpos":I
    .restart local v18    # "sigpos":I
    :goto_5
    const/16 v2, 0x20

    if-ge v12, v2, :cond_4

    .line 64
    add-int/lit8 v13, v18, 0x1

    .end local v18    # "sigpos":I
    .restart local v13    # "sigpos":I
    mul-int/lit8 v2, v10, 0x20

    add-int/2addr v2, v12

    aget-byte v2, v19, v2

    aput-byte v2, p1, v18

    .line 63
    add-int/lit8 v12, v12, 0x1

    move/from16 v18, v13

    .end local v13    # "sigpos":I
    .restart local v18    # "sigpos":I
    goto :goto_5

    .line 66
    :cond_4
    const v2, 0xffff

    add-int/2addr v10, v2

    .line 67
    const/4 v11, 0x0

    move/from16 v13, v18

    .end local v18    # "sigpos":I
    .restart local v13    # "sigpos":I
    :goto_6
    const/16 v2, 0xa

    if-ge v11, v2, :cond_7

    .line 69
    and-int/lit8 v2, v10, 0x1

    if-eqz v2, :cond_5

    add-int/lit8 v10, v10, 0x1

    .line 70
    :goto_7
    const/4 v12, 0x0

    move/from16 v18, v13

    .end local v13    # "sigpos":I
    .restart local v18    # "sigpos":I
    :goto_8
    const/16 v2, 0x20

    if-ge v12, v2, :cond_6

    .line 71
    add-int/lit8 v13, v18, 0x1

    .end local v18    # "sigpos":I
    .restart local v13    # "sigpos":I
    mul-int/lit8 v2, v10, 0x20

    add-int/2addr v2, v12

    aget-byte v2, v3, v2

    aput-byte v2, p1, v18

    .line 70
    add-int/lit8 v12, v12, 0x1

    move/from16 v18, v13

    .end local v13    # "sigpos":I
    .restart local v18    # "sigpos":I
    goto :goto_8

    .line 69
    .end local v18    # "sigpos":I
    .restart local v13    # "sigpos":I
    :cond_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    .line 72
    .end local v13    # "sigpos":I
    .restart local v18    # "sigpos":I
    :cond_6
    add-int/lit8 v2, v10, -0x1

    div-int/lit8 v10, v2, 0x2

    .line 67
    add-int/lit8 v11, v11, 0x1

    move/from16 v13, v18

    .end local v18    # "sigpos":I
    .restart local v13    # "sigpos":I
    goto :goto_6

    .line 59
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 76
    .end local v10    # "idx":I
    .end local v12    # "k":I
    :cond_8
    const/4 v9, 0x0

    :goto_9
    const/16 v2, 0x20

    if-ge v9, v2, :cond_9

    .line 78
    aget-byte v2, v3, v9

    aput-byte v2, p3, v9

    .line 76
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 81
    :cond_9
    const/16 v2, 0x3400

    return v2
.end method

.method static horst_verify(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)I
    .locals 15
    .param p0, "hs"    # Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "pk"    # [B
    .param p2, "sig"    # [B
    .param p3, "sigOff"    # I
    .param p4, "masks"    # [B
    .param p5, "m_hash"    # [B

    .prologue
    .line 86
    const/16 v1, 0x400

    new-array v2, v1, [B

    .line 91
    .local v2, "buffer":[B
    move/from16 v0, p3

    add-int/lit16 v14, v0, 0x800

    .line 93
    .local v14, "sigOffset":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v10, v1, :cond_8

    .line 95
    mul-int/lit8 v1, v10, 0x2

    aget-byte v1, p5, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v3, v10, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p5, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int v11, v1, v3

    .line 97
    .local v11, "idx":I
    and-int/lit8 v1, v11, 0x1

    if-nez v1, :cond_0

    .line 99
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v2, v1, v0, v14}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    .line 100
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_1
    const/16 v1, 0x20

    if-ge v13, v1, :cond_1

    .line 101
    add-int/lit8 v1, v13, 0x20

    add-int/lit8 v3, v14, 0x20

    add-int/2addr v3, v13

    aget-byte v3, p2, v3

    aput-byte v3, v2, v1

    .line 100
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 105
    .end local v13    # "k":I
    :cond_0
    const/16 v1, 0x20

    move-object/from16 v0, p2

    invoke-virtual {p0, v2, v1, v0, v14}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    .line 106
    const/4 v13, 0x0

    .restart local v13    # "k":I
    :goto_2
    const/16 v1, 0x20

    if-ge v13, v1, :cond_1

    .line 107
    add-int/lit8 v1, v14, 0x20

    add-int/2addr v1, v13

    aget-byte v1, p2, v1

    aput-byte v1, v2, v13

    .line 106
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 109
    :cond_1
    add-int/lit8 v14, v14, 0x40

    .line 111
    const/4 v12, 0x1

    .local v12, "j":I
    :goto_3
    const/16 v1, 0xa

    if-ge v12, v1, :cond_4

    .line 113
    ushr-int/lit8 v11, v11, 0x1

    .line 115
    and-int/lit8 v1, v11, 0x1

    if-nez v1, :cond_2

    .line 117
    const/4 v3, 0x0

    const/4 v5, 0x0

    add-int/lit8 v1, v12, -0x1

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v7, v1, 0x20

    move-object v1, p0

    move-object v4, v2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 118
    const/4 v13, 0x0

    :goto_4
    const/16 v1, 0x20

    if-ge v13, v1, :cond_3

    .line 119
    add-int/lit8 v1, v13, 0x20

    add-int v3, v14, v13

    aget-byte v3, p2, v3

    aput-byte v3, v2, v1

    .line 118
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 124
    :cond_2
    const/16 v3, 0x20

    const/4 v5, 0x0

    add-int/lit8 v1, v12, -0x1

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v7, v1, 0x20

    move-object v1, p0

    move-object v4, v2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 125
    const/4 v13, 0x0

    :goto_5
    const/16 v1, 0x20

    if-ge v13, v1, :cond_3

    .line 126
    add-int v1, v14, v13

    aget-byte v1, p2, v1

    aput-byte v1, v2, v13

    .line 125
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 128
    :cond_3
    add-int/lit8 v14, v14, 0x20

    .line 111
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 131
    :cond_4
    ushr-int/lit8 v11, v11, 0x1

    .line 132
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x240

    move-object v1, p0

    move-object v4, v2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 134
    const/4 v13, 0x0

    :goto_6
    const/16 v1, 0x20

    if-ge v13, v1, :cond_7

    .line 135
    mul-int/lit8 v1, v11, 0x20

    add-int v1, v1, p3

    add-int/2addr v1, v13

    aget-byte v1, p2, v1

    aget-byte v3, v2, v13

    if-eq v1, v3, :cond_6

    .line 137
    const/4 v13, 0x0

    :goto_7
    const/16 v1, 0x20

    if-ge v13, v1, :cond_5

    .line 138
    const/4 v1, 0x0

    aput-byte v1, p1, v13

    .line 137
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 139
    :cond_5
    const/4 v1, -0x1

    .line 176
    .end local v11    # "idx":I
    .end local v13    # "k":I
    :goto_8
    return v1

    .line 134
    .restart local v11    # "idx":I
    .restart local v13    # "k":I
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 93
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 144
    .end local v11    # "idx":I
    .end local v12    # "j":I
    .end local v13    # "k":I
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_9
    const/16 v1, 0x20

    if-ge v12, v1, :cond_9

    .line 146
    mul-int/lit8 v3, v12, 0x20

    mul-int/lit8 v1, v12, 0x2

    mul-int/lit8 v1, v1, 0x20

    add-int v5, p3, v1

    const/16 v7, 0x280

    move-object v1, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 144
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 150
    :cond_9
    const/4 v12, 0x0

    :goto_a
    const/16 v1, 0x10

    if-ge v12, v1, :cond_a

    .line 152
    mul-int/lit8 v3, v12, 0x20

    mul-int/lit8 v1, v12, 0x2

    mul-int/lit8 v5, v1, 0x20

    const/16 v7, 0x2c0

    move-object v1, p0

    move-object v4, v2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 150
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 156
    :cond_a
    const/4 v12, 0x0

    :goto_b
    const/16 v1, 0x8

    if-ge v12, v1, :cond_b

    .line 158
    mul-int/lit8 v3, v12, 0x20

    mul-int/lit8 v1, v12, 0x2

    mul-int/lit8 v5, v1, 0x20

    const/16 v7, 0x300

    move-object v1, p0

    move-object v4, v2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 156
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 162
    :cond_b
    const/4 v12, 0x0

    :goto_c
    const/4 v1, 0x4

    if-ge v12, v1, :cond_c

    .line 164
    mul-int/lit8 v3, v12, 0x20

    mul-int/lit8 v1, v12, 0x2

    mul-int/lit8 v5, v1, 0x20

    const/16 v7, 0x340

    move-object v1, p0

    move-object v4, v2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 162
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 168
    :cond_c
    const/4 v12, 0x0

    :goto_d
    const/4 v1, 0x2

    if-ge v12, v1, :cond_d

    .line 170
    mul-int/lit8 v3, v12, 0x20

    mul-int/lit8 v1, v12, 0x2

    mul-int/lit8 v5, v1, 0x20

    const/16 v7, 0x380

    move-object v1, p0

    move-object v4, v2

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 168
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 174
    :cond_d
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x3c0

    move-object v3, p0

    move-object/from16 v4, p1

    move-object v6, v2

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 176
    const/4 v1, 0x0

    goto/16 :goto_8
.end method
