.class public Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
.super Ljava/lang/Object;
.source "WinternitzOTSignature.java"


# instance fields
.field private checksumsize:I

.field private gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private keysize:I

.field private mdsize:I

.field private messDigestOTS:Lorg/spongycastle/crypto/Digest;

.field private messagesize:I

.field private privateKeyOTS:[[B

.field private w:I


# direct methods
.method public constructor <init>([BLorg/spongycastle/crypto/Digest;I)V
    .locals 9
    .param p1, "seed0"    # [B
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "w"    # I

    .prologue
    const/4 v8, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    .line 65
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    .line 67
    new-instance v3, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v3, v4}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 72
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    .line 73
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 v2, v3, 0x3

    .line 74
    .local v2, "mdsizeBit":I
    int-to-double v4, v2

    int-to-double v6, p3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    .line 76
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    shl-int/2addr v3, p3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getLog(I)I

    move-result v3

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    .line 78
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    int-to-double v4, v4

    int-to-double v6, p3

    div-double/2addr v4, v6

    .line 79
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    .line 90
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    iput-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    .line 93
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v0, v3, [B

    .line 94
    .local v0, "dummy":[B
    array-length v3, v0

    invoke-static {p1, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v1, v3, :cond_0

    .line 100
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v4, v0}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v4

    aput-object v4, v3, v1

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public getLog(I)I
    .locals 2
    .param p1, "intValue"    # I

    .prologue
    .line 394
    const/4 v1, 0x1

    .line 395
    .local v1, "log":I
    const/4 v0, 0x2

    .line 396
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 398
    shl-int/lit8 v0, v0, 0x1

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    :cond_0
    return v1
.end method

.method public getPrivateKey()[[B
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 117
    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v7, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v6, v7

    new-array v1, v6, [B

    .line 119
    .local v1, "helppubKey":[B
    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v0, v6, [B

    .line 120
    .local v0, "help":[B
    const/4 v6, 0x1

    iget v7, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int v5, v6, v7

    .line 122
    .local v5, "two_power_t":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v2, v6, :cond_1

    .line 125
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v8, v8, v2

    array-length v8, v8

    invoke-interface {v6, v7, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 126
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v0, v6, [B

    .line 127
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6, v0, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 128
    const/4 v3, 0x2

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 130
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v7, v0

    invoke-interface {v6, v0, v9, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 131
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v0, v6, [B

    .line 132
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6, v0, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    :cond_0
    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v6, v2

    iget v7, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v0, v9, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v3    # "j":I
    :cond_1
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v7, v1

    invoke-interface {v6, v1, v9, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 138
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v4, v6, [B

    .line 139
    .local v4, "tmp":[B
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6, v4, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 140
    return-object v4
.end method

.method public getSignature([B)[B
    .locals 27
    .param p1, "message"    # [B

    .prologue
    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v24, v0

    mul-int v21, v21, v24

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 151
    .local v19, "sign":[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v10, v0, [B

    .line 152
    .local v10, "hash":[B
    const/4 v7, 0x0

    .line 153
    .local v7, "counter":I
    const/4 v6, 0x0

    .line 154
    .local v6, "c":I
    const/16 v20, 0x0

    .line 156
    .local v20, "test":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v21

    move/from16 v0, v21

    new-array v10, v0, [B

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v10, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 160
    const/16 v21, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v24, v0

    rem-int v21, v21, v24

    if-nez v21, :cond_4

    .line 162
    const/16 v21, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v24, v0

    div-int v8, v21, v24

    .line 163
    .local v8, "d":I
    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v24, v0

    shl-int v21, v21, v24

    add-int/lit8 v15, v21, -0x1

    .line 164
    .local v15, "k":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v11, v0, [B

    .line 167
    .local v11, "hlp":[B
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v0, v10

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_2

    .line 169
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    if-ge v14, v8, :cond_1

    .line 171
    aget-byte v21, v10, v12

    and-int v20, v21, v15

    .line 172
    add-int v6, v6, v20

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v26, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    :goto_2
    if-lez v20, :cond_0

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    array-length v0, v11

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v11, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v21

    move/from16 v0, v21

    new-array v11, v0, [B

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 181
    add-int/lit8 v20, v20, -0x1

    goto :goto_2

    .line 183
    :cond_0
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v24, v0

    mul-int v24, v24, v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v25, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    aget-byte v21, v10, v12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v24, v0

    ushr-int v21, v21, v24

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v10, v12

    .line 185
    add-int/lit8 v7, v7, 0x1

    .line 169
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 167
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 189
    .end local v14    # "j":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v24, v0

    shl-int v21, v21, v24

    sub-int v6, v21, v6

    .line 190
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_15

    .line 192
    and-int v20, v6, v15

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v26, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    :goto_4
    if-lez v20, :cond_3

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    array-length v0, v11

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v11, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v21

    move/from16 v0, v21

    new-array v11, v0, [B

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 201
    add-int/lit8 v20, v20, -0x1

    goto :goto_4

    .line 203
    :cond_3
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v24, v0

    mul-int v24, v24, v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v25, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v21, v0

    ushr-int v6, v6, v21

    .line 205
    add-int/lit8 v7, v7, 0x1

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v21, v0

    add-int v12, v12, v21

    goto/16 :goto_3

    .line 208
    .end local v8    # "d":I
    .end local v11    # "hlp":[B
    .end local v12    # "i":I
    .end local v15    # "k":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v21, v0

    const/16 v24, 0x8

    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    .line 210
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v24, v0

    div-int v8, v21, v24

    .line 211
    .restart local v8    # "d":I
    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v24, v0

    shl-int v21, v21, v24

    add-int/lit8 v15, v21, -0x1

    .line 212
    .restart local v15    # "k":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v11, v0, [B

    .line 214
    .restart local v11    # "hlp":[B
    const/4 v13, 0x0

    .line 217
    .local v13, "ii":I
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    if-ge v12, v8, :cond_8

    .line 219
    const-wide/16 v4, 0x0

    .line 220
    .local v4, "big8":J
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_5

    .line 222
    aget-byte v21, v10, v13

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v24, v14, 0x3

    shl-int v21, v21, v24

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    xor-long v4, v4, v24

    .line 223
    add-int/lit8 v13, v13, 0x1

    .line 220
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 225
    :cond_5
    const/4 v14, 0x0

    :goto_7
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ge v14, v0, :cond_7

    .line 227
    int-to-long v0, v15

    move-wide/from16 v24, v0

    and-long v24, v24, v4

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v20, v0

    .line 228
    add-int v6, v6, v20

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v26, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    :goto_8
    if-lez v20, :cond_6

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    array-length v0, v11

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v11, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v21

    move/from16 v0, v21

    new-array v11, v0, [B

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 237
    add-int/lit8 v20, v20, -0x1

    goto :goto_8

    .line 239
    :cond_6
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v24, v0

    mul-int v24, v24, v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v25, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v21, v0

    ushr-long v4, v4, v21

    .line 241
    add-int/lit8 v7, v7, 0x1

    .line 225
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    .line 217
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 245
    .end local v4    # "big8":J
    .end local v14    # "j":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v24, v0

    rem-int v8, v21, v24

    .line 246
    const-wide/16 v4, 0x0

    .line 247
    .restart local v4    # "big8":J
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_9
    if-ge v14, v8, :cond_9

    .line 249
    aget-byte v21, v10, v13

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v24, v14, 0x3

    shl-int v21, v21, v24

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    xor-long v4, v4, v24

    .line 250
    add-int/lit8 v13, v13, 0x1

    .line 247
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 252
    :cond_9
    shl-int/lit8 v8, v8, 0x3

    .line 253
    const/4 v14, 0x0

    :goto_a
    if-ge v14, v8, :cond_b

    .line 255
    int-to-long v0, v15

    move-wide/from16 v24, v0

    and-long v24, v24, v4

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v20, v0

    .line 256
    add-int v6, v6, v20

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v26, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    :goto_b
    if-lez v20, :cond_a

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    array-length v0, v11

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v11, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v21

    move/from16 v0, v21

    new-array v11, v0, [B

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 265
    add-int/lit8 v20, v20, -0x1

    goto :goto_b

    .line 267
    :cond_a
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v24, v0

    mul-int v24, v24, v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v25, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v21, v0

    ushr-long v4, v4, v21

    .line 269
    add-int/lit8 v7, v7, 0x1

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v21, v0

    add-int v14, v14, v21

    goto/16 :goto_a

    .line 273
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v24, v0

    shl-int v21, v21, v24

    sub-int v6, v21, v6

    .line 274
    const/4 v12, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_15

    .line 276
    and-int v20, v6, v15

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v26, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    :goto_d
    if-lez v20, :cond_c

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    array-length v0, v11

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v11, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v21

    move/from16 v0, v21

    new-array v11, v0, [B

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 285
    add-int/lit8 v20, v20, -0x1

    goto :goto_d

    .line 287
    :cond_c
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v24, v0

    mul-int v24, v24, v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v25, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v21, v0

    ushr-int v6, v6, v21

    .line 289
    add-int/lit8 v7, v7, 0x1

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v21, v0

    add-int v12, v12, v21

    goto/16 :goto_c

    .line 292
    .end local v4    # "big8":J
    .end local v8    # "d":I
    .end local v11    # "hlp":[B
    .end local v12    # "i":I
    .end local v13    # "ii":I
    .end local v14    # "j":I
    .end local v15    # "k":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v21, v0

    const/16 v24, 0x39

    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_15

    .line 294
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v24, v0

    sub-int v8, v21, v24

    .line 295
    .restart local v8    # "d":I
    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v24, v0

    shl-int v21, v21, v24

    add-int/lit8 v15, v21, -0x1

    .line 296
    .restart local v15    # "k":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v11, v0, [B

    .line 298
    .restart local v11    # "hlp":[B
    const/16 v16, 0x0

    .line 302
    .local v16, "r":I
    :goto_e
    move/from16 v0, v16

    if-gt v0, v8, :cond_10

    .line 304
    ushr-int/lit8 v18, v16, 0x3

    .line 305
    .local v18, "s":I
    rem-int/lit8 v17, v16, 0x8

    .line 306
    .local v17, "rest":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v21, v0

    add-int v16, v16, v21

    .line 307
    add-int/lit8 v21, v16, 0x7

    ushr-int/lit8 v9, v21, 0x3

    .line 308
    .local v9, "f":I
    const-wide/16 v4, 0x0

    .line 309
    .restart local v4    # "big8":J
    const/4 v13, 0x0

    .line 310
    .restart local v13    # "ii":I
    move/from16 v14, v18

    .restart local v14    # "j":I
    :goto_f
    if-ge v14, v9, :cond_e

    .line 312
    aget-byte v21, v10, v14

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v24, v13, 0x3

    shl-int v21, v21, v24

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    xor-long v4, v4, v24

    .line 313
    add-int/lit8 v13, v13, 0x1

    .line 310
    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    .line 316
    :cond_e
    ushr-long v4, v4, v17

    .line 317
    int-to-long v0, v15

    move-wide/from16 v24, v0

    and-long v22, v4, v24

    .line 318
    .local v22, "test8":J
    int-to-long v0, v6

    move-wide/from16 v24, v0

    add-long v24, v24, v22

    move-wide/from16 v0, v24

    long-to-int v6, v0

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v26, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    :goto_10
    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_f

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    array-length v0, v11

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v11, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v21

    move/from16 v0, v21

    new-array v11, v0, [B

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 326
    const-wide/16 v24, 0x1

    sub-long v22, v22, v24

    goto :goto_10

    .line 328
    :cond_f
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v24, v0

    mul-int v24, v24, v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v25, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_e

    .line 333
    .end local v4    # "big8":J
    .end local v9    # "f":I
    .end local v13    # "ii":I
    .end local v14    # "j":I
    .end local v17    # "rest":I
    .end local v18    # "s":I
    .end local v22    # "test8":J
    :cond_10
    ushr-int/lit8 v18, v16, 0x3

    .line 334
    .restart local v18    # "s":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_13

    .line 336
    rem-int/lit8 v17, v16, 0x8

    .line 337
    .restart local v17    # "rest":I
    const-wide/16 v4, 0x0

    .line 338
    .restart local v4    # "big8":J
    const/4 v13, 0x0

    .line 339
    .restart local v13    # "ii":I
    move/from16 v14, v18

    .restart local v14    # "j":I
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_11

    .line 341
    aget-byte v21, v10, v14

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v24, v13, 0x3

    shl-int v21, v21, v24

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    xor-long v4, v4, v24

    .line 342
    add-int/lit8 v13, v13, 0x1

    .line 339
    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    .line 345
    :cond_11
    ushr-long v4, v4, v17

    .line 346
    int-to-long v0, v15

    move-wide/from16 v24, v0

    and-long v22, v4, v24

    .line 347
    .restart local v22    # "test8":J
    int-to-long v0, v6

    move-wide/from16 v24, v0

    add-long v24, v24, v22

    move-wide/from16 v0, v24

    long-to-int v6, v0

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v26, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    :goto_12
    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_12

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    array-length v0, v11

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v11, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v21

    move/from16 v0, v21

    new-array v11, v0, [B

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 355
    const-wide/16 v24, 0x1

    sub-long v22, v22, v24

    goto :goto_12

    .line 357
    :cond_12
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v24, v0

    mul-int v24, v24, v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v25, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    add-int/lit8 v7, v7, 0x1

    .line 361
    .end local v4    # "big8":J
    .end local v13    # "ii":I
    .end local v14    # "j":I
    .end local v17    # "rest":I
    .end local v22    # "test8":J
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v24, v0

    shl-int v21, v21, v24

    sub-int v6, v21, v6

    .line 362
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_13
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_15

    .line 364
    and-int v21, v6, v15

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 366
    .restart local v22    # "test8":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v26, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    :goto_14
    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_14

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    array-length v0, v11

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v11, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v21

    move/from16 v0, v21

    new-array v11, v0, [B

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v21, v0

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v11, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 373
    const-wide/16 v24, 0x1

    sub-long v22, v22, v24

    goto :goto_14

    .line 375
    :cond_14
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v24, v0

    mul-int v24, v24, v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v25, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v21, v0

    ushr-int v6, v6, v21

    .line 377
    add-int/lit8 v7, v7, 0x1

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    move/from16 v21, v0

    add-int v12, v12, v21

    goto/16 :goto_13

    .line 381
    .end local v8    # "d":I
    .end local v11    # "hlp":[B
    .end local v12    # "i":I
    .end local v15    # "k":I
    .end local v16    # "r":I
    .end local v18    # "s":I
    .end local v22    # "test8":J
    :cond_15
    return-object v19
.end method
