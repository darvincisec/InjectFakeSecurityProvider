.class public Lorg/spongycastle/crypto/engines/RC564Engine;
.super Ljava/lang/Object;
.source "RC564Engine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final P64:J = -0x481eae9d7512d595L

.field private static final Q64:J = -0x61c8864680b583ebL

.field private static final bytesPerWord:I = 0x8

.field private static final wordSize:I = 0x40


# instance fields
.field private _S:[J

.field private _noRounds:I

.field private forEncryption:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/16 v0, 0xc

    iput v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_noRounds:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    .line 54
    return-void
.end method

.method private bytesToWord([BI)J
    .locals 8
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I

    .prologue
    .line 267
    const-wide/16 v2, 0x0

    .line 269
    .local v2, "word":J
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 271
    const/16 v1, 0x8

    shl-long v4, v2, v1

    add-int v1, v0, p2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 269
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 274
    :cond_0
    return-wide v2
.end method

.method private decryptBlock([BI[BI)I
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    const/4 v8, 0x1

    .line 211
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v0

    .line 212
    .local v0, "A":J
    add-int/lit8 v5, p2, 0x8

    invoke-direct {p0, p1, v5}, Lorg/spongycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v2

    .line 214
    .local v2, "B":J
    iget v4, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_noRounds:I

    .local v4, "i":I
    :goto_0
    if-lt v4, v8, :cond_0

    .line 216
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v5, v6

    sub-long v6, v2, v6

    invoke-direct {p0, v6, v7, v0, v1}, Lorg/spongycastle/crypto/engines/RC564Engine;->rotateRight(JJ)J

    move-result-wide v6

    xor-long v2, v6, v0

    .line 217
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v6, v4, 0x2

    aget-wide v6, v5, v6

    sub-long v6, v0, v6

    invoke-direct {p0, v6, v7, v2, v3}, Lorg/spongycastle/crypto/engines/RC564Engine;->rotateRight(JJ)J

    move-result-wide v6

    xor-long v0, v6, v2

    .line 214
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 220
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    sub-long v6, v0, v6

    invoke-direct {p0, v6, v7, p3, p4}, Lorg/spongycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    .line 221
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    aget-wide v6, v5, v8

    sub-long v6, v2, v6

    add-int/lit8 v5, p4, 0x8

    invoke-direct {p0, v6, v7, p3, v5}, Lorg/spongycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    .line 223
    const/16 v5, 0x10

    return v5
.end method

.method private encryptBlock([BI[BI)I
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v6

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v8, 0x0

    aget-wide v8, v5, v8

    add-long v0, v6, v8

    .line 191
    .local v0, "A":J
    add-int/lit8 v5, p2, 0x8

    invoke-direct {p0, p1, v5}, Lorg/spongycastle/crypto/engines/RC564Engine;->bytesToWord([BI)J

    move-result-wide v6

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    add-long v2, v6, v8

    .line 193
    .local v2, "B":J
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_noRounds:I

    if-gt v4, v5, :cond_0

    .line 195
    xor-long v6, v0, v2

    invoke-direct {p0, v6, v7, v2, v3}, Lorg/spongycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v6

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v8, v4, 0x2

    aget-wide v8, v5, v8

    add-long v0, v6, v8

    .line 196
    xor-long v6, v2, v0

    invoke-direct {p0, v6, v7, v0, v1}, Lorg/spongycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v6

    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    mul-int/lit8 v8, v4, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-wide v8, v5, v8

    add-long v2, v6, v8

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 199
    :cond_0
    invoke-direct {p0, v0, v1, p3, p4}, Lorg/spongycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    .line 200
    add-int/lit8 v5, p4, 0x8

    invoke-direct {p0, v2, v3, p3, v5}, Lorg/spongycastle/crypto/engines/RC564Engine;->wordToBytes(J[BI)V

    .line 202
    const/16 v5, 0x10

    return v5
.end method

.method private rotateLeft(JJ)J
    .locals 7
    .param p1, "x"    # J
    .param p3, "y"    # J

    .prologue
    const-wide/16 v4, 0x3f

    .line 245
    and-long v0, p3, v4

    long-to-int v0, v0

    shl-long v0, p1, v0

    const-wide/16 v2, 0x40

    and-long/2addr v4, p3

    sub-long/2addr v2, v4

    long-to-int v2, v2

    ushr-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private rotateRight(JJ)J
    .locals 7
    .param p1, "x"    # J
    .param p3, "y"    # J

    .prologue
    const-wide/16 v4, 0x3f

    .line 260
    and-long v0, p3, v4

    long-to-int v0, v0

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x40

    and-long/2addr v4, p3

    sub-long/2addr v2, v4

    long-to-int v2, v2

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private setKey([B)V
    .locals 17
    .param p1, "key"    # [B

    .prologue
    .line 126
    move-object/from16 v0, p1

    array-length v11, v0

    add-int/lit8 v11, v11, 0x7

    div-int/lit8 v11, v11, 0x8

    new-array v6, v11, [J

    .line 128
    .local v6, "L":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v11, v0

    if-eq v7, v11, :cond_0

    .line 130
    div-int/lit8 v11, v7, 0x8

    aget-wide v12, v6, v11

    aget-byte v14, p1, v7

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    rem-int/lit8 v16, v7, 0x8

    mul-int/lit8 v16, v16, 0x8

    shl-long v14, v14, v16

    add-long/2addr v12, v14

    aput-wide v12, v6, v11

    .line 128
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 139
    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->_noRounds:I

    add-int/lit8 v11, v11, 0x1

    mul-int/lit8 v11, v11, 0x2

    new-array v11, v11, [J

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    .line 141
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    const/4 v12, 0x0

    const-wide v14, -0x481eae9d7512d595L    # -1.590398847350152E-39

    aput-wide v14, v11, v12

    .line 142
    const/4 v7, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v11, v11

    if-ge v7, v11, :cond_1

    .line 144
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    add-int/lit8 v13, v7, -0x1

    aget-wide v12, v12, v13

    const-wide v14, -0x61c8864680b583ebL

    add-long/2addr v12, v14

    aput-wide v12, v11, v7

    .line 142
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 154
    :cond_1
    array-length v11, v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v12, v12

    if-le v11, v12, :cond_2

    .line 156
    array-length v11, v6

    mul-int/lit8 v8, v11, 0x3

    .line 163
    .local v8, "iter":I
    :goto_2
    const-wide/16 v2, 0x0

    .local v2, "A":J
    const-wide/16 v4, 0x0

    .line 164
    .local v4, "B":J
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 166
    .local v9, "j":I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_3
    if-ge v10, v8, :cond_3

    .line 168
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    aget-wide v12, v12, v7

    add-long/2addr v12, v2

    add-long/2addr v12, v4

    const-wide/16 v14, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/spongycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v2

    .end local v2    # "A":J
    aput-wide v2, v11, v7

    .line 169
    .restart local v2    # "A":J
    aget-wide v12, v6, v9

    add-long/2addr v12, v2

    add-long/2addr v12, v4

    add-long v14, v2, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lorg/spongycastle/crypto/engines/RC564Engine;->rotateLeft(JJ)J

    move-result-wide v4

    .end local v4    # "B":J
    aput-wide v4, v6, v9

    .line 170
    .restart local v4    # "B":J
    add-int/lit8 v11, v7, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v12, v12

    rem-int v7, v11, v12

    .line 171
    add-int/lit8 v11, v9, 0x1

    array-length v12, v6

    rem-int v9, v11, v12

    .line 166
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 160
    .end local v2    # "A":J
    .end local v4    # "B":J
    .end local v8    # "iter":I
    .end local v9    # "j":I
    .end local v10    # "k":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/crypto/engines/RC564Engine;->_S:[J

    array-length v11, v11

    mul-int/lit8 v8, v11, 0x3

    .restart local v8    # "iter":I
    goto :goto_2

    .line 173
    .restart local v2    # "A":J
    .restart local v4    # "B":J
    .restart local v9    # "j":I
    .restart local v10    # "k":I
    :cond_3
    return-void
.end method

.method private wordToBytes(J[BI)V
    .locals 5
    .param p1, "word"    # J
    .param p3, "dst"    # [B
    .param p4, "dstOff"    # I

    .prologue
    const/16 v3, 0x8

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 284
    add-int v1, v0, p4

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 285
    ushr-long/2addr p1, v3

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "RC5-64"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 78
    instance-of v1, p2, Lorg/spongycastle/crypto/params/RC5Parameters;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to RC564 init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    .line 83
    check-cast v0, Lorg/spongycastle/crypto/params/RC5Parameters;

    .line 85
    .local v0, "p":Lorg/spongycastle/crypto/params/RC5Parameters;
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->forEncryption:Z

    .line 87
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RC5Parameters;->getRounds()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->_noRounds:I

    .line 89
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RC5Parameters;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/RC564Engine;->setKey([B)V

    .line 90
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RC564Engine;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC564Engine;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    .line 99
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC564Engine;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method
