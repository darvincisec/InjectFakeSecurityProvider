.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;
.super Ljava/lang/Object;
.source "McElieceCipher.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/MessageEncryptor;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.1"


# instance fields
.field public cipherTextSize:I

.field private forEncryption:Z

.field private k:I

.field private key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

.field public maxPlainTextSize:I

.field private n:I

.field private sr:Ljava/security/SecureRandom;

.field private t:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeMessage(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[B
    .locals 6
    .param p1, "mr"    # Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 213
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v2

    .line 216
    .local v2, "mrBytes":[B
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    aget-byte v3, v2, v0

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 222
    :cond_0
    if-ltz v0, :cond_1

    aget-byte v3, v2, v0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 224
    :cond_1
    new-instance v3, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v4, "Bad Padding: invalid ciphertext"

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    :cond_2
    new-array v1, v0, [B

    .line 229
    .local v1, "mBytes":[B
    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    return-object v1
.end method

.method private computeMessageRepresentative([B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 5
    .param p1, "input"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 149
    iget v4, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->maxPlainTextSize:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v1, v4

    new-array v0, v1, [B

    .line 150
    .local v0, "data":[B
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    array-length v1, p1

    aput-byte v2, v0, v1

    .line 152
    iget v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    invoke-static {v1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v1

    return-object v1

    .end local v0    # "data":[B
    :cond_0
    move v1, v3

    .line 149
    goto :goto_0
.end method

.method private initCipherDecrypt(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;)V
    .locals 1
    .param p1, "privKey"    # Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    .prologue
    .line 118
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    .line 119
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    .line 121
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->maxPlainTextSize:I

    .line 122
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->cipherTextSize:I

    .line 123
    return-void
.end method

.method private initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V
    .locals 1
    .param p1, "pubKey"    # Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    .line 108
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    .line 109
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    .line 110
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getT()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->t:I

    .line 111
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->cipherTextSize:I

    .line 112
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->maxPlainTextSize:I

    .line 113
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getKeySize(Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;)I
    .locals 2
    .param p1, "key"    # Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    .prologue
    .line 91
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    .end local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getN()I

    move-result v0

    .line 98
    :goto_0
    return v0

    .line 96
    .restart local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    if-eqz v0, :cond_1

    .line 98
    check-cast p1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    .end local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getN()I

    move-result v0

    goto :goto_0

    .line 100
    .restart local p1    # "key":Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;
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
    .line 54
    iput-boolean p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->forEncryption:Z

    .line 55
    if-eqz p1, :cond_1

    .line 57
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 59
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 61
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    .line 62
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    .line 63
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-direct {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V

    .line 79
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 68
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    .line 69
    check-cast p2, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    .line 70
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-direct {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->initCipherEncrypt(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;)V

    goto :goto_0

    .line 75
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    .line 76
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v1, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    invoke-direct {p0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->initCipherDecrypt(Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;)V

    goto :goto_0
.end method

.method public messageDecrypt([B)[B
    .locals 21
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 165
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->forEncryption:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 167
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "cipher initialised for decryption"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 170
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->OS2VP(I[B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v17

    .line 171
    .local v17, "vec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v13, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;

    .line 172
    .local v13, "privKey":Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;
    invoke-virtual {v13}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getField()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v3

    .line 173
    .local v3, "field":Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    invoke-virtual {v13}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getGoppaPoly()Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v4

    .line 174
    .local v4, "gp":Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v13}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getSInv()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v15

    .line 175
    .local v15, "sInv":Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    invoke-virtual {v13}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getP1()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v10

    .line 176
    .local v10, "p1":Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    invoke-virtual {v13}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getP2()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v11

    .line 177
    .local v11, "p2":Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    invoke-virtual {v13}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getH()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v5

    .line 178
    .local v5, "h":Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    invoke-virtual {v13}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->getQInv()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v14

    .line 181
    .local v14, "qInv":[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    invoke-virtual {v10, v11}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->rightMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v9

    .line 184
    .local v9, "p":Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    invoke-virtual {v9}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->computeInverse()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v12

    .line 187
    .local v12, "pInv":Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 190
    .local v2, "cPInv":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v5, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->rightMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 193
    .local v16, "syndrome":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move-object/from16 v0, v16

    invoke-static {v0, v3, v4, v14}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode;->syndromeDecode(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v18

    .line 194
    .local v18, "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->add(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 197
    .local v7, "mSG":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v7, v10}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v7

    .end local v7    # "mSG":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    check-cast v7, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 198
    .restart local v7    # "mSG":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v18

    .end local v18    # "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    check-cast v18, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 201
    .restart local v18    # "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->k:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->extractRightVector(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v6

    .line 204
    .local v6, "mS":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v15, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->leftMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v8

    check-cast v8, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 207
    .local v8, "mVec":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->computeMessage(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[B

    move-result-object v19

    return-object v19
.end method

.method public messageEncrypt([B)[B
    .locals 8
    .param p1, "input"    # [B

    .prologue
    .line 133
    iget-boolean v5, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->forEncryption:Z

    if-nez v5, :cond_0

    .line 135
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "cipher initialised for decryption"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 137
    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->computeMessageRepresentative([B)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v1

    .line 138
    .local v1, "m":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    iget v5, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->n:I

    iget v6, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->t:I

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->sr:Ljava/security/SecureRandom;

    invoke-direct {v4, v5, v6, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;-><init>(IILjava/security/SecureRandom;)V

    .line 140
    .local v4, "z":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;->key:Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    check-cast v5, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->getG()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v0

    .line 141
    .local v0, "g":Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->leftMultiply(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v2

    .line 142
    .local v2, "mG":Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    invoke-virtual {v2, v4}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;->add(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    .line 144
    .local v3, "mGZ":Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->getEncoded()[B

    move-result-object v5

    return-object v5
.end method
