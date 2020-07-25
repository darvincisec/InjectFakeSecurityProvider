.class Lorg/spongycastle/pqc/crypto/gmss/GMSSUtils;
.super Ljava/lang/Object;
.source "GMSSUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clone([Ljava/util/Vector;)[Ljava/util/Vector;
    .locals 5
    .param p0, "data"    # [Ljava/util/Vector;

    .prologue
    .line 112
    if-nez p0, :cond_1

    .line 114
    const/4 v0, 0x0

    .line 127
    :cond_0
    return-object v0

    .line 116
    :cond_1
    array-length v3, p0

    new-array v0, v3, [Ljava/util/Vector;

    .line 118
    .local v0, "copy":[Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-eq v2, v3, :cond_0

    .line 120
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    aput-object v3, v0, v2

    .line 121
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    aget-object v3, v0, v2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 118
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static clone([Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;)[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
    .locals 3
    .param p0, "data"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .prologue
    const/4 v2, 0x0

    .line 12
    if-nez p0, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0

    .line 16
    :cond_0
    array-length v1, p0

    new-array v0, v1, [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;

    .line 18
    .local v0, "copy":[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static clone([Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;)[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    .locals 3
    .param p0, "data"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    .prologue
    const/4 v2, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    array-length v1, p0

    new-array v0, v1, [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    .line 31
    .local v0, "copy":[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static clone([Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;)[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;
    .locals 3
    .param p0, "data"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    .prologue
    const/4 v2, 0x0

    .line 38
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    .line 42
    :cond_0
    array-length v1, p0

    new-array v0, v1, [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;

    .line 44
    .local v0, "copy":[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static clone([Lorg/spongycastle/pqc/crypto/gmss/Treehash;)[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .locals 3
    .param p0, "data"    # [Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .prologue
    const/4 v2, 0x0

    .line 83
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 87
    :cond_0
    array-length v1, p0

    new-array v0, v1, [Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 89
    .local v0, "copy":[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static clone([[B)[[B
    .locals 3
    .param p0, "data"    # [[B

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 53
    const/4 v2, 0x0

    check-cast v2, [[B

    .line 62
    :goto_0
    return-object v2

    .line 55
    :cond_0
    array-length v2, p0

    new-array v0, v2, [[B

    .line 57
    .local v0, "copy":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 59
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 62
    goto :goto_0
.end method

.method static clone([[Ljava/util/Vector;)[[Ljava/util/Vector;
    .locals 3
    .param p0, "data"    # [[Ljava/util/Vector;

    .prologue
    .line 132
    if-nez p0, :cond_0

    .line 134
    const/4 v2, 0x0

    check-cast v2, [[Ljava/util/Vector;

    .line 143
    :goto_0
    return-object v2

    .line 136
    :cond_0
    array-length v2, p0

    new-array v0, v2, [[Ljava/util/Vector;

    .line 138
    .local v0, "copy":[[Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 140
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSUtils;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 143
    goto :goto_0
.end method

.method static clone([[Lorg/spongycastle/pqc/crypto/gmss/Treehash;)[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .locals 3
    .param p0, "data"    # [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 98
    const/4 v2, 0x0

    check-cast v2, [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 107
    :goto_0
    return-object v2

    .line 100
    :cond_0
    array-length v2, p0

    new-array v0, v2, [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 102
    .local v0, "copy":[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 104
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSUtils;->clone([Lorg/spongycastle/pqc/crypto/gmss/Treehash;)[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v2

    aput-object v2, v0, v1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 107
    goto :goto_0
.end method

.method static clone([[[B)[[[B
    .locals 3
    .param p0, "data"    # [[[B

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 69
    const/4 v2, 0x0

    check-cast v2, [[[B

    .line 78
    :goto_0
    return-object v2

    .line 71
    :cond_0
    array-length v2, p0

    new-array v0, v2, [[[B

    .line 73
    .local v0, "copy":[[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 75
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSUtils;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 78
    goto :goto_0
.end method
