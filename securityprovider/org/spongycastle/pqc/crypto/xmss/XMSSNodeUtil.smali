.class Lorg/spongycastle/pqc/crypto/xmss/XMSSNodeUtil;
.super Ljava/lang/Object;
.source "XMSSNodeUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static lTree(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    .locals 10
    .param p0, "wotsPlus"    # Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;
    .param p1, "publicKey"    # Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;
    .param p2, "address"    # Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 16
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "publicKey == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 18
    :cond_0
    if-nez p2, :cond_1

    .line 20
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "address == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 22
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v1

    .line 24
    .local v1, "len":I
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;->toByteArray()[[B

    move-result-object v2

    .line 25
    .local v2, "publicKeyBytes":[[B
    array-length v4, v2

    new-array v3, v4, [Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    .line 26
    .local v3, "publicKeyNodes":[Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 28
    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    aget-object v5, v2, v0

    invoke-direct {v4, v8, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    aput-object v4, v3, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_2
    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v4}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getLayerAddress()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    .line 31
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeAddress()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getLTreeAddress()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeHeight(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v4

    .line 32
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getKeyAndMask()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p2

    .end local p2    # "address":Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;
    check-cast p2, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    .line 33
    .restart local p2    # "address":Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;
    :goto_1
    if-le v1, v9, :cond_5

    .line 35
    const/4 v0, 0x0

    :goto_2
    div-int/lit8 v4, v1, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-ge v0, v4, :cond_3

    .line 37
    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v4}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getLayerAddress()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    .line 38
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeAddress()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getLTreeAddress()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v4

    .line 39
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeHeight(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v4

    .line 40
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getKeyAndMask()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p2

    .end local p2    # "address":Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;
    check-cast p2, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    .line 41
    .restart local p2    # "address":Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;
    mul-int/lit8 v4, v0, 0x2

    aget-object v4, v3, v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v3, v5

    invoke-static {p0, v4, v5, p2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNodeUtil;->randomizeHash(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v4

    aput-object v4, v3, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 43
    :cond_3
    rem-int/lit8 v4, v1, 0x2

    if-ne v4, v9, :cond_4

    .line 45
    div-int/lit8 v4, v1, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v5, v1, -0x1

    aget-object v5, v3, v5

    aput-object v5, v3, v4

    .line 47
    :cond_4
    int-to-double v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 48
    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v4}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getLayerAddress()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    .line 49
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeAddress()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getLTreeAddress()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v4

    .line 50
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeHeight(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v4

    .line 51
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getKeyAndMask()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p2

    .end local p2    # "address":Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;
    check-cast p2, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    .restart local p2    # "address":Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;
    goto/16 :goto_1

    .line 53
    :cond_5
    aget-object v4, v3, v8

    return-object v4
.end method

.method static randomizeHash(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    .locals 12
    .param p0, "wotsPlus"    # Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;
    .param p1, "left"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    .param p2, "right"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    .param p3, "address"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 68
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "left == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 70
    :cond_0
    if-nez p2, :cond_1

    .line 72
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "right == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 74
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v9

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v10

    if-eq v9, v10, :cond_2

    .line 76
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "height of both nodes must be equal"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 78
    :cond_2
    if-nez p3, :cond_3

    .line 80
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "address == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 82
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getPublicSeed()[B

    move-result-object v6

    .line 84
    .local v6, "publicSeed":[B
    instance-of v9, p3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    if-eqz v9, :cond_7

    move-object v7, p3

    .line 86
    check-cast v7, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    .line 87
    .local v7, "tmpAddress":Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;
    new-instance v9, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v9}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getLayerAddress()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    .line 88
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeAddress()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getLTreeAddress()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v9

    .line 89
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeHeight(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v9

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v9

    const/4 v10, 0x0

    .line 90
    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p3

    .end local p3    # "address":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
    check-cast p3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    .line 100
    .end local v7    # "tmpAddress":Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;
    .restart local p3    # "address":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getKhf()Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    move-result-object v9

    invoke-virtual {p3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v3

    .line 102
    .local v3, "key":[B
    instance-of v9, p3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    if-eqz v9, :cond_8

    move-object v7, p3

    .line 104
    check-cast v7, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    .line 105
    .restart local v7    # "tmpAddress":Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;
    new-instance v9, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v9}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getLayerAddress()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    .line 106
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeAddress()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getLTreeAddress()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v9

    .line 107
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeHeight(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v9

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v9

    const/4 v10, 0x1

    .line 108
    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p3

    .end local p3    # "address":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
    check-cast p3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    .line 118
    .end local v7    # "tmpAddress":Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;
    .restart local p3    # "address":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getKhf()Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    move-result-object v9

    invoke-virtual {p3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v0

    .line 120
    .local v0, "bitmask0":[B
    instance-of v9, p3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    if-eqz v9, :cond_9

    move-object v7, p3

    .line 122
    check-cast v7, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    .line 123
    .restart local v7    # "tmpAddress":Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;
    new-instance v9, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v9}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getLayerAddress()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    .line 124
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeAddress()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getLTreeAddress()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v9

    .line 125
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeHeight(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v9

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;->getTreeIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v9

    const/4 v10, 0x2

    .line 126
    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p3

    .end local p3    # "address":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
    check-cast p3, Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;

    .line 136
    .end local v7    # "tmpAddress":Lorg/spongycastle/pqc/crypto/xmss/LTreeAddress;
    .restart local p3    # "address":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getKhf()Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    move-result-object v9

    invoke-virtual {p3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v1

    .line 137
    .local v1, "bitmask1":[B
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getDigestSize()I

    move-result v4

    .line 138
    .local v4, "n":I
    mul-int/lit8 v9, v4, 0x2

    new-array v8, v9, [B

    .line 139
    .local v8, "tmpMask":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v4, :cond_a

    .line 141
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v9

    aget-byte v9, v9, v2

    aget-byte v10, v0, v2

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v8, v2

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 92
    .end local v0    # "bitmask0":[B
    .end local v1    # "bitmask1":[B
    .end local v2    # "i":I
    .end local v3    # "key":[B
    .end local v4    # "n":I
    .end local v8    # "tmpMask":[B
    :cond_7
    instance-of v9, p3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    if-eqz v9, :cond_4

    move-object v7, p3

    .line 94
    check-cast v7, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    .line 95
    .local v7, "tmpAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    new-instance v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v9}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 96
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v9

    .line 97
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p3

    .end local p3    # "address":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
    check-cast p3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    .restart local p3    # "address":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
    goto/16 :goto_0

    .line 110
    .end local v7    # "tmpAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    .restart local v3    # "key":[B
    :cond_8
    instance-of v9, p3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    if-eqz v9, :cond_5

    move-object v7, p3

    .line 112
    check-cast v7, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    .line 113
    .restart local v7    # "tmpAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    new-instance v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v9}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 114
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v9

    .line 115
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p3

    .end local p3    # "address":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
    check-cast p3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    .restart local p3    # "address":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
    goto/16 :goto_1

    .line 128
    .end local v7    # "tmpAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    .restart local v0    # "bitmask0":[B
    :cond_9
    instance-of v9, p3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    if-eqz v9, :cond_6

    move-object v7, p3

    .line 130
    check-cast v7, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    .line 131
    .restart local v7    # "tmpAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    new-instance v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v9}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    .line 132
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v9

    .line 133
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p3

    .end local p3    # "address":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
    check-cast p3, Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;

    .restart local p3    # "address":Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;
    goto/16 :goto_2

    .line 143
    .end local v7    # "tmpAddress":Lorg/spongycastle/pqc/crypto/xmss/HashTreeAddress;
    .restart local v1    # "bitmask1":[B
    .restart local v2    # "i":I
    .restart local v4    # "n":I
    .restart local v8    # "tmpMask":[B
    :cond_a
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_b

    .line 145
    add-int v9, v2, v4

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v10

    aget-byte v10, v10, v2

    aget-byte v11, v1, v2

    xor-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 147
    :cond_b
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getKhf()Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    move-result-object v9

    invoke-virtual {v9, v3, v8}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->H([B[B)[B

    move-result-object v5

    .line 148
    .local v5, "out":[B
    new-instance v9, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v10

    invoke-direct {v9, v10, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    return-object v9
.end method
