.class public Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;
.super Ljava/lang/Object;
.source "BDSStateMap.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final bdsState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/spongycastle/pqc/crypto/xmss/BDS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->bdsState:Ljava/util/Map;

    .line 18
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;J[B[B)V
    .locals 9
    .param p1, "stateMap"    # Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;
    .param p2, "params"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;
    .param p3, "globalIndex"    # J
    .param p5, "publicSeed"    # [B
    .param p6, "secretKeySeed"    # [B

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->bdsState:Ljava/util/Map;

    .line 30
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->bdsState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 34
    .local v7, "key":Ljava/lang/Integer;
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->bdsState:Ljava/util/Map;

    iget-object v1, p1, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->bdsState:Ljava/util/Map;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v7    # "key":Ljava/lang/Integer;
    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 37
    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->updateState(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;J[B[B)V

    .line 38
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;J[B[B)V
    .locals 6
    .param p1, "params"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;
    .param p2, "globalIndex"    # J
    .param p4, "publicSeed"    # [B
    .param p5, "secretKeySeed"    # [B

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->bdsState:Ljava/util/Map;

    .line 22
    const-wide/16 v2, 0x0

    .local v2, "index":J
    :goto_0
    cmp-long v0, v2, p2

    if-gez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    .line 24
    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->updateState(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;J[B[B)V

    .line 22
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method private updateState(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;J[B[B)V
    .locals 10
    .param p1, "params"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;
    .param p2, "globalIndex"    # J
    .param p4, "publicSeed"    # [B
    .param p5, "secretKeySeed"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 42
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getXMSSParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v6

    .line 43
    .local v6, "xmssParams":Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;
    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v5

    .line 48
    .local v5, "xmssHeight":I
    invoke-static {p2, p3, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getTreeIndex(JI)J

    move-result-wide v2

    .line 49
    .local v2, "indexTree":J
    invoke-static {p2, p3, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v0

    .line 51
    .local v0, "indexLeaf":I
    new-instance v7, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v7, v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 52
    invoke-virtual {v7, v0}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 55
    .local v4, "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    shl-int v7, v9, v5

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_2

    .line 57
    invoke-virtual {p0, v8}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->get(I)Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-result-object v7

    if-eqz v7, :cond_0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    new-instance v7, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    invoke-direct {v7, v6, p4, p5, v4}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V

    invoke-virtual {p0, v8, v7}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->put(ILorg/spongycastle/pqc/crypto/xmss/BDS;)V

    .line 62
    :cond_1
    invoke-virtual {p0, v8, p4, p5, v4}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->update(I[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/BDS;

    .line 66
    :cond_2
    const/4 v1, 0x1

    .local v1, "layer":I
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v7

    if-ge v1, v7, :cond_5

    .line 69
    invoke-static {v2, v3, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v0

    .line 70
    invoke-static {v2, v3, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getTreeIndex(JI)J

    move-result-wide v2

    .line 72
    new-instance v7, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v7, v1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 73
    invoke-virtual {v7, v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {v7, v0}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v4

    .end local v4    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 76
    .restart local v4    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    shl-int v7, v9, v5

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_4

    .line 77
    invoke-static {p2, p3, v5, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->isNewAuthenticationPathNeeded(JII)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 79
    invoke-virtual {p0, v1}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->get(I)Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-result-object v7

    if-nez v7, :cond_3

    .line 81
    new-instance v7, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getXMSSParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v8

    invoke-direct {v7, v8, p4, p5, v4}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V

    invoke-virtual {p0, v1, v7}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->put(ILorg/spongycastle/pqc/crypto/xmss/BDS;)V

    .line 84
    :cond_3
    invoke-virtual {p0, v1, p4, p5, v4}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->update(I[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/BDS;

    .line 66
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_5
    return-void
.end method


# virtual methods
.method public get(I)Lorg/spongycastle/pqc/crypto/xmss/BDS;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->bdsState:Ljava/util/Map;

    invoke-static {p1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->bdsState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(ILorg/spongycastle/pqc/crypto/xmss/BDS;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bds"    # Lorg/spongycastle/pqc/crypto/xmss/BDS;

    .prologue
    .line 118
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->bdsState:Ljava/util/Map;

    invoke-static {p1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method setXMSS(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V
    .locals 4
    .param p1, "xmss"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .prologue
    .line 91
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->bdsState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 95
    .local v2, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->bdsState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    .line 96
    .local v0, "bds":Lorg/spongycastle/pqc/crypto/xmss/BDS;
    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->setXMSS(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    .line 97
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->validate()V

    goto :goto_0

    .line 99
    .end local v0    # "bds":Lorg/spongycastle/pqc/crypto/xmss/BDS;
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public update(I[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/BDS;
    .locals 4
    .param p1, "index"    # I
    .param p2, "publicSeed"    # [B
    .param p3, "secretKeySeed"    # [B
    .param p4, "otsHashAddress"    # Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .prologue
    .line 113
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->bdsState:Ljava/util/Map;

    invoke-static {p1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->bdsState:Ljava/util/Map;

    invoke-static {p1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->getNextState([B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    return-object v0
.end method
