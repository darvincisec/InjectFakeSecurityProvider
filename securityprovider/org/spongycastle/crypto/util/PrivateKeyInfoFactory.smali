.class public Lorg/spongycastle/crypto/util/PrivateKeyInfoFactory;
.super Ljava/lang/Object;
.source "PrivateKeyInfoFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static createPrivateKeyInfo(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 15
    .param p0, "privateKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    instance-of v1, p0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-eqz v1, :cond_0

    move-object v12, p0

    .line 47
    check-cast v12, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 49
    .local v12, "priv":Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;
    new-instance v13, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v14, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v14, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v13, v14, v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object v1, v13

    .line 88
    .end local v12    # "priv":Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;
    :goto_0
    return-object v1

    .line 51
    :cond_0
    instance-of v1, p0, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    if-eqz v1, :cond_1

    move-object v12, p0

    .line 53
    check-cast v12, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    .line 54
    .local v12, "priv":Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;
    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v11

    .line 56
    .local v11, "params":Lorg/spongycastle/crypto/params/DSAParameters;
    new-instance v1, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/spongycastle/asn1/x509/DSAParameter;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/spongycastle/asn1/x509/DSAParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 58
    .end local v11    # "params":Lorg/spongycastle/crypto/params/DSAParameters;
    .end local v12    # "priv":Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;
    :cond_1
    instance-of v1, p0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz v1, :cond_4

    move-object v12, p0

    .line 60
    check-cast v12, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 61
    .local v12, "priv":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v9

    .line 65
    .local v9, "domainParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    if-nez v9, :cond_2

    .line 67
    new-instance v11, Lorg/spongycastle/asn1/x9/X962Parameters;

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v11, v1}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Null;)V

    .line 68
    .local v11, "params":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    .line 88
    .local v10, "orderBitLength":I
    :goto_1
    new-instance v1, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3, v11}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/spongycastle/asn1/sec/ECPrivateKey;

    invoke-virtual {v12}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v10, v4, v11}, Lorg/spongycastle/asn1/sec/ECPrivateKey;-><init>(ILjava/math/BigInteger;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 70
    .end local v10    # "orderBitLength":I
    .end local v11    # "params":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_2
    instance-of v1, v9, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;

    if-eqz v1, :cond_3

    .line 72
    new-instance v11, Lorg/spongycastle/asn1/x9/X962Parameters;

    move-object v1, v9

    check-cast v1, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;->getName()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v11, v1}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 73
    .restart local v11    # "params":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    .restart local v10    # "orderBitLength":I
    goto :goto_1

    .line 77
    .end local v10    # "orderBitLength":I
    .end local v11    # "params":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_3
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    .line 78
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 79
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 80
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 81
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    .line 82
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 84
    .local v0, "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    new-instance v11, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v11, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .line 85
    .restart local v11    # "params":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    .restart local v10    # "orderBitLength":I
    goto :goto_1

    .line 92
    .end local v0    # "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v9    # "domainParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    .end local v10    # "orderBitLength":I
    .end local v11    # "params":Lorg/spongycastle/asn1/ASN1Encodable;
    .end local v12    # "priv":Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "key parameters not recognised."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
