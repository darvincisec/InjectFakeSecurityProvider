.class public Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;
.super Ljava/lang/Object;
.source "ECIESKeyEncapsulation.java"

# interfaces
.implements Lorg/spongycastle/crypto/KeyEncapsulation;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private CofactorMode:Z

.field private OldCofactorMode:Z

.field private SingleHashMode:Z

.field private kdf:Lorg/spongycastle/crypto/DerivationFunction;

.field private key:Lorg/spongycastle/crypto/params/ECKeyParameters;

.field private rnd:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "kdf"    # Lorg/spongycastle/crypto/DerivationFunction;
    .param p2, "rnd"    # Ljava/security/SecureRandom;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    .line 48
    iput-object p2, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    .line 49
    iput-boolean v0, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    .line 50
    iput-boolean v0, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    .line 51
    iput-boolean v0, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;ZZZ)V
    .locals 0
    .param p1, "kdf"    # Lorg/spongycastle/crypto/DerivationFunction;
    .param p2, "rnd"    # Ljava/security/SecureRandom;
    .param p3, "cofactorMode"    # Z
    .param p4, "oldCofactorMode"    # Z
    .param p5, "singleHashMode"    # Z

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    .line 71
    iput-object p2, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    .line 75
    iput-boolean p3, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    .line 76
    iput-boolean p4, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    .line 77
    iput-boolean p5, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    .line 78
    return-void
.end method


# virtual methods
.method protected createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public decrypt([BI)Lorg/spongycastle/crypto/CipherParameters;
    .locals 2
    .param p1, "in"    # [B
    .param p2, "keyLen"    # I

    .prologue
    .line 220
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->decrypt([BIII)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public decrypt([BIII)Lorg/spongycastle/crypto/CipherParameters;
    .locals 16
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "keyLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    instance-of v14, v14, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    if-nez v14, :cond_0

    .line 174
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Private key required for encryption"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 177
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v7, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 178
    .local v7, "ecPrivKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v6

    .line 179
    .local v6, "ecParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v5

    .line 180
    .local v5, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v12

    .line 181
    .local v12, "n":Ljava/math/BigInteger;
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v10

    .line 184
    .local v10, "h":Ljava/math/BigInteger;
    move/from16 v0, p3

    new-array v3, v0, [B

    .line 185
    .local v3, "C":[B
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v3, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    invoke-virtual {v5, v3}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    .line 191
    .local v9, "gTilde":Lorg/spongycastle/math/ec/ECPoint;
    move-object v8, v9

    .line 192
    .local v8, "gHat":Lorg/spongycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->OldCofactorMode:Z

    if-eqz v14, :cond_2

    .line 194
    :cond_1
    invoke-virtual {v8, v10}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 197
    :cond_2
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v13

    .line 198
    .local v13, "xHat":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    if-eqz v14, :cond_3

    .line 200
    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 203
    :cond_3
    invoke-virtual {v8, v13}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    .line 206
    .local v11, "hTilde":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v4

    .line 208
    .local v4, "PEH":[B
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1, v3, v4}, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->deriveKey(I[B[B)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v14

    return-object v14
.end method

.method protected deriveKey(I[B[B)Lorg/spongycastle/crypto/params/KeyParameter;
    .locals 6
    .param p1, "keyLen"    # I
    .param p2, "C"    # [B
    .param p3, "PEH"    # [B

    .prologue
    const/4 v5, 0x0

    .line 230
    move-object v1, p3

    .line 231
    .local v1, "kdfInput":[B
    iget-boolean v2, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->SingleHashMode:Z

    if-nez v2, :cond_0

    .line 233
    invoke-static {p2, p3}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    .line 234
    invoke-static {p3, v5}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 240
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    new-instance v3, Lorg/spongycastle/crypto/params/KDFParameters;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/spongycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-interface {v2, v3}, Lorg/spongycastle/crypto/DerivationFunction;->init(Lorg/spongycastle/crypto/DerivationParameters;)V

    .line 243
    new-array v0, p1, [B

    .line 244
    .local v0, "K":[B
    iget-object v2, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->kdf:Lorg/spongycastle/crypto/DerivationFunction;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-interface {v2, v0, v3, v4}, Lorg/spongycastle/crypto/DerivationFunction;->generateBytes([BII)I

    .line 247
    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-static {v1, v5}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 247
    return-object v2

    .line 251
    .end local v0    # "K":[B
    :catchall_0
    move-exception v2

    invoke-static {v1, v5}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 252
    throw v2
.end method

.method public encrypt([BI)Lorg/spongycastle/crypto/CipherParameters;
    .locals 1
    .param p1, "out"    # [B
    .param p2, "keyLen"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->encrypt([BII)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public encrypt([BII)Lorg/spongycastle/crypto/CipherParameters;
    .locals 19
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "keyLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 111
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "Public key required for encryption"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 114
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v9, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 115
    .local v9, "ecPubKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v8

    .line 116
    .local v8, "ecParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    .line 117
    .local v7, "curve":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v14

    .line 118
    .local v14, "n":Ljava/math/BigInteger;
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v12

    .line 121
    .local v12, "h":Ljava/math/BigInteger;
    sget-object v17, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->rnd:Ljava/security/SecureRandom;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v14, v1}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v15

    .line 124
    .local v15, "r":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->CofactorMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    invoke-virtual {v15, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 126
    .local v16, "rPrime":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v6

    .line 128
    .local v6, "basePointMultiplier":Lorg/spongycastle/math/ec/ECMultiplier;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v11, v0, [Lorg/spongycastle/math/ec/ECPoint;

    const/16 v17, 0x0

    .line 129
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v6, v0, v15}, Lorg/spongycastle/math/ec/ECMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v18

    aput-object v18, v11, v17

    const/16 v17, 0x1

    .line 130
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v18

    aput-object v18, v11, v17

    .line 134
    .local v11, "ghTilde":[Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v7, v11}, Lorg/spongycastle/math/ec/ECCurve;->normalizeAll([Lorg/spongycastle/math/ec/ECPoint;)V

    .line 136
    const/16 v17, 0x0

    aget-object v10, v11, v17

    .local v10, "gTilde":Lorg/spongycastle/math/ec/ECPoint;
    const/16 v17, 0x1

    aget-object v13, v11, v17

    .line 139
    .local v13, "hTilde":Lorg/spongycastle/math/ec/ECPoint;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v4

    .line 140
    .local v4, "C":[B
    const/16 v17, 0x0

    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    invoke-static {v4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v5

    .line 145
    .local v5, "PEH":[B
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1, v4, v5}, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->deriveKey(I[B[B)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v17

    return-object v17

    .end local v4    # "C":[B
    .end local v5    # "PEH":[B
    .end local v6    # "basePointMultiplier":Lorg/spongycastle/math/ec/ECMultiplier;
    .end local v10    # "gTilde":Lorg/spongycastle/math/ec/ECPoint;
    .end local v11    # "ghTilde":[Lorg/spongycastle/math/ec/ECPoint;
    .end local v13    # "hTilde":Lorg/spongycastle/math/ec/ECPoint;
    .end local v16    # "rPrime":Ljava/math/BigInteger;
    :cond_1
    move-object/from16 v16, v15

    .line 124
    goto :goto_0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "key"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 88
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ECKeyParameters;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EC key required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    check-cast p1, Lorg/spongycastle/crypto/params/ECKeyParameters;

    .end local p1    # "key":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/kems/ECIESKeyEncapsulation;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 96
    return-void
.end method
