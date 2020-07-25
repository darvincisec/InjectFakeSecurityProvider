.class public Lorg/spongycastle/crypto/signers/ECDSASigner;
.super Ljava/lang/Object;
.source "ECDSASigner.java"

# interfaces
.implements Lorg/spongycastle/math/ec/ECConstants;
.implements Lorg/spongycastle/crypto/DSA;


# instance fields
.field private final kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

.field private key:Lorg/spongycastle/crypto/params/ECKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/signers/DSAKCalculator;)V
    .locals 0
    .param p1, "kCalculator"    # Lorg/spongycastle/crypto/signers/DSAKCalculator;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    .line 48
    return-void
.end method


# virtual methods
.method protected calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 4
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "message"    # [B

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 216
    .local v1, "log2n":I
    array-length v3, p2

    mul-int/lit8 v2, v3, 0x8

    .line 218
    .local v2, "messageBitLength":I
    new-instance v0, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v0, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 219
    .local v0, "e":Ljava/math/BigInteger;
    if-ge v1, v2, :cond_0

    .line 221
    sub-int v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 223
    :cond_0
    return-object v0
.end method

.method protected createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 11
    .param p1, "message"    # [B

    .prologue
    .line 89
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v3

    .line 90
    .local v3, "ec":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    .line 91
    .local v5, "n":Ljava/math/BigInteger;
    invoke-virtual {p0, v5, p1}, Lorg/spongycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v2

    .line 92
    .local v2, "e":Ljava/math/BigInteger;
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v9, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v1

    .line 94
    .local v1, "d":Ljava/math/BigInteger;
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v9}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 96
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v9, v5, v1, p1}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 105
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/ECDSASigner;->createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    .line 113
    .local v0, "basePointMultiplier":Lorg/spongycastle/math/ec/ECMultiplier;
    :cond_0
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v9}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v4

    .line 115
    .local v4, "k":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-interface {v0, v9, v4}, Lorg/spongycastle/math/ec/ECMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 118
    .local v6, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 120
    .local v7, "r":Ljava/math/BigInteger;
    sget-object v9, Lorg/spongycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 122
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 124
    .local v8, "s":Ljava/math/BigInteger;
    sget-object v9, Lorg/spongycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 126
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/math/BigInteger;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    return-object v9

    .line 100
    .end local v0    # "basePointMultiplier":Lorg/spongycastle/math/ec/ECMultiplier;
    .end local v4    # "k":Ljava/math/BigInteger;
    .end local v6    # "p":Lorg/spongycastle/math/ec/ECPoint;
    .end local v7    # "r":Ljava/math/BigInteger;
    .end local v8    # "s":Ljava/math/BigInteger;
    :cond_1
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    invoke-interface {v9, v5, v10}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    goto :goto_0
.end method

.method protected getDenominator(ILorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "coordinateSystem"    # I
    .param p2, "p"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    const/4 v0, 0x0

    .line 233
    packed-switch p1, :pswitch_data_0

    .line 244
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 238
    :pswitch_1
    invoke-virtual {p2, v0}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0

    .line 242
    :pswitch_2
    invoke-virtual {p2, v0}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "providedRandom":Ljava/security/SecureRandom;
    if-eqz p1, :cond_1

    .line 58
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 60
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 62
    .local v1, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v2, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 63
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 75
    .end local v1    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v2}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0}, Lorg/spongycastle/crypto/signers/ECDSASigner;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    .line 76
    return-void

    .line 67
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    check-cast p2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 72
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 75
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 0
    .param p1, "needed"    # Z
    .param p2, "provided"    # Ljava/security/SecureRandom;

    .prologue
    .line 250
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

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 18
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .prologue
    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    .line 141
    .local v11, "ec":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v12

    .line 142
    .local v12, "n":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Lorg/spongycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v10

    .line 145
    .local v10, "e":Ljava/math/BigInteger;
    sget-object v17, Lorg/spongycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-ltz v17, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-ltz v17, :cond_1

    .line 147
    :cond_0
    const/16 v17, 0x0

    .line 210
    :goto_0
    return v17

    .line 151
    :cond_1
    sget-object v17, Lorg/spongycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-ltz v17, :cond_2

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-ltz v17, :cond_3

    .line 153
    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    .line 156
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 158
    .local v7, "c":Ljava/math/BigInteger;
    invoke-virtual {v10, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 159
    .local v14, "u1":Ljava/math/BigInteger;
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 161
    .local v15, "u2":Ljava/math/BigInteger;
    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 162
    .local v3, "G":Lorg/spongycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/signers/ECDSASigner;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    move-object/from16 v17, v0

    check-cast v17, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 164
    .local v4, "Q":Lorg/spongycastle/math/ec/ECPoint;
    invoke-static {v3, v14, v4, v15}, Lorg/spongycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v13

    .line 167
    .local v13, "point":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 169
    const/16 v17, 0x0

    goto :goto_0

    .line 185
    :cond_4
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v9

    .line 186
    .local v9, "curve":Lorg/spongycastle/math/ec/ECCurve;
    if-eqz v9, :cond_7

    .line 188
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v8

    .line 189
    .local v8, "cofactor":Ljava/math/BigInteger;
    if-eqz v8, :cond_7

    sget-object v17, Lorg/spongycastle/crypto/signers/ECDSASigner;->EIGHT:Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-gtz v17, :cond_7

    .line 191
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Lorg/spongycastle/crypto/signers/ECDSASigner;->getDenominator(ILorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 192
    .local v2, "D":Lorg/spongycastle/math/ec/ECFieldElement;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-nez v17, :cond_7

    .line 194
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 195
    .local v6, "X":Lorg/spongycastle/math/ec/ECFieldElement;
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lorg/spongycastle/math/ec/ECCurve;->isValidFieldElement(Ljava/math/BigInteger;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 197
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 198
    .local v5, "R":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 200
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 202
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 203
    goto :goto_1

    .line 204
    .end local v5    # "R":Lorg/spongycastle/math/ec/ECFieldElement;
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 209
    .end local v2    # "D":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v6    # "X":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "cofactor":Ljava/math/BigInteger;
    :cond_7
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 210
    .local v16, "v":Ljava/math/BigInteger;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v17

    goto/16 :goto_0
.end method
