.class public Lorg/spongycastle/crypto/signers/SM2Signer;
.super Ljava/lang/Object;
.source "SM2Signer.java"

# interfaces
.implements Lorg/spongycastle/crypto/DSA;
.implements Lorg/spongycastle/math/ec/ECConstants;


# instance fields
.field private curveLength:I

.field private ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

.field private ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

.field private final kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

.field private pubPoint:Lorg/spongycastle/math/ec/ECPoint;

.field private random:Ljava/security/SecureRandom;

.field private userID:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    return-void
.end method

.method private addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 3
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "v"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 209
    iget v1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->curveLength:I

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    .line 210
    .local v0, "p":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 211
    return-void
.end method

.method private addUserID(Lorg/spongycastle/crypto/Digest;[B)V
    .locals 3
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "userID"    # [B

    .prologue
    .line 201
    array-length v1, p2

    mul-int/lit8 v0, v1, 0x8

    .line 202
    .local v0, "len":I
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 203
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 204
    const/4 v1, 0x0

    array-length v2, p2

    invoke-interface {p1, p2, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 205
    return-void
.end method

.method private getZ(Lorg/spongycastle/crypto/Digest;)[B
    .locals 2
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 183
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->userID:[B

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/signers/SM2Signer;->addUserID(Lorg/spongycastle/crypto/Digest;[B)V

    .line 185
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/signers/SM2Signer;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 186
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/signers/SM2Signer;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 187
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/signers/SM2Signer;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 188
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/signers/SM2Signer;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 189
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->pubPoint:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/signers/SM2Signer;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 190
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->pubPoint:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/signers/SM2Signer;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 192
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 194
    .local v0, "rv":[B
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 196
    return-object v0
.end method


# virtual methods
.method protected calculateE([B)Ljava/math/BigInteger;
    .locals 2
    .param p1, "message"    # [B

    .prologue
    .line 220
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method protected createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 14
    .param p1, "message"    # [B

    .prologue
    const/4 v13, 0x0

    .line 82
    new-instance v3, Lorg/spongycastle/crypto/digests/SM3Digest;

    invoke-direct {v3}, Lorg/spongycastle/crypto/digests/SM3Digest;-><init>()V

    .line 84
    .local v3, "digest":Lorg/spongycastle/crypto/digests/SM3Digest;
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/signers/SM2Signer;->getZ(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v11

    .line 86
    .local v11, "z":[B
    array-length v12, v11

    invoke-virtual {v3, v11, v13, v12}, Lorg/spongycastle/crypto/digests/SM3Digest;->update([BII)V

    .line 87
    array-length v12, p1

    invoke-virtual {v3, p1, v13, v12}, Lorg/spongycastle/crypto/digests/SM3Digest;->update([BII)V

    .line 89
    invoke-virtual {v3}, Lorg/spongycastle/crypto/digests/SM3Digest;->getDigestSize()I

    move-result v12

    new-array v5, v12, [B

    .line 91
    .local v5, "eHash":[B
    invoke-virtual {v3, v5, v13}, Lorg/spongycastle/crypto/digests/SM3Digest;->doFinal([BI)I

    .line 93
    iget-object v12, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    .line 94
    .local v7, "n":Ljava/math/BigInteger;
    invoke-virtual {p0, v5}, Lorg/spongycastle/crypto/signers/SM2Signer;->calculateE([B)Ljava/math/BigInteger;

    move-result-object v4

    .line 95
    .local v4, "e":Ljava/math/BigInteger;
    iget-object v12, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v12, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v1

    .line 99
    .local v1, "d":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/SM2Signer;->createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    .line 108
    .local v0, "basePointMultiplier":Lorg/spongycastle/math/ec/ECMultiplier;
    :cond_0
    iget-object v12, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v12}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v6

    .line 111
    .local v6, "k":Ljava/math/BigInteger;
    iget-object v12, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v12

    invoke-interface {v0, v12, v6}, Lorg/spongycastle/math/ec/ECMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v12

    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 114
    .local v8, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 116
    .local v9, "r":Ljava/math/BigInteger;
    sget-object v12, Lorg/spongycastle/crypto/signers/SM2Signer;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 119
    sget-object v12, Lorg/spongycastle/crypto/signers/SM2Signer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 121
    .local v2, "dPlus1ModN":Ljava/math/BigInteger;
    invoke-virtual {v9, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 122
    .local v10, "s":Ljava/math/BigInteger;
    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 124
    sget-object v12, Lorg/spongycastle/crypto/signers/SM2Signer;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 127
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/math/BigInteger;

    aput-object v9, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    return-object v12
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 41
    instance-of v2, p2, Lorg/spongycastle/crypto/params/ParametersWithID;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 43
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithID;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithID;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    .line 44
    .local v0, "baseParam":Lorg/spongycastle/crypto/CipherParameters;
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithID;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithID;->getID()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->userID:[B

    .line 52
    :goto_0
    if-eqz p1, :cond_2

    .line 54
    instance-of v2, v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 56
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 58
    .local v1, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/ECKeyParameters;

    iput-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 59
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 60
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    .line 68
    .end local v0    # "baseParam":Lorg/spongycastle/crypto/CipherParameters;
    .end local v1    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    :goto_1
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    iget-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->pubPoint:Lorg/spongycastle/math/ec/ECPoint;

    .line 77
    :goto_2
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->curveLength:I

    .line 78
    return-void

    .line 48
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    move-object v0, p2

    .line 49
    .restart local v0    # "baseParam":Lorg/spongycastle/crypto/CipherParameters;
    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->userID:[B

    goto :goto_0

    .line 64
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast v0, Lorg/spongycastle/crypto/params/ECKeyParameters;

    .end local v0    # "baseParam":Lorg/spongycastle/crypto/CipherParameters;
    iput-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 65
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 66
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    iget-object v3, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-interface {v2, v3, v4}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    goto :goto_1

    .line 72
    .restart local v0    # "baseParam":Lorg/spongycastle/crypto/CipherParameters;
    :cond_2
    check-cast v0, Lorg/spongycastle/crypto/params/ECKeyParameters;

    .end local v0    # "baseParam":Lorg/spongycastle/crypto/CipherParameters;
    iput-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 73
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 74
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->pubPoint:Lorg/spongycastle/math/ec/ECPoint;

    goto :goto_2
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 10
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .prologue
    const/4 v9, 0x0

    .line 132
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 136
    .local v3, "n":Ljava/math/BigInteger;
    sget-object v8, Lorg/spongycastle/crypto/signers/SM2Signer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-ltz v8, :cond_0

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-ltz v8, :cond_1

    :cond_0
    move v8, v9

    .line 177
    :goto_0
    return v8

    .line 142
    :cond_1
    sget-object v8, Lorg/spongycastle/crypto/signers/SM2Signer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-ltz v8, :cond_2

    invoke-virtual {p3, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-ltz v8, :cond_3

    :cond_2
    move v8, v9

    .line 144
    goto :goto_0

    .line 147
    :cond_3
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v8, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 149
    .local v4, "q":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v0, Lorg/spongycastle/crypto/digests/SM3Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SM3Digest;-><init>()V

    .line 151
    .local v0, "digest":Lorg/spongycastle/crypto/digests/SM3Digest;
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/SM2Signer;->getZ(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v7

    .line 153
    .local v7, "z":[B
    array-length v8, v7

    invoke-virtual {v0, v7, v9, v8}, Lorg/spongycastle/crypto/digests/SM3Digest;->update([BII)V

    .line 154
    array-length v8, p1

    invoke-virtual {v0, p1, v9, v8}, Lorg/spongycastle/crypto/digests/SM3Digest;->update([BII)V

    .line 156
    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/SM3Digest;->getDigestSize()I

    move-result v8

    new-array v2, v8, [B

    .line 159
    .local v2, "eHash":[B
    invoke-virtual {v0, v2, v9}, Lorg/spongycastle/crypto/digests/SM3Digest;->doFinal([BI)I

    .line 162
    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/signers/SM2Signer;->calculateE([B)Ljava/math/BigInteger;

    move-result-object v1

    .line 165
    .local v1, "e":Ljava/math/BigInteger;
    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 166
    .local v5, "t":Ljava/math/BigInteger;
    sget-object v8, Lorg/spongycastle/crypto/signers/SM2Signer;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    .line 168
    goto :goto_0

    .line 173
    :cond_4
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    invoke-virtual {v8, p3}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 174
    .local v6, "x1y1":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v4, v5}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 177
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_0
.end method
