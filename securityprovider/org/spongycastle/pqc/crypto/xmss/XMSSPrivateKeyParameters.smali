.class public final Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "XMSSPrivateKeyParameters.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;
    }
.end annotation


# instance fields
.field private final bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDS;

.field private final params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

.field private final publicSeed:[B

.field private final root:[B

.field private final secretKeyPRF:[B

.field private final secretKeySeed:[B


# direct methods
.method private constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)V
    .locals 24
    .param p1, "builder"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    .prologue
    .line 45
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 46
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$000(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 47
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    if-nez v2, :cond_0

    .line 49
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "params == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v14

    .line 52
    .local v14, "n":I
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$100(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B

    move-result-object v16

    .line 53
    .local v16, "privateKey":[B
    if-eqz v16, :cond_4

    .line 55
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v2

    if-nez v2, :cond_1

    .line 57
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "xmss == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v11

    .line 61
    .local v11, "height":I
    const/4 v13, 0x4

    .line 62
    .local v13, "indexSize":I
    move/from16 v20, v14

    .line 63
    .local v20, "secretKeySize":I
    move/from16 v19, v14

    .line 64
    .local v19, "secretKeyPRFSize":I
    move/from16 v17, v14

    .line 65
    .local v17, "publicSeedSize":I
    move/from16 v18, v14

    .line 72
    .local v18, "rootSize":I
    const/4 v15, 0x0

    .line 73
    .local v15, "position":I
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v12

    .line 74
    .local v12, "index":I
    int-to-long v2, v12

    invoke-static {v11, v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "index out of bounds"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_2
    add-int/2addr v15, v13

    .line 79
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v15, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeySeed:[B

    .line 80
    add-int/lit8 v15, v20, 0x4

    .line 81
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v15, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeyPRF:[B

    .line 82
    add-int v15, v15, v19

    .line 83
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v15, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->publicSeed:[B

    .line 84
    add-int v15, v15, v17

    .line 85
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v15, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->root:[B

    .line 86
    add-int v15, v15, v18

    .line 88
    move-object/from16 v0, v16

    array-length v2, v0

    sub-int/2addr v2, v15

    move-object/from16 v0, v16

    invoke-static {v0, v15, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v9

    .line 89
    .local v9, "bdsStateBinary":[B
    const/4 v8, 0x0

    .line 92
    .local v8, "bdsImport":Lorg/spongycastle/pqc/crypto/xmss/BDS;
    :try_start_0
    invoke-static {v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->deserialize([B)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-object v8, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    :goto_0
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$200(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->setXMSS(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    .line 103
    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->validate()V

    .line 104
    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->getIndex()I

    move-result v2

    if-eq v2, v12, :cond_3

    .line 106
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "serialized BDS has wrong index"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :catch_0
    move-exception v10

    .line 96
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 100
    .local v10, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v10}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    :cond_3
    move-object/from16 v0, p0

    iput-object v8, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    .line 182
    .end local v8    # "bdsImport":Lorg/spongycastle/pqc/crypto/xmss/BDS;
    .end local v9    # "bdsStateBinary":[B
    .end local v11    # "height":I
    .end local v12    # "index":I
    .end local v13    # "indexSize":I
    .end local v15    # "position":I
    .end local v17    # "publicSeedSize":I
    .end local v18    # "rootSize":I
    .end local v19    # "secretKeyPRFSize":I
    .end local v20    # "secretKeySize":I
    :goto_1
    return-void

    .line 113
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$300(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B

    move-result-object v5

    .line 114
    .local v5, "tmpSecretKeySeed":[B
    if-eqz v5, :cond_6

    .line 116
    array-length v2, v5

    if-eq v2, v14, :cond_5

    .line 118
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size of secretKeySeed needs to be equal size of digest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_5
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeySeed:[B

    .line 126
    :goto_2
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$400(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B

    move-result-object v23

    .line 127
    .local v23, "tmpSecretKeyPRF":[B
    if-eqz v23, :cond_8

    .line 129
    move-object/from16 v0, v23

    array-length v2, v0

    if-eq v2, v14, :cond_7

    .line 131
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size of secretKeyPRF needs to be equal size of digest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    .end local v23    # "tmpSecretKeyPRF":[B
    :cond_6
    new-array v2, v14, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeySeed:[B

    goto :goto_2

    .line 133
    .restart local v23    # "tmpSecretKeyPRF":[B
    :cond_7
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeyPRF:[B

    .line 139
    :goto_3
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$500(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B

    move-result-object v4

    .line 140
    .local v4, "tmpPublicSeed":[B
    if-eqz v4, :cond_a

    .line 142
    array-length v2, v4

    if-eq v2, v14, :cond_9

    .line 144
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size of publicSeed needs to be equal size of digest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    .end local v4    # "tmpPublicSeed":[B
    :cond_8
    new-array v2, v14, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeyPRF:[B

    goto :goto_3

    .line 146
    .restart local v4    # "tmpPublicSeed":[B
    :cond_9
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->publicSeed:[B

    .line 152
    :goto_4
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$600(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)[B

    move-result-object v22

    .line 153
    .local v22, "tmpRoot":[B
    if-eqz v22, :cond_c

    .line 155
    move-object/from16 v0, v22

    array-length v2, v0

    if-eq v2, v14, :cond_b

    .line 157
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size of root needs to be equal size of digest"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    .end local v22    # "tmpRoot":[B
    :cond_a
    new-array v2, v14, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->publicSeed:[B

    goto :goto_4

    .line 159
    .restart local v22    # "tmpRoot":[B
    :cond_b
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->root:[B

    .line 165
    :goto_5
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$700(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-result-object v21

    .line 166
    .local v21, "tmpBDSState":Lorg/spongycastle/pqc/crypto/xmss/BDS;
    if-eqz v21, :cond_d

    .line 168
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    goto :goto_1

    .line 163
    .end local v21    # "tmpBDSState":Lorg/spongycastle/pqc/crypto/xmss/BDS;
    :cond_c
    new-array v2, v14, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->root:[B

    goto :goto_5

    .line 172
    .restart local v21    # "tmpBDSState":Lorg/spongycastle/pqc/crypto/xmss/BDS;
    :cond_d
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$800(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)I

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v6

    shl-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_e

    if-eqz v4, :cond_e

    if-eqz v5, :cond_e

    .line 174
    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$800(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    goto/16 :goto_1

    .line 178
    :cond_e
    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-static/range {p1 .. p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->access$800(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)I

    move-result v6

    invoke-direct {v2, v3, v6}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    goto/16 :goto_1
.end method

.method synthetic constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;
    .param p2, "x1"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)V

    return-void
.end method


# virtual methods
.method getBDSState()Lorg/spongycastle/pqc/crypto/xmss/BDS;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->getIndex()I

    move-result v0

    return v0
.end method

.method public getNextKey()Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    .locals 6

    .prologue
    .line 332
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v0

    .line 333
    .local v0, "treeHeight":I
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getIndex()I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 335
    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeySeed:[B

    .line 336
    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeyPRF:[B

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->publicSeed:[B

    .line 337
    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->root:[B

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withRoot([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->publicSeed:[B

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeySeed:[B

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    .line 338
    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-virtual {v3, v4, v5, v1}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->getNextState([B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/spongycastle/pqc/crypto/xmss/BDS;)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v1

    .line 342
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeySeed:[B

    .line 343
    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeySeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeyPRF:[B

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withSecretKeyPRF([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->publicSeed:[B

    .line 344
    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withPublicSeed([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->root:[B

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withRoot([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 345
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;I)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->withBDSState(Lorg/spongycastle/pqc/crypto/xmss/BDS;)Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v1

    goto :goto_0
.end method

.method public getParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    return-object v0
.end method

.method public getPublicSeed()[B
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->publicSeed:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->root:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSecretKeyPRF()[B
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeyPRF:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSecretKeySeed()[B
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeySeed:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 14

    .prologue
    .line 257
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v11}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v3

    .line 258
    .local v3, "n":I
    const/4 v2, 0x4

    .line 259
    .local v2, "indexSize":I
    move v9, v3

    .line 260
    .local v9, "secretKeySize":I
    move v8, v3

    .line 261
    .local v8, "secretKeyPRFSize":I
    move v6, v3

    .line 262
    .local v6, "publicSeedSize":I
    move v7, v3

    .line 263
    .local v7, "rootSize":I
    add-int v11, v2, v9

    add-int/2addr v11, v8

    add-int/2addr v11, v6

    add-int v10, v11, v7

    .line 264
    .local v10, "totalSize":I
    new-array v4, v10, [B

    .line 265
    .local v4, "out":[B
    const/4 v5, 0x0

    .line 267
    .local v5, "position":I
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v11}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->getIndex()I

    move-result v11

    invoke-static {v11, v4, v5}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 268
    add-int/2addr v5, v2

    .line 270
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeySeed:[B

    invoke-static {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 271
    add-int/lit8 v5, v9, 0x4

    .line 273
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->secretKeyPRF:[B

    invoke-static {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 274
    add-int/2addr v5, v8

    .line 276
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->publicSeed:[B

    invoke-static {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 277
    add-int/2addr v5, v6

    .line 279
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->root:[B

    invoke-static {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    .line 281
    const/4 v0, 0x0

    .line 284
    .local v0, "bdsStateOut":[B
    :try_start_0
    iget-object v11, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->bdsState:Lorg/spongycastle/pqc/crypto/xmss/BDS;

    invoke-static {v11}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->serialize(Ljava/lang/Object;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 291
    invoke-static {v4, v0}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v11

    return-object v11

    .line 286
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error serializing bds state: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
