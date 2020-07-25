.class public Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
.super Ljava/lang/Object;
.source "XMSSReducedSignature.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;
    }
.end annotation


# instance fields
.field private final authPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

.field private final wotsPlusSignature:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)V
    .locals 18
    .param p1, "builder"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 21
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    if-nez v14, :cond_0

    .line 23
    new-instance v14, Ljava/lang/NullPointerException;

    const-string v15, "params == null"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 25
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v5

    .line 26
    .local v5, "n":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v4

    .line 27
    .local v4, "len":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v2

    .line 28
    .local v2, "height":I
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)[B

    move-result-object v8

    .line 29
    .local v8, "reducedSignature":[B
    if-eqz v8, :cond_4

    .line 32
    mul-int v9, v4, v5

    .line 33
    .local v9, "signatureSize":I
    mul-int v1, v2, v5

    .line 34
    .local v1, "authPathSize":I
    add-int v12, v9, v1

    .line 35
    .local v12, "totalSize":I
    array-length v14, v8

    if-eq v14, v12, :cond_1

    .line 37
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "signature has wrong size"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 39
    :cond_1
    const/4 v7, 0x0

    .line 40
    .local v7, "position":I
    new-array v13, v4, [[B

    .line 41
    .local v13, "wotsPlusSignature":[[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v14, v13

    if-ge v3, v14, :cond_2

    .line 43
    invoke-static {v8, v7, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v14

    aput-object v14, v13, v3

    .line 44
    add-int/2addr v7, v5

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_2
    new-instance v14, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v15}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v15

    invoke-virtual {v15}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v15

    invoke-direct {v14, v15, v13}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;-><init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;[[B)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->wotsPlusSignature:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    .line 48
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v6, "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;>;"
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 51
    new-instance v14, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-static {v8, v7, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v15

    invoke-direct {v14, v3, v15}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/2addr v7, v5

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 54
    :cond_3
    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->authPath:Ljava/util/List;

    .line 82
    .end local v1    # "authPathSize":I
    .end local v3    # "i":I
    .end local v6    # "nodeList":Ljava/util/List;, "Ljava/util/List<Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;>;"
    .end local v7    # "position":I
    .end local v9    # "signatureSize":I
    .end local v12    # "totalSize":I
    .end local v13    # "wotsPlusSignature":[[B
    :goto_2
    return-void

    .line 59
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v11

    .line 60
    .local v11, "tmpSignature":Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;
    if-eqz v11, :cond_5

    .line 62
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->wotsPlusSignature:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    .line 68
    :goto_3
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;)Ljava/util/List;

    move-result-object v10

    .line 69
    .local v10, "tmpAuthPath":Ljava/util/List;, "Ljava/util/List<Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;>;"
    if-eqz v10, :cond_7

    .line 71
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-eq v14, v2, :cond_6

    .line 73
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "size of authPath needs to be equal to height of tree"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 66
    .end local v10    # "tmpAuthPath":Ljava/util/List;, "Ljava/util/List<Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;>;"
    :cond_5
    new-instance v15, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v16

    filled-new-array {v4, v5}, [I

    move-result-object v14

    sget-object v17, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[B

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v14}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;-><init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;[[B)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->wotsPlusSignature:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    goto :goto_3

    .line 75
    .restart local v10    # "tmpAuthPath":Ljava/util/List;, "Ljava/util/List<Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;>;"
    :cond_6
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->authPath:Ljava/util/List;

    goto :goto_2

    .line 79
    :cond_7
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->authPath:Ljava/util/List;

    goto :goto_2
.end method


# virtual methods
.method public getAuthPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->authPath:Ljava/util/List;

    return-object v0
.end method

.method public getParams()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method

.method public getWOTSPlusSignature()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->wotsPlusSignature:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    return-object v0
.end method

.method public toByteArray()[B
    .locals 10

    .prologue
    .line 127
    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v2

    .line 128
    .local v2, "n":I
    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v9

    mul-int v6, v9, v2

    .line 129
    .local v6, "signatureSize":I
    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v9

    mul-int v0, v9, v2

    .line 130
    .local v0, "authPathSize":I
    add-int v7, v6, v0

    .line 131
    .local v7, "totalSize":I
    new-array v3, v7, [B

    .line 132
    .local v3, "out":[B
    const/4 v4, 0x0

    .line 134
    .local v4, "position":I
    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->wotsPlusSignature:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;->toByteArray()[[B

    move-result-object v5

    .line 135
    .local v5, "signature":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, v5

    if-ge v1, v9, :cond_0

    .line 137
    aget-object v9, v5, v1

    invoke-static {v3, v9, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 138
    add-int/2addr v4, v2

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->authPath:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 143
    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->authPath:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v8

    .line 144
    .local v8, "value":[B
    invoke-static {v3, v8, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 145
    add-int/2addr v4, v2

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    .end local v8    # "value":[B
    :cond_1
    return-object v3
.end method
