.class public Lorg/spongycastle/crypto/signers/ECGOST3410Signer;
.super Ljava/lang/Object;
.source "ECGOST3410Signer.java"

# interfaces
.implements Lorg/spongycastle/crypto/DSA;


# instance fields
.field key:Lorg/spongycastle/crypto/params/ECKeyParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 14
    .param p1, "message"    # [B

    .prologue
    const/4 v13, 0x1

    .line 64
    array-length v11, p1

    new-array v6, v11, [B

    .line 65
    .local v6, "mRev":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v11, v6

    if-eq v4, v11, :cond_0

    .line 67
    array-length v11, v6

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v4

    aget-byte v11, p1, v11

    aput-byte v11, v6, v4

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_0
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v13, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 72
    .local v2, "e":Ljava/math/BigInteger;
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v3

    .line 73
    .local v3, "ec":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    .line 74
    .local v7, "n":Ljava/math/BigInteger;
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v11, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v1

    .line 78
    .local v1, "d":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v0

    .line 87
    .local v0, "basePointMultiplier":Lorg/spongycastle/math/ec/ECMultiplier;
    :cond_1
    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->random:Ljava/security/SecureRandom;

    invoke-direct {v5, v11, v12}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 89
    .local v5, "k":Ljava/math/BigInteger;
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 91
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-interface {v0, v11, v5}, Lorg/spongycastle/math/ec/ECMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 93
    .local v8, "p":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 95
    .local v9, "r":Ljava/math/BigInteger;
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v9, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 97
    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v1, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 99
    .local v10, "s":Ljava/math/BigInteger;
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 101
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
    .line 33
    if-eqz p1, :cond_1

    .line 35
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 37
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 39
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->random:Ljava/security/SecureRandom;

    .line 40
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 52
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 44
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->random:Ljava/security/SecureRandom;

    .line 45
    check-cast p2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 50
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 12
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .prologue
    .line 114
    array-length v11, p1

    new-array v5, v11, [B

    .line 115
    .local v5, "mRev":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v11, v5

    if-eq v4, v11, :cond_0

    .line 117
    array-length v11, v5

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v4

    aget-byte v11, p1, v11

    aput-byte v11, v5, v4

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    const/4 v11, 0x1

    invoke-direct {v3, v11, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 121
    .local v3, "e":Ljava/math/BigInteger;
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v6

    .line 124
    .local v6, "n":Ljava/math/BigInteger;
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_1

    invoke-virtual {p2, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_2

    .line 126
    :cond_1
    const/4 v11, 0x0

    .line 153
    :goto_1
    return v11

    .line 130
    :cond_2
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_3

    invoke-virtual {p3, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_4

    .line 132
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 135
    :cond_4
    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 137
    .local v8, "v":Ljava/math/BigInteger;
    invoke-virtual {p3, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 138
    .local v9, "z1":Ljava/math/BigInteger;
    invoke-virtual {v6, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 140
    .local v10, "z2":Ljava/math/BigInteger;
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 141
    .local v0, "G":Lorg/spongycastle/math/ec/ECPoint;
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/ECGOST3410Signer;->key:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v11, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 143
    .local v1, "Q":Lorg/spongycastle/math/ec/ECPoint;
    invoke-static {v0, v9, v1, v10}, Lorg/spongycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    .line 146
    .local v7, "point":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 148
    const/4 v11, 0x0

    goto :goto_1

    .line 151
    :cond_5
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 153
    .local v2, "R":Ljava/math/BigInteger;
    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_1
.end method
