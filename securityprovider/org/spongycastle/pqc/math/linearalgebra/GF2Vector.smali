.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
.super Lorg/spongycastle/pqc/math/linearalgebra/Vector;
.source "GF2Vector.java"


# instance fields
.field private v:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 29
    if-gez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negative length."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    .line 34
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    .line 35
    return-void
.end method

.method public constructor <init>(IILjava/security/SecureRandom;)V
    .locals 7
    .param p1, "length"    # I
    .param p2, "t"    # I
    .param p3, "sr"    # Ljava/security/SecureRandom;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 75
    if-le p2, p1, :cond_0

    .line 77
    new-instance v5, Ljava/lang/ArithmeticException;

    const-string v6, "The hamming weight is greater than the length of vector."

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 80
    :cond_0
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    .line 82
    add-int/lit8 v5, p1, 0x1f

    shr-int/lit8 v4, v5, 0x5

    .line 83
    .local v4, "size":I
    new-array v5, v4, [I

    iput-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    .line 85
    new-array v0, p1, [I

    .line 86
    .local v0, "help":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 88
    aput v1, v0, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_1
    move v3, p1

    .line 92
    .local v3, "m":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    .line 94
    invoke-static {p3, v3}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v2

    .line 95
    .local v2, "j":I
    aget v5, v0, v2

    invoke-virtual {p0, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->setBit(I)V

    .line 96
    add-int/lit8 v3, v3, -0x1

    .line 97
    aget v5, v0, v3

    aput v5, v0, v2

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 7
    .param p1, "length"    # I
    .param p2, "sr"    # Ljava/security/SecureRandom;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 45
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    .line 47
    add-int/lit8 v3, p1, 0x1f

    shr-int/lit8 v2, v3, 0x5

    .line 48
    .local v2, "size":I
    new-array v3, v2, [I

    iput-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    .line 51
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 53
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-virtual {p2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    aput v4, v3, v0

    .line 51
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 57
    :cond_0
    and-int/lit8 v1, p1, 0x1f

    .line 58
    .local v1, "r":I
    if-eqz v1, :cond_1

    .line 61
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v4, v2, -0x1

    aget v5, v3, v4

    const/4 v6, 0x1

    shl-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aput v5, v3, v4

    .line 63
    :cond_1
    return-void
.end method

.method public constructor <init>(I[I)V
    .locals 6
    .param p1, "length"    # I
    .param p2, "v"    # [I

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 110
    if-gez p1, :cond_0

    .line 112
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "negative length"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    :cond_0
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    .line 116
    add-int/lit8 v2, p1, 0x1f

    shr-int/lit8 v1, v2, 0x5

    .line 118
    .local v1, "size":I
    array-length v2, p2

    if-eq v2, v1, :cond_1

    .line 120
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "length mismatch"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_1
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    .line 125
    and-int/lit8 v0, p1, 0x1f

    .line 126
    .local v0, "r":I
    if-eqz v0, :cond_2

    .line 129
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v3, v1, -0x1

    aget v4, v2, v3

    const/4 v5, 0x1

    shl-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    aput v4, v2, v3

    .line 131
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)V
    .locals 1
    .param p1, "other"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 140
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    .line 141
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    .line 142
    return-void
.end method

.method protected constructor <init>([II)V
    .locals 0
    .param p1, "v"    # [I
    .param p2, "length"    # I

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 154
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    .line 155
    iput p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    .line 156
    return-void
.end method

.method public static OS2VP(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 3
    .param p0, "length"    # I
    .param p1, "encVec"    # [B

    .prologue
    .line 168
    if-gez p0, :cond_0

    .line 170
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "negative length"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_0
    add-int/lit8 v1, p0, 0x7

    shr-int/lit8 v0, v1, 0x3

    .line 175
    .local v0, "byteLen":I
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 177
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "length mismatch"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_1
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->toIntArray([B)[I

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I[I)V

    return-object v1
.end method


# virtual methods
.method public add(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    .locals 5
    .param p1, "other"    # Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    .prologue
    .line 284
    instance-of v3, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    if-nez v3, :cond_0

    .line 286
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "vector is not defined over GF(2)"

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, p1

    .line 289
    check-cast v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 290
    .local v1, "otherVec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    iget v4, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-eq v3, v4, :cond_1

    .line 292
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "length mismatch"

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 295
    :cond_1
    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .end local p1    # "other":Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    iget-object v3, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->clone([I)[I

    move-result-object v2

    .line 297
    .local v2, "vec":[I
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 299
    aget v3, v2, v0

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    aput v3, v2, v0

    .line 297
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 302
    :cond_2
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    invoke-direct {v3, v4, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I[I)V

    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 493
    instance-of v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    if-nez v2, :cond_1

    .line 499
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 497
    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 499
    .local v0, "otherVec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    iget v3, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v3, v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public extractLeftVector(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 6
    .param p1, "k"    # I

    .prologue
    const/4 v5, 0x0

    .line 373
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-le p1, v3, :cond_0

    .line 375
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "invalid length"

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 378
    :cond_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-ne p1, v3, :cond_2

    .line 380
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v2, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)V

    .line 394
    :cond_1
    :goto_0
    return-object v2

    .line 383
    :cond_2
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v2, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 385
    .local v2, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    shr-int/lit8 v0, p1, 0x5

    .line 386
    .local v0, "q":I
    and-int/lit8 v1, p1, 0x1f

    .line 388
    .local v1, "r":I
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v4, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v3, v5, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    if-eqz v1, :cond_1

    .line 391
    iget-object v3, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v4, v4, v0

    const/4 v5, 0x1

    shl-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    aput v4, v3, v0

    goto :goto_0
.end method

.method public extractRightVector(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 12
    .param p1, "k"    # I

    .prologue
    .line 407
    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-le p1, v7, :cond_0

    .line 409
    new-instance v7, Ljava/lang/ArithmeticException;

    const-string v8, "invalid length"

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 412
    :cond_0
    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-ne p1, v7, :cond_2

    .line 414
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v6, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)V

    .line 445
    :cond_1
    :goto_0
    return-object v6

    .line 417
    :cond_2
    new-instance v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v6, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 419
    .local v6, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    sub-int/2addr v7, p1

    shr-int/lit8 v4, v7, 0x5

    .line 420
    .local v4, "q":I
    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    sub-int/2addr v7, p1

    and-int/lit8 v5, v7, 0x1f

    .line 421
    .local v5, "r":I
    add-int/lit8 v7, p1, 0x1f

    shr-int/lit8 v3, v7, 0x5

    .line 423
    .local v3, "length":I
    move v1, v4

    .line 425
    .local v1, "ind":I
    if-eqz v5, :cond_4

    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "ind":I
    .local v2, "ind":I
    :goto_1
    add-int/lit8 v7, v3, -0x1

    if-ge v0, v7, :cond_3

    .line 430
    iget-object v7, v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "ind":I
    .restart local v1    # "ind":I
    aget v8, v8, v2

    ushr-int/2addr v8, v5

    iget-object v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v9, v9, v1

    rsub-int/lit8 v10, v5, 0x20

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v7, v0

    .line 428
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "ind":I
    .restart local v2    # "ind":I
    goto :goto_1

    .line 433
    :cond_3
    iget-object v7, v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v8, v3, -0x1

    iget-object v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "ind":I
    .restart local v1    # "ind":I
    aget v9, v9, v2

    ushr-int/2addr v9, v5

    aput v9, v7, v8

    .line 434
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    array-length v7, v7

    if-ge v1, v7, :cond_1

    .line 436
    iget-object v7, v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    add-int/lit8 v8, v3, -0x1

    aget v9, v7, v8

    iget-object v10, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v10, v10, v1

    rsub-int/lit8 v11, v5, 0x20

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    aput v9, v7, v8

    goto :goto_0

    .line 442
    .end local v0    # "i":I
    :cond_4
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    iget-object v8, v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    const/4 v9, 0x0

    invoke-static {v7, v4, v8, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public extractVector([I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 9
    .param p1, "setJ"    # [I

    .prologue
    const/4 v8, 0x1

    .line 343
    array-length v2, p1

    .line 344
    .local v2, "k":I
    add-int/lit8 v4, v2, -0x1

    aget v4, p1, v4

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-le v4, v5, :cond_0

    .line 346
    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v5, "invalid index set"

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 349
    :cond_0
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v3, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 351
    .local v3, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 353
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v5, p1, v1

    shr-int/lit8 v5, v5, 0x5

    aget v4, v4, v5

    aget v5, p1, v1

    and-int/lit8 v5, v5, 0x1f

    shl-int v5, v8, v5

    and-int v0, v4, v5

    .line 354
    .local v0, "e":I
    if-eqz v0, :cond_1

    .line 356
    iget-object v4, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    shr-int/lit8 v5, v1, 0x5

    aget v6, v4, v5

    and-int/lit8 v7, v1, 0x1f

    shl-int v7, v8, v7

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 351
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "e":I
    :cond_2
    return-object v3
.end method

.method public getBit(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 250
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-lt p1, v2, :cond_0

    .line 252
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 254
    :cond_0
    shr-int/lit8 v0, p1, 0x5

    .line 255
    .local v0, "q":I
    and-int/lit8 v1, p1, 0x1f

    .line 256
    .local v1, "r":I
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v2, v3

    ushr-int/2addr v2, v1

    return v2
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 190
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v0, v1, 0x3

    .line 191
    .local v0, "byteLen":I
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-static {v1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->toByteArray([II)[B

    move-result-object v1

    return-object v1
.end method

.method public getHammingWeight()I
    .locals 6

    .prologue
    .line 210
    const/4 v4, 0x0

    .line 211
    .local v4, "weight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 213
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v1, v5, v2

    .line 214
    .local v1, "e":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/16 v5, 0x20

    if-ge v3, v5, :cond_1

    .line 216
    and-int/lit8 v0, v1, 0x1

    .line 217
    .local v0, "b":I
    if-eqz v0, :cond_0

    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 221
    :cond_0
    ushr-int/lit8 v1, v1, 0x1

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 211
    .end local v0    # "b":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "e":I
    .end local v3    # "j":I
    :cond_2
    return v4
.end method

.method public getVecArray()[I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 507
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    .line 508
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 509
    return v0
.end method

.method public isZero()Z
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 234
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 236
    const/4 v1, 0x0

    .line 239
    :goto_1
    return v1

    .line 232
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 239
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public multiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    .locals 9
    .param p1, "p"    # Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    .prologue
    const/4 v8, 0x1

    .line 313
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->getVector()[I

    move-result-object v2

    .line 314
    .local v2, "pVec":[I
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    array-length v5, v2

    if-eq v4, v5, :cond_0

    .line 316
    new-instance v4, Ljava/lang/ArithmeticException;

    const-string v5, "length mismatch"

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 319
    :cond_0
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    invoke-direct {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    .line 321
    .local v3, "result":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 323
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v5, v2, v1

    shr-int/lit8 v5, v5, 0x5

    aget v4, v4, v5

    aget v5, v2, v1

    and-int/lit8 v5, v5, 0x1f

    shl-int v5, v8, v5

    and-int v0, v4, v5

    .line 324
    .local v0, "e":I
    if-eqz v0, :cond_1

    .line 326
    iget-object v4, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    shr-int/lit8 v5, v1, 0x5

    aget v6, v4, v5

    and-int/lit8 v7, v1, 0x1f

    shl-int v7, v8, v7

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 321
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    .end local v0    # "e":I
    :cond_2
    return-object v3
.end method

.method public setBit(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 267
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-lt p1, v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 272
    return-void
.end method

.method public toExtensionFieldVector(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;
    .locals 12
    .param p1, "field"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .prologue
    const/4 v11, 0x1

    .line 457
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v4

    .line 458
    .local v4, "m":I
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    rem-int/2addr v9, v4

    if-eqz v9, :cond_0

    .line 460
    new-instance v9, Ljava/lang/ArithmeticException;

    const-string v10, "conversion is impossible"

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 463
    :cond_0
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    div-int v8, v9, v4

    .line 464
    .local v8, "t":I
    new-array v7, v8, [I

    .line 465
    .local v7, "result":[I
    const/4 v0, 0x0

    .line 466
    .local v0, "count":I
    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 468
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getDegree()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_2

    .line 470
    ushr-int/lit8 v5, v0, 0x5

    .line 471
    .local v5, "q":I
    and-int/lit8 v6, v0, 0x1f

    .line 473
    .local v6, "r":I
    iget-object v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v9, v9, v5

    ushr-int/2addr v9, v6

    and-int/lit8 v1, v9, 0x1

    .line 474
    .local v1, "e":I
    if-ne v1, v11, :cond_1

    .line 476
    aget v9, v7, v2

    shl-int v10, v11, v3

    xor-int/2addr v9, v10

    aput v9, v7, v2

    .line 478
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 468
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 466
    .end local v1    # "e":I
    .end local v5    # "q":I
    .end local v6    # "r":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 481
    .end local v3    # "j":I
    :cond_3
    new-instance v9, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    invoke-direct {v9, p1, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V

    return-object v9
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 517
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 518
    .local v1, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->length:I

    if-ge v2, v5, :cond_2

    .line 520
    if-eqz v2, :cond_0

    and-int/lit8 v5, v2, 0x1f

    if-nez v5, :cond_0

    .line 522
    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 524
    :cond_0
    shr-int/lit8 v3, v2, 0x5

    .line 525
    .local v3, "q":I
    and-int/lit8 v4, v2, 0x1f

    .line 526
    .local v4, "r":I
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->v:[I

    aget v5, v5, v3

    const/4 v6, 0x1

    shl-int/2addr v6, v4

    and-int v0, v5, v6

    .line 527
    .local v0, "bit":I
    if-nez v0, :cond_1

    .line 529
    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 518
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    :cond_1
    const/16 v5, 0x31

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 536
    .end local v0    # "bit":I
    .end local v3    # "q":I
    .end local v4    # "r":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
