.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
.super Ljava/lang/Object;
.source "GMSSRootCalc.java"


# instance fields
.field private AuthPath:[[B

.field private K:I

.field private digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private heightOfNextSeed:I

.field private heightOfNodes:Ljava/util/Vector;

.field private heightOfTree:I

.field private index:[I

.field private indexForNextSeed:I

.field private isFinished:Z

.field private isInitialized:Z

.field private mdLength:I

.field private messDigestTree:Lorg/spongycastle/crypto/Digest;

.field private retain:[Ljava/util/Vector;

.field private root:[B

.field private tailStack:Ljava/util/Vector;

.field private treehash:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;


# direct methods
.method public constructor <init>(IILorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 3
    .param p1, "heightOfTree"    # I
    .param p2, "K"    # I
    .param p3, "digestProvider"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    .line 190
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .line 191
    invoke-interface {p3}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 192
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    .line 193
    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    .line 194
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    .line 195
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    filled-new-array {p1, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    .line 196
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    .line 198
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/util/Vector;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_0

    .line 201
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v1, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;[[B[I[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;)V
    .locals 5
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "statByte"    # [[B
    .param p3, "statInt"    # [I
    .param p4, "treeH"    # [Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .param p5, "ret"    # [Ljava/util/Vector;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 118
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .line 120
    aget v2, p3, v4

    iput v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    .line 121
    aget v2, p3, v3

    iput v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    .line 122
    const/4 v2, 0x2

    aget v2, p3, v2

    iput v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    .line 123
    const/4 v2, 0x3

    aget v2, p3, v2

    iput v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    .line 124
    const/4 v2, 0x4

    aget v2, p3, v2

    iput v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    .line 125
    const/4 v2, 0x5

    aget v2, p3, v2

    if-ne v2, v3, :cond_0

    .line 127
    iput-boolean v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    .line 133
    :goto_0
    const/4 v2, 0x6

    aget v2, p3, v2

    if-ne v2, v3, :cond_1

    .line 135
    iput-boolean v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    .line 142
    :goto_1
    const/4 v2, 0x7

    aget v1, p3, v2

    .line 144
    .local v1, "tailLength":I
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v0, v2, :cond_2

    .line 147
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    add-int/lit8 v3, v0, 0x8

    aget v3, p3, v3

    aput v3, v2, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 131
    .end local v0    # "i":I
    .end local v1    # "tailLength":I
    :cond_0
    iput-boolean v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    goto :goto_0

    .line 139
    :cond_1
    iput-boolean v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    goto :goto_1

    .line 150
    .restart local v0    # "i":I
    .restart local v1    # "tailLength":I
    :cond_2
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    .line 151
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_3

    .line 153
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    aget v3, p3, v3

    invoke-static {v3}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 158
    :cond_3
    aget-object v2, p2, v4

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    .line 160
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    .line 161
    const/4 v0, 0x0

    :goto_4
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v0, v2, :cond_4

    .line 163
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p2, v3

    aput-object v3, v2, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 166
    :cond_4
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    .line 167
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_5

    .line 169
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 173
    :cond_5
    invoke-static {p4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSUtils;->clone([Lorg/spongycastle/pqc/crypto/gmss/Treehash;)[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 176
    invoke-static {p5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSUtils;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    .line 177
    return-void
.end method


# virtual methods
.method public getAuthPath()[[B
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSUtils;->clone([[B)[[B

    move-result-object v0

    return-object v0
.end method

.method public getRetain()[Ljava/util/Vector;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSUtils;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getStack()Ljava/util/Vector;
    .locals 3

    .prologue
    .line 475
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 476
    .local v0, "copy":Ljava/util/Vector;
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 480
    :cond_0
    return-object v0
.end method

.method public getStatByte()[[B
    .locals 5

    .prologue
    .line 492
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    if-nez v3, :cond_0

    .line 494
    const/4 v2, 0x0

    .line 500
    .local v2, "tailLength":I
    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v2

    const/16 v4, 0x40

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    .line 501
    .local v1, "statByte":[[B
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    aput-object v4, v1, v3

    .line 503
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v0, v3, :cond_1

    .line 505
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    aget-object v4, v4, v0

    aput-object v4, v1, v3

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 498
    .end local v0    # "i":I
    .end local v1    # "statByte":[[B
    .end local v2    # "tailLength":I
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .restart local v2    # "tailLength":I
    goto :goto_0

    .line 507
    .restart local v0    # "i":I
    .restart local v1    # "statByte":[[B
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 509
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v3, v3, 0x1

    add-int v4, v3, v0

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    aput-object v3, v1, v4

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 512
    :cond_2
    return-object v1
.end method

.method public getStatInt()[I
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 524
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    if-nez v3, :cond_0

    .line 526
    const/4 v2, 0x0

    .line 532
    .local v2, "tailLength":I
    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v2

    new-array v1, v3, [I

    .line 533
    .local v1, "statInt":[I
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    aput v3, v1, v5

    .line 534
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    aput v3, v1, v6

    .line 535
    const/4 v3, 0x2

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    aput v4, v1, v3

    .line 536
    const/4 v3, 0x3

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    aput v4, v1, v3

    .line 537
    const/4 v3, 0x4

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    aput v4, v1, v3

    .line 538
    iget-boolean v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    if-eqz v3, :cond_1

    .line 540
    aput v6, v1, v7

    .line 546
    :goto_1
    iget-boolean v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    if-eqz v3, :cond_2

    .line 548
    aput v6, v1, v8

    .line 554
    :goto_2
    const/4 v3, 0x7

    aput v2, v1, v3

    .line 556
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v0, v3, :cond_3

    .line 558
    add-int/lit8 v3, v0, 0x8

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v4, v4, v0

    aput v4, v1, v3

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 530
    .end local v0    # "i":I
    .end local v1    # "statInt":[I
    .end local v2    # "tailLength":I
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .restart local v2    # "tailLength":I
    goto :goto_0

    .line 544
    .restart local v1    # "statInt":[I
    :cond_1
    aput v5, v1, v7

    goto :goto_1

    .line 552
    :cond_2
    aput v5, v1, v8

    goto :goto_2

    .line 560
    .restart local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_4

    .line 562
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v3, v3, 0x8

    add-int v4, v3, v0

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    .line 563
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v4

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 566
    :cond_4
    return-object v1
.end method

.method public getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSUtils;->clone([Lorg/spongycastle/pqc/crypto/gmss/Treehash;)[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/util/Vector;)V
    .locals 5
    .param p1, "sharedStack"    # Ljava/util/Vector;

    .prologue
    const/4 v4, 0x0

    .line 213
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v1, v2

    new-array v1, v1, [Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    new-instance v2, Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v3}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;-><init>(Ljava/util/Vector;ILorg/spongycastle/crypto/Digest;)V

    aput-object v2, v1, v0

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    .line 220
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    .line 221
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    .line 223
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    .line 224
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    .line 226
    iput-boolean v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    .line 228
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v0, v1, :cond_1

    .line 230
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    :cond_1
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/util/Vector;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    .line 234
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 236
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v1, v0

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 239
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    .line 240
    iput v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    .line 241
    return-void
.end method

.method public initializeTreehashSeed([BI)V
    .locals 1
    .param p1, "seed"    # [B
    .param p2, "index"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->initializeSeed([B)V

    .line 406
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 574
    const-string v1, ""

    .line 576
    .local v1, "out":Ljava/lang/String;
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    if-nez v3, :cond_0

    .line 578
    const/4 v2, 0x0

    .line 585
    .local v2, "tailLength":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    .line 587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v4

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 582
    .end local v0    # "i":I
    .end local v2    # "tailLength":I
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .restart local v2    # "tailLength":I
    goto :goto_0

    .line 589
    .restart local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v2

    if-ge v0, v3, :cond_2

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v5

    aget-object v5, v5, v0

    invoke-static {v5}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 593
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->digestProvider:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 594
    return-object v1
.end method

.method public update([B)V
    .locals 9
    .param p1, "leaf"    # [B

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 271
    iget-boolean v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    if-eqz v3, :cond_1

    .line 273
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Too much updates for Tree!!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-boolean v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    if-nez v3, :cond_2

    .line 278
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "GMSSRootCalc not initialized!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v4, v3, v6

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v6

    .line 286
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v3, v3, v6

    if-ne v3, v8, :cond_5

    .line 288
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    aget-object v3, v3, v6

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {p1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    :cond_3
    :goto_1
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v3, v3, v6

    add-int/lit8 v3, v3, -0x3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v3, v3, v6

    if-lt v3, v7, :cond_4

    .line 302
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    if-ne v3, v4, :cond_4

    .line 305
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    aget-object v3, v3, v6

    invoke-virtual {v3, p1, v6}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 310
    :cond_4
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v3, v3, v6

    if-nez v3, :cond_6

    .line 312
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 313
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    invoke-static {v6}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 290
    :cond_5
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v3, v3, v6

    if-ne v3, v7, :cond_3

    .line 293
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    if-le v3, v4, :cond_3

    .line 295
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    aget-object v3, v3, v6

    invoke-virtual {v3, p1}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->setFirstNode([B)V

    goto :goto_1

    .line 318
    :cond_6
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    new-array v0, v3, [B

    .line 319
    .local v0, "help":[B
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    shl-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 322
    .local v2, "toBeHashed":[B
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {p1, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    const/4 v1, 0x0

    .line 325
    .local v1, "helpHeight":I
    :cond_7
    :goto_2
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_b

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    .line 326
    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 327
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_b

    .line 331
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 334
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 335
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {v0, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    array-length v4, v2

    invoke-interface {v3, v2, v6, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 338
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v0, v3, [B

    .line 339
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v0, v6}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 342
    add-int/lit8 v1, v1, 0x1

    .line 343
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ge v1, v3, :cond_7

    .line 345
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v4, v3, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v1

    .line 348
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v3, v3, v1

    if-ne v3, v8, :cond_8

    .line 350
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->AuthPath:[[B

    aget-object v3, v3, v1

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->mdLength:I

    invoke-static {v0, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    :cond_8
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_a

    .line 356
    if-nez v1, :cond_9

    .line 358
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "M\ufffd\ufffd\ufffdP"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    :cond_9
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v3, v3, v1

    add-int/lit8 v3, v3, -0x3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v3, v3, v1

    if-lt v3, v7, :cond_7

    .line 367
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->retain:[Ljava/util/Vector;

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v4, v5

    sub-int v4, v1, v4

    aget-object v3, v3, v4

    .line 368
    invoke-virtual {v3, v0, v6}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 374
    :cond_a
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    aget v3, v3, v1

    if-ne v3, v7, :cond_7

    .line 376
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->treehash:[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->setFirstNode([B)V

    goto/16 :goto_2

    .line 382
    :cond_b
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 383
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNodes:Ljava/util/Vector;

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 386
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    if-ne v1, v3, :cond_0

    .line 388
    iput-boolean v8, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    .line 389
    iput-boolean v6, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    .line 390
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->root:[B

    goto/16 :goto_0
.end method

.method public update([B[B)V
    .locals 3
    .param p1, "seed"    # [B
    .param p2, "leaf"    # [B

    .prologue
    .line 253
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfTree:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->K:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    add-int/lit8 v0, v0, -0x2

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->index:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v0, v1, :cond_0

    .line 256
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->initializeTreehashSeed([BI)V

    .line 257
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->heightOfNextSeed:I

    .line 258
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->indexForNextSeed:I

    .line 261
    :cond_0
    invoke-virtual {p0, p2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    .line 262
    return-void
.end method

.method public wasFinished()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->isFinished:Z

    return v0
.end method

.method public wasInitialized()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->isInitialized:Z

    return v0
.end method
