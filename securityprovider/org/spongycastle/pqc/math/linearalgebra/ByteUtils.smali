.class public final Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# static fields
.field private static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static clone([B)[B
    .locals 3
    .param p0, "array"    # [B

    .prologue
    const/4 v2, 0x0

    .line 164
    if-nez p0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 168
    :cond_0
    array-length v1, p0

    new-array v0, v1, [B

    .line 169
    .local v0, "result":[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static concatenate([B[B)[B
    .locals 4
    .param p0, "x1"    # [B
    .param p1, "x2"    # [B

    .prologue
    const/4 v3, 0x0

    .line 315
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 317
    .local v0, "result":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    return-object v0
.end method

.method public static concatenate([[B)[B
    .locals 6
    .param p0, "array"    # [[B

    .prologue
    const/4 v5, 0x0

    .line 332
    aget-object v4, p0, v5

    array-length v3, v4

    .line 333
    .local v3, "rowLength":I
    array-length v4, p0

    mul-int/2addr v4, v3

    new-array v2, v4, [B

    .line 334
    .local v2, "result":[B
    const/4 v1, 0x0

    .line 335
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_0

    .line 337
    aget-object v4, p0, v0

    invoke-static {v4, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    add-int/2addr v1, v3

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    return-object v2
.end method

.method public static deepHashCode([B)I
    .locals 4
    .param p0, "array"    # [B

    .prologue
    .line 112
    const/4 v1, 0x1

    .line 113
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 115
    mul-int/lit8 v2, v1, 0x1f

    aget-byte v3, p0, v0

    add-int v1, v2, v3

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return v1
.end method

.method public static deepHashCode([[B)I
    .locals 4
    .param p0, "array"    # [[B

    .prologue
    .line 129
    const/4 v1, 0x1

    .line 130
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 132
    mul-int/lit8 v2, v1, 0x1f

    aget-object v3, p0, v0

    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->deepHashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return v1
.end method

.method public static deepHashCode([[[B)I
    .locals 4
    .param p0, "array"    # [[[B

    .prologue
    .line 146
    const/4 v1, 0x1

    .line 147
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 149
    mul-int/lit8 v2, v1, 0x1f

    aget-object v3, p0, v0

    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->deepHashCode([[B)I

    move-result v3

    add-int v1, v2, v3

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return v1
.end method

.method public static equals([B[B)Z
    .locals 6
    .param p0, "left"    # [B
    .param p1, "right"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 29
    if-nez p0, :cond_2

    .line 31
    if-nez p1, :cond_1

    :goto_0
    move v3, v2

    .line 47
    :cond_0
    :goto_1
    return v3

    :cond_1
    move v2, v3

    .line 31
    goto :goto_0

    .line 33
    :cond_2
    if-eqz p1, :cond_0

    .line 38
    array-length v4, p0

    array-length v5, p1

    if-ne v4, v5, :cond_0

    .line 42
    const/4 v1, 0x1

    .line 43
    .local v1, "result":Z
    array-length v4, p0

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 45
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    if-ne v4, v5, :cond_3

    move v4, v2

    :goto_3
    and-int/2addr v1, v4

    .line 43
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    move v4, v3

    .line 45
    goto :goto_3

    :cond_4
    move v3, v1

    .line 47
    goto :goto_1
.end method

.method public static equals([[B[[B)Z
    .locals 4
    .param p0, "left"    # [[B
    .param p1, "right"    # [[B

    .prologue
    .line 59
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 61
    const/4 v1, 0x0

    .line 70
    :cond_0
    return v1

    .line 64
    :cond_1
    const/4 v1, 0x1

    .line 65
    .local v1, "result":Z
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 67
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v2

    and-int/2addr v1, v2

    .line 65
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static equals([[[B[[[B)Z
    .locals 6
    .param p0, "left"    # [[[B
    .param p1, "right"    # [[[B

    .prologue
    const/4 v3, 0x0

    .line 82
    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_1

    move v2, v3

    .line 100
    :cond_0
    :goto_0
    return v2

    .line 87
    :cond_1
    const/4 v2, 0x1

    .line 88
    .local v2, "result":Z
    array-length v4, p0

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 90
    aget-object v4, p0, v0

    array-length v4, v4

    aget-object v5, p1, v0

    array-length v5, v5

    if-eq v4, v5, :cond_2

    move v2, v3

    .line 92
    goto :goto_0

    .line 94
    :cond_2
    aget-object v4, p0, v0

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_2
    if-ltz v1, :cond_3

    .line 96
    aget-object v4, p0, v0

    aget-object v4, v4, v1

    aget-object v5, p1, v0

    aget-object v5, v5, v1

    invoke-static {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v4

    and-int/2addr v2, v4

    .line 94
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 88
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static fromHexString(Ljava/lang/String;)[B
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x46

    const/16 v10, 0x41

    const/16 v9, 0x39

    const/16 v8, 0x30

    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 183
    .local v4, "rawChars":[C
    const/4 v1, 0x0

    .line 184
    .local v1, "hexChars":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 186
    aget-char v5, v4, v2

    if-lt v5, v8, :cond_0

    aget-char v5, v4, v2

    if-le v5, v9, :cond_1

    :cond_0
    aget-char v5, v4, v2

    if-lt v5, v10, :cond_2

    aget-char v5, v4, v2

    if-gt v5, v11, :cond_2

    .line 189
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 184
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_3
    add-int/lit8 v5, v1, 0x1

    shr-int/lit8 v5, v5, 0x1

    new-array v0, v5, [B

    .line 195
    .local v0, "byteString":[B
    and-int/lit8 v3, v1, 0x1

    .line 197
    .local v3, "pos":I
    const/4 v2, 0x0

    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_6

    .line 199
    aget-char v5, v4, v2

    if-lt v5, v8, :cond_5

    aget-char v5, v4, v2

    if-gt v5, v9, :cond_5

    .line 201
    shr-int/lit8 v5, v3, 0x1

    aget-byte v6, v0, v5

    shl-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 202
    shr-int/lit8 v5, v3, 0x1

    aget-byte v6, v0, v5

    aget-char v7, v4, v2

    add-int/lit8 v7, v7, -0x30

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 213
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 197
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 204
    :cond_5
    aget-char v5, v4, v2

    if-lt v5, v10, :cond_4

    aget-char v5, v4, v2

    if-gt v5, v11, :cond_4

    .line 206
    shr-int/lit8 v5, v3, 0x1

    aget-byte v6, v0, v5

    shl-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 207
    shr-int/lit8 v5, v3, 0x1

    aget-byte v6, v0, v5

    aget-char v7, v4, v2

    add-int/lit8 v7, v7, -0x41

    add-int/lit8 v7, v7, 0xa

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    goto :goto_2

    .line 216
    :cond_6
    return-object v0
.end method

.method public static split([BI)[[B
    .locals 4
    .param p0, "input"    # [B
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 356
    array-length v1, p0

    if-le p1, v1, :cond_0

    .line 358
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 360
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [[B

    .line 361
    .local v0, "result":[[B
    new-array v1, p1, [B

    aput-object v1, v0, v3

    .line 362
    array-length v1, p0

    sub-int/2addr v1, p1

    new-array v1, v1, [B

    aput-object v1, v0, v2

    .line 363
    aget-object v1, v0, v3

    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    aget-object v1, v0, v2

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    return-object v0
.end method

.method public static subArray([BI)[B
    .locals 1
    .param p0, "input"    # [B
    .param p1, "start"    # I

    .prologue
    .line 394
    array-length v0, p0

    invoke-static {p0, p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->subArray([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static subArray([BII)[B
    .locals 3
    .param p0, "input"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 379
    sub-int v1, p2, p1

    new-array v0, v1, [B

    .line 380
    .local v0, "result":[B
    const/4 v1, 0x0

    sub-int v2, p2, p1

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    return-object v0
.end method

.method public static toBinaryString([B)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # [B

    .prologue
    .line 268
    const-string v4, ""

    .line 270
    .local v4, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_2

    .line 272
    aget-byte v1, p0, v2

    .line 273
    .local v1, "e":I
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_1
    const/16 v5, 0x8

    if-ge v3, v5, :cond_0

    .line 275
    ushr-int v5, v1, v3

    and-int/lit8 v0, v5, 0x1

    .line 276
    .local v0, "b":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 278
    .end local v0    # "b":I
    :cond_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-eq v2, v5, :cond_1

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "e":I
    .end local v3    # "ii":I
    :cond_2
    return-object v4
.end method

.method public static toCharArray([B)[C
    .locals 3
    .param p0, "input"    # [B

    .prologue
    .line 406
    array-length v2, p0

    new-array v1, v2, [C

    .line 407
    .local v1, "result":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 409
    aget-byte v2, p0, v0

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    return-object v1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # [B

    .prologue
    .line 227
    const-string v1, ""

    .line 228
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v4, p0, v0

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    return-object v1
.end method

.method public static toHexString([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # [B
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "seperator"    # Ljava/lang/String;

    .prologue
    .line 247
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v4, p0, v0

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->HEX_CHARS:[C

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    return-object v1
.end method

.method public static xor([B[B)[B
    .locals 4
    .param p0, "x1"    # [B
    .param p1, "x2"    # [B

    .prologue
    .line 296
    array-length v2, p0

    new-array v1, v2, [B

    .line 298
    .local v1, "out":[B
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 300
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 298
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 302
    :cond_0
    return-object v1
.end method
