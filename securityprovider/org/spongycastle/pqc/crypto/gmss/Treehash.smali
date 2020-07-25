.class public Lorg/spongycastle/pqc/crypto/gmss/Treehash;
.super Ljava/lang/Object;
.source "Treehash.java"


# instance fields
.field private firstNode:[B

.field private firstNodeHeight:I

.field private heightOfNodes:Ljava/util/Vector;

.field private isFinished:Z

.field private isInitialized:Z

.field private maxHeight:I

.field private messDigestTree:Lorg/spongycastle/crypto/Digest;

.field private seedActive:[B

.field private seedInitialized:Z

.field private seedNext:[B

.field private tailLength:I

.field private tailStack:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;ILorg/spongycastle/crypto/Digest;)V
    .locals 2
    .param p1, "tailStack"    # Ljava/util/Vector;
    .param p2, "maxHeight"    # I
    .param p3, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    .line 152
    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    .line 154
    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    .line 155
    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    .line 156
    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    .line 157
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 159
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    .line 160
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;[[B[I)V
    .locals 6
    .param p1, "name"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "statByte"    # [[B
    .param p3, "statInt"    # [I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 94
    aget v1, p3, v4

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    .line 95
    aget v1, p3, v3

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    .line 96
    aget v1, p3, v5

    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    .line 98
    const/4 v1, 0x3

    aget v1, p3, v1

    if-ne v1, v3, :cond_0

    .line 100
    iput-boolean v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    .line 106
    :goto_0
    const/4 v1, 0x4

    aget v1, p3, v1

    if-ne v1, v3, :cond_1

    .line 108
    iput-boolean v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    .line 114
    :goto_1
    const/4 v1, 0x5

    aget v1, p3, v1

    if-ne v1, v3, :cond_2

    .line 116
    iput-boolean v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    .line 123
    :goto_2
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-ge v0, v1, :cond_3

    .line 126
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    add-int/lit8 v2, v0, 0x6

    aget v2, p3, v2

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 104
    .end local v0    # "i":I
    :cond_0
    iput-boolean v4, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    goto :goto_0

    .line 112
    :cond_1
    iput-boolean v4, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    goto :goto_1

    .line 120
    :cond_2
    iput-boolean v4, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    goto :goto_2

    .line 130
    .restart local v0    # "i":I
    :cond_3
    aget-object v1, p2, v4

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    .line 131
    aget-object v1, p2, v3

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    .line 132
    aget-object v1, p2, v5

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    .line 134
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    .line 135
    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-ge v0, v1, :cond_4

    .line 137
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    add-int/lit8 v2, v0, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 139
    :cond_4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    .line 315
    iput-boolean v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    .line 317
    iput v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    .line 319
    return-void
.end method

.method public getFirstNode()[B
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    return-object v0
.end method

.method public getFirstNodeHeight()I
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    if-nez v0, :cond_0

    .line 355
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    .line 357
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    goto :goto_0
.end method

.method public getLowestNodeHeight()I
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    if-nez v0, :cond_0

    .line 333
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    .line 341
    :goto_0
    return v0

    .line 335
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-nez v0, :cond_1

    .line 337
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    goto :goto_0

    .line 341
    :cond_1
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    .line 342
    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 341
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSeedActive()[B
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    return-object v0
.end method

.method public getStatByte()[[B
    .locals 4

    .prologue
    .line 445
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 446
    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    .line 447
    .local v1, "statByte":[[B
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    aput-object v3, v1, v2

    .line 448
    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    aput-object v3, v1, v2

    .line 449
    const/4 v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    aput-object v3, v1, v2

    .line 450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-ge v0, v2, :cond_0

    .line 452
    add-int/lit8 v3, v0, 0x3

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    aput-object v2, v1, v3

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    :cond_0
    return-object v1
.end method

.method public getStatInt()[I
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 465
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v2, v2, 0x6

    new-array v1, v2, [I

    .line 466
    .local v1, "statInt":[I
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    aput v2, v1, v4

    .line 467
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    aput v2, v1, v5

    .line 468
    const/4 v2, 0x2

    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    aput v3, v1, v2

    .line 469
    iget-boolean v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    if-eqz v2, :cond_0

    .line 471
    aput v5, v1, v6

    .line 477
    :goto_0
    iget-boolean v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    if-eqz v2, :cond_1

    .line 479
    aput v5, v1, v7

    .line 485
    :goto_1
    iget-boolean v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    if-eqz v2, :cond_2

    .line 487
    aput v5, v1, v8

    .line 493
    :goto_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-ge v0, v2, :cond_3

    .line 495
    add-int/lit8 v3, v0, 0x6

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v3

    .line 493
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 475
    .end local v0    # "i":I
    :cond_0
    aput v4, v1, v6

    goto :goto_0

    .line 483
    :cond_1
    aput v4, v1, v7

    goto :goto_1

    .line 491
    :cond_2
    aput v4, v1, v8

    goto :goto_2

    .line 497
    .restart local v0    # "i":I
    :cond_3
    return-object v1
.end method

.method public getTailStack()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    return-object v0
.end method

.method public initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    .line 189
    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    .line 193
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 194
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 193
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public initializeSeed([B)V
    .locals 3
    .param p1, "seedIn"    # [B

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 172
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    .line 171
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedInitialized:Z

    .line 174
    return-void
.end method

.method public setFirstNode([B)V
    .locals 1
    .param p1, "hash"    # [B

    .prologue
    .line 407
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    if-nez v0, :cond_0

    .line 409
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->initialize()V

    .line 411
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    .line 412
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    .line 414
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 505
    const-string v1, "Treehash    : "

    .line 506
    .local v1, "out":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v2, v2, 0x6

    if-ge v0, v2, :cond_0

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_2

    .line 512
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v2

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v4

    aget-object v4, v4, v0

    invoke-static {v4}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 518
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "null "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 521
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 522
    return-object v1
.end method

.method public update(Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;[B)V
    .locals 7
    .param p1, "gmssRandom"    # Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;
    .param p2, "leaf"    # [B

    .prologue
    const/4 v6, 0x0

    .line 207
    iget-boolean v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    if-eqz v3, :cond_1

    .line 209
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "No more update possible for treehash instance!"

    .line 210
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-boolean v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    if-nez v3, :cond_2

    .line 215
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Treehash instance not initialized before update"

    .line 216
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v0, v3, [B

    .line 221
    .local v0, "help":[B
    const/4 v1, -0x1

    .line 223
    .local v1, "helpHeight":I
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedActive:[B

    invoke-virtual {p1, v3}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    .line 226
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    if-nez v3, :cond_4

    .line 228
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    .line 229
    iput v6, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    .line 302
    :cond_3
    :goto_1
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->maxHeight:I

    if-ne v3, v4, :cond_0

    .line 304
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    goto :goto_0

    .line 234
    :cond_4
    move-object v0, p2

    .line 235
    const/4 v1, 0x0

    .line 238
    :goto_2
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    if-lez v3, :cond_5

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    .line 239
    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 240
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_5

    .line 245
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 246
    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 249
    .local v2, "toBeHashed":[B
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 250
    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    .line 249
    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 252
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    .line 253
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 255
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 256
    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 257
    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    .line 255
    invoke-static {v0, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    array-length v4, v2

    invoke-interface {v3, v2, v6, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 259
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v0, v3, [B

    .line 260
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v0, v6}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 263
    add-int/lit8 v1, v1, 0x1

    .line 264
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    goto :goto_2

    .line 268
    .end local v2    # "toBeHashed":[B
    :cond_5
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 269
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 270
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    .line 275
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    if-ne v3, v4, :cond_3

    .line 277
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 278
    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 279
    .restart local v2    # "toBeHashed":[B
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 280
    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    .line 279
    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 284
    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    .line 285
    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    .line 283
    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailStack:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 287
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->heightOfNodes:Ljava/util/Vector;

    .line 288
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 291
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    array-length v4, v2

    invoke-interface {v3, v2, v6, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 292
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    .line 293
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->messDigestTree:Lorg/spongycastle/crypto/Digest;

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNode:[B

    invoke-interface {v3, v4, v6}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 294
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->firstNodeHeight:I

    .line 297
    iput v6, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->tailLength:I

    goto/16 :goto_1
.end method

.method public updateNextSeed(Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;)V
    .locals 1
    .param p1, "gmssRandom"    # Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .prologue
    .line 424
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->seedNext:[B

    invoke-virtual {p1, v0}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    .line 425
    return-void
.end method

.method public wasFinished()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isFinished:Z

    return v0
.end method

.method public wasInitialized()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->isInitialized:Z

    return v0
.end method
