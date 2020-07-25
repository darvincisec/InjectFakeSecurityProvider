.class public abstract Lorg/spongycastle/math/raw/Mod;
.super Ljava/lang/Object;
.source "Mod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I[I)V
    .locals 2
    .param p0, "p"    # [I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .prologue
    .line 117
    array-length v1, p0

    .line 118
    .local v1, "len":I
    invoke-static {v1, p1, p2, p3}, Lorg/spongycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    .line 119
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 121
    invoke-static {v1, p0, p3}, Lorg/spongycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 123
    :cond_0
    return-void
.end method

.method private static getTrailingZeroes(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "count":I
    :goto_0
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_0

    .line 194
    ushr-int/lit8 p0, p0, 0x1

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return v0
.end method

.method public static inverse32(I)I
    .locals 2
    .param p0, "d"    # I

    .prologue
    .line 12
    move v0, p0

    .line 13
    .local v0, "x":I
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 14
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 15
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 16
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 18
    return v0
.end method

.method private static inversionResult([II[I[I)V
    .locals 2
    .param p0, "p"    # [I
    .param p1, "ac"    # I
    .param p2, "a"    # [I
    .param p3, "z"    # [I

    .prologue
    const/4 v1, 0x0

    .line 137
    if-gez p1, :cond_0

    .line 139
    array-length v0, p0

    invoke-static {v0, p2, p0, p3}, Lorg/spongycastle/math/raw/Nat;->add(I[I[I[I)I

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    array-length v0, p0

    invoke-static {p2, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static inversionStep([I[II[II)I
    .locals 6
    .param p0, "p"    # [I
    .param p1, "u"    # [I
    .param p2, "uLen"    # I
    .param p3, "x"    # [I
    .param p4, "xc"    # I

    .prologue
    const/4 v5, 0x0

    .line 149
    array-length v2, p0

    .line 150
    .local v2, "len":I
    const/4 v0, 0x0

    .line 151
    .local v0, "count":I
    :goto_0
    aget v4, p1, v5

    if-nez v4, :cond_0

    .line 153
    invoke-static {p2, p1, v5}, Lorg/spongycastle/math/raw/Nat;->shiftDownWord(I[II)I

    .line 154
    add-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 158
    :cond_0
    aget v4, p1, v5

    invoke-static {v4}, Lorg/spongycastle/math/raw/Mod;->getTrailingZeroes(I)I

    move-result v3

    .line 159
    .local v3, "zeroes":I
    if-lez v3, :cond_1

    .line 161
    invoke-static {p2, p1, v3, v5}, Lorg/spongycastle/math/raw/Nat;->shiftDownBits(I[III)I

    .line 162
    add-int/2addr v0, v3

    .line 166
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 168
    aget v4, p3, v5

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 170
    if-gez p4, :cond_3

    .line 172
    invoke-static {v2, p0, p3}, Lorg/spongycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v4

    add-int/2addr p4, v4

    .line 181
    :cond_2
    :goto_2
    invoke-static {v2, p3, p4}, Lorg/spongycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 176
    :cond_3
    invoke-static {v2, p0, p3}, Lorg/spongycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v4

    add-int/2addr p4, v4

    goto :goto_2

    .line 184
    :cond_4
    return p4
.end method

.method public static invert([I[I[I)V
    .locals 10
    .param p0, "p"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v9, 0x0

    .line 23
    array-length v4, p0

    .line 24
    .local v4, "len":I
    invoke-static {v4, p1}, Lorg/spongycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 26
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "\'x\' cannot be 0"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 28
    :cond_0
    invoke-static {v4, p1}, Lorg/spongycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 30
    invoke-static {p1, v9, p2, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-static {v4, p1}, Lorg/spongycastle/math/raw/Nat;->copy(I[I)[I

    move-result-object v5

    .line 35
    .local v5, "u":[I
    invoke-static {v4}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 36
    .local v0, "a":[I
    const/4 v8, 0x1

    aput v8, v0, v9

    .line 37
    const/4 v1, 0x0

    .line 39
    .local v1, "ac":I
    aget v8, v5, v9

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_2

    .line 41
    invoke-static {p0, v5, v4, v0, v1}, Lorg/spongycastle/math/raw/Mod;->inversionStep([I[II[II)I

    move-result v1

    .line 43
    :cond_2
    invoke-static {v4, v5}, Lorg/spongycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 45
    invoke-static {p0, v1, v0, p2}, Lorg/spongycastle/math/raw/Mod;->inversionResult([II[I[I)V

    goto :goto_0

    .line 49
    :cond_3
    invoke-static {v4, p0}, Lorg/spongycastle/math/raw/Nat;->copy(I[I)[I

    move-result-object v7

    .line 50
    .local v7, "v":[I
    invoke-static {v4}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 51
    .local v2, "b":[I
    const/4 v3, 0x0

    .line 53
    .local v3, "bc":I
    move v6, v4

    .line 57
    .local v6, "uvLen":I
    :cond_4
    :goto_1
    add-int/lit8 v8, v6, -0x1

    aget v8, v5, v8

    if-nez v8, :cond_5

    add-int/lit8 v8, v6, -0x1

    aget v8, v7, v8

    if-nez v8, :cond_5

    .line 59
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 62
    :cond_5
    invoke-static {v6, v5, v7}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 64
    invoke-static {v6, v7, v5}, Lorg/spongycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 66
    invoke-static {v4, v2, v0}, Lorg/spongycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v8

    sub-int/2addr v8, v3

    add-int/2addr v1, v8

    .line 67
    invoke-static {p0, v5, v6, v0, v1}, Lorg/spongycastle/math/raw/Mod;->inversionStep([I[II[II)I

    move-result v1

    .line 68
    invoke-static {v6, v5}, Lorg/spongycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 70
    invoke-static {p0, v1, v0, p2}, Lorg/spongycastle/math/raw/Mod;->inversionResult([II[I[I)V

    goto :goto_0

    .line 76
    :cond_6
    invoke-static {v6, v5, v7}, Lorg/spongycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 78
    invoke-static {v4, v0, v2}, Lorg/spongycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v8

    sub-int/2addr v8, v1

    add-int/2addr v3, v8

    .line 79
    invoke-static {p0, v7, v6, v2, v3}, Lorg/spongycastle/math/raw/Mod;->inversionStep([I[II[II)I

    move-result v3

    .line 80
    invoke-static {v6, v7}, Lorg/spongycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 82
    invoke-static {p0, v3, v2, p2}, Lorg/spongycastle/math/raw/Mod;->inversionResult([II[I[I)V

    goto :goto_0
.end method

.method public static random([I)[I
    .locals 7
    .param p0, "p"    # [I

    .prologue
    .line 91
    array-length v1, p0

    .line 92
    .local v1, "len":I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 93
    .local v3, "rand":Ljava/util/Random;
    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat;->create(I)[I

    move-result-object v4

    .line 95
    .local v4, "s":[I
    add-int/lit8 v5, v1, -0x1

    aget v2, p0, v5

    .line 96
    .local v2, "m":I
    ushr-int/lit8 v5, v2, 0x1

    or-int/2addr v2, v5

    .line 97
    ushr-int/lit8 v5, v2, 0x2

    or-int/2addr v2, v5

    .line 98
    ushr-int/lit8 v5, v2, 0x4

    or-int/2addr v2, v5

    .line 99
    ushr-int/lit8 v5, v2, 0x8

    or-int/2addr v2, v5

    .line 100
    ushr-int/lit8 v5, v2, 0x10

    or-int/2addr v2, v5

    .line 104
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, v1, :cond_1

    .line 106
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v5

    aput v5, v4, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    add-int/lit8 v5, v1, -0x1

    aget v6, v4, v5

    and-int/2addr v6, v2

    aput v6, v4, v5

    .line 110
    invoke-static {v1, v4, p0}, Lorg/spongycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    return-object v4
.end method

.method public static subtract([I[I[I[I)V
    .locals 2
    .param p0, "p"    # [I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .prologue
    .line 127
    array-length v1, p0

    .line 128
    .local v1, "len":I
    invoke-static {v1, p1, p2, p3}, Lorg/spongycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 129
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 131
    invoke-static {v1, p0, p3}, Lorg/spongycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 133
    :cond_0
    return-void
.end method
