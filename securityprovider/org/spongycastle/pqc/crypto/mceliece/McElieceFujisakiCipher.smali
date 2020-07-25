.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;
.super Ljava/lang/Object;
.source "McElieceFujisakiCipher.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageEncryptor;


# static fields
.field private static final DEFAULT_PRNG_NAME:Ljava/lang/String; = "SHA1PRNG"

.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2.1"


# instance fields
.field private forEncryption:Z

.field private k:I

.field key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

.field private messDigest:Lorg/spongycastle/crypto/Digest;

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initCipherDecrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V
    .locals 1
    .param p1, "privKey"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    .prologue
    .line 106
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/mceliece/Utils;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    .line 107
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->n:I

    .line 108
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->t:I

    .line 109
    return-void
.end method

.method private initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .locals 1
    .param p1, "pubKey"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    .line 97
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/mceliece/Utils;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    .line 98
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->n:I

    .line 99
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->k:I

    .line 100
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->t:I

    .line 101
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getKeySize(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I
    .locals 2
    .param p1, "key"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 81
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 83
    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    .end local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 85
    .restart local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 87
    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    .end local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    goto :goto_0

    .line 89
    .restart local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 50
    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->forEncryption:Z

    .line 51
    if-eqz p1, :cond_1

    .line 53
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 55
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 57
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    .line 58
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 59
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    .line 74
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 64
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    .line 65
    check-cast p2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 66
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    .line 71
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 72
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-direct {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->initCipherDecrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    goto :goto_0
.end method

.method public messageDecrypt([B)[B
    .locals 20
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 163
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->forEncryption:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 165
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "cipher initialised for decryption"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 168
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->n:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x7

    shr-int/lit8 v4, v17, 0x3

    .line 169
    .local v4, "c1Len":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    sub-int v7, v17, v4

    .line 172
    .local v7, "c2Len":I
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v5

    .line 173
    .local v5, "c1c2":[[B
    const/16 v17, 0x0

    aget-object v3, v5, v17

    .line 174
    .local v3, "c1":[B
    const/16 v17, 0x1

    aget-object v6, v5, v17

    .line 177
    .local v6, "c2":[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->n:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v10

    .line 178
    .local v10, "hrmVec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    move-object/from16 v17, v0

    check-cast v17, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->decryptionPrimitive(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v8

    .line 179
    .local v8, "decC1":[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    const/16 v17, 0x0

    aget-object v17, v8, v17

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v13

    .line 181
    .local v13, "rBytes":[B
    const/16 v17, 0x1

    aget-object v16, v8, v17

    .line 184
    .local v16, "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    new-instance v15, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v17, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct/range {v17 .. v17}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 187
    .local v15, "sr0":Lorg/spongycastle/crypto/prng/DigestRandomGenerator;
    invoke-virtual {v15, v13}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 190
    new-array v12, v7, [B

    .line 191
    .local v12, "mBytes":[B
    invoke-virtual {v15, v12}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 194
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v7, :cond_1

    .line 196
    aget-byte v17, v12, v11

    aget-byte v18, v6, v11

    xor-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v12, v11

    .line 194
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 200
    :cond_1
    invoke-static {v13, v12}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v14

    .line 201
    .local v14, "rmBytes":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v17

    move/from16 v0, v17

    new-array v9, v0, [B

    .line 202
    .local v9, "hrm":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    array-length v0, v14

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v14, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v9, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->n:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->t:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->encode(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v10

    .line 210
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 212
    new-instance v17, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v18, "Bad Padding: invalid ciphertext"

    invoke-direct/range {v17 .. v18}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 216
    :cond_2
    return-object v12
.end method

.method public messageEncrypt([B)[B
    .locals 12
    .param p1, "input"    # [B

    .prologue
    const/4 v11, 0x0

    .line 114
    iget-boolean v9, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->forEncryption:Z

    if-nez v9, :cond_0

    .line 116
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "cipher initialised for decryption"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 120
    :cond_0
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget v9, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->k:I

    iget-object v10, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->sr:Ljava/security/SecureRandom;

    invoke-direct {v4, v9, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(ILjava/security/SecureRandom;)V

    .line 123
    .local v4, "r":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v5

    .line 126
    .local v5, "rBytes":[B
    invoke-static {v5, p1}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v6

    .line 129
    .local v6, "rm":[B
    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    array-length v10, v6

    invoke-interface {v9, v6, v11, v10}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 130
    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v9}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v2, v9, [B

    .line 131
    .local v2, "hrm":[B
    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v9, v2, v11}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 134
    iget v9, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->n:I

    iget v10, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->t:I

    invoke-static {v9, v10, v2}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->encode(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v8

    .line 137
    .local v8, "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceFujisakiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v9, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-static {v9, v4, v8}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->encryptionPrimitive(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v9

    .line 138
    invoke-virtual {v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v0

    .line 141
    .local v0, "c1":[B
    new-instance v7, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v9, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v9}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v7, v9}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 144
    .local v7, "sr0":Lorg/spongycastle/crypto/prng/DigestRandomGenerator;
    invoke-virtual {v7, v5}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 147
    array-length v9, p1

    new-array v1, v9, [B

    .line 148
    .local v1, "c2":[B
    invoke-virtual {v7, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 151
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, p1

    if-ge v3, v9, :cond_1

    .line 153
    aget-byte v9, v1, v3

    aget-byte v10, p1, v3

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v3

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v9

    return-object v9
.end method
