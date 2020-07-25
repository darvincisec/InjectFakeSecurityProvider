.class public Lorg/spongycastle/crypto/agreement/ECVKOAgreement;
.super Ljava/lang/Object;
.source "ECVKOAgreement.java"


# instance fields
.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private key:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

.field private ukm:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/ECVKOAgreement;->digest:Lorg/spongycastle/crypto/Digest;

    .line 27
    return-void
.end method

.method private fromPoint(Lorg/spongycastle/math/ec/ECPoint;)[B
    .locals 11
    .param p1, "v"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    const/4 v10, 0x0

    .line 79
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 80
    .local v0, "bX":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 83
    .local v1, "bY":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    array-length v8, v8

    const/16 v9, 0x21

    if-le v8, v9, :cond_0

    .line 85
    const/16 v5, 0x40

    .line 92
    .local v5, "size":I
    :goto_0
    mul-int/lit8 v8, v5, 0x2

    new-array v2, v8, [B

    .line 93
    .local v2, "bytes":[B
    invoke-static {v5, v0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v6

    .line 94
    .local v6, "x":[B
    invoke-static {v5, v1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v7

    .line 96
    .local v7, "y":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-eq v3, v5, :cond_1

    .line 98
    sub-int v8, v5, v3

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v6, v8

    aput-byte v8, v2, v3

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    .end local v2    # "bytes":[B
    .end local v3    # "i":I
    .end local v5    # "size":I
    .end local v6    # "x":[B
    .end local v7    # "y":[B
    :cond_0
    const/16 v5, 0x20

    .restart local v5    # "size":I
    goto :goto_0

    .line 100
    .restart local v2    # "bytes":[B
    .restart local v3    # "i":I
    .restart local v6    # "x":[B
    .restart local v7    # "y":[B
    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-eq v3, v5, :cond_2

    .line 102
    add-int v8, v5, v3

    sub-int v9, v5, v3

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v7, v9

    aput-byte v9, v2, v8

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 105
    :cond_2
    iget-object v8, p0, Lorg/spongycastle/crypto/agreement/ECVKOAgreement;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v9, v2

    invoke-interface {v8, v2, v10, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 107
    iget-object v8, p0, Lorg/spongycastle/crypto/agreement/ECVKOAgreement;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v8}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    new-array v4, v8, [B

    .line 109
    .local v4, "rv":[B
    iget-object v8, p0, Lorg/spongycastle/crypto/agreement/ECVKOAgreement;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v8, v4, v10}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 111
    return-object v4
.end method

.method private static toInteger([B)Ljava/math/BigInteger;
    .locals 4
    .param p0, "ukm"    # [B

    .prologue
    .line 67
    array-length v2, p0

    new-array v1, v2, [B

    .line 69
    .local v1, "v":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 71
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v2
.end method


# virtual methods
.method public calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)[B
    .locals 6
    .param p1, "pubKey"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 46
    move-object v3, p1

    check-cast v3, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 47
    .local v3, "pub":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    .line 48
    .local v2, "params":Lorg/spongycastle/crypto/params/ECDomainParameters;
    iget-object v4, p0, Lorg/spongycastle/crypto/agreement/ECVKOAgreement;->key:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/spongycastle/crypto/params/ECDomainParameters;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ECVKO public key has wrong domain parameters"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/ECVKOAgreement;->ukm:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/ECVKOAgreement;->key:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 55
    .local v1, "hd":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 57
    .local v0, "P":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Infinity is not a valid agreement value for ECVKO"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    :cond_1
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/agreement/ECVKOAgreement;->fromPoint(Lorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v4

    return-object v4
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/ECVKOAgreement;->key:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "key"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 32
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithUKM;

    .line 34
    .local v0, "p":Lorg/spongycastle/crypto/params/ParametersWithUKM;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/ECVKOAgreement;->key:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 35
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithUKM;->getUKM()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/crypto/agreement/ECVKOAgreement;->toInteger([B)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/ECVKOAgreement;->ukm:Ljava/math/BigInteger;

    .line 36
    return-void
.end method
