.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;
.super Ljava/lang/Object;
.source "GMSSKeyPairGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.3"


# instance fields
.field private K:[I

.field private currentRootSigs:[[B

.field private currentSeeds:[[B

.field private digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

.field private gmssParams:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

.field private gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private heightOfTrees:[I

.field private initialized:Z

.field private mdLength:I

.field private messDigestTree:Lorg/spongycastle/crypto/Digest;

.field private nextNextSeeds:[[B

.field private numLayer:I

.field private otsIndex:[I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 2
    .param p1, "digestProvider"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    .line 106
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .line 107
    invoke-interface {p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 110
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    .line 112
    new-instance v0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 114
    return-void
.end method

.method private genKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 24

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    if-nez v3, :cond_0

    .line 126
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initializeDefault()V

    .line 130
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v5, v3, [[[B

    .line 131
    .local v5, "currentAuthPaths":[[[B
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    new-array v6, v3, [[[B

    .line 132
    .local v6, "nextAuthPaths":[[[B
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v7, v3, [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 133
    .local v7, "currentTreehash":[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    new-array v8, v3, [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 135
    .local v8, "nextTreehash":[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v9, v3, [Ljava/util/Vector;

    .line 136
    .local v9, "currentStack":[Ljava/util/Vector;
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    new-array v10, v3, [Ljava/util/Vector;

    .line 138
    .local v10, "nextStack":[Ljava/util/Vector;
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v11, v3, [[Ljava/util/Vector;

    .line 139
    .local v11, "currentRetain":[[Ljava/util/Vector;
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    new-array v12, v3, [[Ljava/util/Vector;

    .line 141
    .local v12, "nextRetain":[[Ljava/util/Vector;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    move/from16 v0, v20

    if-ge v0, v3, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v3, v3, v20

    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    aput-object v3, v5, v20

    .line 144
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v3, v3, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v4, v4, v20

    sub-int/2addr v3, v4

    new-array v3, v3, [Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    aput-object v3, v7, v20

    .line 146
    if-lez v20, :cond_1

    .line 148
    add-int/lit8 v4, v20, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v3, v3, v20

    move-object/from16 v0, p0

    iget v14, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v3, v14}, [I

    move-result-object v3

    sget-object v14, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    aput-object v3, v6, v4

    .line 149
    add-int/lit8 v3, v20, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v4, v4, v20

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v14, v14, v20

    sub-int/2addr v4, v14

    new-array v4, v4, [Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    aput-object v4, v8, v3

    .line 152
    :cond_1
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    aput-object v3, v9, v20

    .line 153
    if-lez v20, :cond_2

    .line 155
    add-int/lit8 v3, v20, -0x1

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    aput-object v4, v10, v3

    .line 141
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 160
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [[B

    .line 161
    .local v17, "currentRoots":[[B
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[B

    .line 163
    .local v13, "nextRoots":[[B
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [[B

    .line 166
    .local v22, "seeds":[[B
    const/16 v20, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    aget-object v3, v3, v20

    const/4 v4, 0x0

    aget-object v14, v22, v20

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v4, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 172
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    .line 179
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v19, v3, -0x1

    .local v19, "h":I
    :goto_2
    if-ltz v19, :cond_7

    .line 181
    new-instance v23, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v3, v3, v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v4, v4, v19

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v4, v14}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    .line 186
    .local v23, "tree":Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_5

    .line 188
    const/4 v3, 0x0

    aget-object v4, v9, v19

    aget-object v14, v22, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v4, v14, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 204
    :goto_3
    const/16 v20, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v3, v3, v19

    move/from16 v0, v20

    if-ge v0, v3, :cond_6

    .line 206
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getAuthPath()[[B

    move-result-object v3

    aget-object v3, v3, v20

    const/4 v4, 0x0

    aget-object v14, v5, v19

    aget-object v14, v14, v20

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v4, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 194
    :cond_5
    add-int/lit8 v3, v19, 0x1

    :try_start_1
    aget-object v3, v17, v3

    aget-object v4, v9, v19

    aget-object v14, v22, v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v3, v4, v14, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v23

    goto :goto_3

    .line 198
    :catch_0
    move-exception v18

    .line 200
    .local v18, "e1":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 208
    .end local v18    # "e1":Ljava/lang/Exception;
    :cond_6
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v3

    aput-object v3, v11, v19

    .line 209
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v3

    aput-object v3, v7, v19

    .line 210
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getRoot()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-object v14, v17, v19

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v4, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_2

    .line 215
    .end local v23    # "tree":Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v19, v3, -0x2

    :goto_5
    if-ltz v19, :cond_9

    .line 217
    aget-object v3, v10, v19

    add-int/lit8 v4, v19, 0x1

    aget-object v4, v22, v4

    add-int/lit8 v14, v19, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v14}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->generateNextAuthpathAndRoot(Ljava/util/Vector;[BI)Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-result-object v23

    .line 220
    .restart local v23    # "tree":Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    const/16 v20, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    add-int/lit8 v4, v19, 0x1

    aget v3, v3, v4

    move/from16 v0, v20

    if-ge v0, v3, :cond_8

    .line 222
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getAuthPath()[[B

    move-result-object v3

    aget-object v3, v3, v20

    const/4 v4, 0x0

    aget-object v14, v6, v19

    aget-object v14, v14, v20

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v4, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 224
    :cond_8
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v3

    aput-object v3, v12, v19

    .line 225
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v3

    aput-object v3, v8, v19

    .line 226
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getRoot()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-object v14, v13, v19

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v4, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    add-int/lit8 v3, v19, 0x1

    aget-object v3, v22, v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    aget-object v14, v14, v19

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v3, v4, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    add-int/lit8 v19, v19, -0x1

    goto :goto_5

    .line 235
    .end local v23    # "tree":Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    :cond_9
    new-instance v21, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;

    const/4 v3, 0x0

    aget-object v3, v17, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;-><init>([BLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V

    .line 238
    .local v21, "publicKey":Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;
    new-instance v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;-><init>([[B[[B[[[B[[[B[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[B[[BLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    .line 242
    .local v2, "privateKey":Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;
    new-instance v3, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-object/from16 v0, v21

    invoke-direct {v3, v0, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
.end method

.method private generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    .locals 11
    .param p1, "lowerRoot"    # [B
    .param p2, "currentStack"    # Ljava/util/Vector;
    .param p3, "seed"    # [B
    .param p4, "h"    # I

    .prologue
    .line 256
    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v2, v8, [B

    .line 258
    .local v2, "help":[B
    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v0, v8, [B

    .line 259
    .local v0, "OTSseed":[B
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v8, p3}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    .line 265
    new-instance v7, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v8, v8, p4

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v9, v9, p4

    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v7, v8, v9, v10}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    .line 267
    .local v7, "treeToConstruct":Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    invoke-virtual {v7, p2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->initialize(Ljava/util/Vector;)V

    .line 270
    iget v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v8, v8, -0x1

    if-ne p4, v8, :cond_1

    .line 272
    new-instance v4, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v8}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v8

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v9, v9, p4

    invoke-direct {v4, v0, v8, v9}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/spongycastle/crypto/Digest;I)V

    .line 273
    .local v4, "ots":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v2

    .line 287
    :goto_0
    invoke-virtual {v7, v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    .line 289
    const/4 v6, 0x3

    .line 290
    .local v6, "seedForTreehashIndex":I
    const/4 v1, 0x0

    .line 293
    .local v1, "count":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    const/4 v8, 0x1

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v9, v9, p4

    shl-int/2addr v8, v9

    if-ge v3, v8, :cond_2

    .line 296
    if-ne v3, v6, :cond_0

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v8, v8, p4

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v9, v9, p4

    sub-int/2addr v8, v9

    if-ge v1, v8, :cond_0

    .line 298
    invoke-virtual {v7, p3, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->initializeTreehashSeed([BI)V

    .line 299
    mul-int/lit8 v6, v6, 0x2

    .line 300
    add-int/lit8 v1, v1, 0x1

    .line 303
    :cond_0
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v8, p3}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    .line 304
    new-instance v4, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    .end local v4    # "ots":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v8}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v8

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v9, v9, p4

    invoke-direct {v4, v0, v8, v9}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/spongycastle/crypto/Digest;I)V

    .line 305
    .restart local v4    # "ots":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 281
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v4    # "ots":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
    .end local v6    # "seedForTreehashIndex":I
    :cond_1
    new-instance v4, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v8}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v8

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v9, v9, p4

    invoke-direct {v4, v0, v8, v9}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/spongycastle/crypto/Digest;I)V

    .line 282
    .restart local v4    # "ots":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    invoke-virtual {v4, p1}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getSignature([B)[B

    move-result-object v9

    aput-object v9, v8, p4

    .line 283
    new-instance v5, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v8}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v8

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v9, v9, p4

    invoke-direct {v5, v8, v9}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;-><init>(Lorg/spongycastle/crypto/Digest;I)V

    .line 284
    .local v5, "otsver":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;
    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    aget-object v8, v8, p4

    invoke-virtual {v5, p1, v8}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->Verify([B[B)[B

    move-result-object v2

    goto :goto_0

    .line 308
    .end local v5    # "otsver":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "seedForTreehashIndex":I
    :cond_2
    invoke-virtual {v7}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->wasFinished()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 313
    .end local v7    # "treeToConstruct":Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    :goto_2
    return-object v7

    .line 312
    .restart local v7    # "treeToConstruct":Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    :cond_3
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Baum noch nicht fertig konstruiert!!!"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private generateNextAuthpathAndRoot(Ljava/util/Vector;[BI)Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    .locals 9
    .param p1, "nextStack"    # Ljava/util/Vector;
    .param p2, "seed"    # [B
    .param p3, "h"    # I

    .prologue
    .line 326
    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v0, v6, [B

    .line 331
    .local v0, "OTSseed":[B
    new-instance v5, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v6, v6, p3

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v7, v7, p3

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v5, v6, v7, v8}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    .line 332
    .local v5, "treeToConstruct":Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    invoke-virtual {v5, p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->initialize(Ljava/util/Vector;)V

    .line 334
    const/4 v4, 0x3

    .line 335
    .local v4, "seedForTreehashIndex":I
    const/4 v1, 0x0

    .line 338
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x1

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v7, v7, p3

    shl-int/2addr v6, v7

    if-ge v2, v6, :cond_1

    .line 341
    if-ne v2, v4, :cond_0

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v6, v6, p3

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v7, v7, p3

    sub-int/2addr v6, v7

    if-ge v1, v6, :cond_0

    .line 343
    invoke-virtual {v5, p2, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->initializeTreehashSeed([BI)V

    .line 344
    mul-int/lit8 v4, v4, 0x2

    .line 345
    add-int/lit8 v1, v1, 0x1

    .line 348
    :cond_0
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v6, p2}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    .line 349
    new-instance v3, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v6

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v7, v7, p3

    invoke-direct {v3, v0, v6, v7}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/spongycastle/crypto/Digest;I)V

    .line 350
    .local v3, "ots":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    .line 338
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    .end local v3    # "ots":Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
    :cond_1
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->wasFinished()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 358
    .end local v5    # "treeToConstruct":Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    :goto_1
    return-object v5

    .line 357
    .restart local v5    # "treeToConstruct":Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    :cond_2
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "N\ufffdchster Baum noch nicht fertig konstruiert!!!"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private initializeDefault()V
    .locals 7

    .prologue
    const/4 v4, 0x4

    .line 457
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 458
    .local v0, "defh":[I
    new-array v2, v4, [I

    fill-array-data v2, :array_1

    .line 459
    .local v2, "defw":[I
    new-array v1, v4, [I

    fill-array-data v1, :array_2

    .line 461
    .local v1, "defk":[I
    new-instance v3, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    new-instance v5, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    array-length v6, v0

    invoke-direct {v5, v6, v0, v2, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V

    .line 462
    .local v3, "kgp":Lorg/spongycastle/crypto/KeyGenerationParameters;
    invoke-virtual {p0, v3}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 464
    return-void

    .line 457
    :array_0
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    .line 458
    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    .line 459
    :array_2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method


# virtual methods
.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .prologue
    .line 474
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->genKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 470
    return-void
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 9
    .param p1, "keySize"    # I
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;

    .prologue
    const/16 v4, 0xa

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 388
    if-gt p1, v4, :cond_0

    .line 390
    new-array v0, v7, [I

    aput v4, v0, v6

    .line 391
    .local v0, "defh":[I
    new-array v2, v7, [I

    const/4 v4, 0x3

    aput v4, v2, v6

    .line 392
    .local v2, "defw":[I
    new-array v1, v7, [I

    aput v5, v1, v6

    .line 394
    .local v1, "defk":[I
    new-instance v3, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    array-length v5, v0

    invoke-direct {v4, v5, v0, v2, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v3, p2, v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V

    .line 412
    .local v3, "kgp":Lorg/spongycastle/crypto/KeyGenerationParameters;
    :goto_0
    invoke-virtual {p0, v3}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 414
    return-void

    .line 396
    .end local v0    # "defh":[I
    .end local v1    # "defk":[I
    .end local v2    # "defw":[I
    .end local v3    # "kgp":Lorg/spongycastle/crypto/KeyGenerationParameters;
    :cond_0
    const/16 v4, 0x14

    if-gt p1, v4, :cond_1

    .line 398
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 399
    .restart local v0    # "defh":[I
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    .line 400
    .restart local v2    # "defw":[I
    new-array v1, v5, [I

    fill-array-data v1, :array_2

    .line 401
    .restart local v1    # "defk":[I
    new-instance v3, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    array-length v5, v0

    invoke-direct {v4, v5, v0, v2, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v3, p2, v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V

    .line 402
    .restart local v3    # "kgp":Lorg/spongycastle/crypto/KeyGenerationParameters;
    goto :goto_0

    .line 405
    .end local v0    # "defh":[I
    .end local v1    # "defk":[I
    .end local v2    # "defw":[I
    .end local v3    # "kgp":Lorg/spongycastle/crypto/KeyGenerationParameters;
    :cond_1
    new-array v0, v8, [I

    fill-array-data v0, :array_3

    .line 406
    .restart local v0    # "defh":[I
    new-array v2, v8, [I

    fill-array-data v2, :array_4

    .line 407
    .restart local v2    # "defw":[I
    new-array v1, v8, [I

    fill-array-data v1, :array_5

    .line 408
    .restart local v1    # "defk":[I
    new-instance v3, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    array-length v5, v0

    invoke-direct {v4, v5, v0, v2, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v3, p2, v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V

    .restart local v3    # "kgp":Lorg/spongycastle/crypto/KeyGenerationParameters;
    goto :goto_0

    .line 398
    :array_0
    .array-data 4
        0xa
        0xa
    .end array-data

    .line 399
    :array_1
    .array-data 4
        0x5
        0x4
    .end array-data

    .line 400
    :array_2
    .array-data 4
        0x2
        0x2
    .end array-data

    .line 405
    :array_3
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    .line 406
    :array_4
    .array-data 4
        0x9
        0x9
        0x9
        0x3
    .end array-data

    .line 407
    :array_5
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public initialize(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 7
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 423
    check-cast p1, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/KeyGenerationParameters;
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    .line 426
    new-instance v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v3

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    .line 427
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    .line 429
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    .line 430
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    .line 431
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    .line 432
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    .line 435
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    .line 436
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    .line 439
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 442
    .local v1, "secRan":Ljava/security/SecureRandom;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    if-ge v0, v2, :cond_0

    .line 444
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 445
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    .line 449
    return-void
.end method
