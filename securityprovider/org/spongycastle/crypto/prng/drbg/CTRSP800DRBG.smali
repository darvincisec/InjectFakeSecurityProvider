.class public Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;
.super Ljava/lang/Object;
.source "CTRSP800DRBG.java"

# interfaces
.implements Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final AES_MAX_BITS_REQUEST:I = 0x40000

.field private static final AES_RESEED_MAX:J = 0x800000000000L

.field private static final K_BITS:[B

.field private static final TDEA_MAX_BITS_REQUEST:I = 0x1000

.field private static final TDEA_RESEED_MAX:J = 0x80000000L


# instance fields
.field private _Key:[B

.field private _V:[B

.field private _engine:Lorg/spongycastle/crypto/BlockCipher;

.field private _entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

.field private _isTDEA:Z

.field private _keySizeInBits:I

.field private _reseedCounter:J

.field private _securityStrength:I

.field private _seedLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const-string v0, "000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->K_BITS:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;IILorg/spongycastle/crypto/prng/EntropySource;[B[B)V
    .locals 4
    .param p1, "engine"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "keySizeInBits"    # I
    .param p3, "securityStrength"    # I
    .param p4, "entropySource"    # Lorg/spongycastle/crypto/prng/EntropySource;
    .param p5, "personalizationString"    # [B
    .param p6, "nonce"    # [B

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    .line 30
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    .line 46
    iput-object p4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    .line 47
    iput-object p1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    .line 49
    iput p2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    .line 50
    iput p3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_securityStrength:I

    .line 51
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, p2

    iput v1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    .line 52
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->isTDEA(Lorg/spongycastle/crypto/BlockCipher;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    .line 54
    const/16 v1, 0x100

    if-le p3, v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Requested security strength is not supported by the derivation function"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->getMaxSecurityStrength(Lorg/spongycastle/crypto/BlockCipher;I)I

    move-result v1

    if-ge v1, p3, :cond_1

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Requested security strength is not supported by block cipher and key size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_1
    invoke-interface {p4}, Lorg/spongycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v1

    if-ge v1, p3, :cond_2

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not enough entropy for security strength required"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_2
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->getEntropy()[B

    move-result-object v0

    .line 71
    .local v0, "entropy":[B
    invoke-direct {p0, v0, p6, p5}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Instantiate_algorithm([B[B[B)V

    .line 72
    return-void
.end method

.method private BCC([B[B[B[B)V
    .locals 10
    .param p1, "bccOut"    # [B
    .param p2, "k"    # [B
    .param p3, "iV"    # [B
    .param p4, "data"    # [B

    .prologue
    const/4 v9, 0x0

    .line 297
    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    .line 298
    .local v4, "outlen":I
    new-array v0, v4, [B

    .line 299
    .local v0, "chainingValue":[B
    array-length v5, p4

    div-int v3, v5, v4

    .line 301
    .local v3, "n":I
    new-array v2, v4, [B

    .line 303
    .local v2, "inputBlock":[B
    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v6, 0x1

    new-instance v7, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v5, v6, v7}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 305
    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5, p3, v9, v0, v9}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 307
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 309
    mul-int v5, v1, v4

    invoke-direct {p0, v2, v0, p4, v5}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->XOR([B[B[BI)V

    .line 310
    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5, v2, v9, v0, v9}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_0
    array-length v5, p1

    invoke-static {v0, v9, p1, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    return-void
.end method

.method private Block_Cipher_df([BI)[B
    .locals 21
    .param p1, "inputString"    # [B
    .param p2, "bitLength"    # I

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v14

    .line 225
    .local v14, "outLen":I
    move-object/from16 v0, p1

    array-length v6, v0

    .line 226
    .local v6, "L":I
    div-int/lit8 v7, p2, 0x8

    .line 228
    .local v7, "N":I
    add-int/lit8 v17, v6, 0x8

    add-int/lit8 v15, v17, 0x1

    .line 229
    .local v15, "sLen":I
    add-int v17, v15, v14

    add-int/lit8 v17, v17, -0x1

    div-int v17, v17, v14

    mul-int v11, v17, v14

    .line 230
    .local v11, "blockLen":I
    new-array v8, v11, [B

    .line 231
    .local v8, "S":[B
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v6, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->copyIntToByteArray([BII)V

    .line 232
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v7, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->copyIntToByteArray([BII)V

    .line 233
    const/16 v17, 0x0

    const/16 v18, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v8, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    add-int/lit8 v17, v6, 0x8

    const/16 v18, -0x80

    aput-byte v18, v8, v17

    .line 237
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x8

    add-int v17, v17, v14

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 238
    .local v16, "temp":[B
    new-array v10, v14, [B

    .line 240
    .local v10, "bccOut":[B
    new-array v4, v14, [B

    .line 242
    .local v4, "IV":[B
    const/4 v13, 0x0

    .line 243
    .local v13, "i":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 244
    .local v5, "K":[B
    sget-object v17, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->K_BITS:[B

    const/16 v18, 0x0

    const/16 v19, 0x0

    array-length v0, v5

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    :goto_0
    mul-int v17, v13, v14

    mul-int/lit8 v17, v17, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    move/from16 v18, v0

    mul-int/lit8 v19, v14, 0x8

    add-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 248
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v13, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->copyIntToByteArray([BII)V

    .line 249
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5, v4, v8}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->BCC([B[B[B[B)V

    .line 251
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    mul-int v18, v13, v14

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v0, v14, :cond_0

    move v12, v14

    .line 255
    .local v12, "bytesToCopy":I
    :goto_1
    const/16 v17, 0x0

    mul-int v18, v13, v14

    move/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-static {v10, v0, v1, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    add-int/lit8 v13, v13, 0x1

    .line 257
    goto :goto_0

    .line 251
    .end local v12    # "bytesToCopy":I
    :cond_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    mul-int v18, v13, v14

    sub-int v12, v17, v18

    goto :goto_1

    .line 259
    :cond_1
    new-array v9, v14, [B

    .line 260
    .local v9, "X":[B
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v5

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    array-length v0, v5

    move/from16 v17, v0

    const/16 v18, 0x0

    array-length v0, v9

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    div-int/lit8 v17, p2, 0x2

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 265
    const/4 v13, 0x0

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    new-instance v19, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface/range {v17 .. v19}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 268
    :goto_2
    mul-int v17, v13, v14

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v9, v1, v9, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 272
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    mul-int v18, v13, v14

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v0, v14, :cond_2

    move v12, v14

    .line 276
    .restart local v12    # "bytesToCopy":I
    :goto_3
    const/16 v17, 0x0

    mul-int v18, v13, v14

    move/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-static {v9, v0, v1, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    add-int/lit8 v13, v13, 0x1

    .line 278
    goto :goto_2

    .line 272
    .end local v12    # "bytesToCopy":I
    :cond_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    mul-int v18, v13, v14

    sub-int v12, v17, v18

    goto :goto_3

    .line 280
    :cond_3
    return-object v16
.end method

.method private CTR_DRBG_Instantiate_algorithm([B[B[B)V
    .locals 6
    .param p1, "entropy"    # [B
    .param p2, "nonce"    # [B
    .param p3, "personalisationString"    # [B

    .prologue
    .line 77
    invoke-static {p1, p2, p3}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v2

    .line 78
    .local v2, "seedMaterial":[B
    iget v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->Block_Cipher_df([BI)[B

    move-result-object v1

    .line 80
    .local v1, "seed":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 82
    .local v0, "outlen":I
    iget v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_keySizeInBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    .line 83
    new-array v3, v0, [B

    iput-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    .line 86
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, v1, v3, v4}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    .line 88
    const-wide/16 v4, 0x1

    iput-wide v4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    .line 89
    return-void
.end method

.method private CTR_DRBG_Reseed_algorithm([B)V
    .locals 4
    .param p1, "additionalInput"    # [B

    .prologue
    .line 120
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->getEntropy()[B

    move-result-object v1

    invoke-static {v1, p1}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    .line 122
    .local v0, "seedMaterial":[B
    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->Block_Cipher_df([BI)[B

    move-result-object v0

    .line 124
    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    .line 126
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    .line 127
    return-void
.end method

.method private CTR_DRBG_Update([B[B[B)V
    .locals 10
    .param p1, "seed"    # [B
    .param p2, "key"    # [B
    .param p3, "v"    # [B

    .prologue
    const/4 v9, 0x0

    .line 93
    array-length v5, p1

    new-array v4, v5, [B

    .line 94
    .local v4, "temp":[B
    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    new-array v3, v5, [B

    .line 96
    .local v3, "outputBlock":[B
    const/4 v1, 0x0

    .line 97
    .local v1, "i":I
    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    .line 99
    .local v2, "outLen":I
    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v6, 0x1

    new-instance v7, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v5, v6, v7}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 100
    :goto_0
    mul-int v5, v1, v2

    array-length v6, p1

    if-ge v5, v6, :cond_1

    .line 102
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->addOneTo([B)V

    .line 103
    iget-object v5, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5, p3, v9, v3, v9}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 105
    array-length v5, v4

    mul-int v6, v1, v2

    sub-int/2addr v5, v6

    if-le v5, v2, :cond_0

    move v0, v2

    .line 108
    .local v0, "bytesToCopy":I
    :goto_1
    mul-int v5, v1, v2

    invoke-static {v3, v9, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    goto :goto_0

    .line 105
    .end local v0    # "bytesToCopy":I
    :cond_0
    array-length v5, v4

    mul-int v6, v1, v2

    sub-int v0, v5, v6

    goto :goto_1

    .line 112
    :cond_1
    invoke-direct {p0, v4, p1, v4, v9}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->XOR([B[B[BI)V

    .line 114
    array-length v5, p2

    invoke-static {v4, v9, p2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    array-length v5, p2

    array-length v6, p3

    invoke-static {v4, v5, p3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    return-void
.end method

.method private XOR([B[B[BI)V
    .locals 3
    .param p1, "out"    # [B
    .param p2, "a"    # [B
    .param p3, "b"    # [B
    .param p4, "bOff"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 133
    aget-byte v1, p2, v0

    add-int v2, v0, p4

    aget-byte v2, p3, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method private addOneTo([B)V
    .locals 5
    .param p1, "longer"    # [B

    .prologue
    .line 139
    const/4 v0, 0x1

    .line 140
    .local v0, "carry":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-gt v1, v3, :cond_1

    .line 142
    array-length v3, p1

    sub-int/2addr v3, v1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int v2, v3, v0

    .line 143
    .local v2, "res":I
    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    .line 144
    :goto_1
    array-length v3, p1

    sub-int/2addr v3, v1

    int-to-byte v4, v2

    aput-byte v4, p1, v3

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 146
    .end local v2    # "res":I
    :cond_1
    return-void
.end method

.method private copyIntToByteArray([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "value"    # I
    .param p3, "offSet"    # I

    .prologue
    .line 318
    add-int/lit8 v0, p3, 0x0

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 319
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 320
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 321
    add-int/lit8 v0, p3, 0x3

    int-to-byte v1, p2

    aput-byte v1, p1, v0

    .line 322
    return-void
.end method

.method private getEntropy()[B
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_entropySource:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v1}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    .line 151
    .local v0, "entropy":[B
    array-length v1, v0

    iget v2, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_securityStrength:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_0

    .line 153
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Insufficient entropy provided by entropy source"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_0
    return-object v0
.end method

.method private getMaxSecurityStrength(Lorg/spongycastle/crypto/BlockCipher;I)I
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "keySizeInBits"    # I

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->isTDEA(Lorg/spongycastle/crypto/BlockCipher;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa8

    if-ne p2, v0, :cond_1

    .line 432
    const/16 p2, 0x70

    .line 439
    .end local p2    # "keySizeInBits":I
    :cond_0
    :goto_0
    return p2

    .line 434
    .restart local p2    # "keySizeInBits":I
    :cond_1
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    const/4 p2, -0x1

    goto :goto_0
.end method

.method private isTDEA(Lorg/spongycastle/crypto/BlockCipher;)Z
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    .line 425
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DESede"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TDEA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private padKey([BI[BI)V
    .locals 5
    .param p1, "keyMaster"    # [B
    .param p2, "keyOff"    # I
    .param p3, "tmp"    # [B
    .param p4, "tmpOff"    # I

    .prologue
    .line 471
    add-int/lit8 v2, p4, 0x0

    add-int/lit8 v3, p2, 0x0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xfe

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 472
    add-int/lit8 v2, p4, 0x1

    add-int/lit8 v3, p2, 0x0

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x7

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xfc

    ushr-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 473
    add-int/lit8 v2, p4, 0x2

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x6

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xf8

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 474
    add-int/lit8 v2, p4, 0x3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x5

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 475
    add-int/lit8 v2, p4, 0x4

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xe0

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 476
    add-int/lit8 v2, p4, 0x5

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, p2, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xc0

    ushr-int/lit8 v4, v4, 0x5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 477
    add-int/lit8 v2, p4, 0x6

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0x80

    ushr-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 478
    add-int/lit8 v2, p4, 0x7

    add-int/lit8 v3, p2, 0x6

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    .line 480
    move v1, p4

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, p4, 0x7

    if-gt v1, v2, :cond_0

    .line 482
    aget-byte v0, p3, v1

    .line 483
    .local v0, "b":I
    and-int/lit16 v2, v0, 0xfe

    shr-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v0, 0x2

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x3

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x4

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x5

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x6

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x7

    xor-int/2addr v3, v4

    xor-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    .end local v0    # "b":I
    :cond_0
    return-void
.end method


# virtual methods
.method expandKey([B)[B
    .locals 3
    .param p1, "key"    # [B

    .prologue
    const/4 v2, 0x0

    .line 444
    iget-boolean v1, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    if-eqz v1, :cond_0

    .line 447
    const/16 v1, 0x18

    new-array v0, v1, [B

    .line 449
    .local v0, "tmp":[B
    invoke-direct {p0, p1, v2, v0, v2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->padKey([BI[BI)V

    .line 450
    const/4 v1, 0x7

    const/16 v2, 0x8

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->padKey([BI[BI)V

    .line 451
    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-direct {p0, p1, v1, v0, v2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->padKey([BI[BI)V

    .line 457
    .end local v0    # "tmp":[B
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public generate([B[BZ)I
    .locals 9
    .param p1, "output"    # [B
    .param p2, "additionalInput"    # [B
    .param p3, "predictionResistant"    # Z

    .prologue
    const/4 v3, -0x1

    const/4 v8, 0x0

    .line 345
    iget-boolean v4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_isTDEA:Z

    if-eqz v4, :cond_2

    .line 347
    iget-wide v4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    const-wide v6, 0x80000000L

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v3

    .line 352
    :cond_1
    const/16 v3, 0x200

    invoke-static {p1, v3}, Lorg/spongycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 354
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Number of bits per request limited to 4096"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 359
    :cond_2
    iget-wide v4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    const-wide v6, 0x800000000000L

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 364
    const v3, 0x8000

    invoke-static {p1, v3}, Lorg/spongycastle/crypto/prng/drbg/Utils;->isTooLarge([BI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 366
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Number of bits per request limited to 262144"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 370
    :cond_3
    if-eqz p3, :cond_4

    .line 372
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Reseed_algorithm([B)V

    .line 373
    const/4 p2, 0x0

    .line 376
    :cond_4
    if-eqz p2, :cond_6

    .line 378
    iget v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    invoke-direct {p0, p2, v3}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->Block_Cipher_df([BI)[B

    move-result-object p2

    .line 379
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, p2, v3, v4}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    .line 386
    :goto_1
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    array-length v3, v3

    new-array v2, v3, [B

    .line 388
    .local v2, "out":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v4, 0x1

    new-instance v5, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    invoke-virtual {p0, v6}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->expandKey([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v3, v4, v5}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 390
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v3, p1

    array-length v4, v2

    div-int/2addr v3, v4

    if-gt v1, v3, :cond_8

    .line 392
    array-length v3, p1

    array-length v4, v2

    mul-int/2addr v4, v1

    sub-int/2addr v3, v4

    array-length v4, v2

    if-le v3, v4, :cond_7

    array-length v0, v2

    .line 396
    .local v0, "bytesToCopy":I
    :goto_3
    if-eqz v0, :cond_5

    .line 398
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->addOneTo([B)V

    .line 400
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_engine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-interface {v3, v4, v8, v2, v8}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 402
    array-length v3, v2

    mul-int/2addr v3, v1

    invoke-static {v2, v8, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 383
    .end local v0    # "bytesToCopy":I
    .end local v1    # "i":I
    .end local v2    # "out":[B
    :cond_6
    iget v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_seedLength:I

    new-array p2, v3, [B

    goto :goto_1

    .line 392
    .restart local v1    # "i":I
    .restart local v2    # "out":[B
    :cond_7
    array-length v3, p1

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    array-length v4, v4

    mul-int/2addr v4, v1

    sub-int v0, v3, v4

    goto :goto_3

    .line 406
    :cond_8
    iget-object v3, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_Key:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    invoke-direct {p0, p2, v3, v4}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Update([B[B[B)V

    .line 408
    iget-wide v4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_reseedCounter:J

    .line 410
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x8

    goto/16 :goto_0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->_V:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reseed([B)V
    .locals 0
    .param p1, "additionalInput"    # [B

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;->CTR_DRBG_Reseed_algorithm([B)V

    .line 421
    return-void
.end method
