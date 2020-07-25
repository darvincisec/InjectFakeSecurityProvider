.class final Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;
.super Ljava/lang/Object;
.source "WOTSPlus.java"


# instance fields
.field private final khf:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

.field private final params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

.field private publicSeed:[B

.field private secretKeySeed:[B


# direct methods
.method protected constructor <init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;)V
    .locals 3
    .param p1, "params"    # Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "params == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    .line 43
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getDigestSize()I

    move-result v0

    .line 44
    .local v0, "n":I
    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getDigest()Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;-><init>(Lorg/spongycastle/crypto/Digest;I)V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->khf:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    .line 45
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->secretKeySeed:[B

    .line 46
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->publicSeed:[B

    .line 47
    return-void
.end method

.method private chain([BIILorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B
    .locals 10
    .param p1, "startHash"    # [B
    .param p2, "startIndex"    # I
    .param p3, "steps"    # I
    .param p4, "otsHashAddress"    # Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .prologue
    .line 229
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getDigestSize()I

    move-result v3

    .line 230
    .local v3, "n":I
    if-nez p1, :cond_0

    .line 232
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "startHash == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 234
    :cond_0
    array-length v6, p1

    if-eq v6, v3, :cond_1

    .line 236
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startHash needs to be "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 238
    :cond_1
    if-nez p4, :cond_2

    .line 240
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "otsHashAddress == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 242
    :cond_2
    invoke-virtual {p4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->toByteArray()[B

    move-result-object v6

    if-nez v6, :cond_3

    .line 244
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "otsHashAddress byte array == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 246
    :cond_3
    add-int v6, p2, p3

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getWinternitzParameter()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-le v6, v7, :cond_4

    .line 248
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "max chain length must not be greater than w"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 251
    :cond_4
    if-nez p3, :cond_5

    .line 273
    .end local p1    # "startHash":[B
    :goto_0
    return-object p1

    .line 256
    .restart local p1    # "startHash":[B
    :cond_5
    add-int/lit8 v6, p3, -0x1

    invoke-direct {p0, p1, p2, v6, p4}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->chain([BIILorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object v4

    .line 257
    .local v4, "tmp":[B
    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    .line 258
    invoke-virtual {p4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {p4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 259
    invoke-virtual {p4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getOTSAddress()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v6

    invoke-virtual {p4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getChainAddress()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withChainAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v6

    add-int v7, p2, p3

    add-int/lit8 v7, v7, -0x1

    .line 260
    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withHashAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p4

    .end local p4    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    check-cast p4, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 261
    .restart local p4    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->khf:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->publicSeed:[B

    invoke-virtual {p4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v2

    .line 262
    .local v2, "key":[B
    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    .line 263
    invoke-virtual {p4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {p4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 264
    invoke-virtual {p4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getOTSAddress()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v6

    invoke-virtual {p4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getChainAddress()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withChainAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v6

    .line 265
    invoke-virtual {p4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getHashAddress()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withHashAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p4

    .end local p4    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    check-cast p4, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 266
    .restart local p4    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->khf:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->publicSeed:[B

    invoke-virtual {p4}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v0

    .line 267
    .local v0, "bitmask":[B
    new-array v5, v3, [B

    .line 268
    .local v5, "tmpMasked":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 270
    aget-byte v6, v4, v1

    aget-byte v7, v0, v1

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 272
    :cond_6
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->khf:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {v6, v2, v5}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->F([B[B)[B

    move-result-object v4

    move-object p1, v4

    .line 273
    goto/16 :goto_0
.end method

.method private convertToBaseW([BII)Ljava/util/List;
    .locals 6
    .param p1, "messageDigest"    # [B
    .param p2, "w"    # I
    .param p3, "outLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 288
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "msg == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 290
    :cond_0
    const/4 v4, 0x4

    if-eq p2, v4, :cond_1

    const/16 v4, 0x10

    if-eq p2, v4, :cond_1

    .line 292
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "w needs to be 4 or 16"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 294
    :cond_1
    invoke-static {p2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->log2(I)I

    move-result v2

    .line 295
    .local v2, "logW":I
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x8

    div-int/2addr v4, v2

    if-le p3, v4, :cond_2

    .line 297
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "outLength too big"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 300
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 303
    rsub-int/lit8 v1, v2, 0x8

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_5

    .line 305
    aget-byte v4, p1, v0

    shr-int/2addr v4, v1

    add-int/lit8 v5, p2, -0x1

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, p3, :cond_4

    .line 312
    .end local v1    # "j":I
    :cond_3
    return-object v3

    .line 303
    .restart local v1    # "j":I
    :cond_4
    sub-int/2addr v1, v2

    goto :goto_1

    .line 301
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private expandSecretKeySeed(I)[B
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 338
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->khf:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->secretKeySeed:[B

    int-to-long v2, p1

    const/16 v4, 0x20

    invoke-static {v2, v3, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getKhf()Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->khf:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    return-object v0
.end method

.method protected getParams()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    return-object v0
.end method

.method protected getPrivateKey()Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPrivateKeyParameters;
    .locals 4

    .prologue
    .line 392
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v2

    new-array v1, v2, [[B

    .line 393
    .local v1, "privateKey":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 395
    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->expandSecretKeySeed(I)[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_0
    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPrivateKeyParameters;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPrivateKeyParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;[[B)V

    return-object v2
.end method

.method protected getPublicKey(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;
    .locals 6
    .param p1, "otsHashAddress"    # Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 411
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "otsHashAddress == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v2

    new-array v1, v2, [[B

    .line 415
    .local v1, "publicKey":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 417
    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    .line 418
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 419
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getOTSAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withChainAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v2

    .line 420
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getHashAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withHashAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getKeyAndMask()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 421
    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p1

    .end local p1    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    check-cast p1, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 422
    .restart local p1    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->expandSecretKeySeed(I)[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getWinternitzParameter()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v2, v3, v4, p1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->chain([BIILorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_1
    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;[[B)V

    return-object v2
.end method

.method protected getPublicKeyFromSignature([BLorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;
    .locals 10
    .param p1, "messageDigest"    # [B
    .param p2, "signature"    # Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .param p3, "otsHashAddress"    # Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 173
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "messageDigest == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 175
    :cond_0
    array-length v6, p1

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getDigestSize()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 177
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 179
    :cond_1
    if-nez p2, :cond_2

    .line 181
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "signature == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 183
    :cond_2
    if-nez p3, :cond_3

    .line 185
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "otsHashAddress == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 187
    :cond_3
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getWinternitzParameter()I

    move-result v6

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen1()I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->convertToBaseW([BII)Ljava/util/List;

    move-result-object v1

    .line 189
    .local v1, "baseWMessage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 190
    .local v2, "checksum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen1()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 192
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getWinternitzParameter()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v7, v6

    add-int/2addr v2, v6

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    :cond_4
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen2()I

    move-result v6

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getWinternitzParameter()I

    move-result v7

    invoke-static {v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->log2(I)I

    move-result v7

    mul-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x8

    rsub-int/lit8 v6, v6, 0x8

    shl-int/2addr v2, v6

    .line 195
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    .line 196
    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen2()I

    move-result v6

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getWinternitzParameter()I

    move-result v7

    invoke-static {v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->log2(I)I

    move-result v7

    mul-int/2addr v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 197
    .local v4, "len2Bytes":I
    int-to-long v6, v2

    invoke-static {v6, v7, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v6

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    .line 198
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getWinternitzParameter()I

    move-result v7

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen2()I

    move-result v8

    .line 197
    invoke-direct {p0, v6, v7, v8}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->convertToBaseW([BII)Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "baseWChecksum":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v6

    new-array v5, v6, [[B

    .line 204
    .local v5, "publicKey":[[B
    const/4 v3, 0x0

    :goto_1
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 206
    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    .line 207
    invoke-virtual {p3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {p3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 208
    invoke-virtual {p3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getOTSAddress()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withChainAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v6

    .line 209
    invoke-virtual {p3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getHashAddress()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withHashAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v6

    invoke-virtual {p3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getKeyAndMask()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 210
    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p3

    .end local p3    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    check-cast p3, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 211
    .restart local p3    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;->toByteArray()[[B

    move-result-object v6

    aget-object v7, v6, v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    .line 212
    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getWinternitzParameter()I

    move-result v6

    add-int/lit8 v9, v6, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v9, v6

    .line 211
    invoke-direct {p0, v7, v8, v6, p3}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->chain([BIILorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object v6

    aput-object v6, v5, v3

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 214
    :cond_5
    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-direct {v6, v7, v5}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;-><init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;[[B)V

    return-object v6
.end method

.method protected getPublicSeed()[B
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->publicSeed:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected getSecretKeySeed()[B
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getSecretKeySeed()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected getWOTSPlusSecretKey([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B
    .locals 4
    .param p1, "secretKeySeed"    # [B
    .param p2, "otsHashAddress"    # Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .prologue
    .line 324
    new-instance v0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    .line 325
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 326
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getOTSAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p2

    .end local p2    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    check-cast p2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 327
    .restart local p2    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->khf:Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method importKeys([B[B)V
    .locals 2
    .param p1, "secretKeySeed"    # [B
    .param p2, "publicSeed"    # [B

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "secretKeySeed == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getDigestSize()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size of secretKeySeed needs to be equal to size of digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    if-nez p2, :cond_2

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "publicSeed == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    array-length v0, p2

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getDigestSize()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size of publicSeed needs to be equal to size of digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->secretKeySeed:[B

    .line 74
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->publicSeed:[B

    .line 75
    return-void
.end method

.method protected sign([BLorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .locals 10
    .param p1, "messageDigest"    # [B
    .param p2, "otsHashAddress"    # Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 88
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "messageDigest == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 90
    :cond_0
    array-length v6, p1

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getDigestSize()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 92
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 94
    :cond_1
    if-nez p2, :cond_2

    .line 96
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "otsHashAddress == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 98
    :cond_2
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getWinternitzParameter()I

    move-result v6

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen1()I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->convertToBaseW([BII)Ljava/util/List;

    move-result-object v1

    .line 100
    .local v1, "baseWMessage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 101
    .local v2, "checksum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen1()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 103
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getWinternitzParameter()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v7, v6

    add-int/2addr v2, v6

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_3
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen2()I

    move-result v6

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getWinternitzParameter()I

    move-result v7

    invoke-static {v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->log2(I)I

    move-result v7

    mul-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x8

    rsub-int/lit8 v6, v6, 0x8

    shl-int/2addr v2, v6

    .line 106
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    .line 107
    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen2()I

    move-result v6

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getWinternitzParameter()I

    move-result v7

    invoke-static {v7}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->log2(I)I

    move-result v7

    mul-int/2addr v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 108
    .local v4, "len2Bytes":I
    int-to-long v6, v2

    invoke-static {v6, v7, v4}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v6

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    .line 109
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getWinternitzParameter()I

    move-result v7

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen2()I

    move-result v8

    .line 108
    invoke-direct {p0, v6, v7, v8}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->convertToBaseW([BII)Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "baseWChecksum":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v6

    new-array v5, v6, [[B

    .line 116
    .local v5, "signature":[[B
    const/4 v3, 0x0

    :goto_1
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 118
    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    .line 119
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 120
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getOTSAddress()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withChainAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v6

    .line 121
    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getHashAddress()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withHashAddress(I)Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;->getKeyAndMask()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withKeyAndMask(I)Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    .line 122
    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/spongycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p2

    .end local p2    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    check-cast p2, Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .line 123
    .restart local p2    # "otsHashAddress":Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;
    invoke-direct {p0, v3}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->expandSecretKeySeed(I)[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v7, v8, v6, p2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->chain([BIILorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object v6

    aput-object v6, v5, v3

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    :cond_4
    new-instance v6, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-direct {v6, v7, v5}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;-><init>(Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;[[B)V

    return-object v6
.end method

.method protected verifySignature([BLorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Z
    .locals 3
    .param p1, "messageDigest"    # [B
    .param p2, "signature"    # Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;
    .param p3, "otsHashAddress"    # Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "messageDigest == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    array-length v1, p1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->params:Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusParameters;->getDigestSize()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 145
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "size of messageDigest needs to be equal to size of digest"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_1
    if-nez p2, :cond_2

    .line 149
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "signature == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_2
    if-nez p3, :cond_3

    .line 153
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "otsHashAddress == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getPublicKeyFromSignature([BLorg/spongycastle/pqc/crypto/xmss/WOTSPlusSignature;Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;->toByteArray()[[B

    move-result-object v0

    .line 157
    .local v0, "tmpPublicKey":[[B
    invoke-virtual {p0, p3}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlus;->getPublicKey(Lorg/spongycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;->toByteArray()[[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->areEqual([[B[[B)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
