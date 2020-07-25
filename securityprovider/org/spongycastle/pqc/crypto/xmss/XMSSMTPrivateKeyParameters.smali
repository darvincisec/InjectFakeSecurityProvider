.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "XMSSMTPrivateKeyParameters.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;
    }
.end annotation


# instance fields
.field private final bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

.field private final index:J

.field private final params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

.field private final publicSeed:[B

.field private final root:[B

.field private final secretKeyPRF:[B

.field private final secretKeySeed:[B


# direct methods
.method private constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)V
    .locals 25
    .param p1, "builder"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    .prologue
    .line 26
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 27
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 28
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    if-nez v2, :cond_0

    .line 30
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "params == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v14

    .line 33
    .local v14, "n":I
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)[B

    move-result-object v16

    .line 34
    .local v16, "privateKey":[B
    if-eqz v16, :cond_3

    .line 36
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v2

    if-nez v2, :cond_1

    .line 38
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "xmss == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v24

    .line 42
    .local v24, "totalHeight":I
    add-int/lit8 v2, v24, 0x7

    div-int/lit8 v11, v2, 0x8

    .line 43
    .local v11, "indexSize":I
    move/from16 v20, v14

    .line 44
    .local v20, "secretKeySize":I
    move/from16 v19, v14

    .line 45
    .local v19, "secretKeyPRFSize":I
    move/from16 v17, v14

    .line 46
    .local v17, "publicSeedSize":I
    move/from16 v18, v14

    .line 53
    .local v18, "rootSize":I
    const/4 v15, 0x0

    .line 54
    .local v15, "position":I
    move-object/from16 v0, v16

    invoke-static {v0, v15, v11}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->bytesToXBigEndian([BII)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->index:J

    .line 55
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->index:J

    move/from16 v0, v24

    invoke-static {v0, v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "index out of bounds"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_2
    add-int/2addr v15, v11

    .line 60
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v15, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->secretKeySeed:[B

    .line 61
    add-int v15, v15, v20

    .line 62
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v15, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->secretKeyPRF:[B

    .line 63
    add-int v15, v15, v19

    .line 64
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v15, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->publicSeed:[B

    .line 65
    add-int v15, v15, v17

    .line 66
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v15, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->root:[B

    .line 67
    add-int v15, v15, v18

    .line 69
    move-object/from16 v0, v16

    array-length v2, v0

    sub-int/2addr v2, v15

    move-object/from16 v0, v16

    invoke-static {v0, v15, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v9

    .line 71
    .local v9, "bdsStateBinary":[B
    const/4 v8, 0x0

    .line 74
    .local v8, "bdsImport":Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;
    :try_start_0
    invoke-static {v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->deserialize([B)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    move-object v8, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->setXMSS(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    .line 85
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    .line 163
    .end local v8    # "bdsImport":Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;
    .end local v9    # "bdsStateBinary":[B
    .end local v11    # "indexSize":I
    .end local v15    # "position":I
    .end local v17    # "publicSeedSize":I
    .end local v18    # "rootSize":I
    .end local v19    # "secretKeyPRFSize":I
    .end local v20    # "secretKeySize":I
    .end local v24    # "totalHeight":I
    :goto_1
    return-void

    .line 76
    .restart local v8    # "bdsImport":Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;
    .restart local v9    # "bdsStateBinary":[B
    .restart local v11    # "indexSize":I
    .restart local v15    # "position":I
    .restart local v17    # "publicSeedSize":I
    .restart local v18    # "rootSize":I
    .restart local v19    # "secretKeyPRFSize":I
    .restart local v20    # "secretKeySize":I
    .restart local v24    # "totalHeight":I
    :catch_0
    move-exception v10

    .line 78
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 80
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 82
    .local v10, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v10}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v8    # "bdsImport":Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;
    .end local v9    # "bdsStateBinary":[B
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    .end local v11    # "indexSize":I
    .end local v15    # "position":I
    .end local v17    # "publicSeedSize":I
    .end local v18    # "rootSize":I
    .end local v19    # "secretKeyPRFSize":I
    .end local v20    # "secretKeySize":I
    .end local v24    # "totalHeight":I
    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->index:J

    .line 91
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->access$400(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)[B

    move-result-object v7

    .line 92
    .local v7, "tmpSecretKeySeed":[B
    if-eqz v7, :cond_5

    .line 94
    array-length v2, v7

    if-eq v2, v14, :cond_4

    .line 96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_4
    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->secretKeySeed:[B

    .line 104
    :goto_2
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->access$500(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)[B

    move-result-object v23

    .line 105
    .local v23, "tmpSecretKeyPRF":[B
    if-eqz v23, :cond_7

    .line 107
    move-object/from16 v0, v23

    array-length v2, v0

    if-eq v2, v14, :cond_6

    .line 109
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    .end local v23    # "tmpSecretKeyPRF":[B
    :cond_5
    new-array v2, v14, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->secretKeySeed:[B

    goto :goto_2

    .line 111
    .restart local v23    # "tmpSecretKeyPRF":[B
    :cond_6
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->secretKeyPRF:[B

    .line 117
    :goto_3
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->access$600(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)[B

    move-result-object v6

    .line 118
    .local v6, "tmpPublicSeed":[B
    if-eqz v6, :cond_9

    .line 120
    array-length v2, v6

    if-eq v2, v14, :cond_8

    .line 122
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size of publicSeed needs to be equal size of digest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    .end local v6    # "tmpPublicSeed":[B
    :cond_7
    new-array v2, v14, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->secretKeyPRF:[B

    goto :goto_3

    .line 124
    .restart local v6    # "tmpPublicSeed":[B
    :cond_8
    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->publicSeed:[B

    .line 130
    :goto_4
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->access$700(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)[B

    move-result-object v22

    .line 131
    .local v22, "tmpRoot":[B
    if-eqz v22, :cond_b

    .line 133
    move-object/from16 v0, v22

    array-length v2, v0

    if-eq v2, v14, :cond_a

    .line 135
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size of root needs to be equal size of digest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    .end local v22    # "tmpRoot":[B
    :cond_9
    new-array v2, v14, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->publicSeed:[B

    goto :goto_4

    .line 137
    .restart local v22    # "tmpRoot":[B
    :cond_a
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->root:[B

    .line 143
    :goto_5
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->access$800(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    move-result-object v21

    .line 144
    .local v21, "tmpBDSState":Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;
    if-eqz v21, :cond_c

    .line 146
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    goto/16 :goto_1

    .line 141
    .end local v21    # "tmpBDSState":Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;
    :cond_b
    new-array v2, v14, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->root:[B

    goto :goto_5

    .line 150
    .restart local v21    # "tmpBDSState":Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;
    :cond_c
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)J

    move-result-wide v12

    .line 151
    .local v12, "globalIndex":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v24

    .line 153
    .restart local v24    # "totalHeight":I
    move/from16 v0, v24

    invoke-static {v0, v12, v13}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v6, :cond_d

    if-eqz v7, :cond_d

    .line 155
    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)J

    move-result-wide v4

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;J[B[B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    goto/16 :goto_1

    .line 159
    :cond_d
    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    goto/16 :goto_1
.end method

.method synthetic constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;
    .param p2, "x1"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)V

    return-void
.end method


# virtual methods
.method getBDSState()Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    return-object v0
.end method

.method public getIndex()J
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->index:J

    return-wide v0
.end method

.method public getNextKey()Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    .locals 8

    .prologue
    .line 313
    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getIndex()J

    move-result-wide v4

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->publicSeed:[B

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->secretKeySeed:[B

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;-><init>(Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;J[B[B)V

    .line 315
    .local v1, "newState":Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-direct {v0, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->index:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withIndex(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->secretKeySeed:[B

    .line 316
    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->secretKeyPRF:[B

    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->publicSeed:[B

    .line 317
    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->root:[B

    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withRoot([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    .line 318
    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->withBDSState(Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-result-object v0

    .line 315
    return-object v0
.end method

.method public getParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    return-object v0
.end method

.method public getPublicSeed()[B
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->publicSeed:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->root:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSecretKeyPRF()[B
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->secretKeyPRF:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSecretKeySeed()[B
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->secretKeySeed:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 14

    .prologue
    .line 238
    iget-object v12, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v12}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v4

    .line 239
    .local v4, "n":I
    iget-object v12, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v12}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v12

    add-int/lit8 v12, v12, 0x7

    div-int/lit8 v3, v12, 0x8

    .line 240
    .local v3, "indexSize":I
    move v10, v4

    .line 241
    .local v10, "secretKeySize":I
    move v9, v4

    .line 242
    .local v9, "secretKeyPRFSize":I
    move v7, v4

    .line 243
    .local v7, "publicSeedSize":I
    move v8, v4

    .line 244
    .local v8, "rootSize":I
    add-int v12, v3, v10

    add-int/2addr v12, v9

    add-int/2addr v12, v7

    add-int v11, v12, v8

    .line 245
    .local v11, "totalSize":I
    new-array v5, v11, [B

    .line 246
    .local v5, "out":[B
    const/4 v6, 0x0

    .line 248
    .local v6, "position":I
    iget-wide v12, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->index:J

    invoke-static {v12, v13, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v2

    .line 249
    .local v2, "indexBytes":[B
    invoke-static {v5, v2, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 250
    add-int/2addr v6, v3

    .line 252
    iget-object v12, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->secretKeySeed:[B

    invoke-static {v5, v12, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 253
    add-int/2addr v6, v10

    .line 255
    iget-object v12, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->secretKeyPRF:[B

    invoke-static {v5, v12, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 256
    add-int/2addr v6, v9

    .line 258
    iget-object v12, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->publicSeed:[B

    invoke-static {v5, v12, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 259
    add-int/2addr v6, v7

    .line 261
    iget-object v12, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->root:[B

    invoke-static {v5, v12, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 263
    const/4 v0, 0x0

    .line 266
    .local v0, "bdsStateOut":[B
    :try_start_0
    iget-object v12, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-static {v12}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->serialize(Ljava/lang/Object;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 273
    invoke-static {v5, v0}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v12

    return-object v12

    .line 268
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "error serializing bds state"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
.end method
