.class public Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;
.super Ljava/lang/Object;
.source "SPHINCS256Signer.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageSigner;


# instance fields
.field private final hashFunctions:Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;

.field private keyData:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;)V
    .locals 2
    .param p1, "nDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "twoNDigest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n-digest needs to produce 32 bytes of output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "2n-digest needs to produce 64 bytes of output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    new-instance v0, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;-><init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;

    .line 41
    return-void
.end method

.method static compute_authpath_wots(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[BILorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;[B[BI)V
    .locals 22
    .param p0, "hs"    # Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "root"    # [B
    .param p2, "authpath"    # [B
    .param p3, "authOff"    # I
    .param p4, "a"    # Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;
    .param p5, "sk"    # [B
    .param p6, "masks"    # [B
    .param p7, "height"    # I

    .prologue
    .line 122
    new-instance v20, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>(Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 124
    .local v20, "ta":Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;
    const/16 v5, 0x800

    new-array v0, v5, [B

    move-object/from16 v21, v0

    .line 125
    .local v21, "tree":[B
    const/16 v5, 0x400

    new-array v8, v5, [B

    .line 126
    .local v8, "seed":[B
    const v5, 0x10c00

    new-array v6, v5, [B

    .line 129
    .local v6, "pk":[B
    const-wide/16 v10, 0x0

    move-object/from16 v0, v20

    iput-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_0
    move-object/from16 v0, v20

    iget-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v12, 0x20

    cmp-long v5, v10, v12

    if-gez v5, :cond_0

    .line 131
    move-object/from16 v0, v20

    iget-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v12, 0x20

    mul-long/2addr v10, v12

    long-to-int v5, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, v20

    invoke-static {v0, v8, v5, v1, v2}, Lorg/spongycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 129
    move-object/from16 v0, v20

    iget-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-object/from16 v0, v20

    iput-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_0

    .line 134
    :cond_0
    new-instance v4, Lorg/spongycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v4}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;-><init>()V

    .line 136
    .local v4, "w":Lorg/spongycastle/pqc/crypto/sphincs/Wots;
    const-wide/16 v10, 0x0

    move-object/from16 v0, v20

    iput-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_1
    move-object/from16 v0, v20

    iget-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v12, 0x20

    cmp-long v5, v10, v12

    if-gez v5, :cond_1

    .line 138
    move-object/from16 v0, v20

    iget-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v12, 0x43

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x20

    mul-long/2addr v10, v12

    long-to-int v7, v10

    move-object/from16 v0, v20

    iget-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v12, 0x20

    mul-long/2addr v10, v12

    long-to-int v9, v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v11}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;->wots_pkgen(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    .line 136
    move-object/from16 v0, v20

    iget-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-object/from16 v0, v20

    iput-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_1

    .line 141
    :cond_1
    const-wide/16 v10, 0x0

    move-object/from16 v0, v20

    iput-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_2
    move-object/from16 v0, v20

    iget-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v12, 0x20

    cmp-long v5, v10, v12

    if-gez v5, :cond_2

    .line 143
    const-wide/16 v10, 0x400

    move-object/from16 v0, v20

    iget-wide v12, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v14, 0x20

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    long-to-int v11, v10

    move-object/from16 v0, v20

    iget-wide v12, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v14, 0x43

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x20

    mul-long/2addr v12, v14

    long-to-int v13, v12

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, v21

    move-object v12, v6

    move-object/from16 v14, p6

    invoke-static/range {v9 .. v15}, Lorg/spongycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    .line 141
    move-object/from16 v0, v20

    iget-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-object/from16 v0, v20

    iput-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_2

    .line 147
    :cond_2
    const/16 v19, 0x0

    .line 150
    .local v19, "level":I
    const/16 v16, 0x20

    .local v16, "i":I
    :goto_3
    if-lez v16, :cond_4

    .line 152
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 154
    ushr-int/lit8 v5, v16, 0x1

    mul-int/lit8 v5, v5, 0x20

    ushr-int/lit8 v7, v18, 0x1

    mul-int/lit8 v7, v7, 0x20

    add-int v11, v5, v7

    mul-int/lit8 v5, v16, 0x20

    mul-int/lit8 v7, v18, 0x20

    add-int v13, v5, v7

    add-int/lit8 v5, v19, 0x7

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v15, v5, 0x20

    move-object/from16 v9, p0

    move-object/from16 v10, v21

    move-object/from16 v12, v21

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 152
    add-int/lit8 v18, v18, 0x2

    goto :goto_4

    .line 159
    :cond_3
    add-int/lit8 v19, v19, 0x1

    .line 150
    ushr-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 163
    .end local v18    # "j":I
    :cond_4
    move-object/from16 v0, p4

    iget-wide v10, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    long-to-int v0, v10

    move/from16 v17, v0

    .line 166
    .local v17, "idx":I
    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    move/from16 v1, p7

    if-ge v0, v1, :cond_5

    .line 168
    const/16 v5, 0x20

    ushr-int v5, v5, v16

    mul-int/lit8 v5, v5, 0x20

    ushr-int v7, v17, v16

    xor-int/lit8 v7, v7, 0x1

    mul-int/lit8 v7, v7, 0x20

    add-int/2addr v5, v7

    mul-int/lit8 v7, v16, 0x20

    add-int v7, v7, p3

    const/16 v9, 0x20

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-static {v0, v5, v1, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 172
    :cond_5
    const/16 v5, 0x20

    const/4 v7, 0x0

    const/16 v9, 0x20

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v5, v1, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    return-void
.end method

.method static validate_authpath(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[BI[BI)V
    .locals 12
    .param p0, "hs"    # Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "root"    # [B
    .param p2, "leaf"    # [B
    .param p3, "leafidx"    # I
    .param p4, "authpath"    # [B
    .param p5, "auOff"    # I
    .param p6, "masks"    # [B
    .param p7, "height"    # I

    .prologue
    .line 68
    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 70
    .local v1, "buffer":[B
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    .line 72
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    const/16 v0, 0x20

    if-ge v11, v0, :cond_0

    .line 74
    add-int/lit8 v0, v11, 0x20

    aget-byte v2, p2, v11

    aput-byte v2, v1, v0

    .line 72
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 76
    :cond_0
    const/4 v11, 0x0

    :goto_1
    const/16 v0, 0x20

    if-ge v11, v0, :cond_3

    .line 78
    add-int v0, p5, v11

    aget-byte v0, p4, v0

    aput-byte v0, v1, v11

    .line 76
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 83
    .end local v11    # "j":I
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_2
    const/16 v0, 0x20

    if-ge v11, v0, :cond_2

    .line 85
    aget-byte v0, p2, v11

    aput-byte v0, v1, v11

    .line 83
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 87
    :cond_2
    const/4 v11, 0x0

    :goto_3
    const/16 v0, 0x20

    if-ge v11, v0, :cond_3

    .line 89
    add-int/lit8 v0, v11, 0x20

    add-int v2, p5, v11

    aget-byte v2, p4, v2

    aput-byte v2, v1, v0

    .line 87
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 92
    :cond_3
    add-int/lit8 v9, p5, 0x20

    .line 94
    .local v9, "authOff":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    add-int/lit8 v0, p7, -0x1

    if-ge v10, v0, :cond_6

    .line 96
    ushr-int/lit8 p3, p3, 0x1

    .line 97
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_4

    .line 99
    const/16 v2, 0x20

    const/4 v4, 0x0

    add-int/lit8 v0, v10, 0x7

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v6, v0, 0x20

    move-object v0, p0

    move-object v3, v1

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 100
    const/4 v11, 0x0

    :goto_5
    const/16 v0, 0x20

    if-ge v11, v0, :cond_5

    .line 102
    add-int v0, v9, v11

    aget-byte v0, p4, v0

    aput-byte v0, v1, v11

    .line 100
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 107
    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    add-int/lit8 v0, v10, 0x7

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v6, v0, 0x20

    move-object v0, p0

    move-object v3, v1

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 108
    const/4 v11, 0x0

    :goto_6
    const/16 v0, 0x20

    if-ge v11, v0, :cond_5

    .line 110
    add-int/lit8 v0, v11, 0x20

    add-int v2, v9, v11

    aget-byte v2, p4, v2

    aput-byte v2, v1, v0

    .line 108
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 113
    :cond_5
    add-int/lit8 v9, v9, 0x20

    .line 94
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 115
    :cond_6
    const/4 v4, 0x0

    const/4 v6, 0x0

    add-int/lit8 v0, p7, 0x7

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v8, v0, 0x20

    move-object v2, p0

    move-object v3, p1

    move-object v5, v1

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 116
    return-void
.end method

.method private zerobytes([BII)V
    .locals 3
    .param p1, "tsk"    # [B
    .param p2, "off"    # I
    .param p3, "cryptoSecretkeybytes"    # I

    .prologue
    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, p3, :cond_0

    .line 305
    add-int v1, p2, v0

    const/4 v2, 0x0

    aput-byte v2, p1, v1

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    return-void
.end method


# virtual methods
.method crypto_sign(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[B)[B
    .locals 38
    .param p1, "hs"    # Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    .param p2, "m"    # [B
    .param p3, "sk"    # [B

    .prologue
    .line 177
    const v2, 0xa028

    new-array v3, v2, [B

    .line 181
    .local v3, "sm":[B
    const/16 v2, 0x20

    new-array v0, v2, [B

    move-object/from16 v26, v0

    .line 182
    .local v26, "R":[B
    const/16 v2, 0x40

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 183
    .local v16, "m_h":[B
    const/16 v2, 0x8

    new-array v0, v2, [J

    move-object/from16 v36, v0

    .line 185
    .local v36, "rnd":[J
    const/16 v2, 0x20

    new-array v13, v2, [B

    .line 186
    .local v13, "root":[B
    const/16 v2, 0x20

    new-array v14, v2, [B

    .line 187
    .local v14, "seed":[B
    const/16 v2, 0x400

    new-array v15, v2, [B

    .line 189
    .local v15, "masks":[B
    const/16 v2, 0x440

    new-array v6, v2, [B

    .line 191
    .local v6, "tsk":[B
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_0
    const/16 v2, 0x440

    move/from16 v0, v32

    if-ge v0, v2, :cond_0

    .line 193
    aget-byte v2, p3, v32

    aput-byte v2, v6, v32

    .line 191
    add-int/lit8 v32, v32, 0x1

    goto :goto_0

    .line 199
    :cond_0
    const v37, 0xa008

    .line 202
    .local v37, "scratch":I
    const/16 v2, 0x420

    const/16 v4, 0x20

    move/from16 v0, v37

    invoke-static {v6, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/spongycastle/crypto/Digest;

    move-result-object v29

    .line 205
    .local v29, "d":Lorg/spongycastle/crypto/Digest;
    invoke-interface/range {v29 .. v29}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v0, v2, [B

    move-object/from16 v28, v0

    .line 207
    .local v28, "bRnd":[B
    const/16 v2, 0x20

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v3, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 209
    const/4 v2, 0x0

    move-object/from16 v0, p2

    array-length v4, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v2, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 211
    const/4 v2, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 214
    const/16 v2, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->zerobytes([BII)V

    .line 216
    const/16 v33, 0x0

    .local v33, "j":I
    :goto_1
    move-object/from16 v0, v36

    array-length v2, v0

    move/from16 v0, v33

    if-eq v0, v2, :cond_1

    .line 218
    mul-int/lit8 v2, v33, 0x8

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v4

    aput-wide v4, v36, v33

    .line 216
    add-int/lit8 v33, v33, 0x1

    goto :goto_1

    .line 220
    :cond_1
    const/4 v2, 0x0

    aget-wide v4, v36, v2

    const-wide v10, 0xfffffffffffffffL

    and-long v34, v4, v10

    .line 222
    .local v34, "leafidx":J
    const/16 v2, 0x10

    const/4 v4, 0x0

    const/16 v5, 0x20

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    const v37, 0x9be8

    .line 228
    const/4 v2, 0x0

    const/16 v4, 0x20

    move-object/from16 v0, v26

    move/from16 v1, v37

    invoke-static {v0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    new-instance v7, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v7}, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    .line 232
    .local v7, "b":Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;
    const/16 v2, 0xb

    iput v2, v7, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    .line 233
    const-wide/16 v4, 0x0

    iput-wide v4, v7, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    .line 234
    const-wide/16 v4, 0x0

    iput-wide v4, v7, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    .line 236
    add-int/lit8 v9, v37, 0x20

    .line 238
    .local v9, "pk":I
    const/16 v2, 0x20

    const/16 v4, 0x400

    invoke-static {v6, v2, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    const v4, 0xa008

    const/4 v5, 0x5

    move-object/from16 v2, p1

    move-object v8, v3

    invoke-static/range {v2 .. v9}, Lorg/spongycastle/pqc/crypto/sphincs/Tree;->treehash(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BII[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;[BI)V

    .line 242
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/spongycastle/crypto/Digest;

    move-result-object v29

    .line 244
    const/16 v2, 0x440

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-interface {v0, v3, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 245
    const/4 v2, 0x0

    move-object/from16 v0, p2

    array-length v4, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v2, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 246
    const/4 v2, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 249
    new-instance v27, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct/range {v27 .. v27}, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    .line 251
    .local v27, "a":Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;
    const/16 v2, 0xc

    move-object/from16 v0, v27

    iput v2, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    .line 252
    const-wide/16 v4, 0x1f

    and-long v4, v4, v34

    long-to-int v2, v4

    int-to-long v4, v2

    move-object/from16 v0, v27

    iput-wide v4, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    .line 253
    const/4 v2, 0x5

    ushr-long v4, v34, v2

    move-object/from16 v0, v27

    iput-wide v4, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    .line 255
    const/16 v32, 0x0

    :goto_2
    const/16 v2, 0x20

    move/from16 v0, v32

    if-ge v0, v2, :cond_2

    .line 257
    aget-byte v2, v26, v32

    aput-byte v2, v3, v32

    .line 255
    add-int/lit8 v32, v32, 0x1

    goto :goto_2

    .line 260
    :cond_2
    const/16 v12, 0x20

    .line 262
    .local v12, "smOff":I
    const/16 v2, 0x20

    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-static {v6, v2, v15, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    const/16 v32, 0x0

    :goto_3
    const/16 v2, 0x8

    move/from16 v0, v32

    if-ge v0, v2, :cond_3

    .line 265
    add-int v2, v12, v32

    mul-int/lit8 v4, v32, 0x8

    ushr-long v4, v34, v4

    const-wide/16 v10, 0xff

    and-long/2addr v4, v10

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 263
    add-int/lit8 v32, v32, 0x1

    goto :goto_3

    .line 268
    :cond_3
    add-int/lit8 v12, v12, 0x8

    .line 270
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v14, v2, v6, v1}, Lorg/spongycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 271
    new-instance v31, Lorg/spongycastle/pqc/crypto/sphincs/Horst;

    invoke-direct/range {v31 .. v31}, Lorg/spongycastle/pqc/crypto/sphincs/Horst;-><init>()V

    .local v31, "ht":Lorg/spongycastle/pqc/crypto/sphincs/Horst;
    move-object/from16 v10, p1

    move-object v11, v3

    .line 273
    invoke-static/range {v10 .. v16}, Lorg/spongycastle/pqc/crypto/sphincs/Horst;->horst_sign(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B[B)I

    move-result v30

    .line 275
    .local v30, "horst_sigbytes":I
    add-int/lit8 v12, v30, 0x28

    .line 277
    new-instance v17, Lorg/spongycastle/pqc/crypto/sphincs/Wots;

    invoke-direct/range {v17 .. v17}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;-><init>()V

    .line 279
    .local v17, "w":Lorg/spongycastle/pqc/crypto/sphincs/Wots;
    const/16 v32, 0x0

    :goto_4
    const/16 v2, 0xc

    move/from16 v0, v32

    if-ge v0, v2, :cond_4

    .line 281
    move/from16 v0, v32

    move-object/from16 v1, v27

    iput v0, v1, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    .line 283
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v14, v2, v6, v1}, Lorg/spongycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    move-object/from16 v18, p1

    move-object/from16 v19, v3

    move/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    .line 285
    invoke-virtual/range {v17 .. v23}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;->wots_sign(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B)V

    .line 287
    add-int/lit16 v12, v12, 0x860

    .line 289
    const/16 v25, 0x5

    move-object/from16 v18, p1

    move-object/from16 v19, v13

    move-object/from16 v20, v3

    move/from16 v21, v12

    move-object/from16 v22, v27

    move-object/from16 v23, v6

    move-object/from16 v24, v15

    invoke-static/range {v18 .. v25}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->compute_authpath_wots(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[BILorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;[B[BI)V

    .line 290
    add-int/lit16 v12, v12, 0xa0

    .line 292
    move-object/from16 v0, v27

    iget-wide v4, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const-wide/16 v10, 0x1f

    and-long/2addr v4, v10

    long-to-int v2, v4

    int-to-long v4, v2

    move-object/from16 v0, v27

    iput-wide v4, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    .line 293
    move-object/from16 v0, v27

    iget-wide v4, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const/4 v2, 0x5

    ushr-long/2addr v4, v2

    move-object/from16 v0, v27

    iput-wide v4, v0, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    .line 279
    add-int/lit8 v32, v32, 0x1

    goto :goto_4

    .line 296
    :cond_4
    const/4 v2, 0x0

    const/16 v4, 0x440

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v4}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->zerobytes([BII)V

    .line 298
    return-object v3
.end method

.method public generateSignature([B)[B
    .locals 2
    .param p1, "message"    # [B

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    invoke-virtual {p0, v0, p1, v1}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->crypto_sign(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 45
    if-eqz p1, :cond_0

    .line 47
    check-cast p2, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->getKeyData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    .line 53
    :goto_0
    return-void

    .line 51
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    check-cast p2, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;->getKeyData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    goto :goto_0
.end method

.method verify(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[B[B)Z
    .locals 29
    .param p1, "hs"    # Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    .param p2, "m"    # [B
    .param p3, "sm"    # [B
    .param p4, "pk"    # [B

    .prologue
    .line 312
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v27, v0

    .line 313
    .local v27, "smlen":I
    const-wide/16 v24, 0x0

    .line 314
    .local v24, "leafidx":J
    const/16 v2, 0x860

    new-array v10, v2, [B

    .line 315
    .local v10, "wots_pk":[B
    const/16 v2, 0x20

    new-array v0, v2, [B

    move-object/from16 v26, v0

    .line 316
    .local v26, "pkhash":[B
    const/16 v2, 0x20

    new-array v3, v2, [B

    .line 317
    .local v3, "root":[B
    const v2, 0xa028

    new-array v4, v2, [B

    .line 319
    .local v4, "sig":[B
    const/16 v2, 0x420

    new-array v6, v2, [B

    .line 321
    .local v6, "tpk":[B
    const v2, 0xa028

    move/from16 v0, v27

    if-eq v0, v2, :cond_0

    .line 323
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "signature wrong size"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_0
    const/16 v2, 0x40

    new-array v7, v2, [B

    .line 328
    .local v7, "m_h":[B
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    const/16 v2, 0x420

    move/from16 v0, v22

    if-ge v0, v2, :cond_1

    .line 329
    aget-byte v2, p4, v22

    aput-byte v2, v6, v22

    .line 328
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 333
    :cond_1
    const/16 v2, 0x20

    new-array v0, v2, [B

    move-object/from16 v21, v0

    .line 335
    .local v21, "R":[B
    const/16 v22, 0x0

    :goto_1
    const/16 v2, 0x20

    move/from16 v0, v22

    if-ge v0, v2, :cond_2

    .line 336
    aget-byte v2, p3, v22

    aput-byte v2, v21, v22

    .line 335
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 338
    :cond_2
    const/4 v2, 0x0

    const/4 v5, 0x0

    const v9, 0xa028

    move-object/from16 v0, p3

    invoke-static {v0, v2, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/spongycastle/crypto/Digest;

    move-result-object v23

    .line 343
    .local v23, "mHash":Lorg/spongycastle/crypto/Digest;
    const/4 v2, 0x0

    const/16 v5, 0x20

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v2, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 346
    const/4 v2, 0x0

    const/16 v5, 0x420

    move-object/from16 v0, v23

    invoke-interface {v0, v6, v2, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 349
    const/4 v2, 0x0

    move-object/from16 v0, p2

    array-length v5, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v2, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 351
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v7, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 354
    const/4 v12, 0x0

    .line 356
    .local v12, "sigp":I
    add-int/lit8 v12, v12, 0x20

    .line 357
    add-int/lit8 v27, v27, -0x20

    .line 360
    const/16 v22, 0x0

    :goto_2
    const/16 v2, 0x8

    move/from16 v0, v22

    if-ge v0, v2, :cond_3

    .line 362
    add-int/lit8 v2, v22, 0x20

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v14, v2

    mul-int/lit8 v2, v22, 0x8

    shl-long/2addr v14, v2

    xor-long v24, v24, v14

    .line 360
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 366
    :cond_3
    new-instance v2, Lorg/spongycastle/pqc/crypto/sphincs/Horst;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/sphincs/Horst;-><init>()V

    const/16 v5, 0x28

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/Horst;->horst_verify(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)I

    .line 369
    add-int/lit8 v12, v12, 0x8

    .line 370
    add-int/lit8 v27, v27, -0x8

    .line 372
    add-int/lit16 v12, v12, 0x3400

    .line 373
    move/from16 v0, v27

    add-int/lit16 v0, v0, -0x3400

    move/from16 v27, v0

    .line 375
    new-instance v8, Lorg/spongycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v8}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;-><init>()V

    .line 377
    .local v8, "w":Lorg/spongycastle/pqc/crypto/sphincs/Wots;
    const/16 v22, 0x0

    :goto_3
    const/16 v2, 0xc

    move/from16 v0, v22

    if-ge v0, v2, :cond_4

    move-object/from16 v9, p1

    move-object v11, v4

    move-object v13, v3

    move-object v14, v6

    .line 379
    invoke-virtual/range {v8 .. v14}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;->wots_verify(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)V

    .line 381
    add-int/lit16 v12, v12, 0x860

    .line 382
    move/from16 v0, v27

    add-int/lit16 v0, v0, -0x860

    move/from16 v27, v0

    .line 384
    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v13, p1

    move-object/from16 v14, v26

    move-object/from16 v16, v10

    move-object/from16 v18, v6

    invoke-static/range {v13 .. v19}, Lorg/spongycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    .line 385
    const-wide/16 v14, 0x1f

    and-long v14, v14, v24

    long-to-int v0, v14

    move/from16 v16, v0

    const/16 v20, 0x5

    move-object/from16 v13, p1

    move-object v14, v3

    move-object/from16 v15, v26

    move-object/from16 v17, v4

    move/from16 v18, v12

    move-object/from16 v19, v6

    invoke-static/range {v13 .. v20}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->validate_authpath(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[BI[BI)V

    .line 386
    const/4 v2, 0x5

    shr-long v24, v24, v2

    .line 388
    add-int/lit16 v12, v12, 0xa0

    .line 389
    move/from16 v0, v27

    add-int/lit16 v0, v0, -0xa0

    move/from16 v27, v0

    .line 377
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 392
    :cond_4
    const/16 v28, 0x1

    .line 393
    .local v28, "verified":Z
    const/16 v22, 0x0

    :goto_4
    const/16 v2, 0x20

    move/from16 v0, v22

    if-ge v0, v2, :cond_6

    .line 395
    aget-byte v2, v3, v22

    move/from16 v0, v22

    add-int/lit16 v5, v0, 0x400

    aget-byte v5, v6, v5

    if-eq v2, v5, :cond_5

    .line 397
    const/16 v28, 0x0

    .line 393
    :cond_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 401
    :cond_6
    return v28
.end method

.method public verifySignature([B[B)Z
    .locals 2
    .param p1, "message"    # [B
    .param p2, "signature"    # [B

    .prologue
    .line 62
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->verify(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[B[B)Z

    move-result v0

    return v0
.end method
