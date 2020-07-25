.class public Lorg/spongycastle/crypto/engines/RC2WrapEngine;
.super Ljava/lang/Object;
.source "RC2WrapEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/Wrapper;


# static fields
.field private static final IV2:[B


# instance fields
.field digest:[B

.field private engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lorg/spongycastle/crypto/CipherParameters;

.field private paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

.field sha1:Lorg/spongycastle/crypto/Digest;

.field private sr:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->IV2:[B

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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA1()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->sha1:Lorg/spongycastle/crypto/Digest;

    .line 47
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->digest:[B

    return-void
.end method

.method private calculateCMSKeyChecksum([B)[B
    .locals 5
    .param p1, "key"    # [B

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 358
    new-array v0, v4, [B

    .line 360
    .local v0, "result":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->sha1:Lorg/spongycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 361
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->sha1:Lorg/spongycastle/crypto/Digest;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->digest:[B

    invoke-interface {v1, v2, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 363
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->digest:[B

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    return-object v0
.end method

.method private checkCMSKeyChecksum([B[B)Z
    .locals 1
    .param p1, "key"    # [B
    .param p2, "checksum"    # [B

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "RC2"

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    const/16 v3, 0x8

    .line 57
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    .line 58
    new-instance v1, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/engines/RC2Engine;

    invoke-direct {v2}, Lorg/spongycastle/crypto/engines/RC2Engine;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    .line 60
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 62
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 63
    .local v0, "pWithR":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->sr:Ljava/security/SecureRandom;

    .line 64
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 71
    .end local v0    # "pWithR":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    :goto_0
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_3

    .line 73
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 74
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    .line 75
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->param:Lorg/spongycastle/crypto/CipherParameters;

    .line 77
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    array-length v1, v1

    if-eq v1, v3, :cond_4

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IV is not 8 octets"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->sr:Ljava/security/SecureRandom;

    goto :goto_0

    .line 86
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You should not supply an IV for unwrapping"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_3
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->param:Lorg/spongycastle/crypto/CipherParameters;

    .line 94
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    if-eqz v1, :cond_4

    .line 99
    new-array v1, v3, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    .line 101
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->sr:Ljava/security/SecureRandom;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 103
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->param:Lorg/spongycastle/crypto/CipherParameters;

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 107
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_4
    return-void
.end method

.method public unwrap([BII)[B
    .locals 17
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    if-eqz v13, :cond_0

    .line 233
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Not set for unwrapping"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 236
    :cond_0
    if-nez p1, :cond_1

    .line 238
    new-instance v13, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v14, "Null pointer as ciphertext"

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 241
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v13}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v13

    rem-int v13, p3, v13

    if-eqz v13, :cond_2

    .line 243
    new-instance v13, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ciphertext not multiple of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    .line 244
    invoke-virtual {v15}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 263
    :cond_2
    new-instance v11, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->param:Lorg/spongycastle/crypto/CipherParameters;

    sget-object v14, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->IV2:[B

    invoke-direct {v11, v13, v14}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 265
    .local v11, "param2":Lorg/spongycastle/crypto/params/ParametersWithIV;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v11}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 267
    move/from16 v0, p3

    new-array v8, v0, [B

    .line 269
    .local v8, "TEMP3":[B
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v8, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v13, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v14

    div-int/2addr v13, v14

    if-ge v10, v13, :cond_3

    .line 273
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v13}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v13

    mul-int v9, v10, v13

    .line 275
    .local v9, "currentBytePos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v13, v8, v9, v8, v9}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 271
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 279
    .end local v9    # "currentBytePos":I
    :cond_3
    array-length v13, v8

    new-array v7, v13, [B

    .line 281
    .local v7, "TEMP2":[B
    const/4 v10, 0x0

    :goto_1
    array-length v13, v8

    if-ge v10, v13, :cond_4

    .line 283
    array-length v13, v8

    add-int/lit8 v14, v10, 0x1

    sub-int/2addr v13, v14

    aget-byte v13, v8, v13

    aput-byte v13, v7, v10

    .line 281
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 288
    :cond_4
    const/16 v13, 0x8

    new-array v13, v13, [B

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    .line 290
    array-length v13, v7

    add-int/lit8 v13, v13, -0x8

    new-array v6, v13, [B

    .line 292
    .local v6, "TEMP1":[B
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    const/4 v15, 0x0

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-static {v7, v13, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    const/16 v13, 0x8

    const/4 v14, 0x0

    array-length v15, v7

    add-int/lit8 v15, v15, -0x8

    invoke-static {v7, v13, v6, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    new-instance v13, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->param:Lorg/spongycastle/crypto/CipherParameters;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    invoke-direct {v13, v14, v15}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v13, v14, v15}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 301
    array-length v13, v6

    new-array v5, v13, [B

    .line 303
    .local v5, "LCEKPADICV":[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v6

    invoke-static {v6, v13, v5, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    const/4 v10, 0x0

    :goto_2
    array-length v13, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v14}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v14

    div-int/2addr v13, v14

    if-ge v10, v13, :cond_5

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v13}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v13

    mul-int v9, v10, v13

    .line 309
    .restart local v9    # "currentBytePos":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v13, v5, v9, v5, v9}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 305
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 316
    .end local v9    # "currentBytePos":I
    :cond_5
    array-length v13, v5

    add-int/lit8 v13, v13, -0x8

    new-array v12, v13, [B

    .line 317
    .local v12, "result":[B
    const/16 v13, 0x8

    new-array v4, v13, [B

    .line 319
    .local v4, "CKStoBeVerified":[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    array-length v15, v5

    add-int/lit8 v15, v15, -0x8

    invoke-static {v5, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    array-length v13, v5

    add-int/lit8 v13, v13, -0x8

    const/4 v14, 0x0

    const/16 v15, 0x8

    invoke-static {v5, v13, v4, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->checkCMSKeyChecksum([B[B)Z

    move-result v13

    if-nez v13, :cond_6

    .line 329
    new-instance v13, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v14, "Checksum inside ciphertext is corrupted"

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 333
    :cond_6
    array-length v13, v12

    const/4 v14, 0x0

    aget-byte v14, v12, v14

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v14, v14, 0x1

    sub-int/2addr v13, v14

    const/4 v14, 0x7

    if-le v13, v14, :cond_7

    .line 335
    new-instance v13, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "too many pad bytes ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v12

    const/16 v16, 0x0

    aget-byte v16, v12, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 340
    :cond_7
    const/4 v13, 0x0

    aget-byte v13, v12, v13

    new-array v3, v13, [B

    .line 341
    .local v3, "CEK":[B
    const/4 v13, 0x1

    const/4 v14, 0x0

    array-length v15, v3

    invoke-static {v12, v13, v3, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    return-object v3
.end method

.method public wrap([BII)[B
    .locals 21
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->forWrapping:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 132
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Not initialized for wrapping"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 135
    :cond_0
    add-int/lit8 v13, p3, 0x1

    .line 136
    .local v13, "length":I
    rem-int/lit8 v17, v13, 0x8

    if-eqz v17, :cond_1

    .line 138
    rem-int/lit8 v17, v13, 0x8

    rsub-int/lit8 v17, v17, 0x8

    add-int v13, v13, v17

    .line 141
    :cond_1
    new-array v12, v13, [B

    .line 143
    .local v12, "keyToBeWrapped":[B
    const/16 v17, 0x0

    move/from16 v0, p3

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v12, v17

    .line 144
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v17

    move/from16 v3, p3

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    array-length v0, v12

    move/from16 v17, v0

    sub-int v17, v17, p3

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    new-array v15, v0, [B

    .line 148
    .local v15, "pad":[B
    array-length v0, v15

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->sr:Ljava/security/SecureRandom;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 151
    const/16 v17, 0x0

    add-int/lit8 v18, p3, 0x1

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v15, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v4

    .line 158
    .local v4, "CKS":[B
    array-length v0, v12

    move/from16 v17, v0

    array-length v0, v4

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v8, v0, [B

    .line 160
    .local v8, "WKCKS":[B
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v12, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    const/16 v17, 0x0

    array-length v0, v12

    move/from16 v18, v0

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v4, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 167
    .local v5, "TEMP1":[B
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v8

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v8, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    array-length v0, v8

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v18

    div-int v14, v17, v18

    .line 170
    .local v14, "noOfBlocks":I
    array-length v0, v8

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v18

    rem-int v10, v17, v18

    .line 172
    .local v10, "extraBytes":I
    if-eqz v10, :cond_3

    .line 174
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Not multiple of block length"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 177
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->paramPlusIV:Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 179
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v14, :cond_4

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v17

    mul-int v9, v11, v17

    .line 183
    .local v9, "currentBytePos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v9, v5, v9}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 179
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 187
    .end local v9    # "currentBytePos":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    array-length v0, v5

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v6, v0, [B

    .line 189
    .local v6, "TEMP2":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->iv:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v7, v0, [B

    .line 195
    .local v7, "TEMP3":[B
    const/4 v11, 0x0

    :goto_1
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_5

    .line 197
    array-length v0, v6

    move/from16 v17, v0

    add-int/lit8 v18, v11, 0x1

    sub-int v17, v17, v18

    aget-byte v17, v6, v17

    aput-byte v17, v7, v11

    .line 195
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 204
    :cond_5
    new-instance v16, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->param:Lorg/spongycastle/crypto/CipherParameters;

    move-object/from16 v17, v0

    sget-object v18, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->IV2:[B

    invoke-direct/range {v16 .. v18}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 206
    .local v16, "param2":Lorg/spongycastle/crypto/params/ParametersWithIV;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 208
    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v17, v14, 0x1

    move/from16 v0, v17

    if-ge v11, v0, :cond_6

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v17

    mul-int v9, v11, v17

    .line 212
    .restart local v9    # "currentBytePos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/RC2WrapEngine;->engine:Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v9, v7, v9}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 208
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 215
    .end local v9    # "currentBytePos":I
    :cond_6
    return-object v7
.end method
