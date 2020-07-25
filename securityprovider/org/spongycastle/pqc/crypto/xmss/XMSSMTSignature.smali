.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;
.super Ljava/lang/Object;
.source "XMSSMTSignature.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;
    }
.end annotation


# instance fields
.field private final index:J

.field private final params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

.field private final random:[B

.field private final reducedSignatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)V
    .locals 18
    .param p1, "builder"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 22
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    if-nez v14, :cond_0

    .line 24
    new-instance v14, Ljava/lang/NullPointerException;

    const-string v15, "params == null"

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 26
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v4

    .line 27
    .local v4, "n":I
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)[B

    move-result-object v9

    .line 28
    .local v9, "signature":[B
    if-eqz v9, :cond_3

    .line 31
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v3

    .line 32
    .local v3, "len":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v14

    int-to-double v14, v14

    const-wide/high16 v16, 0x4020000000000000L    # 8.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v2, v14

    .line 33
    .local v2, "indexSize":I
    move v6, v4

    .line 34
    .local v6, "randomSize":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v15}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v15

    div-int/2addr v14, v15

    add-int/2addr v14, v3

    mul-int v7, v14, v4

    .line 35
    .local v7, "reducedSignatureSizeSingle":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v14

    mul-int v8, v7, v14

    .line 36
    .local v8, "reducedSignaturesSizeTotal":I
    add-int v14, v2, v6

    add-int v12, v14, v8

    .line 37
    .local v12, "totalSize":I
    array-length v14, v9

    if-eq v14, v12, :cond_1

    .line 39
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "signature has wrong size"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 41
    :cond_1
    const/4 v5, 0x0

    .line 42
    .local v5, "position":I
    invoke-static {v9, v5, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->bytesToXBigEndian([BII)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->index:J

    .line 43
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->index:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result v14

    if-nez v14, :cond_2

    .line 45
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "index out of bounds"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 47
    :cond_2
    add-int/2addr v5, v2

    .line 48
    invoke-static {v9, v5, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->random:[B

    .line 49
    add-int/2addr v5, v6

    .line 50
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->reducedSignatures:Ljava/util/List;

    .line 51
    :goto_0
    array-length v14, v9

    if-ge v5, v14, :cond_5

    .line 53
    new-instance v14, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v15}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getXMSSParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    .line 54
    invoke-static {v9, v5, v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withReducedSignature([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v14

    .line 55
    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;

    move-result-object v13

    .line 56
    .local v13, "xmssSig":Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->reducedSignatures:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/2addr v5, v7

    .line 58
    goto :goto_0

    .line 63
    .end local v2    # "indexSize":I
    .end local v3    # "len":I
    .end local v5    # "position":I
    .end local v6    # "randomSize":I
    .end local v7    # "reducedSignatureSizeSingle":I
    .end local v8    # "reducedSignaturesSizeTotal":I
    .end local v12    # "totalSize":I
    .end local v13    # "xmssSig":Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->index:J

    .line 64
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)[B

    move-result-object v10

    .line 65
    .local v10, "tmpRandom":[B
    if-eqz v10, :cond_6

    .line 67
    array-length v14, v10

    if-eq v14, v4, :cond_4

    .line 69
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "size of random needs to be equal to size of digest"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 71
    :cond_4
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->random:[B

    .line 77
    :goto_1
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->access$400(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)Ljava/util/List;

    move-result-object v11

    .line 78
    .local v11, "tmpReducedSignatures":Ljava/util/List;, "Ljava/util/List<Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;>;"
    if-eqz v11, :cond_7

    .line 80
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->reducedSignatures:Ljava/util/List;

    .line 87
    .end local v10    # "tmpRandom":[B
    .end local v11    # "tmpReducedSignatures":Ljava/util/List;, "Ljava/util/List<Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;>;"
    :cond_5
    :goto_2
    return-void

    .line 75
    .restart local v10    # "tmpRandom":[B
    :cond_6
    new-array v14, v4, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->random:[B

    goto :goto_1

    .line 84
    .restart local v11    # "tmpReducedSignatures":Ljava/util/List;, "Ljava/util/List<Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;>;"
    :cond_7
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->reducedSignatures:Ljava/util/List;

    goto :goto_2
.end method

.method synthetic constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;
    .param p2, "x1"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)V

    return-void
.end method


# virtual methods
.method public getIndex()J
    .locals 2

    .prologue
    .line 167
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->index:J

    return-wide v0
.end method

.method public getRandom()[B
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->random:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getReducedSignatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->reducedSignatures:Ljava/util/List;

    return-object v0
.end method

.method public toByteArray()[B
    .locals 18

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v5

    .line 140
    .local v5, "n":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v4

    .line 141
    .local v4, "len":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v14

    int-to-double v14, v14

    const-wide/high16 v16, 0x4020000000000000L    # 8.0

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v3, v14

    .line 142
    .local v3, "indexSize":I
    move v8, v5

    .line 143
    .local v8, "randomSize":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v15}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v15

    div-int/2addr v14, v15

    add-int/2addr v14, v4

    mul-int v10, v14, v5

    .line 144
    .local v10, "reducedSignatureSizeSingle":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v14

    mul-int v11, v10, v14

    .line 145
    .local v11, "reducedSignaturesSizeTotal":I
    add-int v14, v3, v8

    add-int v13, v14, v11

    .line 146
    .local v13, "totalSize":I
    new-array v6, v13, [B

    .line 147
    .local v6, "out":[B
    const/4 v7, 0x0

    .line 149
    .local v7, "position":I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->index:J

    invoke-static {v14, v15, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v2

    .line 150
    .local v2, "indexBytes":[B
    invoke-static {v6, v2, v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 151
    add-int/2addr v7, v3

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->random:[B

    invoke-static {v6, v14, v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 154
    add-int/2addr v7, v8

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->reducedSignatures:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;

    .line 158
    .local v9, "reducedSignature":Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;->toByteArray()[B

    move-result-object v12

    .line 159
    .local v12, "signature":[B
    invoke-static {v6, v12, v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 160
    add-int/2addr v7, v10

    .line 161
    goto :goto_0

    .line 162
    .end local v9    # "reducedSignature":Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
    .end local v12    # "signature":[B
    :cond_0
    return-object v6
.end method
