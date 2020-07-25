.class public Lorg/spongycastle/crypto/util/PrivateKeyFactory;
.super Ljava/lang/Object;
.source "PrivateKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKey(Ljava/io/InputStream;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "inStr"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/util/PrivateKeyFactory;->createKey(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static createKey(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 22
    .param p0, "keyInfo"    # Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    .line 79
    .local v10, "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;

    move-result-object v16

    .line 83
    .local v16, "keyStructure":Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;
    new-instance v1, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 84
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 85
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getPrime1()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getPrime2()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getExponent1()Ljava/math/BigInteger;

    move-result-object v7

    .line 86
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getExponent2()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 152
    .end local v16    # "keyStructure":Lorg/spongycastle/asn1/pkcs/RSAPrivateKey;
    :goto_0
    return-object v1

    .line 90
    :cond_0
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/DHParameter;

    move-result-object v20

    .line 93
    .local v20, "params":Lorg/spongycastle/asn1/pkcs/DHParameter;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/ASN1Integer;

    .line 95
    .local v13, "derX":Lorg/spongycastle/asn1/ASN1Integer;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v18

    .line 96
    .local v18, "lVal":Ljava/math/BigInteger;
    if-nez v18, :cond_1

    const/16 v17, 0x0

    .line 97
    .local v17, "l":I
    :goto_1
    new-instance v14, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, v17

    invoke-direct {v14, v3, v4, v5, v0}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 99
    .local v14, "dhParams":Lorg/spongycastle/crypto/params/DHParameters;
    new-instance v1, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v3, v14}, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    goto :goto_0

    .line 96
    .end local v14    # "dhParams":Lorg/spongycastle/crypto/params/DHParameters;
    .end local v17    # "l":I
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->intValue()I

    move-result v17

    goto :goto_1

    .line 101
    .end local v13    # "derX":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v18    # "lVal":Ljava/math/BigInteger;
    .end local v20    # "params":Lorg/spongycastle/asn1/pkcs/DHParameter;
    :cond_2
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    move-result-object v20

    .line 104
    .local v20, "params":Lorg/spongycastle/asn1/oiw/ElGamalParameter;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/ASN1Integer;

    .line 106
    .restart local v13    # "derX":Lorg/spongycastle/asn1/ASN1Integer;
    new-instance v1, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Lorg/spongycastle/crypto/params/ElGamalParameters;

    .line 107
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getG()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v3, v4}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    goto :goto_0

    .line 109
    .end local v13    # "derX":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v20    # "params":Lorg/spongycastle/asn1/oiw/ElGamalParameter;
    :cond_3
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 111
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/ASN1Integer;

    .line 112
    .restart local v13    # "derX":Lorg/spongycastle/asn1/ASN1Integer;
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v12

    .line 114
    .local v12, "de":Lorg/spongycastle/asn1/ASN1Encodable;
    const/16 v19, 0x0

    .line 115
    .local v19, "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    if-eqz v12, :cond_4

    .line 117
    invoke-interface {v12}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DSAParameter;

    move-result-object v20

    .line 118
    .local v20, "params":Lorg/spongycastle/asn1/x509/DSAParameter;
    new-instance v19, Lorg/spongycastle/crypto/params/DSAParameters;

    .end local v19    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4, v5}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 121
    .end local v20    # "params":Lorg/spongycastle/asn1/x509/DSAParameter;
    .restart local v19    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    :cond_4
    new-instance v1, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v1, v3, v0}, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAParameters;)V

    goto/16 :goto_0

    .line 123
    .end local v12    # "de":Lorg/spongycastle/asn1/ASN1Encodable;
    .end local v13    # "derX":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v19    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    :cond_5
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 125
    new-instance v20, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Primitive;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    .line 130
    .local v20, "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 132
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/X962Parameters;->getParameters()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 134
    .local v2, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v2}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v21

    .line 135
    .local v21, "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    if-nez v21, :cond_6

    .line 137
    invoke-static {v2}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v21

    .line 139
    :cond_6
    new-instance v1, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;

    .line 140
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 149
    .end local v2    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .local v1, "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/sec/ECPrivateKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/sec/ECPrivateKey;

    move-result-object v15

    .line 150
    .local v15, "ec":Lorg/spongycastle/asn1/sec/ECPrivateKey;
    invoke-virtual {v15}, Lorg/spongycastle/asn1/sec/ECPrivateKey;->getKey()Ljava/math/BigInteger;

    move-result-object v11

    .line 152
    .local v11, "d":Ljava/math/BigInteger;
    new-instance v3, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-direct {v3, v11, v1}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    move-object v1, v3

    goto/16 :goto_0

    .line 144
    .end local v1    # "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    .end local v11    # "d":Ljava/math/BigInteger;
    .end local v15    # "ec":Lorg/spongycastle/asn1/sec/ECPrivateKey;
    .end local v21    # "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    :cond_7
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/X962Parameters;->getParameters()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v21

    .line 145
    .restart local v21    # "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    new-instance v1, Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 146
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .restart local v1    # "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    goto :goto_2

    .line 156
    .end local v1    # "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    .end local v20    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    .end local v21    # "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    :cond_8
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "algorithm identifier in key not recognised"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static createKey([B)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "privateKeyInfoData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/util/PrivateKeyFactory;->createKey(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method
