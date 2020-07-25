.class public Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;
.super Ljava/lang/Object;
.source "CramerShoupCoreEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;
    }
.end annotation


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private forEncryption:Z

.field private key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

.field private label:Ljava/lang/String;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    return-void
.end method

.method private generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 279
    sget-object v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->ONE:Ljava/math/BigInteger;

    sget-object v1, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private isValidMessage(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 1
    .param p1, "m"    # Ljava/math/BigInteger;
    .param p2, "p"    # Ljava/math/BigInteger;

    .prologue
    .line 287
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public convertInput([BII)Ljava/math/BigInteger;
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .prologue
    .line 113
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le p3, v2, :cond_0

    .line 115
    new-instance v2, Lorg/spongycastle/crypto/DataLengthException;

    const-string v3, "input too large for Cramer Shoup cipher."

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne p3, v2, :cond_1

    iget-boolean v2, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-eqz v2, :cond_1

    .line 119
    new-instance v2, Lorg/spongycastle/crypto/DataLengthException;

    const-string v3, "input too large for Cramer Shoup cipher."

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_1
    if-nez p2, :cond_2

    array-length v2, p1

    if-eq p3, v2, :cond_3

    .line 126
    :cond_2
    new-array v0, p3, [B

    .line 128
    .local v0, "block":[B
    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 136
    .local v1, "res":Ljava/math/BigInteger;
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_4

    .line 138
    new-instance v2, Lorg/spongycastle/crypto/DataLengthException;

    const-string v3, "input too large for Cramer Shoup cipher."

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    .end local v0    # "block":[B
    .end local v1    # "res":Ljava/math/BigInteger;
    :cond_3
    move-object v0, p1

    .restart local v0    # "block":[B
    goto :goto_0

    .line 141
    .restart local v1    # "res":Ljava/math/BigInteger;
    :cond_4
    return-object v1
.end method

.method public convertOutput(Ljava/math/BigInteger;)[B
    .locals 6
    .param p1, "result"    # Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 148
    .local v0, "output":[B
    iget-boolean v2, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-nez v2, :cond_1

    .line 150
    aget-byte v2, v0, v4

    if-nez v2, :cond_0

    array-length v2, v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->getOutputBlockSize()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 152
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    .line 154
    .local v1, "tmp":[B
    array-length v2, v1

    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    .end local v1    # "tmp":[B
    :goto_0
    return-object v1

    .line 159
    :cond_0
    array-length v2, v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->getOutputBlockSize()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 161
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->getOutputBlockSize()I

    move-result v2

    new-array v1, v2, [B

    .line 163
    .restart local v1    # "tmp":[B
    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 170
    .end local v1    # "tmp":[B
    :cond_1
    aget-byte v2, v0, v4

    if-nez v2, :cond_2

    .line 172
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    .line 174
    .restart local v1    # "tmp":[B
    array-length v2, v1

    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .end local v1    # "tmp":[B
    :cond_2
    move-object v1, v0

    .line 180
    goto :goto_0
.end method

.method public decryptBlock(Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;)Ljava/math/BigInteger;
    .locals 16
    .param p1, "input"    # Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v7, 0x0

    .line 239
    .local v7, "result":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->isPrivate()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    instance-of v12, v12, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;

    if-eqz v12, :cond_1

    .line 241
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    check-cast v8, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;

    .line 243
    .local v8, "sk":Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v12

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v6

    .line 245
    .local v6, "p":Ljava/math/BigInteger;
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v12

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getH()Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    .line 246
    .local v2, "digest":Lorg/spongycastle/crypto/Digest;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->getU1()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    .line 247
    .local v9, "u1Bytes":[B
    const/4 v12, 0x0

    array-length v13, v9

    invoke-interface {v2, v9, v12, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 248
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->getU2()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    .line 249
    .local v10, "u2Bytes":[B
    const/4 v12, 0x0

    array-length v13, v10

    invoke-interface {v2, v10, v12, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 250
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->getE()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 251
    .local v3, "eBytes":[B
    const/4 v12, 0x0

    array-length v13, v3

    invoke-interface {v2, v3, v12, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 252
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 254
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 255
    .local v4, "lBytes":[B
    const/4 v12, 0x0

    array-length v13, v4

    invoke-interface {v2, v4, v12, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 257
    .end local v4    # "lBytes":[B
    :cond_0
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v12

    new-array v5, v12, [B

    .line 258
    .local v5, "out":[B
    const/4 v12, 0x0

    invoke-interface {v2, v5, v12}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 260
    new-instance v1, Ljava/math/BigInteger;

    const/4 v12, 0x1

    invoke-direct {v1, v12, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 261
    .local v1, "a":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u1:Ljava/math/BigInteger;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX1()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY1()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u2:Ljava/math/BigInteger;

    .line 262
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX2()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY2()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 265
    .local v11, "v":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->v:Ljava/math/BigInteger;

    invoke-virtual {v12, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 267
    move-object/from16 v0, p1

    iget-object v12, v0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->e:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;->u1:Ljava/math/BigInteger;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getZ()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 274
    .end local v1    # "a":Ljava/math/BigInteger;
    .end local v2    # "digest":Lorg/spongycastle/crypto/Digest;
    .end local v3    # "eBytes":[B
    .end local v5    # "out":[B
    .end local v6    # "p":Ljava/math/BigInteger;
    .end local v8    # "sk":Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;
    .end local v9    # "u1Bytes":[B
    .end local v10    # "u2Bytes":[B
    .end local v11    # "v":Ljava/math/BigInteger;
    :cond_1
    return-object v7

    .line 271
    .restart local v1    # "a":Ljava/math/BigInteger;
    .restart local v2    # "digest":Lorg/spongycastle/crypto/Digest;
    .restart local v3    # "eBytes":[B
    .restart local v5    # "out":[B
    .restart local v6    # "p":Ljava/math/BigInteger;
    .restart local v8    # "sk":Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;
    .restart local v9    # "u1Bytes":[B
    .restart local v10    # "u2Bytes":[B
    .restart local v11    # "v":Ljava/math/BigInteger;
    :cond_2
    new-instance v12, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;

    const-string v13, "Sorry, that ciphertext is not correct"

    invoke-direct {v12, v13}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public encryptBlock(Ljava/math/BigInteger;)Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    .locals 26
    .param p1, "input"    # Ljava/math/BigInteger;

    .prologue
    .line 186
    const/4 v15, 0x0

    .line 188
    .local v15, "result":Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->isPrivate()Z

    move-result v23

    if-nez v23, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 190
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    check-cast v13, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    .line 191
    .local v13, "pk":Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;
    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v12

    .line 192
    .local v12, "p":Ljava/math/BigInteger;
    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getG1()Ljava/math/BigInteger;

    move-result-object v7

    .line 193
    .local v7, "g1":Ljava/math/BigInteger;
    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getG2()Ljava/math/BigInteger;

    move-result-object v8

    .line 195
    .local v8, "g2":Ljava/math/BigInteger;
    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getH()Ljava/math/BigInteger;

    move-result-object v9

    .line 197
    .local v9, "h":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->isValidMessage(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v16, v15

    .end local v15    # "result":Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    .local v16, "result":Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    move-object/from16 v17, v15

    .line 230
    .end local v7    # "g1":Ljava/math/BigInteger;
    .end local v8    # "g2":Ljava/math/BigInteger;
    .end local v9    # "h":Ljava/math/BigInteger;
    .end local v12    # "p":Ljava/math/BigInteger;
    .end local v13    # "pk":Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;
    .end local v16    # "result":Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    .local v17, "result":Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    :goto_0
    return-object v17

    .line 202
    .end local v17    # "result":Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    .restart local v7    # "g1":Ljava/math/BigInteger;
    .restart local v8    # "g2":Ljava/math/BigInteger;
    .restart local v9    # "h":Ljava/math/BigInteger;
    .restart local v12    # "p":Ljava/math/BigInteger;
    .restart local v13    # "pk":Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;
    .restart local v15    # "result":Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->random:Ljava/security/SecureRandom;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v12, v1}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->generateRandomElement(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v14

    .line 206
    .local v14, "r":Ljava/math/BigInteger;
    invoke-virtual {v7, v14, v12}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    .line 207
    .local v18, "u1":Ljava/math/BigInteger;
    invoke-virtual {v8, v14, v12}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    .line 208
    .local v20, "u2":Ljava/math/BigInteger;
    invoke-virtual {v9, v14, v12}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 210
    .local v5, "e":Ljava/math/BigInteger;
    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getH()Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    .line 211
    .local v4, "digest":Lorg/spongycastle/crypto/Digest;
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v19

    .line 212
    .local v19, "u1Bytes":[B
    const/16 v23, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v4, v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 213
    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v21

    .line 214
    .local v21, "u2Bytes":[B
    const/16 v23, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v4, v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 215
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 216
    .local v6, "eBytes":[B
    const/16 v23, 0x0

    array-length v0, v6

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v4, v6, v0, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 220
    .local v10, "lBytes":[B
    const/16 v23, 0x0

    array-length v0, v10

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v4, v10, v0, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 222
    .end local v10    # "lBytes":[B
    :cond_1
    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v23

    move/from16 v0, v23

    new-array v11, v0, [B

    .line 223
    .local v11, "out":[B
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v4, v11, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 224
    new-instance v3, Ljava/math/BigInteger;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-direct {v3, v0, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 226
    .local v3, "a":Ljava/math/BigInteger;
    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getC()Ljava/math/BigInteger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v12}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual {v13}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual {v14, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v12}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    .line 228
    .local v22, "v":Ljava/math/BigInteger;
    new-instance v15, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;

    .end local v15    # "result":Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v15, v0, v1, v5, v2}, Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .end local v3    # "a":Ljava/math/BigInteger;
    .end local v4    # "digest":Lorg/spongycastle/crypto/Digest;
    .end local v5    # "e":Ljava/math/BigInteger;
    .end local v6    # "eBytes":[B
    .end local v7    # "g1":Ljava/math/BigInteger;
    .end local v8    # "g2":Ljava/math/BigInteger;
    .end local v9    # "h":Ljava/math/BigInteger;
    .end local v11    # "out":[B
    .end local v12    # "p":Ljava/math/BigInteger;
    .end local v13    # "pk":Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;
    .end local v14    # "r":Ljava/math/BigInteger;
    .end local v18    # "u1":Ljava/math/BigInteger;
    .end local v19    # "u1Bytes":[B
    .end local v20    # "u2":Ljava/math/BigInteger;
    .end local v21    # "u2Bytes":[B
    .end local v22    # "v":Ljava/math/BigInteger;
    .restart local v15    # "result":Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    :cond_2
    move-object/from16 v16, v15

    .end local v15    # "result":Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    .restart local v16    # "result":Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    move-object/from16 v17, v15

    .line 230
    .end local v16    # "result":Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    .restart local v17    # "result":Lorg/spongycastle/crypto/engines/CramerShoupCiphertext;
    goto/16 :goto_0
.end method

.method public getInputBlockSize()I
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 80
    .local v0, "bitSize":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 82
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    .line 86
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 101
    .local v0, "bitSize":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 103
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    .line 107
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "providedRandom":Ljava/security/SecureRandom;
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 55
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 57
    .local v1, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    .line 58
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 65
    .end local v1    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->random:Ljava/security/SecureRandom;

    .line 66
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->forEncryption:Z

    .line 67
    return-void

    .line 62
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    check-cast p2, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->key:Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 40
    iput-object p3, p0, Lorg/spongycastle/crypto/engines/CramerShoupCoreEngine;->label:Ljava/lang/String;

    .line 41
    return-void
.end method

.method protected initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 0
    .param p1, "needed"    # Z
    .param p2, "provided"    # Ljava/security/SecureRandom;

    .prologue
    .line 292
    if-nez p1, :cond_1

    const/4 p2, 0x0

    .end local p2    # "provided":Ljava/security/SecureRandom;
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "provided":Ljava/security/SecureRandom;
    :cond_1
    if-nez p2, :cond_0

    new-instance p2, Ljava/security/SecureRandom;

    .end local p2    # "provided":Ljava/security/SecureRandom;
    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method
