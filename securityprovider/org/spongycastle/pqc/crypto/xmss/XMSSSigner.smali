.class public Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;
.super Ljava/lang/Object;
.source "XMSSSigner.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/StateAwareMessageSigner;


# instance fields
.field private hasGenerated:Z

.field private initSign:Z

.field private khf:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

.field private nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

.field private params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

.field private privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

.field private publicKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private wotsSign([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .locals 3
    .param p1, "messageDigest"    # [B
    .param p2, "otsHashAddress"    # Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .prologue
    .line 147
    array-length v0, p1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    if-nez p2, :cond_1

    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "otsHashAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getSecretKeySeed()[B

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getWOTSPlusSecretKey([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->importKeys([B[B)V

    .line 158
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->sign([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 12
    .param p1, "message"    # [B

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 46
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "message == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 48
    :cond_0
    iget-boolean v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->initSign:Z

    if-eqz v7, :cond_1

    .line 50
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    if-nez v7, :cond_2

    .line 52
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "signing key no longer usable"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 57
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "signer not initialized for signature generation"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 59
    :cond_2
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getBDSState()Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->getAuthenticationPath()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 61
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "not initialized"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 63
    :cond_3
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getIndex()I

    move-result v1

    .line 64
    .local v1, "index":I
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v7

    int-to-long v8, v1

    invoke-static {v7, v8, v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result v7

    if-nez v7, :cond_4

    .line 66
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "index out of bounds"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 70
    :cond_4
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->khf:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getSecretKeyPRF()[B

    move-result-object v8

    int-to-long v10, v1

    const/16 v9, 0x20

    invoke-static {v10, v11, v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v4

    .line 71
    .local v4, "random":[B
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getRoot()[B

    move-result-object v7

    int-to-long v8, v1

    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 72
    invoke-virtual {v10}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v10

    invoke-static {v8, v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v8

    .line 71
    invoke-static {v4, v7, v8}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    .line 73
    .local v0, "concatenated":[B
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->khf:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {v7, v0, p1}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->HMsg([B[B)[B

    move-result-object v2

    .line 76
    .local v2, "messageDigest":[B
    new-instance v7, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v7, v1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 77
    .local v3, "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    invoke-direct {p0, v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->wotsSign([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    move-result-object v6

    .line 78
    .local v6, "wotsPlusSignature":Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;
    new-instance v7, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v7, v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v7, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->withIndex(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->withRandom([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;

    move-result-object v7

    .line 79
    invoke-virtual {v7, v6}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->withWOTSPlusSignature(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;)Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getBDSState()Lorg/spongycastle/pqc/crypto/xmss/BDS;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/BDS;->getAuthenticationPath()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withAuthPath(Ljava/util/List;)Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object v7

    .line 80
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;

    .line 82
    .local v5, "signature":Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->hasGenerated:Z

    .line 84
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    if-eqz v7, :cond_5

    .line 86
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getNextKey()Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v7

    iput-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    .line 87
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    iput-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    .line 94
    :goto_0
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->toByteArray()[B

    move-result-object v7

    return-object v7

    .line 91
    :cond_5
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    goto :goto_0
.end method

.method public getUpdatedPrivateKey()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 126
    iget-boolean v3, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->hasGenerated:Z

    if-eqz v3, :cond_0

    .line 128
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    .line 130
    .local v0, "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    .line 131
    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-object v1, v0

    .end local v0    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    .local v1, "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    move-object v2, v0

    .line 141
    .end local v1    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    .local v2, "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    :goto_0
    return-object v2

    .line 137
    .end local v2    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getNextKey()Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-result-object v0

    .line 139
    .restart local v0    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    iput-object v4, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    move-object v1, v0

    .end local v0    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    .restart local v1    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    move-object v2, v0

    .line 141
    .end local v1    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    .restart local v2    # "privKey":Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;
    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    const/4 v1, 0x0

    .line 22
    if-eqz p1, :cond_0

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->initSign:Z

    .line 25
    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->hasGenerated:Z

    .line 26
    check-cast p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    .line 27
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->nextKeyGenerator:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    .line 29
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->privateKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 30
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getKhf()Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->khf:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    .line 40
    :goto_0
    return-void

    .line 34
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->initSign:Z

    .line 35
    check-cast p2, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->publicKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    .line 37
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->publicKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 38
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getKhf()Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->khf:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    goto :goto_0
.end method

.method public verifySignature([B[B)Z
    .locals 13
    .param p1, "message"    # [B
    .param p2, "signature"    # [B

    .prologue
    .line 100
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-direct {v0, v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;-><init>(Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->withSignature([B)Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;

    move-result-object v3

    .line 103
    .local v3, "sig":Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;
    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getIndex()I

    move-result v7

    .line 105
    .local v7, "index":I
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v0

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v9

    new-array v9, v9, [B

    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->publicKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    invoke-virtual {v10}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getPublicSeed()[B

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->importKeys([B[B)V

    .line 108
    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSignature;->getRandom()[B

    move-result-object v0

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->publicKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getRoot()[B

    move-result-object v9

    int-to-long v10, v7

    iget-object v12, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    .line 109
    invoke-virtual {v12}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getDigestSize()I

    move-result v12

    invoke-static {v10, v11, v12}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v10

    .line 108
    invoke-static {v0, v9, v10}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v6

    .line 110
    .local v6, "concatenated":[B
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->khf:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {v0, v6, p1}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->HMsg([B[B)[B

    move-result-object v2

    .line 112
    .local v2, "messageDigest":[B
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getHeight()I

    move-result v1

    .line 113
    .local v1, "xmssHeight":I
    int-to-long v10, v7

    invoke-static {v10, v11, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->getLeafIndex(JI)I

    move-result v5

    .line 116
    .local v5, "indexLeaf":I
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {v0, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 117
    .local v4, "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->params:Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSParameters;->getWOTSPlus()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/XMSSVerifierUtil;->getRootNodeFromSignature(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;I[BLorg/spongycastle/pqc/crypto/xmss/XMSSReducedSignature;Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;I)Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v8

    .line 119
    .local v8, "rootNodeFromSignature":Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;
    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v0

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->publicKey:Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/xmss/XMSSPublicKeyParameters;->getRoot()[B

    move-result-object v9

    invoke-static {v0, v9}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0
.end method
