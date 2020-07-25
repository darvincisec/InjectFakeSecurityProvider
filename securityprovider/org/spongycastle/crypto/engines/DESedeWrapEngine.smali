.class public Lorg/spongycastle/crypto/engines/DESedeWrapEngine;
.super Ljava/lang/Object;
.source "DESedeWrapEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/Wrapper;


# static fields
.field private static final IV2:[B


# instance fields
.field digest:[B

.field private engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lorg/spongycastle/crypto/params/KeyParameter;

.field private paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

.field sha1:Lorg/spongycastle/crypto/Digest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        -0x23t
        -0x5et
        0x2ct
        0x79t
        -0x18t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA1()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->sha1:Lorg/spongycastle/crypto/Digest;

    .line 55
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    return-void
.end method

.method private calculateCMSKeyChecksum([B)[B
    .locals 5
    .param p1, "key"    # [B

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 316
    new-array v0, v4, [B

    .line 318
    .local v0, "result":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->sha1:Lorg/spongycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 319
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->sha1:Lorg/spongycastle/crypto/Digest;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-interface {v1, v2, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 321
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    return-object v0
.end method

.method private checkCMSKeyChecksum([B[B)Z
    .locals 1
    .param p1, "key"    # [B
    .param p2, "checksum"    # [B

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0
.end method

.method private static reverse([B)[B
    .locals 4
    .param p0, "bs"    # [B

    .prologue
    .line 342
    array-length v2, p0

    new-array v1, v2, [B

    .line 343
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 345
    array-length v2, p0

    add-int/lit8 v3, v0, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "DESede"

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    const/16 v4, 0x8

    .line 66
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    .line 67
    new-instance v2, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/engines/DESedeEngine;

    invoke-direct {v3}, Lorg/spongycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    .line 70
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 72
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 73
    .local v0, "pr":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 74
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    .line 81
    .end local v0    # "pr":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .local v1, "sr":Ljava/security/SecureRandom;
    :goto_0
    instance-of v2, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_2

    .line 83
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 85
    iget-boolean v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v2, :cond_0

    .line 90
    new-array v2, v4, [B

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 91
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 93
    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 115
    :cond_0
    return-void

    .line 78
    .end local v1    # "sr":Ljava/security/SecureRandom;
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .restart local v1    # "sr":Ljava/security/SecureRandom;
    goto :goto_0

    .line 96
    :cond_2
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_0

    .line 98
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 99
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 100
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 102
    iget-boolean v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v2, :cond_4

    .line 104
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v2, v2

    if-eq v2, v4, :cond_0

    .line 106
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "IV is not 8 octets"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You should not supply an IV for unwrapping"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public unwrap([BII)[B
    .locals 14
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 210
    iget-boolean v10, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v10, :cond_0

    .line 212
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Not set for unwrapping"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 215
    :cond_0
    if-nez p1, :cond_1

    .line 217
    new-instance v10, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v11, "Null pointer as ciphertext"

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 220
    :cond_1
    iget-object v10, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v6

    .line 221
    .local v6, "blockSize":I
    rem-int v10, p3, v6

    if-eqz v10, :cond_2

    .line 223
    new-instance v10, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ciphertext not multiple of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 244
    :cond_2
    new-instance v8, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/spongycastle/crypto/params/KeyParameter;

    sget-object v11, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v8, v10, v11}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 246
    .local v8, "param2":Lorg/spongycastle/crypto/params/ParametersWithIV;
    iget-object v10, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 248
    move/from16 v0, p3

    new-array v4, v0, [B

    .line 250
    .local v4, "TEMP3":[B
    const/4 v7, 0x0

    .local v7, "currentBytePos":I
    :goto_0
    move/from16 v0, p3

    if-eq v7, v0, :cond_3

    .line 252
    iget-object v10, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    add-int v11, p2, v7

    invoke-virtual {v10, p1, v11, v4, v7}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 250
    add-int/2addr v7, v6

    goto :goto_0

    .line 256
    :cond_3
    invoke-static {v4}, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    move-result-object v3

    .line 259
    .local v3, "TEMP2":[B
    const/16 v10, 0x8

    new-array v10, v10, [B

    iput-object v10, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 261
    array-length v10, v3

    add-int/lit8 v10, v10, -0x8

    new-array v2, v10, [B

    .line 263
    .local v2, "TEMP1":[B
    const/4 v10, 0x0

    iget-object v11, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    const/4 v12, 0x0

    const/16 v13, 0x8

    invoke-static {v3, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    const/16 v10, 0x8

    const/4 v11, 0x0

    array-length v12, v3

    add-int/lit8 v12, v12, -0x8

    invoke-static {v3, v10, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    new-instance v10, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v11, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v12, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v10, v11, v12}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    iput-object v10, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 270
    iget-object v10, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v10, v11, v12}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 272
    array-length v10, v2

    new-array v5, v10, [B

    .line 274
    .local v5, "WKCKS":[B
    const/4 v7, 0x0

    :goto_1
    array-length v10, v5

    if-eq v7, v10, :cond_4

    .line 276
    iget-object v10, p0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v10, v2, v7, v5, v7}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 274
    add-int/2addr v7, v6

    goto :goto_1

    .line 281
    :cond_4
    array-length v10, v5

    add-int/lit8 v10, v10, -0x8

    new-array v9, v10, [B

    .line 282
    .local v9, "result":[B
    const/16 v10, 0x8

    new-array v1, v10, [B

    .line 284
    .local v1, "CKStoBeVerified":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v5

    add-int/lit8 v12, v12, -0x8

    invoke-static {v5, v10, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    array-length v10, v5

    add-int/lit8 v10, v10, -0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v5, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    invoke-direct {p0, v9, v1}, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->checkCMSKeyChecksum([B[B)Z

    move-result v10

    if-nez v10, :cond_5

    .line 291
    new-instance v10, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v11, "Checksum inside ciphertext is corrupted"

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 296
    :cond_5
    return-object v9
.end method

.method public wrap([BII)[B
    .locals 16
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-nez v12, :cond_0

    .line 139
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Not initialized for wrapping"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 142
    :cond_0
    move/from16 v0, p3

    new-array v10, v0, [B

    .line 144
    .local v10, "keyToBeWrapped":[B
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v10, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v3

    .line 150
    .local v3, "CKS":[B
    array-length v12, v10

    array-length v13, v3

    add-int/2addr v12, v13

    new-array v7, v12, [B

    .line 152
    .local v7, "WKCKS":[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v10

    invoke-static {v10, v12, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    const/4 v12, 0x0

    array-length v13, v10

    array-length v14, v3

    invoke-static {v3, v12, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v8

    .line 160
    .local v8, "blockSize":I
    array-length v12, v7

    rem-int/2addr v12, v8

    if-eqz v12, :cond_1

    .line 162
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "Not multiple of block length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 165
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v12, v13, v14}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 167
    array-length v12, v7

    new-array v4, v12, [B

    .line 169
    .local v4, "TEMP1":[B
    const/4 v9, 0x0

    .local v9, "currentBytePos":I
    :goto_0
    array-length v12, v7

    if-eq v9, v12, :cond_2

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v12, v7, v9, v4, v9}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 169
    add-int/2addr v9, v8

    goto :goto_0

    .line 175
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v12, v12

    array-length v13, v4

    add-int/2addr v12, v13

    new-array v5, v12, [B

    .line 177
    .local v5, "TEMP2":[B
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v15, v15

    invoke-static {v12, v13, v5, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v13, v13

    array-length v14, v4

    invoke-static {v4, v12, v5, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    invoke-static {v5}, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    move-result-object v6

    .line 186
    .local v6, "TEMP3":[B
    new-instance v11, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->param:Lorg/spongycastle/crypto/params/KeyParameter;

    sget-object v13, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v11, v12, v13}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 188
    .local v11, "param2":Lorg/spongycastle/crypto/params/ParametersWithIV;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v11}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 190
    const/4 v9, 0x0

    :goto_1
    array-length v12, v6

    if-eq v9, v12, :cond_3

    .line 192
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/DESedeWrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v12, v6, v9, v6, v9}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 190
    add-int/2addr v9, v8

    goto :goto_1

    .line 195
    :cond_3
    return-object v6
.end method
