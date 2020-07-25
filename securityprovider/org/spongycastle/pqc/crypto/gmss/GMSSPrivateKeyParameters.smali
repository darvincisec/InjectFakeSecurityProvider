.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;
.super Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;
.source "GMSSPrivateKeyParameters.java"


# instance fields
.field private K:[I

.field private currentAuthPaths:[[[B

.field private currentRetain:[[Ljava/util/Vector;

.field private currentRootSig:[[B

.field private currentSeeds:[[B

.field private currentStack:[Ljava/util/Vector;

.field private currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

.field private digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

.field private gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private heightOfTrees:[I

.field private index:[I

.field private keep:[[[B

.field private mdLength:I

.field private messDigestTrees:Lorg/spongycastle/crypto/Digest;

.field private minTreehash:[I

.field private nextAuthPaths:[[[B

.field private nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

.field private nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

.field private nextNextSeeds:[[B

.field private nextRetain:[[Ljava/util/Vector;

.field private nextRoot:[[B

.field private nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

.field private nextStack:[Ljava/util/Vector;

.field private nextTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

.field private numLayer:I

.field private numLeafs:[I

.field private otsIndex:[I

.field private upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

.field private upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

.field private used:Z


# direct methods
.method private constructor <init>(Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;)V
    .locals 2
    .param p1, "original"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    .prologue
    .line 371
    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getParameters()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    .line 373
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    .line 374
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    .line 375
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    .line 376
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    .line 377
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    .line 378
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 379
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 380
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    .line 381
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    .line 382
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    .line 383
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    .line 384
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    .line 385
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 386
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 387
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 388
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    .line 389
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    .line 390
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    .line 391
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    .line 392
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    .line 393
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    .line 394
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .line 395
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    .line 396
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    .line 397
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    .line 398
    iget v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    .line 399
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    .line 400
    iget v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    .line 401
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 402
    iget-object v0, p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    .line 403
    return-void
.end method

.method public constructor <init>([I[[B[[B[[[B[[[B[[[B[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 11
    .param p1, "index"    # [I
    .param p2, "currentSeeds"    # [[B
    .param p3, "nextNextSeeds"    # [[B
    .param p4, "currentAuthPaths"    # [[[B
    .param p5, "nextAuthPaths"    # [[[B
    .param p6, "keep"    # [[[B
    .param p7, "currentTreehash"    # [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .param p8, "nextTreehash"    # [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .param p9, "currentStack"    # [Ljava/util/Vector;
    .param p10, "nextStack"    # [Ljava/util/Vector;
    .param p11, "currentRetain"    # [[Ljava/util/Vector;
    .param p12, "nextRetain"    # [[Ljava/util/Vector;
    .param p13, "nextNextLeaf"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
    .param p14, "upperLeaf"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
    .param p15, "upperTreehashLeaf"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
    .param p16, "minTreehash"    # [I
    .param p17, "nextRoot"    # [[B
    .param p18, "nextNextRoot"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    .param p19, "currentRootSig"    # [[B
    .param p20, "nextRootSig"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;
    .param p21, "gmssParameterset"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;
    .param p22, "digestProvider"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .prologue
    .line 168
    const/4 v5, 0x1

    move-object/from16 v0, p21

    invoke-direct {p0, v5, v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V

    .line 52
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    .line 172
    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    .line 173
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    .line 177
    move-object/from16 v0, p21

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    .line 178
    invoke-virtual/range {p21 .. p21}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    .line 179
    invoke-virtual/range {p21 .. p21}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    .line 180
    invoke-virtual/range {p21 .. p21}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    .line 182
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v5

    iput v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    .line 185
    if-nez p1, :cond_0

    .line 187
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    .line 188
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v4, v5, :cond_1

    .line 190
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    const/4 v6, 0x0

    aput v6, v5, v4

    .line 188
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    .end local v4    # "i":I
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    .line 198
    :cond_1
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    .line 199
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    .line 201
    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    .line 202
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    .line 205
    if-nez p6, :cond_2

    .line 207
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v5, v5, [[[B

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    .line 208
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v4, v5, :cond_3

    .line 210
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v5, v5, v4

    div-int/lit8 v5, v5, 0x2

    int-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    iget v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    filled-new-array {v5, v7}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    aput-object v5, v6, v4

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 215
    .end local v4    # "i":I
    :cond_2
    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    .line 219
    :cond_3
    if-nez p9, :cond_4

    .line 221
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v5, v5, [Ljava/util/Vector;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    .line 222
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v4, v5, :cond_5

    .line 224
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    aput-object v6, v5, v4

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 229
    .end local v4    # "i":I
    :cond_4
    move-object/from16 v0, p9

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    .line 233
    :cond_5
    if-nez p10, :cond_6

    .line 235
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Ljava/util/Vector;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    .line 236
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_7

    .line 238
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    aput-object v6, v5, v4

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 243
    .end local v4    # "i":I
    :cond_6
    move-object/from16 v0, p10

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    .line 246
    :cond_7
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 247
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 249
    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    .line 250
    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    .line 252
    move-object/from16 v0, p17

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    .line 254
    move-object/from16 v0, p22

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .line 256
    if-nez p18, :cond_8

    .line 258
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    .line 259
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_9

    .line 261
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    new-instance v6, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v6, v7, v8, v9}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    aput-object v6, v5, v4

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 267
    .end local v4    # "i":I
    :cond_8
    move-object/from16 v0, p18

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    .line 269
    :cond_9
    move-object/from16 v0, p19

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    .line 272
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    .line 273
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    if-ge v4, v5, :cond_a

    .line 275
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v7, v7, v4

    shl-int/2addr v6, v7

    aput v6, v5, v4

    .line 273
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 278
    :cond_a
    new-instance v5, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v5, v6}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 280
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_d

    .line 284
    if-nez p13, :cond_b

    .line 286
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x2

    new-array v5, v5, [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 287
    const/4 v4, 0x0

    :goto_6
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_c

    .line 289
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v6, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v10, v4, 0x2

    aget v9, v9, v10

    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    aget-object v10, v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/spongycastle/crypto/Digest;II[B)V

    aput-object v6, v5, v4

    .line 287
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 294
    :cond_b
    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 304
    :cond_c
    :goto_7
    if-nez p14, :cond_e

    .line 306
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 307
    const/4 v4, 0x0

    :goto_8
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_f

    .line 309
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v6, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v8, v8, v4

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v10, v4, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v10, v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/spongycastle/crypto/Digest;II[B)V

    aput-object v6, v5, v4

    .line 307
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 299
    :cond_d
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    goto :goto_7

    .line 315
    :cond_e
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 320
    :cond_f
    if-nez p15, :cond_10

    .line 322
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 323
    const/4 v4, 0x0

    :goto_9
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_11

    .line 325
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    new-instance v6, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v8, v8, v4

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    add-int/lit8 v10, v4, 0x1

    aget v9, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/spongycastle/crypto/Digest;II)V

    aput-object v6, v5, v4

    .line 323
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 330
    :cond_10
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 333
    :cond_11
    if-nez p16, :cond_12

    .line 335
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    .line 336
    const/4 v4, 0x0

    :goto_a
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_13

    .line 338
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    const/4 v6, -0x1

    aput v6, v5, v4

    .line 336
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 343
    :cond_12
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    .line 347
    :cond_13
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v3, v5, [B

    .line 348
    .local v3, "dummy":[B
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v2, v5, [B

    .line 349
    .local v2, "OTSseed":[B
    if-nez p20, :cond_14

    .line 351
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    iput-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    .line 352
    const/4 v4, 0x0

    :goto_b
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_15

    .line 354
    aget-object v5, p2, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v5, v6, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v5, v3}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    .line 356
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v5, v3}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v2

    .line 357
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    new-instance v6, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    invoke-interface/range {p22 .. p22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v8, v8, v4

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    add-int/lit8 v10, v4, 0x1

    aget v9, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;-><init>(Lorg/spongycastle/crypto/Digest;II)V

    aput-object v6, v5, v4

    .line 359
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    aget-object v5, v5, v4

    aget-object v6, p17, v4

    invoke-virtual {v5, v2, v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->initSign([B[B)V

    .line 352
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 364
    :cond_14
    move-object/from16 v0, p20

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    .line 366
    :cond_15
    return-void
.end method

.method public constructor <init>([[B[[B[[[B[[[B[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[B[[BLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 23
    .param p1, "currentSeed"    # [[B
    .param p2, "nextNextSeed"    # [[B
    .param p3, "currentAuthPath"    # [[[B
    .param p4, "nextAuthPath"    # [[[B
    .param p5, "currentTreehash"    # [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .param p6, "nextTreehash"    # [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .param p7, "currentStack"    # [Ljava/util/Vector;
    .param p8, "nextStack"    # [Ljava/util/Vector;
    .param p9, "currentRetain"    # [[Ljava/util/Vector;
    .param p10, "nextRetain"    # [[Ljava/util/Vector;
    .param p11, "nextRoot"    # [[B
    .param p12, "currentRootSig"    # [[B
    .param p13, "gmssParameterset"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;
    .param p14, "digestProvider"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .prologue
    .line 125
    const/4 v1, 0x0

    const/4 v6, 0x0

    check-cast v6, [[[B

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v17, p11

    move-object/from16 v19, p12

    move-object/from16 v21, p13

    move-object/from16 v22, p14

    invoke-direct/range {v0 .. v22}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;-><init>([I[[B[[B[[[B[[[B[[[B[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    .line 129
    return-void
.end method

.method private computeAuthPaths(I)V
    .locals 30
    .param p1, "layer"    # I

    .prologue
    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    move-object/from16 v25, v0

    aget v10, v25, p1

    .line 754
    .local v10, "Phi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    move-object/from16 v25, v0

    aget v6, v25, p1

    .line 755
    .local v6, "H":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    move-object/from16 v25, v0

    aget v7, v25, p1

    .line 758
    .local v7, "K":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    sub-int v25, v6, v7

    move/from16 v0, v25

    if-ge v15, v0, :cond_0

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    aget-object v25, v25, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->updateNextSeed(Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;)V

    .line 758
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 764
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfPhi(I)I

    move-result v11

    .line 766
    .local v11, "Tau":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v9, v0, [B

    .line 767
    .local v9, "OTSseed":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    move-object/from16 v26, v0

    aget-object v26, v26, p1

    invoke-virtual/range {v25 .. v26}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v9

    .line 775
    add-int/lit8 v25, v11, 0x1

    ushr-int v25, v10, v25

    and-int/lit8 v8, v25, 0x1

    .line 777
    .local v8, "L":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 781
    .local v22, "tempKeep":[B
    add-int/lit8 v25, v6, -0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_1

    if-nez v8, :cond_1

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    aget-object v25, v25, v11

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v22

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 787
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v14, v0, [B

    .line 792
    .local v14, "help":[B
    if-nez v11, :cond_6

    .line 795
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 799
    new-instance v18, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    move-object/from16 v25, v0

    .line 800
    invoke-interface/range {v25 .. v25}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    move-object/from16 v26, v0

    aget v26, v26, p1

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v9, v1, v2}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/spongycastle/crypto/Digest;I)V

    .line 801
    .local v18, "ots":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v14

    .line 820
    .end local v18    # "ots":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
    :goto_1
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    move-object/from16 v26, v0

    aget-object v26, v26, p1

    const/16 v27, 0x0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v28, v0

    move/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v14, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 897
    :cond_2
    add-int/lit8 v25, v6, -0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_3

    if-nez v8, :cond_3

    .line 899
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    move-object/from16 v26, v0

    aget-object v26, v26, p1

    div-int/lit8 v27, v11, 0x2

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    .line 900
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    aget-object v26, v26, v27

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v28, v0

    .line 899
    move-object/from16 v0, v22

    move/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 910
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 912
    const/16 v23, 0x1

    .local v23, "tmp":I
    :goto_2
    sub-int v25, v6, v7

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v23

    move/from16 v1, v25

    if-gt v0, v1, :cond_c

    .line 915
    invoke-direct/range {p0 .. p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getMinTreehashIndex(I)I

    move-result v17

    .line 918
    .local v17, "minTreehash":I
    if-ltz v17, :cond_4

    .line 922
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 923
    .local v19, "seed":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    aget-object v25, v25, v17

    .line 925
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getSeedActive()[B

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v28, v0

    .line 923
    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v19

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v20

    .line 927
    .local v20, "seed2":[B
    new-instance v18, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    move-object/from16 v25, v0

    .line 928
    invoke-interface/range {v25 .. v25}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    move-object/from16 v26, v0

    aget v26, v26, p1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/spongycastle/crypto/Digest;I)V

    .line 929
    .restart local v18    # "ots":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v16

    .line 930
    .local v16, "leaf":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    aget-object v25, v25, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->update(Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    .end local v16    # "leaf":[B
    .end local v18    # "ots":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
    .end local v19    # "seed":[B
    .end local v20    # "seed2":[B
    :cond_4
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 806
    .end local v17    # "minTreehash":I
    .end local v23    # "tmp":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v12, v0, [B

    .line 807
    .local v12, "dummy":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v14

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->initLeafCalc([B)V

    goto/16 :goto_1

    .line 826
    .end local v12    # "dummy":[B
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v25, v0

    shl-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 827
    .local v24, "toBeHashed":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    add-int/lit8 v26, v11, -0x1

    aget-object v25, v25, v26

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v24

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->keep:[[[B

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    add-int/lit8 v26, v11, -0x1

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    aget-object v25, v25, v26

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v24

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    aput-object v26, v25, v11

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->messDigestTrees:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    move-object/from16 v26, v0

    aget-object v26, v26, p1

    aget-object v26, v26, v11

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 838
    const/4 v15, 0x0

    :goto_4
    if-ge v15, v11, :cond_2

    .line 843
    sub-int v25, v6, v7

    move/from16 v0, v25

    if-ge v15, v0, :cond_7

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    aget-object v25, v25, v15

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->wasFinished()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    aget-object v25, v25, v15

    .line 848
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getFirstNode()[B

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    move-object/from16 v27, v0

    aget-object v27, v27, p1

    aget-object v27, v27, v15

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v29, v0

    .line 847
    invoke-static/range {v25 .. v29}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    aget-object v25, v25, v15

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->destroy()V

    .line 864
    :cond_7
    :goto_5
    add-int/lit8 v25, v6, -0x1

    move/from16 v0, v25

    if-ge v15, v0, :cond_8

    sub-int v25, v6, v7

    move/from16 v0, v25

    if-lt v15, v0, :cond_8

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    sub-int v26, v6, v7

    sub-int v26, v15, v26

    aget-object v25, v25, v26

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v25

    if-lez v25, :cond_8

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    sub-int v26, v6, v7

    sub-int v26, v15, v26

    aget-object v25, v25, v26

    .line 870
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    move-object/from16 v27, v0

    aget-object v27, v27, p1

    aget-object v27, v27, v15

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    move/from16 v29, v0

    .line 869
    invoke-static/range {v25 .. v29}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    sub-int v26, v6, v7

    sub-int v26, v15, v26

    aget-object v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    move-object/from16 v26, v0

    aget-object v26, v26, p1

    sub-int v27, v6, v7

    sub-int v27, v15, v27

    aget-object v26, v26, v27

    .line 874
    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    .line 873
    invoke-virtual/range {v25 .. v26}, Ljava/util/Vector;->removeElementAt(I)V

    .line 880
    :cond_8
    sub-int v25, v6, v7

    move/from16 v0, v25

    if-ge v15, v0, :cond_9

    .line 883
    const/16 v25, 0x1

    shl-int v25, v25, v15

    mul-int/lit8 v25, v25, 0x3

    add-int v21, v10, v25

    .line 884
    .local v21, "startPoint":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    move-object/from16 v25, v0

    aget v25, v25, p1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v25, v0

    aget-object v25, v25, p1

    aget-object v25, v25, v15

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->initialize()V

    .line 838
    .end local v21    # "startPoint":I
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 854
    :cond_a
    sget-object v25, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Treehash ("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ") not finished when needed in AuthPathComputation"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 855
    invoke-virtual/range {v25 .. v26}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 933
    .end local v24    # "toBeHashed":[B
    .restart local v17    # "minTreehash":I
    .restart local v23    # "tmp":I
    :catch_0
    move-exception v13

    .line 935
    .local v13, "e":Ljava/lang/Exception;
    sget-object v25, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 942
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v17    # "minTreehash":I
    .end local v23    # "tmp":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getMinTreehashIndex(I)I

    move-result v26

    aput v26, v25, p1

    .line 944
    :cond_c
    return-void
.end method

.method private getMinTreehashIndex(I)I
    .locals 4
    .param p1, "layer"    # I

    .prologue
    .line 724
    const/4 v1, -0x1

    .line 725
    .local v1, "minTreehash":I
    const/4 v0, 0x0

    .local v0, "h":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v2, v2, p1

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v3, v3, p1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    .line 727
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->wasInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    .line 728
    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->wasFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 730
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 732
    move v1, v0

    .line 725
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 734
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    aget-object v2, v2, p1

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getLowestNodeHeight()I

    move-result v2

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    aget-object v3, v3, p1

    aget-object v3, v3, v1

    .line 735
    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getLowestNodeHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 737
    move v1, v0

    goto :goto_1

    .line 741
    :cond_2
    return v1
.end method

.method private heightOfPhi(I)I
    .locals 3
    .param p1, "Phi"    # I

    .prologue
    .line 955
    if-nez p1, :cond_0

    .line 957
    const/4 v2, -0x1

    .line 966
    :goto_0
    return v2

    .line 959
    :cond_0
    const/4 v0, 0x0

    .line 960
    .local v0, "Tau":I
    const/4 v1, 0x1

    .line 961
    .local v1, "modul":I
    :goto_1
    rem-int v2, p1, v1

    if-nez v2, :cond_1

    .line 963
    mul-int/lit8 v1, v1, 0x2

    .line 964
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 966
    :cond_1
    add-int/lit8 v2, v0, -0x1

    goto :goto_0
.end method

.method private nextKey(I)V
    .locals 2
    .param p1, "layer"    # I

    .prologue
    .line 433
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 435
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v0, v0, p1

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v1, v1, p1

    if-ne v0, v1, :cond_2

    .line 442
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 444
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTree(I)V

    .line 445
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 450
    :cond_2
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->updateKey(I)V

    goto :goto_0
.end method

.method private nextTree(I)V
    .locals 12
    .param p1, "layer"    # I

    .prologue
    const/4 v11, 0x0

    .line 463
    if-lez p1, :cond_8

    .line 466
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    add-int/lit8 v8, p1, -0x1

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    .line 469
    const/4 v4, 0x1

    .line 470
    .local v4, "lastTree":Z
    move v6, p1

    .line 473
    .local v6, "z":I
    :cond_0
    add-int/lit8 v6, v6, -0x1

    .line 474
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v7, v7, v6

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v8, v8, v6

    if-ge v7, v8, :cond_1

    .line 476
    const/4 v4, 0x0

    .line 479
    :cond_1
    if-eqz v4, :cond_2

    if-gtz v6, :cond_0

    .line 482
    :cond_2
    if-nez v4, :cond_8

    .line 484
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    aget-object v8, v8, p1

    invoke-virtual {v7, v8}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    .line 487
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    add-int/lit8 v8, p1, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->updateSign()Z

    .line 490
    const/4 v7, 0x1

    if-le p1, v7, :cond_3

    .line 492
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v8, p1, -0x1

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v10, p1, -0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v9

    aput-object v9, v7, v8

    .line 496
    :cond_3
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v8, p1, -0x1

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v10, p1, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v9

    aput-object v9, v7, v8

    .line 500
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v8, p1, -0x1

    aget v7, v7, v8

    if-ltz v7, :cond_4

    .line 502
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v8, p1, -0x1

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v10, p1, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v9

    aput-object v9, v7, v8

    .line 503
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v8, p1, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v5

    .line 508
    .local v5, "leaf":[B
    :try_start_0
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v8, p1, -0x1

    aget-object v7, v7, v8

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v9, p1, -0x1

    aget v8, v8, v9

    aget-object v7, v7, v8

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 509
    invoke-virtual {v7, v8, v5}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->update(Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;[B)V

    .line 512
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v8, p1, -0x1

    aget-object v7, v7, v8

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v9, p1, -0x1

    aget v8, v8, v9

    aget-object v7, v7, v8

    .line 513
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->wasFinished()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_4

    .line 526
    .end local v5    # "leaf":[B
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->updateNextNextAuthRoot(I)V

    .line 533
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    add-int/lit8 v8, p1, -0x1

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    add-int/lit8 v10, p1, -0x1

    aget-object v9, v9, v10

    .line 534
    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getSig()[B

    move-result-object v9

    aput-object v9, v7, v8

    .line 540
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v7, v7, p1

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v8, v8, p1

    sub-int/2addr v7, v8

    if-ge v3, v7, :cond_5

    .line 542
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    aget-object v7, v7, p1

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v9, p1, -0x1

    aget-object v8, v8, v9

    aget-object v8, v8, v3

    aput-object v8, v7, v3

    .line 543
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v8, p1, -0x1

    aget-object v7, v7, v8

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v9, p1, -0x1

    aget-object v8, v8, v9

    .line 544
    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v8

    aget-object v8, v8, v3

    aput-object v8, v7, v3

    .line 540
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 519
    .end local v3    # "i":I
    .restart local v5    # "leaf":[B
    :catch_0
    move-exception v2

    .line 521
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 549
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "leaf":[B
    .restart local v3    # "i":I
    :cond_5
    const/4 v3, 0x0

    :goto_2
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    aget v7, v7, p1

    if-ge v3, v7, :cond_6

    .line 551
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    add-int/lit8 v8, p1, -0x1

    aget-object v7, v7, v8

    aget-object v7, v7, v3

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    aget-object v8, v8, p1

    aget-object v8, v8, v3

    iget v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v7, v11, v8, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v8, p1, -0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getAuthPath()[[B

    move-result-object v7

    aget-object v7, v7, v3

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextAuthPaths:[[[B

    add-int/lit8 v9, p1, -0x1

    aget-object v8, v8, v9

    aget-object v8, v8, v3

    iget v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    invoke-static {v7, v11, v8, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 559
    :cond_6
    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    aget v7, v7, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_7

    .line 561
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRetain:[[Ljava/util/Vector;

    aget-object v7, v7, p1

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    add-int/lit8 v9, p1, -0x1

    aget-object v8, v8, v9

    aget-object v8, v8, v3

    aput-object v8, v7, v3

    .line 562
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRetain:[[Ljava/util/Vector;

    add-int/lit8 v8, p1, -0x1

    aget-object v7, v7, v8

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v9, p1, -0x1

    aget-object v8, v8, v9

    .line 563
    invoke-virtual {v8}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v8

    aget-object v8, v8, v3

    aput-object v8, v7, v3

    .line 559
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 567
    :cond_7
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentStack:[Ljava/util/Vector;

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    add-int/lit8 v9, p1, -0x1

    aget-object v8, v8, v9

    aput-object v8, v7, p1

    .line 569
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextStack:[Ljava/util/Vector;

    add-int/lit8 v8, p1, -0x1

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v10, p1, -0x1

    aget-object v9, v9, v10

    .line 570
    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStack()Ljava/util/Vector;

    move-result-object v9

    aput-object v9, v7, v8

    .line 573
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    add-int/lit8 v8, p1, -0x1

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v10, p1, -0x1

    aget-object v9, v9, v10

    .line 574
    invoke-virtual {v9}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getRoot()[B

    move-result-object v9

    aput-object v9, v7, v8

    .line 578
    iget v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v0, v7, [B

    .line 579
    .local v0, "OTSseed":[B
    iget v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v1, v7, [B

    .line 581
    .local v1, "dummy":[B
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    add-int/lit8 v8, p1, -0x1

    aget-object v7, v7, v8

    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    .line 582
    invoke-static {v7, v11, v1, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 584
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v7, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    .line 585
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v7, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    .line 586
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v7, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    .line 589
    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    add-int/lit8 v8, p1, -0x1

    aget-object v7, v7, v8

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRoot:[[B

    add-int/lit8 v9, p1, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v0, v8}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->initSign([B[B)V

    .line 592
    add-int/lit8 v7, p1, -0x1

    invoke-direct {p0, v7}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextKey(I)V

    .line 595
    .end local v0    # "OTSseed":[B
    .end local v1    # "dummy":[B
    .end local v3    # "i":I
    .end local v4    # "lastTree":Z
    .end local v6    # "z":I
    :cond_8
    return-void
.end method

.method private updateKey(I)V
    .locals 11
    .param p1, "layer"    # I

    .prologue
    const/4 v10, 0x1

    .line 610
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->computeAuthPaths(I)V

    .line 614
    if-lez p1, :cond_4

    .line 618
    if-le p1, v10, :cond_0

    .line 620
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v5, p1, -0x1

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v7, p1, -0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v6

    aput-object v6, v4, v5

    .line 624
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v5, p1, -0x1

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v7, p1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v6

    aput-object v6, v4, v5

    .line 630
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getNumLeafs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->heightOfTrees:[I

    add-int/lit8 v7, p1, -0x1

    aget v6, v6, v7

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->K:[I

    add-int/lit8 v8, p1, -0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 633
    .local v3, "t":I
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v4, v4, p1

    rem-int/2addr v4, v3

    if-ne v4, v10, :cond_5

    .line 640
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v4, v4, p1

    if-le v4, v10, :cond_1

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    if-ltz v4, :cond_1

    .line 642
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v1

    .line 647
    .local v1, "leaf":[B
    :try_start_0
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v6, p1, -0x1

    aget v5, v5, v6

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 648
    invoke-virtual {v4, v5, v1}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->update(Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;[B)V

    .line 651
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v6, p1, -0x1

    aget v5, v5, v6

    aget-object v4, v4, v5

    .line 652
    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->wasFinished()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 669
    .end local v1    # "leaf":[B
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v5, p1, -0x1

    add-int/lit8 v6, p1, -0x1

    invoke-direct {p0, v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->getMinTreehashIndex(I)I

    move-result v6

    aput v6, v4, v5

    .line 671
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    if-ltz v4, :cond_2

    .line 674
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentTreehash:[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v6, p1, -0x1

    aget v5, v5, v6

    aget-object v4, v4, v5

    .line 675
    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getSeedActive()[B

    move-result-object v2

    .line 676
    .local v2, "seed":[B
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v5, p1, -0x1

    new-instance v6, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .line 677
    invoke-interface {v7}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    add-int/lit8 v9, p1, -0x1

    aget v8, v8, v9

    invoke-direct {v6, v7, v8, v3, v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;-><init>(Lorg/spongycastle/crypto/Digest;II[B)V

    aput-object v6, v4, v5

    .line 678
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v5, p1, -0x1

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v7, p1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v6

    aput-object v6, v4, v5

    .line 698
    .end local v2    # "seed":[B
    :cond_2
    :goto_1
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextRootSig:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->updateSign()Z

    .line 701
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v4, v4, p1

    if-ne v4, v10, :cond_3

    .line 705
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->initialize(Ljava/util/Vector;)V

    .line 710
    :cond_3
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->updateNextNextAuthRoot(I)V

    .line 713
    .end local v3    # "t":I
    :cond_4
    return-void

    .line 658
    .restart local v1    # "leaf":[B
    .restart local v3    # "t":I
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 688
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "leaf":[B
    :cond_5
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->minTreehash:[I

    add-int/lit8 v5, p1, -0x1

    aget v4, v4, v5

    if-ltz v4, :cond_2

    .line 690
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v5, p1, -0x1

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->upperTreehashLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v7, p1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->nextLeaf()Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_1
.end method

.method private updateNextNextAuthRoot(I)V
    .locals 6
    .param p1, "layer"    # I

    .prologue
    .line 978
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->mdLength:I

    new-array v0, v2, [B

    .line 979
    .local v0, "OTSseed":[B
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    .line 982
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 985
    new-instance v1, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .line 986
    invoke-interface {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->otsIndex:[I

    aget v3, v3, p1

    invoke-direct {v1, v0, v2, v3}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/spongycastle/crypto/Digest;I)V

    .line 987
    .local v1, "ots":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    .line 988
    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v4

    .line 987
    invoke-virtual {v2, v3, v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B[B)V

    .line 995
    .end local v1    # "ots":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
    :goto_0
    return-void

    .line 992
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextRoot:[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v5, p1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->getLeaf()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B[B)V

    .line 993
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextLeaf:[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextNextSeeds:[[B

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->initLeafCalc([B)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentAuthPaths()[[[B
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentAuthPaths:[[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[[B)[[[B

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSeeds()[[B
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentSeeds:[[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public getIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1007
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    aget v0, v0, p1

    return v0
.end method

.method public getIndex()[I
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->index:[I

    return-object v0
.end method

.method public getName()Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    return-object v0
.end method

.method public getNumLeafs(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1039
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->numLeafs:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSubtreeRootSig(I)[B
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1025
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->currentRootSig:[[B

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isUsed()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    return v0
.end method

.method public markUsed()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->used:Z

    .line 413
    return-void
.end method

.method public nextKey()Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;
    .locals 2

    .prologue
    .line 417
    new-instance v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;-><init>(Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;)V

    .line 419
    .local v0, "nKey":Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;->nextKey(I)V

    .line 421
    return-object v0
.end method
