.class Lorg/spongycastle/pqc/crypto/sphincs/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static gen_leaf_wots(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V
    .locals 14
    .param p0, "hs"    # Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "leaf"    # [B
    .param p2, "leafOff"    # I
    .param p3, "masks"    # [B
    .param p4, "masksOff"    # I
    .param p5, "sk"    # [B
    .param p6, "a"    # Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;

    .prologue
    .line 82
    const/16 v3, 0x20

    new-array v6, v3, [B

    .line 83
    .local v6, "seed":[B
    const/16 v3, 0x860

    new-array v4, v3, [B

    .line 85
    .local v4, "pk":[B
    new-instance v2, Lorg/spongycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;-><init>()V

    .line 87
    .local v2, "w":Lorg/spongycastle/pqc/crypto/sphincs/Wots;
    const/4 v3, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {p0, v6, v3, v0, v1}, Lorg/spongycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 89
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v9}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;->wots_pkgen(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    .line 91
    const/4 v11, 0x0

    move-object v7, p0

    move-object v8, p1

    move/from16 v9, p2

    move-object v10, v4

    move-object/from16 v12, p3

    move/from16 v13, p4

    invoke-static/range {v7 .. v13}, Lorg/spongycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    .line 92
    return-void
.end method

.method static l_tree(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V
    .locals 10
    .param p0, "hs"    # Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "leaf"    # [B
    .param p2, "leafOff"    # I
    .param p3, "wots_pk"    # [B
    .param p4, "pkOff"    # I
    .param p5, "masks"    # [B
    .param p6, "masksOff"    # I

    .prologue
    .line 26
    const/16 v9, 0x43

    .line 27
    .local v9, "l":I
    const/4 v8, 0x0

    .line 28
    .local v8, "j":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v0, 0x7

    if-ge v7, v0, :cond_2

    .line 30
    const/4 v8, 0x0

    :goto_1
    ushr-int/lit8 v0, v9, 0x1

    if-ge v8, v0, :cond_0

    .line 32
    mul-int/lit8 v0, v8, 0x20

    add-int v2, p4, v0

    mul-int/lit8 v0, v8, 0x2

    mul-int/lit8 v0, v0, 0x20

    add-int v4, p4, v0

    mul-int/lit8 v0, v7, 0x2

    mul-int/lit8 v0, v0, 0x20

    add-int v6, p6, v0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 30
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 35
    :cond_0
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_1

    .line 37
    add-int/lit8 v0, v9, -0x1

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, p4

    ushr-int/lit8 v1, v9, 0x1

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v1, p4

    const/16 v2, 0x20

    invoke-static {p3, v0, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    ushr-int/lit8 v0, v9, 0x1

    add-int/lit8 v9, v0, 0x1

    .line 28
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 42
    :cond_1
    ushr-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 45
    :cond_2
    const/16 v0, 0x20

    invoke-static {p3, p4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    return-void
.end method

.method static treehash(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BII[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;[BI)V
    .locals 21
    .param p0, "hs"    # Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "node"    # [B
    .param p2, "nodeOff"    # I
    .param p3, "height"    # I
    .param p4, "sk"    # [B
    .param p5, "leaf"    # Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;
    .param p6, "masks"    # [B
    .param p7, "masksOff"    # I

    .prologue
    .line 50
    new-instance v8, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>(Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 52
    .local v8, "a":Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;
    add-int/lit8 v2, p3, 0x1

    mul-int/lit8 v2, v2, 0x20

    new-array v3, v2, [B

    .line 53
    .local v3, "stack":[B
    add-int/lit8 v2, p3, 0x1

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 54
    .local v19, "stacklevels":[I
    const/16 v20, 0x0

    .line 56
    .local v20, "stackoffset":I
    iget-wide v4, v8, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const/4 v2, 0x1

    shl-int v2, v2, p3

    int-to-long v6, v2

    add-long/2addr v4, v6

    long-to-int v0, v4

    move/from16 v17, v0

    .line 58
    .local v17, "lastnode":I
    :goto_0
    iget-wide v4, v8, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    move/from16 v0, v17

    int-to-long v6, v0

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    .line 60
    mul-int/lit8 v4, v20, 0x20

    move-object/from16 v2, p0

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v8}, Lorg/spongycastle/pqc/crypto/sphincs/Tree;->gen_leaf_wots(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 61
    const/4 v2, 0x0

    aput v2, v19, v20

    .line 62
    add-int/lit8 v20, v20, 0x1

    .line 63
    :goto_1
    const/4 v2, 0x1

    move/from16 v0, v20

    if-le v0, v2, :cond_0

    add-int/lit8 v2, v20, -0x1

    aget v2, v19, v2

    add-int/lit8 v4, v20, -0x2

    aget v4, v19, v4

    if-ne v2, v4, :cond_0

    .line 66
    add-int/lit8 v2, v20, -0x1

    aget v2, v19, v2

    add-int/lit8 v2, v2, 0x7

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v18, v2, 0x20

    .line 68
    .local v18, "maskoffset":I
    add-int/lit8 v2, v20, -0x2

    mul-int/lit8 v11, v2, 0x20

    add-int/lit8 v2, v20, -0x2

    mul-int/lit8 v13, v2, 0x20

    add-int v15, p7, v18

    move-object/from16 v9, p0

    move-object v10, v3

    move-object v12, v3

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    .line 70
    add-int/lit8 v2, v20, -0x2

    aget v4, v19, v2

    add-int/lit8 v4, v4, 0x1

    aput v4, v19, v2

    .line 71
    add-int/lit8 v20, v20, -0x1

    .line 72
    goto :goto_1

    .line 58
    .end local v18    # "maskoffset":I
    :cond_0
    iget-wide v4, v8, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v8, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_0

    .line 74
    :cond_1
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    const/16 v2, 0x20

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 76
    add-int v2, p2, v16

    aget-byte v4, v3, v16

    aput-byte v4, p1, v2

    .line 74
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 78
    :cond_2
    return-void
.end method
