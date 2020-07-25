.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;
.super Ljava/lang/Object;
.source "GMSSSigner.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageSigner;


# instance fields
.field private currentAuthPaths:[[[B

.field private digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

.field private gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private gmssUtil:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;

.field private index:[I

.field key:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;

.field private mdLength:I

.field private messDigestOTS:Lorg/spongycastle/crypto/Digest;

.field private messDigestTrees:Lorg/spongycastle/crypto/Digest;

.field private numLayer:I

.field private ots:Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

.field private pubKeyBytes:[B

.field private random:Ljava/security/SecureRandom;

.field private subtreeRootSig:[[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 2
    .param p1, "digest"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;

    .line 110
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .line 111
    invoke-interface {p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    .line 112
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    .line 113
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    .line 114
    new-instance v0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 115
    return-void
.end method

.method private initSign()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 156
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v8}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 159
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->key:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;

    check-cast v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    .line 161
    .local v2, "gmssPrivateKey":Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;
    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->isUsed()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 163
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Private key already used"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 167
    :cond_0
    invoke-virtual {v2, v12}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getIndex(I)I

    move-result v8

    invoke-virtual {v2, v12}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getNumLeafs(I)I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 169
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "No more signatures can be generated"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 173
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v8

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    .line 175
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v8

    iput v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    .line 178
    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getCurrentSeeds()[[B

    move-result-object v8

    iget v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v9, v9, -0x1

    aget-object v7, v8, v9

    .line 179
    .local v7, "seed":[B
    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    new-array v0, v8, [B

    .line 180
    .local v0, "OTSSeed":[B
    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    new-array v1, v8, [B

    .line 181
    .local v1, "dummy":[B
    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    invoke-static {v7, v12, v1, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v8, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    .line 183
    new-instance v8, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v9}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v9

    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v10}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v10

    iget v11, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    invoke-direct {v8, v0, v9, v10}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/spongycastle/crypto/Digest;I)V

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->ots:Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    .line 185
    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getCurrentAuthPaths()[[[B

    move-result-object v3

    .line 186
    .local v3, "helpCurrentAuthPaths":[[[B
    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    new-array v8, v8, [[[B

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    .line 189
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    if-ge v6, v8, :cond_3

    .line 191
    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    aget-object v8, v3, v6

    array-length v8, v8

    iget v10, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    filled-new-array {v8, v10}, [I

    move-result-object v8

    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[B

    aput-object v8, v9, v6

    .line 192
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    aget-object v8, v3, v6

    array-length v8, v8

    if-ge v5, v8, :cond_2

    .line 194
    aget-object v8, v3, v6

    aget-object v8, v8, v5

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    aget-object v9, v9, v6

    aget-object v9, v9, v5

    iget v10, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    invoke-static {v8, v12, v9, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 189
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 199
    .end local v5    # "i":I
    :cond_3
    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    new-array v8, v8, [I

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->index:[I

    .line 200
    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getIndex()[I

    move-result-object v8

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->index:[I

    iget v10, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    invoke-static {v8, v12, v9, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v8, v8, -0x1

    new-array v8, v8, [[B

    iput-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    .line 205
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_4

    .line 207
    invoke-virtual {v2, v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getSubtreeRootSig(I)[B

    move-result-object v4

    .line 208
    .local v4, "helpSubtreeRootSig":[B
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    array-length v9, v4

    new-array v9, v9, [B

    aput-object v9, v8, v5

    .line 209
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v8, v8, v5

    array-length v9, v4

    invoke-static {v4, v12, v8, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 212
    .end local v4    # "helpSubtreeRootSig":[B
    :cond_4
    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->markUsed()V

    .line 213
    return-void
.end method

.method private initVerify()V
    .locals 2

    .prologue
    .line 286
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 288
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->key:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;

    check-cast v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;

    .line 289
    .local v0, "gmssPublicKey":Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;->getPublicKey()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->pubKeyBytes:[B

    .line 290
    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    .line 292
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    .line 295
    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 12
    .param p1, "message"    # [B

    .prologue
    const/4 v11, 0x0

    .line 223
    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    new-array v7, v8, [B

    .line 227
    .local v7, "otsSig":[B
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->ots:Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    invoke-virtual {v8, p1}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getSignature([B)[B

    move-result-object v7

    .line 230
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    iget v10, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;->concatenateArray([[B)[B

    move-result-object v0

    .line 233
    .local v0, "authPathBytes":[B
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->index:[I

    iget v10, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v10, v10, -0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;->intToBytesLittleEndian(I)[B

    move-result-object v6

    .line 236
    .local v6, "indexBytes":[B
    array-length v8, v6

    array-length v9, v7

    add-int/2addr v8, v9

    array-length v9, v0

    add-int/2addr v8, v9

    new-array v2, v8, [B

    .line 237
    .local v2, "gmssSigFirstPart":[B
    array-length v8, v6

    invoke-static {v6, v11, v2, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    array-length v8, v6

    array-length v9, v7

    invoke-static {v7, v11, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    array-length v8, v6

    array-length v9, v7

    add-int/2addr v8, v9

    array-length v9, v0

    invoke-static {v0, v11, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    new-array v3, v11, [B

    .line 246
    .local v3, "gmssSigNextPart":[B
    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v5, v8, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_0

    .line 250
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->currentAuthPaths:[[[B

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;->concatenateArray([[B)[B

    move-result-object v0

    .line 253
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->index:[I

    aget v9, v9, v5

    invoke-virtual {v8, v9}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;->intToBytesLittleEndian(I)[B

    move-result-object v6

    .line 258
    array-length v8, v3

    new-array v4, v8, [B

    .line 259
    .local v4, "helpGmssSig":[B
    array-length v8, v3

    invoke-static {v3, v11, v4, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    array-length v8, v4

    array-length v9, v6

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v9, v9, v5

    array-length v9, v9

    add-int/2addr v8, v9

    array-length v9, v0

    add-int/2addr v8, v9

    new-array v3, v8, [B

    .line 264
    array-length v8, v4

    invoke-static {v4, v11, v3, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    array-length v8, v4

    array-length v9, v6

    invoke-static {v6, v11, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v8, v8, v5

    array-length v9, v4

    array-length v10, v6

    add-int/2addr v9, v10

    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v10, v10, v5

    array-length v10, v10

    invoke-static {v8, v11, v3, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    array-length v8, v4

    array-length v9, v6

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->subtreeRootSig:[[B

    aget-object v9, v9, v5

    array-length v9, v9

    add-int/2addr v8, v9

    array-length v9, v0

    invoke-static {v0, v11, v3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 273
    .end local v4    # "helpGmssSig":[B
    :cond_0
    array-length v8, v2

    array-length v9, v3

    add-int/2addr v8, v9

    new-array v1, v8, [B

    .line 274
    .local v1, "gmssSig":[B
    array-length v8, v2

    invoke-static {v2, v11, v1, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    array-length v8, v2

    array-length v9, v3

    invoke-static {v3, v11, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    return-object v1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 121
    if-eqz p1, :cond_1

    .line 123
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 125
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 128
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->random:Ljava/security/SecureRandom;

    .line 129
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->key:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;

    .line 130
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->initSign()V

    .line 148
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 136
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->random:Ljava/security/SecureRandom;

    .line 137
    check-cast p2, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->key:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;

    .line 138
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->initSign()V

    goto :goto_0

    .line 143
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->key:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;

    .line 144
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->initVerify()V

    goto :goto_0
.end method

.method public verifySignature([B[B)Z
    .locals 22
    .param p1, "message"    # [B
    .param p2, "signature"    # [B

    .prologue
    .line 308
    const/16 v16, 0x0

    .line 310
    .local v16, "success":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 314
    move-object/from16 v7, p1

    .line 320
    .local v7, "help":[B
    const/4 v11, 0x0

    .line 326
    .local v11, "nextEntry":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->numLayer:I

    move/from16 v18, v0

    add-int/lit8 v10, v18, -0x1

    .local v10, "j":I
    :goto_0
    if-ltz v10, :cond_4

    .line 328
    new-instance v15, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v19

    aget v19, v19, v10

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;-><init>(Lorg/spongycastle/crypto/Digest;I)V

    .line 329
    .local v15, "otsVerify":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;
    invoke-virtual {v15}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->getSignatureLength()I

    move-result v14

    .line 331
    .local v14, "otsSigLength":I
    move-object/from16 p1, v7

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssUtil:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSUtil;->bytesToIntLittleEndian([BI)I

    move-result v9

    .line 336
    .local v9, "index":I
    add-int/lit8 v11, v11, 0x4

    .line 339
    new-array v13, v14, [B

    .line 340
    .local v13, "otsSig":[B
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-static {v0, v11, v13, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    add-int/2addr v11, v14

    .line 344
    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v13}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->Verify([B[B)[B

    move-result-object v12

    .line 347
    .local v12, "otsPublicKey":[B
    if-nez v12, :cond_0

    .line 349
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v19, "OTS Public Key is null in GMSSSignature.verify"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    const/16 v18, 0x0

    move/from16 v17, v16

    .line 399
    .end local v9    # "index":I
    .end local v12    # "otsPublicKey":[B
    .end local v13    # "otsSig":[B
    .end local v14    # "otsSigLength":I
    .end local v15    # "otsVerify":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;
    .end local v16    # "success":Z
    .local v17, "success":Z
    :goto_1
    return v18

    .line 354
    .end local v17    # "success":Z
    .restart local v9    # "index":I
    .restart local v12    # "otsPublicKey":[B
    .restart local v13    # "otsSig":[B
    .restart local v14    # "otsSigLength":I
    .restart local v15    # "otsVerify":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;
    .restart local v16    # "success":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v18

    aget v18, v18, v10

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    move/from16 v19, v0

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v18

    sget-object v19, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    .line 355
    .local v4, "authPath":[[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_1

    .line 357
    aget-object v18, v4, v8

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v11, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    move/from16 v18, v0

    add-int v11, v11, v18

    .line 355
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 362
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v7, v0, [B

    .line 364
    move-object v7, v12

    .line 366
    const/16 v18, 0x1

    array-length v0, v4

    move/from16 v19, v0

    shl-int v5, v18, v19

    .line 367
    .local v5, "count":I
    add-int/2addr v5, v9

    .line 369
    const/4 v8, 0x0

    :goto_3
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_3

    .line 371
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    new-array v6, v0, [B

    .line 373
    .local v6, "dest":[B
    rem-int/lit8 v18, v5, 0x2

    if-nez v18, :cond_2

    .line 375
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v7, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    aget-object v18, v4, v8

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    div-int/lit8 v5, v5, 0x2

    .line 385
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    array-length v0, v6

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v6, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v18

    move/from16 v0, v18

    new-array v7, v0, [B

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v7, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 369
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 381
    :cond_2
    aget-object v18, v4, v8

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->mdLength:I

    move/from16 v19, v0

    array-length v0, v7

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v7, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    add-int/lit8 v18, v5, -0x1

    div-int/lit8 v5, v18, 0x2

    goto :goto_4

    .line 326
    .end local v6    # "dest":[B
    :cond_3
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_0

    .line 394
    .end local v4    # "authPath":[[B
    .end local v5    # "count":I
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v12    # "otsPublicKey":[B
    .end local v13    # "otsSig":[B
    .end local v14    # "otsSigLength":I
    .end local v15    # "otsVerify":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSSigner;->pubKeyBytes:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 396
    const/16 v16, 0x1

    :cond_5
    move/from16 v17, v16

    .end local v16    # "success":Z
    .restart local v17    # "success":Z
    move/from16 v18, v16

    .line 399
    goto/16 :goto_1
.end method
