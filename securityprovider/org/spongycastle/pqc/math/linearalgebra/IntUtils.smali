.class public final Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;
.super Ljava/lang/Object;
.source "IntUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static clone([I)[I
    .locals 3
    .param p0, "array"    # [I

    .prologue
    const/4 v2, 0x0

    .line 43
    array-length v1, p0

    new-array v0, v1, [I

    .line 44
    .local v0, "result":[I
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    return-object v0
.end method

.method public static equals([I[I)Z
    .locals 5
    .param p0, "left"    # [I
    .param p1, "right"    # [I

    .prologue
    const/4 v3, 0x0

    .line 23
    array-length v2, p0

    array-length v4, p1

    if-eq v2, v4, :cond_0

    .line 32
    :goto_0
    return v3

    .line 27
    :cond_0
    const/4 v1, 0x1

    .line 28
    .local v1, "result":Z
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 30
    aget v2, p0, v0

    aget v4, p1, v0

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    :goto_2
    and-int/2addr v1, v2

    .line 28
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 30
    goto :goto_2

    :cond_2
    move v3, v1

    .line 32
    goto :goto_0
.end method

.method public static fill([II)V
    .locals 2
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .prologue
    .line 56
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 58
    aput p1, p0, v0

    .line 56
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method private static partition([IIII)I
    .locals 5
    .param p0, "source"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "pivotIndex"    # I

    .prologue
    .line 112
    aget v2, p0, p3

    .line 113
    .local v2, "pivot":I
    aget v4, p0, p2

    aput v4, p0, p3

    .line 114
    aput v2, p0, p2

    .line 116
    move v1, p1

    .line 118
    .local v1, "index":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 120
    aget v4, p0, v0

    if-gt v4, v2, :cond_0

    .line 122
    aget v3, p0, v1

    .line 123
    .local v3, "tmp":I
    aget v4, p0, v0

    aput v4, p0, v1

    .line 124
    aput v3, p0, v0

    .line 125
    add-int/lit8 v1, v1, 0x1

    .line 118
    .end local v3    # "tmp":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_1
    aget v3, p0, v1

    .line 130
    .restart local v3    # "tmp":I
    aget v4, p0, p2

    aput v4, p0, v1

    .line 131
    aput v3, p0, p2

    .line 133
    return v1
.end method

.method public static quicksort([I)V
    .locals 2
    .param p0, "source"    # [I

    .prologue
    .line 75
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->quicksort([III)V

    .line 76
    return-void
.end method

.method public static quicksort([III)V
    .locals 2
    .param p0, "source"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 88
    if-le p2, p1, :cond_0

    .line 90
    invoke-static {p0, p1, p2, p2}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->partition([IIII)I

    move-result v0

    .line 91
    .local v0, "index":I
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->quicksort([III)V

    .line 92
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->quicksort([III)V

    .line 94
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public static subArray([III)[I
    .locals 3
    .param p0, "input"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 151
    sub-int v1, p2, p1

    new-array v0, v1, [I

    .line 152
    .local v0, "result":[I
    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    return-object v0
.end method

.method public static toHexString([I)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [I

    .prologue
    .line 176
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/BigEndianConversions;->toByteArray([I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([I)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [I

    .prologue
    .line 162
    const-string v1, ""

    .line 163
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-object v1
.end method
