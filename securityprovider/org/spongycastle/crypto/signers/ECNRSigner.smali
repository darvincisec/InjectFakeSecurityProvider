.class public Lorg/spongycastle/crypto/signers/ECNRSigner;
.super Ljava/lang/Object;
.source "ECNRSigner.java"

# interfaces
.implements Lorg/spongycastle/crypto/DSA;


# instance fields
.field private forSigning:Z

.field private key:Lorg/spongycastle/crypto/params/ECKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 18
    .param p1, "digest"    # [B

    .prologue
    .line 70
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/spongycastle/crypto/signers/ECNRSigner;->forSigning:Z

    if-nez v15, :cond_0

    .line 72
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "not initialised for signing"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 75
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/signers/ECNRSigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v15, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v15

    invoke-virtual {v15}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v6

    .line 76
    .local v6, "n":Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    .line 78
    .local v7, "nBitLength":I
    new-instance v3, Ljava/math/BigInteger;

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-direct {v3, v15, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 79
    .local v3, "e":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 81
    .local v4, "eBitLength":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/crypto/signers/ECNRSigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v8, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 83
    .local v8, "privKey":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    if-le v4, v7, :cond_1

    .line 85
    new-instance v15, Lorg/spongycastle/crypto/DataLengthException;

    const-string v16, "input too large for ECNR key."

    invoke-direct/range {v15 .. v16}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 88
    :cond_1
    const/4 v9, 0x0

    .line 89
    .local v9, "r":Ljava/math/BigInteger;
    const/4 v11, 0x0

    .line 96
    .local v11, "s":Ljava/math/BigInteger;
    :cond_2
    new-instance v5, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v5}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    .line 98
    .local v5, "keyGen":Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;
    new-instance v15, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ECNRSigner;->random:Ljava/security/SecureRandom;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v5, v15}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 100
    invoke-virtual {v5}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v12

    .line 103
    .local v12, "tempPair":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v12}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 104
    .local v1, "V":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v15

    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 106
    .local v2, "Vx":Ljava/math/BigInteger;
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 108
    sget-object v15, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v9, v15}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 111
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v14

    .line 112
    .local v14, "x":Ljava/math/BigInteger;
    invoke-virtual {v12}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v13

    .line 113
    .local v13, "u":Ljava/math/BigInteger;
    invoke-virtual {v9, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 115
    const/4 v15, 0x2

    new-array v10, v15, [Ljava/math/BigInteger;

    .line 116
    .local v10, "res":[Ljava/math/BigInteger;
    const/4 v15, 0x0

    aput-object v9, v10, v15

    .line 117
    const/4 v15, 0x1

    aput-object v11, v10, v15

    .line 119
    return-object v10
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 34
    iput-boolean p1, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->forSigning:Z

    .line 36
    if-eqz p1, :cond_1

    .line 38
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 40
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 42
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->random:Ljava/security/SecureRandom;

    .line 43
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 55
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 47
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->random:Ljava/security/SecureRandom;

    .line 48
    check-cast p2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 53
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 12
    .param p1, "digest"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .prologue
    const/4 v10, 0x0

    .line 141
    iget-boolean v11, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->forSigning:Z

    if-eqz v11, :cond_0

    .line 143
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "not initialised for verifying"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 146
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/ECNRSigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v7, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 147
    .local v7, "pubKey":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    .line 148
    .local v5, "n":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    .line 150
    .local v6, "nBitLength":I
    new-instance v3, Ljava/math/BigInteger;

    const/4 v11, 0x1

    invoke-direct {v3, v11, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 151
    .local v3, "e":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 153
    .local v4, "eBitLength":I
    if-le v4, v6, :cond_1

    .line 155
    new-instance v10, Lorg/spongycastle/crypto/DataLengthException;

    const-string v11, "input too large for ECNR key."

    invoke-direct {v10, v11}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 159
    :cond_1
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_2

    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_3

    .line 186
    :cond_2
    :goto_0
    return v10

    .line 165
    :cond_3
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p3, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_2

    invoke-virtual {p3, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-gez v11, :cond_2

    .line 172
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 173
    .local v0, "G":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 175
    .local v2, "W":Lorg/spongycastle/math/ec/ECPoint;
    invoke-static {v0, p3, v2, p2}, Lorg/spongycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 178
    .local v1, "P":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v11

    if-nez v11, :cond_2

    .line 183
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    .line 184
    .local v9, "x":Ljava/math/BigInteger;
    invoke-virtual {p2, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 186
    .local v8, "t":Ljava/math/BigInteger;
    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_0
.end method
