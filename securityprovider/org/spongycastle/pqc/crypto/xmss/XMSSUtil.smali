.class public Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;
.super Ljava/lang/Object;
.source "XMSSUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual([[B[[B)Z
    .locals 3
    .param p0, "a"    # [[B
    .param p1, "b"    # [[B

    .prologue
    .line 146
    invoke-static {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->hasNullPointer([[B)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->hasNullPointer([[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "a or b == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 152
    aget-object v1, p0, v0

    aget-object v2, p1, v0

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    const/4 v1, 0x0

    .line 157
    :goto_1
    return v1

    .line 150
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static bytesToXBigEndian([BII)J
    .locals 8
    .param p0, "in"    # [B
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .prologue
    .line 81
    if-nez p0, :cond_0

    .line 83
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "in == null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_0
    const-wide/16 v2, 0x0

    .line 86
    .local v2, "res":J
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_1

    .line 88
    const/16 v1, 0x8

    shl-long v4, v2, v1

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    or-long v2, v4, v6

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    return-wide v2
.end method

.method public static calculateTau(II)I
    .locals 3
    .param p0, "index"    # I
    .param p1, "height"    # I

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, "tau":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 337
    shr-int v2, p0, v0

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 339
    move v1, v0

    .line 343
    :cond_0
    return v1

    .line 335
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static cloneArray([B)[B
    .locals 4
    .param p0, "in"    # [B

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 103
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "in == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_0
    array-length v2, p0

    new-array v1, v2, [B

    .line 106
    .local v1, "out":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 108
    aget-byte v2, p0, v0

    aput-byte v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    return-object v1
.end method

.method public static cloneArray([[B)[[B
    .locals 5
    .param p0, "in"    # [[B

    .prologue
    .line 121
    invoke-static {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->hasNullPointer([[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "in has null pointers"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    :cond_0
    array-length v3, p0

    new-array v2, v3, [[B

    .line 126
    .local v2, "out":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 128
    aget-object v3, p0, v0

    array-length v3, v3

    new-array v3, v3, [B

    aput-object v3, v2, v0

    .line 129
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    aget-object v3, p0, v0

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 131
    aget-object v3, v2, v0

    aget-object v4, p0, v0

    aget-byte v4, v4, v1

    aput-byte v4, v3, v1

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "j":I
    :cond_2
    return-object v2
.end method

.method public static copyBytesAtOffset([B[BI)V
    .locals 3
    .param p0, "dst"    # [B
    .param p1, "src"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 208
    if-nez p0, :cond_0

    .line 210
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_0
    if-nez p1, :cond_1

    .line 214
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_1
    if-gez p2, :cond_2

    .line 218
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "offset hast to be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_2
    array-length v1, p1

    add-int/2addr v1, p2

    array-length v2, p0

    if-le v1, v2, :cond_3

    .line 222
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "src length + offset must not be greater than size of destination"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 226
    add-int v1, p2, v0

    aget-byte v2, p1, v0

    aput-byte v2, p0, v1

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_4
    return-void
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .locals 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 328
    .local v0, "in":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 329
    .local v1, "is":Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static dumpByteArray([[B)V
    .locals 3
    .param p0, "x"    # [[B

    .prologue
    .line 167
    invoke-static {p0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->hasNullPointer([[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "x has null pointers"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 173
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/spongycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    return-void
.end method

.method public static extractBytesAtOffset([BII)[B
    .locals 4
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 240
    if-nez p0, :cond_0

    .line 242
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "src == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_0
    if-gez p1, :cond_1

    .line 246
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "offset hast to be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :cond_1
    if-gez p2, :cond_2

    .line 250
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "length hast to be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_2
    add-int v2, p1, p2

    array-length v3, p0

    if-le v2, v3, :cond_3

    .line 254
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "offset + length must not be greater then size of source array"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :cond_3
    new-array v1, p2, [B

    .line 257
    .local v1, "out":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 259
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_4
    return-object v1
.end method

.method public static getDigestSize(Lorg/spongycastle/crypto/Digest;)I
    .locals 3
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 288
    if-nez p0, :cond_0

    .line 290
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "digest == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_0
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "algorithmName":Ljava/lang/String;
    const-string v1, "SHAKE128"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    const/16 v1, 0x20

    .line 301
    :goto_0
    return v1

    .line 297
    :cond_1
    const-string v1, "SHAKE256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    const/16 v1, 0x40

    goto :goto_0

    .line 301
    :cond_2
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    goto :goto_0
.end method

.method public static getLeafIndex(JI)I
    .locals 4
    .param p0, "index"    # J
    .param p2, "xmssTreeHeight"    # I

    .prologue
    const-wide/16 v2, 0x1

    .line 311
    shl-long v0, v2, p2

    sub-long/2addr v0, v2

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static getTreeIndex(JI)J
    .locals 2
    .param p0, "index"    # J
    .param p2, "xmssTreeHeight"    # I

    .prologue
    .line 306
    shr-long v0, p0, p2

    return-wide v0
.end method

.method public static hasNullPointer([[B)Z
    .locals 3
    .param p0, "in"    # [[B

    .prologue
    const/4 v1, 0x1

    .line 185
    if-nez p0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 189
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 191
    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIndexValid(IJ)Z
    .locals 3
    .param p0, "height"    # I
    .param p1, "index"    # J

    .prologue
    .line 273
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "index must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNewAuthenticationPathNeeded(JII)Z
    .locals 10
    .param p0, "globalIndex"    # J
    .param p2, "xmssHeight"    # I
    .param p3, "layer"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 357
    cmp-long v2, p0, v8

    if-nez v2, :cond_0

    .line 361
    :goto_0
    return v1

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v2, p0

    shl-int v4, v0, p2

    int-to-double v4, v4

    int-to-double v6, p3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    rem-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isNewBDSInitNeeded(JII)Z
    .locals 8
    .param p0, "globalIndex"    # J
    .param p2, "xmssHeight"    # I
    .param p3, "layer"    # I

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 348
    cmp-long v2, p0, v6

    if-nez v2, :cond_0

    .line 352
    :goto_0
    return v1

    :cond_0
    shl-int v2, v0, p2

    int-to-double v2, v2

    add-int/lit8 v4, p3, 0x1

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    rem-long v2, p0, v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static log2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "log":I
    :goto_0
    shr-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return v0
.end method

.method public static longToBigEndian(J[BI)V
    .locals 8
    .param p0, "value"    # J
    .param p2, "in"    # [B
    .param p3, "offset"    # I

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 58
    if-nez p2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    array-length v0, p2

    sub-int/2addr v0, p3

    if-ge v0, v6, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not enough space in array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    const/16 v0, 0x38

    shr-long v0, p0, v0

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 67
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 68
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 69
    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 70
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 71
    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 72
    add-int/lit8 v0, p3, 0x6

    shr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 73
    add-int/lit8 v0, p3, 0x7

    and-long v2, p0, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 74
    return-void
.end method

.method public static serialize(Ljava/lang/Object;)[B
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 318
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 319
    .local v0, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 320
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 321
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static toBytesBigEndian(JI)[B
    .locals 4
    .param p0, "value"    # J
    .param p2, "sizeInByte"    # I

    .prologue
    .line 44
    new-array v1, p2, [B

    .line 45
    .local v1, "out":[B
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 47
    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 48
    const/16 v2, 0x8

    ushr-long/2addr p0, v2

    .line 45
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 50
    :cond_0
    return-object v1
.end method
