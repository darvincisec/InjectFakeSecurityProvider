.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;
.super Ljava/lang/Object;
.source "McElieceKobaraImaiCipher.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageEncryptor;


# static fields
.field private static final DEFAULT_PRNG_NAME:Ljava/lang/String; = "SHA1PRNG"

.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2.3"

.field public static final PUBLIC_CONSTANT:[B


# instance fields
.field private forEncryption:Z

.field private k:I

.field key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

.field private messDigest:Lorg/spongycastle/crypto/Digest;

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "a predetermined public constant"

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initCipherDecrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V
    .locals 1
    .param p1, "privKey"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    .prologue
    .line 114
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/mceliece/Utils;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    .line 115
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    .line 116
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    .line 117
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    .line 118
    return-void
.end method

.method private initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V
    .locals 1
    .param p1, "pubKey"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    .prologue
    .line 105
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getDigest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/mceliece/Utils;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    .line 106
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    .line 107
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    .line 108
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    .line 110
    return-void
.end method


# virtual methods
.method public getKeySize(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;)I
    .locals 2
    .param p1, "key"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .prologue
    .line 91
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    .end local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->getN()I

    move-result v0

    .line 98
    :goto_0
    return v0

    .line 96
    .restart local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 98
    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    .end local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->getN()I

    move-result v0

    goto :goto_0

    .line 100
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
    .line 56
    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->forEncryption:Z

    .line 57
    if-eqz p1, :cond_1

    .line 59
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 61
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 63
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    .line 64
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 65
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    .line 81
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 70
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    .line 71
    check-cast p2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 72
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    invoke-direct {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    goto :goto_0

    .line 77
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    .line 78
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-direct {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->initCipherDecrypt(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    goto :goto_0
.end method

.method public messageDecrypt([B)[B
    .locals 30
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 222
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->forEncryption:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    .line 224
    new-instance v27, Ljava/lang/IllegalStateException;

    const-string v28, "cipher initialised for decryption"

    invoke-direct/range {v27 .. v28}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 227
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    move/from16 v27, v0

    shr-int/lit8 v22, v27, 0x3

    .line 229
    .local v22, "nDiv8":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 231
    new-instance v27, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v28, "Bad Padding: Ciphertext too short."

    invoke-direct/range {v27 .. v28}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 234
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    .line 235
    .local v6, "c2Len":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    move/from16 v27, v0

    shr-int/lit8 v9, v27, 0x3

    .line 236
    .local v9, "c4Len":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v27, v0

    sub-int v14, v27, v22

    .line 240
    .local v14, "c6Len":I
    if-lez v14, :cond_3

    .line 242
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v13

    .line 243
    .local v13, "c6EncC4":[[B
    const/16 v27, 0x0

    aget-object v12, v13, v27

    .line 244
    .local v12, "c6":[B
    const/16 v27, 0x1

    aget-object v17, v13, v27

    .line 253
    .end local v13    # "c6EncC4":[[B
    .local v17, "encC4":[B
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v18

    .line 256
    .local v18, "encC4Vec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    move-object/from16 v27, v0

    check-cast v27, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->decryptionPrimitive(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v10

    .line 258
    .local v10, "c4z":[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    const/16 v27, 0x0

    aget-object v27, v10, v27

    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v8

    .line 259
    .local v8, "c4":[B
    const/16 v27, 0x1

    aget-object v26, v10, v27

    .line 262
    .local v26, "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    array-length v0, v8

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_2

    .line 265
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-static {v8, v0, v9}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->subArray([BII)[B

    move-result-object v8

    .line 269
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->decode(IILorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[B

    move-result-object v11

    .line 272
    .local v11, "c5":[B
    invoke-static {v12, v11}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v15

    .line 273
    .local v15, "c6c5c4":[B
    invoke-static {v15, v8}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v15

    .line 277
    array-length v0, v15

    move/from16 v27, v0

    sub-int v4, v27, v6

    .line 278
    .local v4, "c1Len":I
    invoke-static {v15, v6}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v7

    .line 279
    .local v7, "c2c1":[[B
    const/16 v27, 0x0

    aget-object v5, v7, v27

    .line 280
    .local v5, "c2":[B
    const/16 v27, 0x1

    aget-object v3, v7, v27

    .line 283
    .local v3, "c1":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 284
    .local v23, "rPrime":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    array-length v0, v3

    move/from16 v29, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v3, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 288
    add-int/lit8 v19, v6, -0x1

    .local v19, "i":I
    :goto_1
    if-ltz v19, :cond_4

    .line 290
    aget-byte v27, v23, v19

    aget-byte v28, v5, v19

    xor-int v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v23, v19

    .line 288
    add-int/lit8 v19, v19, -0x1

    goto :goto_1

    .line 248
    .end local v3    # "c1":[B
    .end local v4    # "c1Len":I
    .end local v5    # "c2":[B
    .end local v7    # "c2c1":[[B
    .end local v8    # "c4":[B
    .end local v10    # "c4z":[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .end local v11    # "c5":[B
    .end local v12    # "c6":[B
    .end local v15    # "c6c5c4":[B
    .end local v17    # "encC4":[B
    .end local v18    # "encC4Vec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .end local v19    # "i":I
    .end local v23    # "rPrime":[B
    .end local v26    # "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    :cond_3
    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v12, v0, [B

    .line 249
    .restart local v12    # "c6":[B
    move-object/from16 v17, p1

    .restart local v17    # "encC4":[B
    goto/16 :goto_0

    .line 294
    .restart local v3    # "c1":[B
    .restart local v4    # "c1Len":I
    .restart local v5    # "c2":[B
    .restart local v7    # "c2c1":[[B
    .restart local v8    # "c4":[B
    .restart local v10    # "c4z":[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .restart local v11    # "c5":[B
    .restart local v15    # "c6c5c4":[B
    .restart local v18    # "encC4Vec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .restart local v19    # "i":I
    .restart local v23    # "rPrime":[B
    .restart local v26    # "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    :cond_4
    new-instance v24, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v27, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct/range {v27 .. v27}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 297
    .local v24, "sr0":Lorg/spongycastle/crypto/prng/DigestRandomGenerator;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 300
    new-array v0, v4, [B

    move-object/from16 v20, v0

    .line 301
    .local v20, "mConstPrime":[B
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 304
    add-int/lit8 v19, v4, -0x1

    :goto_2
    if-ltz v19, :cond_5

    .line 306
    aget-byte v27, v20, v19

    aget-byte v28, v3, v19

    xor-int v27, v27, v28

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v27, v0

    aput-byte v27, v20, v19

    .line 304
    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    .line 309
    :cond_5
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_6

    .line 311
    new-instance v27, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v28, "Bad Padding: invalid ciphertext"

    invoke-direct/range {v27 .. v28}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 314
    :cond_6
    sget-object v27, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    sub-int v27, v4, v27

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->split([BI)[[B

    move-result-object v25

    .line 316
    .local v25, "temp":[[B
    const/16 v27, 0x0

    aget-object v21, v25, v27

    .line 317
    .local v21, "mr":[B
    const/16 v27, 0x1

    aget-object v16, v25, v27

    .line 319
    .local v16, "constPrime":[B
    sget-object v27, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->equals([B[B)Z

    move-result v27

    if-nez v27, :cond_7

    .line 321
    new-instance v27, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v28, "Bad Padding: invalid ciphertext"

    invoke-direct/range {v27 .. v28}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 324
    :cond_7
    return-object v21
.end method

.method public messageEncrypt([B)[B
    .locals 27
    .param p1, "input"    # [B

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->forEncryption:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 124
    new-instance v24, Ljava/lang/IllegalStateException;

    const-string v25, "cipher initialised for decryption"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 127
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    .line 128
    .local v8, "c2Len":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    move/from16 v24, v0

    shr-int/lit8 v11, v24, 0x3

    .line 129
    .local v11, "c4Len":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/math/BigInteger;->bitLength()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    shr-int/lit8 v14, v24, 0x3

    .line 132
    .local v14, "c5Len":I
    add-int v24, v11, v14

    sub-int v24, v24, v8

    sget-object v25, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    sub-int v20, v24, v25

    .line 133
    .local v20, "mLen":I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 135
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    .line 138
    :cond_1
    sget-object v24, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int v6, v20, v24

    .line 139
    .local v6, "c1Len":I
    add-int v24, v6, v8

    sub-int v24, v24, v11

    sub-int v16, v24, v14

    .line 142
    .local v16, "c6Len":I
    new-array v0, v6, [B

    move-object/from16 v19, v0

    .line 143
    .local v19, "mConst":[B
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v19

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    sget-object v24, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    const/16 v25, 0x0

    sget-object v26, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->PUBLIC_CONSTANT:[B

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    new-array v0, v8, [B

    move-object/from16 v21, v0

    .line 149
    .local v21, "r":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->sr:Ljava/security/SecureRandom;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 153
    new-instance v22, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;

    new-instance v24, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct/range {v24 .. v24}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 156
    .local v22, "sr0":Lorg/spongycastle/crypto/prng/DigestRandomGenerator;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->addSeedMaterial([B)V

    .line 159
    new-array v5, v6, [B

    .line 160
    .local v5, "c1":[B
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([B)V

    .line 163
    add-int/lit8 v18, v6, -0x1

    .local v18, "i":I
    :goto_0
    if-ltz v18, :cond_2

    .line 165
    aget-byte v24, v5, v18

    aget-byte v25, v19, v18

    xor-int v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v5, v18

    .line 163
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .line 169
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v24

    move/from16 v0, v24

    new-array v7, v0, [B

    .line 170
    .local v7, "c2":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    array-length v0, v5

    move/from16 v26, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v5, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->messDigest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-interface {v0, v7, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 174
    add-int/lit8 v18, v8, -0x1

    :goto_1
    if-ltz v18, :cond_3

    .line 176
    aget-byte v24, v7, v18

    aget-byte v25, v21, v18

    xor-int v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v7, v18

    .line 174
    add-int/lit8 v18, v18, -0x1

    goto :goto_1

    .line 180
    :cond_3
    invoke-static {v7, v5}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v9

    .line 185
    .local v9, "c2c1":[B
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v15, v0, [B

    .line 186
    .local v15, "c6":[B
    if-lez v16, :cond_4

    .line 188
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 189
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-static {v9, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    :cond_4
    new-array v13, v14, [B

    .line 193
    .local v13, "c5":[B
    const/16 v24, 0x0

    move/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v9, v0, v13, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    new-array v10, v11, [B

    .line 196
    .local v10, "c4":[B
    add-int v24, v16, v14

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v9, v0, v10, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->k:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v12

    .line 202
    .local v12, "c4Vec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->n:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->t:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v13}, Lorg/spongycastle/pqc/crypto/mceliece/Conversions;->encode(II[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v23

    .line 205
    .local v23, "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKobaraImaiCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;

    move-object/from16 v24, v0

    check-cast v24, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v12, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;->encryptionPrimitive(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v24

    .line 206
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v17

    .line 209
    .local v17, "encC4":[B
    if-lez v16, :cond_5

    .line 212
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lorg/spongycastle/pqc/math/linearalgebra/ByteUtils;->concatenate([B[B)[B

    move-result-object v17

    .line 215
    .end local v17    # "encC4":[B
    :cond_5
    return-object v17
.end method
