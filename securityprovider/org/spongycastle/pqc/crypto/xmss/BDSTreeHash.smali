.class Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;
.super Ljava/lang/Object;
.source "BDSTreeHash.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private finished:Z

.field private height:I

.field private final initialHeight:I

.field private initialized:Z

.field private nextIndex:I

.field private tailNode:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "initialHeight"    # I

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->initialHeight:I

    .line 23
    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->initialized:Z

    .line 24
    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    .line 25
    return-void
.end method


# virtual methods
.method getHeight()I
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->initialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    const v0, 0x7fffffff

    .line 129
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->height:I

    goto :goto_0
.end method

.method getIndexLeaf()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    return v0
.end method

.method public getTailNode()Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->clone()Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v0

    return-object v0
.end method

.method initialize(I)V
    .locals 1
    .param p1, "nextIndex"    # I

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    .line 30
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->initialHeight:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->height:I

    .line 31
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->initialized:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    .line 34
    return-void
.end method

.method isFinished()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    return v0
.end method

.method isInitialized()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->initialized:Z

    return v0
.end method

.method setNode(Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;)V
    .locals 2
    .param p1, "node"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    .line 140
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->height:I

    .line 141
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->height:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->initialHeight:I

    if-ne v0, v1, :cond_0

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    .line 145
    :cond_0
    return-void
.end method

.method update(Ljava/util/Stack;Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V
    .locals 8
    .param p2, "wotsPlus"    # Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;
    .param p3, "publicSeed"    # [B
    .param p4, "secretSeed"    # [B
    .param p5, "otsHashAddress"    # Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;",
            ">;",
            "Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;",
            "[B[B",
            "Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;>;"
    if-nez p5, :cond_0

    .line 40
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "otsHashAddress == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 42
    :cond_0
    iget-boolean v5, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->initialized:Z

    if-nez v5, :cond_2

    .line 44
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "finished or not initialized"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 47
    :cond_2
    new-instance v5, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    .line 48
    invoke-virtual {p5}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {p5}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    iget v6, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    .line 49
    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v5

    invoke-virtual {p5}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getChainAddress()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withChainAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v5

    .line 50
    invoke-virtual {p5}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getHashAddress()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withHashAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v5

    invoke-virtual {p5}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getKeyAndMask()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 51
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p5

    .end local p5    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    check-cast p5, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 52
    .restart local p5    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    new-instance v5, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    .line 53
    invoke-virtual {p5}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p5}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    iget v6, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    .line 54
    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    .line 55
    .local v1, "lTreeAddress":Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;
    new-instance v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    .line 56
    invoke-virtual {p5}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p5}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    iget v6, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    .line 57
    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    .line 59
    .local v0, "hashTreeAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    invoke-virtual {p2, p4, p5}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getWOTSPlusSecretKey([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object v5

    invoke-virtual {p2, v5, p3}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->importKeys([B[B)V

    .line 60
    invoke-virtual {p2, p5}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getPublicKey(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;

    move-result-object v4

    .line 61
    .local v4, "wotsPlusPublicKey":Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;
    invoke-static {p2, v4, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNodeUtil;->lTree(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v2

    .line 63
    .local v2, "node":Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 64
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v5

    iget v6, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->initialHeight:I

    if-eq v5, v6, :cond_3

    .line 66
    new-instance v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    .line 67
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 68
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 69
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v5

    .line 70
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v5

    .line 71
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getKeyAndMask()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v0

    .end local v0    # "hashTreeAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    .line 72
    .restart local v0    # "hashTreeAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-static {p2, v5, v2, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNodeUtil;->randomizeHash(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v2

    .line 73
    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    .line 74
    .end local v2    # "node":Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    .local v3, "node":Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    new-instance v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    .line 75
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 76
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 77
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v5

    .line 78
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getKeyAndMask()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 79
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v0

    .end local v0    # "hashTreeAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    .restart local v0    # "hashTreeAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    move-object v2, v3

    .end local v3    # "node":Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    .restart local v2    # "node":Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    goto/16 :goto_0

    .line 82
    :cond_3
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    if-nez v5, :cond_4

    .line 84
    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    .line 112
    :goto_1
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v5

    iget v6, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->initialHeight:I

    if-ne v5, v6, :cond_6

    .line 114
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    .line 121
    :goto_2
    return-void

    .line 88
    :cond_4
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 90
    new-instance v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    .line 91
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 92
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 93
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v5

    .line 94
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v5

    .line 95
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getKeyAndMask()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v0

    .end local v0    # "hashTreeAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    .line 96
    .restart local v0    # "hashTreeAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-static {p2, v5, v2, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNodeUtil;->randomizeHash(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v2

    .line 97
    new-instance v3, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    .line 98
    .end local v2    # "node":Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    .restart local v3    # "node":Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    .line 99
    new-instance v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v5}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    .line 100
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 101
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 102
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v5

    .line 103
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v5

    .line 104
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getKeyAndMask()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v0

    .end local v0    # "hashTreeAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    .restart local v0    # "hashTreeAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    move-object v2, v3

    .end local v3    # "node":Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    .restart local v2    # "node":Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    goto/16 :goto_1

    .line 108
    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 118
    :cond_6
    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v5

    iput v5, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->height:I

    .line 119
    iget v5, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    goto/16 :goto_2
.end method
