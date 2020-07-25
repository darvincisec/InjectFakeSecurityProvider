.class public Lorg/spongycastle/crypto/signers/ECGOST3410_2012Signer;
.super Ljava/lang/Object;
.source "ECGOST3410_2012Signer.java"

# interfaces
.implements Lorg/spongycastle/crypto/DSA;


# instance fields
.field key:Lorg/spongycastle/crypto/params/ECKeyParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 152
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 14
    .param p1, "message"    # [B

    .prologue
    const/4 v13, 0x1

    .line 58
    array-length v11, p1

    new-array v6, v11, [B

    .line 59
    .local v6, "mRev":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v11, v6

    if-eq v4, v11, :cond_0

    .line 61
    array-length v11, v6

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v4

    aget-byte v11, p1, v11

    aput-byte v11, v6, v4

    .line 59
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    :cond_0
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v13, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 65
    .local v2, "e":Ljava/math/BigInteger;
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410_2012Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v3

    .line 66
    .local v3, "ec":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    .line 67
    .local v7, "n":Ljava/math/BigInteger;
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410_2012Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v11, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v1

    .line 71
    .local v1, "d":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/ECGOST3410_2012Signer;->createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    .line 80
    .local v0, "basePointMultiplier":Lorg/spongycastle/math/ec/ECMultiplier;
    :cond_1
    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ECGOST3410_2012Signer;->random:Ljava/security/SecureRandom;

    invoke-direct {v5, v11, v12}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 82
    .local v5, "k":Ljava/math/BigInteger;
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 84
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-interface {v0, v11, v5}, Lorg/spongycastle/math/ec/ECMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 86
    .local v8, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 88
    .local v9, "r":Ljava/math/BigInteger;
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v9, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 90
    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v1, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 92
    .local v10, "s":Ljava/math/BigInteger;
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 94
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/math/BigInteger;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    aput-object v10, v11, v13

    return-object v11
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 26
    if-eqz p1, :cond_1

    .line 28
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 30
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 32
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ECGOST3410_2012Signer;->random:Ljava/security/SecureRandom;

    .line 33
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ECGOST3410_2012Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 45
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 37
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ECGOST3410_2012Signer;->random:Ljava/security/SecureRandom;

    .line 38
    check-cast p2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ECGOST3410_2012Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 43
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ECGOST3410_2012Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 12
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .prologue
    .line 109
    array-length v11, p1

    new-array v5, v11, [B

    .line 110
    .local v5, "mRev":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v11, v5

    if-eq v4, v11, :cond_0

    .line 112
    array-length v11, v5

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v4

    aget-byte v11, p1, v11

    aput-byte v11, v5, v4

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    const/4 v11, 0x1

    invoke-direct {v3, v11, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 115
    .local v3, "e":Ljava/math/BigInteger;
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410_2012Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v6

    .line 118
    .local v6, "n":Ljava/math/BigInteger;
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_1

    invoke-virtual {p2, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_2

    .line 120
    :cond_1
    const/4 v11, 0x0

    .line 147
    :goto_1
    return v11

    .line 124
    :cond_2
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_3

    invoke-virtual {p3, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_4

    .line 126
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 129
    :cond_4
    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 131
    .local v8, "v":Ljava/math/BigInteger;
    invoke-virtual {p3, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 132
    .local v9, "z1":Ljava/math/BigInteger;
    invoke-virtual {v6, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 134
    .local v10, "z2":Ljava/math/BigInteger;
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410_2012Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 135
    .local v0, "G":Lorg/spongycastle/math/ec/ECPoint;
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410_2012Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v11, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 137
    .local v1, "Q":Lorg/spongycastle/math/ec/ECPoint;
    invoke-static {v0, v9, v1, v10}, Lorg/spongycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 140
    .local v7, "point":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 142
    const/4 v11, 0x0

    goto :goto_1

    .line 145
    :cond_5
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 147
    .local v2, "R":Ljava/math/BigInteger;
    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_1
.end method
