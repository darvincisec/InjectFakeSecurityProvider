.class public Lorg/spongycastle/crypto/util/SubjectPublicKeyInfoFactory;
.super Ljava/lang/Object;
.source "SubjectPublicKeyInfoFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static createSubjectPublicKeyInfo(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 11
    .param p0, "publicKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    instance-of v1, p0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-eqz v1, :cond_0

    move-object v10, p0

    .line 47
    check-cast v10, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 49
    .local v10, "pub":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    new-instance v1, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 92
    .end local v10    # "pub":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    :goto_0
    return-object v1

    .line 51
    :cond_0
    instance-of v1, p0, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    if-eqz v1, :cond_2

    move-object v10, p0

    .line 53
    check-cast v10, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    .line 55
    .local v10, "pub":Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;
    const/4 v9, 0x0

    .line 56
    .local v9, "params":Lorg/spongycastle/asn1/x509/DSAParameter;
    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v7

    .line 57
    .local v7, "dsaParams":Lorg/spongycastle/crypto/params/DSAParameters;
    if-eqz v7, :cond_1

    .line 59
    new-instance v9, Lorg/spongycastle/asn1/x509/DSAParameter;

    .end local v9    # "params":Lorg/spongycastle/asn1/x509/DSAParameter;
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v9, v1, v2, v3}, Lorg/spongycastle/asn1/x509/DSAParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 62
    .restart local v9    # "params":Lorg/spongycastle/asn1/x509/DSAParameter;
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3, v9}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 64
    .end local v7    # "dsaParams":Lorg/spongycastle/crypto/params/DSAParameters;
    .end local v9    # "params":Lorg/spongycastle/asn1/x509/DSAParameter;
    .end local v10    # "pub":Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;
    :cond_2
    instance-of v1, p0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v1, :cond_5

    move-object v10, p0

    .line 66
    check-cast v10, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    .line 67
    .local v10, "pub":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v6

    .line 70
    .local v6, "domainParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    if-nez v6, :cond_3

    .line 72
    new-instance v9, Lorg/spongycastle/asn1/x9/X962Parameters;

    sget-object v1, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v9, v1}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Null;)V

    .line 90
    .end local v6    # "domainParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    .local v9, "params":Lorg/spongycastle/asn1/ASN1Encodable;
    :goto_1
    new-instance v1, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9ECPoint;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v8

    check-cast v8, Lorg/spongycastle/asn1/ASN1OctetString;

    .line 92
    .local v8, "p":Lorg/spongycastle/asn1/ASN1OctetString;
    new-instance v1, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3, v9}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v8}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    goto :goto_0

    .line 74
    .end local v8    # "p":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v9    # "params":Lorg/spongycastle/asn1/ASN1Encodable;
    .restart local v6    # "domainParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    :cond_3
    instance-of v1, v6, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;

    if-eqz v1, :cond_4

    .line 76
    new-instance v9, Lorg/spongycastle/asn1/x9/X962Parameters;

    check-cast v6, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;

    .end local v6    # "domainParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;->getName()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .restart local v9    # "params":Lorg/spongycastle/asn1/ASN1Encodable;
    goto :goto_1

    .line 80
    .end local v9    # "params":Lorg/spongycastle/asn1/ASN1Encodable;
    .restart local v6    # "domainParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    :cond_4
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    .line 81
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 82
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 83
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 84
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    .line 85
    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 87
    .local v0, "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    new-instance v9, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-direct {v9, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .restart local v9    # "params":Lorg/spongycastle/asn1/ASN1Encodable;
    goto :goto_1

    .line 96
    .end local v0    # "ecP":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v6    # "domainParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    .end local v9    # "params":Lorg/spongycastle/asn1/ASN1Encodable;
    .end local v10    # "pub":Lorg/spongycastle/crypto/params/ECPublicKeyParameters;
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "key parameters not recognised."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
