.class public final Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;
.super Ljava/lang/Object;
.source "PolynomialRingGF2.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static add(II)I
    .locals 1
    .param p0, "p"    # I
    .param p1, "q"    # I

    .prologue
    .line 34
    xor-int v0, p0, p1

    return v0
.end method

.method public static degree(I)I
    .locals 1
    .param p0, "p"    # I

    .prologue
    .line 111
    const/4 v0, -0x1

    .line 112
    .local v0, "result":I
    :goto_0
    if-eqz p0, :cond_0

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 115
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return v0
.end method

.method public static degree(J)I
    .locals 4
    .param p0, "p"    # J

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "result":I
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-eqz v1, :cond_0

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 133
    const/4 v1, 0x1

    ushr-long/2addr p0, v1

    goto :goto_0

    .line 135
    :cond_0
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method public static gcd(II)I
    .locals 3
    .param p0, "p"    # I
    .param p1, "q"    # I

    .prologue
    .line 205
    move v0, p0

    .line 206
    .local v0, "a":I
    move v1, p1

    .line 207
    .local v1, "b":I
    :goto_0
    if-eqz v1, :cond_0

    .line 209
    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result v2

    .line 210
    .local v2, "c":I
    move v0, v1

    .line 211
    move v1, v2

    goto :goto_0

    .line 214
    .end local v2    # "c":I
    :cond_0
    return v0
.end method

.method public static getIrreduciblePolynomial(I)I
    .locals 6
    .param p0, "deg"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 251
    if-gez p0, :cond_1

    .line 253
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "The Degree is negative"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v3

    .line 275
    :cond_0
    :goto_0
    return v2

    .line 256
    :cond_1
    const/16 v4, 0x1f

    if-le p0, v4, :cond_2

    .line 258
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "The Degree is more then 31"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v3

    .line 259
    goto :goto_0

    .line 261
    :cond_2
    if-eqz p0, :cond_0

    .line 265
    shl-int v0, v2, p0

    .line 266
    .local v0, "a":I
    add-int/lit8 v0, v0, 0x1

    .line 267
    add-int/lit8 v4, p0, 0x1

    shl-int v1, v2, v4

    .line 268
    .local v1, "b":I
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 270
    invoke-static {v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 268
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    move v2, v3

    .line 275
    goto :goto_0
.end method

.method public static isIrreducible(I)Z
    .locals 6
    .param p0, "p"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 226
    if-nez p0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v3

    .line 230
    :cond_1
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v5

    ushr-int/lit8 v0, v5, 0x1

    .line 231
    .local v0, "d":I
    const/4 v2, 0x2

    .line 232
    .local v2, "u":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 234
    invoke-static {v2, v2, p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result v2

    .line 235
    xor-int/lit8 v5, v2, 0x2

    invoke-static {v5, p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->gcd(II)I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    .line 240
    goto :goto_0
.end method

.method public static modMultiply(III)I
    .locals 7
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "r"    # I

    .prologue
    const/4 v6, 0x1

    .line 77
    const/4 v4, 0x0

    .line 78
    .local v4, "result":I
    invoke-static {p0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result v1

    .line 79
    .local v1, "p":I
    invoke-static {p1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result v3

    .line 80
    .local v3, "q":I
    if-eqz v3, :cond_2

    .line 82
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v5

    shl-int v0, v6, v5

    .line 84
    .local v0, "d":I
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 86
    and-int/lit8 v5, v1, 0x1

    int-to-byte v2, v5

    .line 87
    .local v2, "pMod2":B
    if-ne v2, v6, :cond_1

    .line 89
    xor-int/2addr v4, v3

    .line 91
    :cond_1
    ushr-int/lit8 v1, v1, 0x1

    .line 92
    shl-int/lit8 v3, v3, 0x1

    .line 93
    if-lt v3, v0, :cond_0

    .line 95
    xor-int/2addr v3, p2

    goto :goto_0

    .line 99
    .end local v0    # "d":I
    .end local v2    # "pMod2":B
    :cond_2
    return v4
.end method

.method public static multiply(II)J
    .locals 11
    .param p0, "p"    # I
    .param p1, "q"    # I

    .prologue
    const/4 v10, 0x1

    .line 47
    const-wide/16 v4, 0x0

    .line 48
    .local v4, "result":J
    if-eqz p1, :cond_1

    .line 50
    int-to-long v6, p1

    const-wide v8, 0xffffffffL

    and-long v2, v6, v8

    .line 52
    .local v2, "q1":J
    :goto_0
    if-eqz p0, :cond_1

    .line 54
    and-int/lit8 v1, p0, 0x1

    int-to-byte v0, v1

    .line 55
    .local v0, "b":B
    if-ne v0, v10, :cond_0

    .line 57
    xor-long/2addr v4, v2

    .line 59
    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    .line 60
    shl-long/2addr v2, v10

    .line 62
    goto :goto_0

    .line 64
    .end local v0    # "b":B
    .end local v2    # "q1":J
    :cond_1
    return-wide v4
.end method

.method public static remainder(II)I
    .locals 4
    .param p0, "p"    # I
    .param p1, "q"    # I

    .prologue
    .line 147
    move v0, p0

    .line 149
    .local v0, "result":I
    if-nez p1, :cond_0

    .line 151
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: to be divided by 0"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    const/4 v2, 0x0

    move v1, v0

    .line 160
    .end local v0    # "result":I
    .local v1, "result":I
    :goto_0
    return v2

    .line 155
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_0
    :goto_1
    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v2

    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 157
    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v2

    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v3

    sub-int/2addr v2, v3

    shl-int v2, p1, v2

    xor-int/2addr v0, v2

    goto :goto_1

    :cond_1
    move v1, v0

    .end local v0    # "result":I
    .restart local v1    # "result":I
    move v2, v0

    .line 160
    goto :goto_0
.end method

.method public static rest(JI)I
    .locals 10
    .param p0, "p"    # J
    .param p2, "q"    # I

    .prologue
    .line 173
    move-wide v0, p0

    .line 174
    .local v0, "p1":J
    if-nez p2, :cond_1

    .line 176
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Error: to be divided by 0"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    const/4 v4, 0x0

    .line 191
    :cond_0
    return v4

    .line 179
    :cond_1
    int-to-long v6, p2

    const-wide v8, 0xffffffffL

    and-long v2, v6, v8

    .line 180
    .local v2, "q1":J
    :goto_0
    const/16 v5, 0x20

    ushr-long v6, v0, v5

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 182
    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(J)I

    move-result v5

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(J)I

    move-result v6

    sub-int/2addr v5, v6

    shl-long v6, v2, v5

    xor-long/2addr v0, v6

    goto :goto_0

    .line 185
    :cond_2
    const-wide/16 v6, -0x1

    and-long/2addr v6, v0

    long-to-int v4, v6

    .line 186
    .local v4, "result":I
    :goto_1
    invoke-static {v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v5

    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 188
    invoke-static {v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v5

    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v6

    sub-int/2addr v5, v6

    shl-int v5, p2, v5

    xor-int/2addr v4, v5

    goto :goto_1
.end method
