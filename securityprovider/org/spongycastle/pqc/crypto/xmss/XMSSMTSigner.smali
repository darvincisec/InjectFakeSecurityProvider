.class public Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;
.super Ljava/lang/Object;
.source "XMSSMTSigner.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/StateAwareMessageSigner;


# instance fields
.field private hasGenerated:Z

.field private initSign:Z

.field private nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

.field private params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

.field private privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

.field private publicKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

.field private wotsPlus:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

.field private xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private wotsSign([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .locals 3
    .param p1, "messageDigest"    # [B
    .param p2, "otsHashAddress"    # Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .prologue
    .line 216
    array-length v0, p1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    if-nez p2, :cond_1

    .line 222
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "otsHashAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getWOTSPlusSecretKey([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->importKeys([B[B)V

    .line 227
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->sign([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 26
    .param p1, "message"    # [B

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 53
    new-instance v21, Ljava/lang/NullPointerException;

    const-string v22, "message == null"

    invoke-direct/range {v21 .. v22}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 55
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->initSign:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 59
    new-instance v21, Ljava/lang/IllegalStateException;

    const-string v22, "signing key no longer usable"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 64
    :cond_1
    new-instance v21, Ljava/lang/IllegalStateException;

    const-string v22, "signer not initialized for signature generation"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 66
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getBDSState()Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 68
    new-instance v21, Ljava/lang/IllegalStateException;

    const-string v22, "not initialized"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 71
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getBDSState()Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;

    move-result-object v4

    .line 74
    .local v4, "bdsState":Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getIndex()J

    move-result-wide v6

    .line 75
    .local v6, "globalIndex":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v18

    .line 76
    .local v18, "totalHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v20

    .line 77
    .local v20, "xmssHeight":I
    move/from16 v0, v18

    invoke-static {v0, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result v21

    if-nez v21, :cond_4

    .line 79
    new-instance v21, Ljava/lang/IllegalStateException;

    const-string v22, "index out of bounds"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 83
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getKhf()Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeyPRF()[B

    move-result-object v22

    const/16 v23, 0x20

    move/from16 v0, v23

    invoke-static {v6, v7, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v14

    .line 84
    .local v14, "random":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getRoot()[B

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-object/from16 v22, v0

    .line 85
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v22

    move/from16 v0, v22

    invoke-static {v6, v7, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v22

    .line 84
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v14, v0, v1}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v5

    .line 86
    .local v5, "concatenated":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getKhf()Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->HMsg([B[B)[B

    move-result-object v12

    .line 88
    .local v12, "messageDigest":[B
    new-instance v21, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->withIndex(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->withRandom([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;

    move-result-object v17

    .line 92
    .local v17, "signature":Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;
    move/from16 v0, v20

    invoke-static {v6, v7, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getTreeIndex(JI)J

    move-result-wide v10

    .line 93
    .local v10, "indexTree":J
    move/from16 v0, v20

    invoke-static {v6, v7, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v8

    .line 96
    .local v8, "indexLeaf":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->importKeys([B[B)V

    .line 100
    new-instance v21, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v21

    check-cast v21, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 101
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 104
    .local v13, "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->get(I)Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-result-object v21

    if-eqz v21, :cond_5

    if-nez v8, :cond_6

    .line 106
    :cond_5
    const/16 v21, 0x0

    new-instance v22, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v13}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->put(ILorg/spongycastle/pqc/crypto/xmss/BDS;)V

    .line 110
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsSign([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v19

    .line 112
    .local v19, "wotsPlusSignature":Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;
    new-instance v21, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    .line 113
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withWOTSPlusSignature(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;)Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->get(I)Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->getAuthenticationPath()Ljava/util/List;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withAuthPath(Ljava/util/List;)Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v21

    .line 114
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;

    move-result-object v15

    .line 116
    .local v15, "reducedSignature":Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->getReducedSignatures()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const/4 v9, 0x1

    .local v9, "layer":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_9

    .line 121
    add-int/lit8 v21, v9, -0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->get(I)Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->getRoot()Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v16

    .line 123
    .local v16, "root":Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    move/from16 v0, v20

    invoke-static {v10, v11, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v8

    .line 124
    move/from16 v0, v20

    invoke-static {v10, v11, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getTreeIndex(JI)J

    move-result-wide v10

    .line 127
    new-instance v21, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v21

    check-cast v21, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 128
    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v21

    check-cast v21, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v13

    .end local v13    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    check-cast v13, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 131
    .restart local v13    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsSign([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v19

    .line 133
    invoke-virtual {v4, v9}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->get(I)Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-result-object v21

    if-eqz v21, :cond_7

    move/from16 v0, v20

    invoke-static {v6, v7, v0, v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->isNewBDSInitNeeded(JII)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 135
    :cond_7
    new-instance v21, Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v13}, Lorg/spongycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;[B[BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v9, v0}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->put(ILorg/spongycastle/pqc/crypto/xmss/BDS;)V

    .line 138
    :cond_8
    new-instance v21, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    .line 139
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withWOTSPlusSignature(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;)Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v21

    .line 140
    invoke-virtual {v4, v9}, Lorg/spongycastle/pqc/crypto/xmss/BDSStateMap;->get(I)Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->getAuthenticationPath()Ljava/util/List;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withAuthPath(Ljava/util/List;)Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;

    move-result-object v15

    .line 142
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->getReducedSignatures()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 145
    .end local v16    # "root":Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    :cond_9
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->hasGenerated:Z

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getNextKey()Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    .line 157
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->toByteArray()[B

    move-result-object v21

    return-object v21

    .line 154
    :cond_a
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    goto :goto_1
.end method

.method public getUpdatedPrivateKey()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 234
    iget-boolean v3, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->hasGenerated:Z

    if-eqz v3, :cond_0

    .line 236
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    .line 238
    .local v0, "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    .line 239
    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object v1, v0

    .end local v0    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    .local v1, "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    move-object v2, v0

    .line 249
    .end local v1    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    .local v2, "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    :goto_0
    return-object v2

    .line 245
    .end local v2    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getNextKey()Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-result-object v0

    .line 247
    .restart local v0    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    move-object v1, v0

    .end local v0    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    .restart local v1    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    move-object v2, v0

    .line 249
    .end local v1    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    .restart local v2    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;
    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-eqz p1, :cond_0

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->initSign:Z

    .line 30
    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->hasGenerated:Z

    .line 31
    check-cast p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    .line 32
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    .line 34
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 35
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getXMSSParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 46
    :goto_0
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigest()Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;-><init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    .line 47
    return-void

    .line 39
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->initSign:Z

    .line 40
    check-cast p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->publicKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    .line 42
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->publicKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    .line 43
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getXMSSParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    goto :goto_0
.end method

.method public verifySignature([B[B)Z
    .locals 22
    .param p1, "message"    # [B
    .param p2, "signature"    # [B

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 164
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v8, "message == null"

    invoke-direct {v2, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_0
    if-nez p2, :cond_1

    .line 168
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v8, "signature == null"

    invoke-direct {v2, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->publicKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    if-nez v2, :cond_2

    .line 172
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v8, "publicKey == null"

    invoke-direct {v2, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_2
    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-direct {v2, v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->withSignature([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;

    move-result-object v21

    .line 177
    .local v21, "sig":Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->getRandom()[B

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->publicKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getRoot()[B

    move-result-object v8

    .line 178
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->getIndex()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v9

    invoke-static {v10, v11, v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v9

    .line 177
    invoke-static {v2, v8, v9}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v14

    .line 179
    .local v14, "concatenated":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getKhf()Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v14, v0}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->HMsg([B[B)[B

    move-result-object v4

    .line 181
    .local v4, "messageDigest":[B
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->getIndex()J

    move-result-wide v16

    .line 182
    .local v16, "globalIndex":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->xmssParams:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v3

    .line 183
    .local v3, "xmssHeight":I
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getTreeIndex(JI)J

    move-result-wide v18

    .line 184
    .local v18, "indexTree":J
    move-wide/from16 v0, v16

    invoke-static {v0, v1, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v7

    .line 187
    .local v7, "indexLeaf":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getDigestSize()I

    move-result v8

    new-array v8, v8, [B

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->publicKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getPublicSeed()[B

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->importKeys([B[B)V

    .line 190
    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 191
    invoke-virtual {v2, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 194
    .local v6, "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->getReducedSignatures()Ljava/util/List;

    move-result-object v2

    const/4 v8, 0x0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;

    .line 195
    .local v5, "xmssMTSignature":Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSVerifierUtil;->getRootNodeFromSignature(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;I[BLorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;I)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v20

    .line 196
    .local v20, "rootNode":Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    const/4 v15, 0x1

    .local v15, "layer":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v2

    if-ge v15, v2, :cond_3

    .line 198
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSignature;->getReducedSignatures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "xmssMTSignature":Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;

    .line 199
    .restart local v5    # "xmssMTSignature":Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v7

    .line 200
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getTreeIndex(JI)J

    move-result-wide v18

    .line 203
    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v2, v15}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 204
    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {v2, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v6

    .end local v6    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 207
    .restart local v6    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->wotsPlus:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v10

    move v9, v3

    move-object v11, v5

    move-object v12, v6

    move v13, v7

    invoke-static/range {v8 .. v13}, Lorg/spongycastle/pqc/crypto/xmss/XMSSVerifierUtil;->getRootNodeFromSignature(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;I[BLorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;I)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v20

    .line 196
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTSigner;->publicKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters;->getRoot()[B

    move-result-object v8

    invoke-static {v2, v8}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    return v2
.end method
