.class public Lorg/spongycastle/crypto/util/PublicKeyFactory;
.super Ljava/lang/Object;
.source "PublicKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
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
    .line 72
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public static createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 33
    .param p0, "keyInfo"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v16

    .line 86
    .local v16, "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/RSAPublicKey;

    move-result-object v29

    .line 91
    .local v29, "pubKey":Lorg/spongycastle/asn1/pkcs/RSAPublicKey;
    new-instance v2, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    const/4 v10, 0x0

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/asn1/pkcs/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct {v2, v10, v11, v12}, Lorg/spongycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 188
    .end local v29    # "pubKey":Lorg/spongycastle/asn1/pkcs/RSAPublicKey;
    :goto_0
    return-object v2

    .line 93
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x9/DHPublicKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHPublicKey;

    move-result-object v21

    .line 97
    .local v21, "dhPublicKey":Lorg/spongycastle/asn1/x9/DHPublicKey;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x9/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v32

    .line 99
    .local v32, "y":Ljava/math/BigInteger;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x9/DomainParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DomainParameters;

    move-result-object v20

    .line 101
    .local v20, "dhParams":Lorg/spongycastle/asn1/x9/DomainParameters;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/DomainParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    .line 102
    .local v3, "p":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/DomainParameters;->getG()Ljava/math/BigInteger;

    move-result-object v4

    .line 103
    .local v4, "g":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/DomainParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 105
    .local v5, "q":Ljava/math/BigInteger;
    const/4 v6, 0x0

    .line 106
    .local v6, "j":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 108
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/DomainParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v6

    .line 111
    :cond_2
    const/4 v7, 0x0

    .line 112
    .local v7, "validation":Lorg/spongycastle/crypto/params/DHValidationParameters;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x9/DomainParameters;->getValidationParams()Lorg/spongycastle/asn1/x9/ValidationParams;

    move-result-object v22

    .line 113
    .local v22, "dhValidationParms":Lorg/spongycastle/asn1/x9/ValidationParams;
    if-eqz v22, :cond_3

    .line 115
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/x9/ValidationParams;->getSeed()[B

    move-result-object v30

    .line 116
    .local v30, "seed":[B
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/x9/ValidationParams;->getPgenCounter()Ljava/math/BigInteger;

    move-result-object v28

    .line 120
    .local v28, "pgenCounter":Ljava/math/BigInteger;
    new-instance v7, Lorg/spongycastle/crypto/params/DHValidationParameters;

    .end local v7    # "validation":Lorg/spongycastle/crypto/params/DHValidationParameters;
    invoke-virtual/range {v28 .. v28}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    move-object/from16 v0, v30

    invoke-direct {v7, v0, v2}, Lorg/spongycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    .line 123
    .end local v28    # "pgenCounter":Ljava/math/BigInteger;
    .end local v30    # "seed":[B
    .restart local v7    # "validation":Lorg/spongycastle/crypto/params/DHValidationParameters;
    :cond_3
    new-instance v10, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    new-instance v2, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHValidationParameters;)V

    move-object/from16 v0, v32

    invoke-direct {v10, v0, v2}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    move-object v2, v10

    goto :goto_0

    .line 125
    .end local v3    # "p":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    .end local v5    # "q":Ljava/math/BigInteger;
    .end local v6    # "j":Ljava/math/BigInteger;
    .end local v7    # "validation":Lorg/spongycastle/crypto/params/DHValidationParameters;
    .end local v20    # "dhParams":Lorg/spongycastle/asn1/x9/DomainParameters;
    .end local v21    # "dhPublicKey":Lorg/spongycastle/asn1/x9/DHPublicKey;
    .end local v22    # "dhValidationParms":Lorg/spongycastle/asn1/x9/ValidationParams;
    .end local v32    # "y":Ljava/math/BigInteger;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 127
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/DHParameter;

    move-result-object v27

    .line 128
    .local v27, "params":Lorg/spongycastle/asn1/pkcs/DHParameter;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/asn1/ASN1Integer;

    .line 130
    .local v19, "derY":Lorg/spongycastle/asn1/ASN1Integer;
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v25

    .line 131
    .local v25, "lVal":Ljava/math/BigInteger;
    if-nez v25, :cond_5

    const/16 v24, 0x0

    .line 132
    .local v24, "l":I
    :goto_1
    new-instance v20, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-direct {v0, v2, v10, v11, v1}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 134
    .local v20, "dhParams":Lorg/spongycastle/crypto/params/DHParameters;
    new-instance v2, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-direct {v2, v10, v0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    goto/16 :goto_0

    .line 131
    .end local v20    # "dhParams":Lorg/spongycastle/crypto/params/DHParameters;
    .end local v24    # "l":I
    :cond_5
    invoke-virtual/range {v25 .. v25}, Ljava/math/BigInteger;->intValue()I

    move-result v24

    goto :goto_1

    .line 136
    .end local v19    # "derY":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v25    # "lVal":Ljava/math/BigInteger;
    .end local v27    # "params":Lorg/spongycastle/asn1/pkcs/DHParameter;
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 138
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    move-result-object v27

    .line 139
    .local v27, "params":Lorg/spongycastle/asn1/oiw/ElGamalParameter;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/asn1/ASN1Integer;

    .line 141
    .restart local v19    # "derY":Lorg/spongycastle/asn1/ASN1Integer;
    new-instance v2, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    new-instance v11, Lorg/spongycastle/crypto/params/ElGamalParameters;

    .line 142
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getP()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getG()Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/spongycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v10, v11}, Lorg/spongycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ElGamalParameters;)V

    goto/16 :goto_0

    .line 144
    .end local v19    # "derY":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v27    # "params":Lorg/spongycastle/asn1/oiw/ElGamalParameter;
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 145
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 147
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/asn1/ASN1Integer;

    .line 148
    .restart local v19    # "derY":Lorg/spongycastle/asn1/ASN1Integer;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v17

    .line 150
    .local v17, "de":Lorg/spongycastle/asn1/ASN1Encodable;
    const/16 v26, 0x0

    .line 151
    .local v26, "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    if-eqz v17, :cond_9

    .line 153
    invoke-interface/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DSAParameter;

    move-result-object v27

    .line 154
    .local v27, "params":Lorg/spongycastle/asn1/x509/DSAParameter;
    new-instance v26, Lorg/spongycastle/crypto/params/DSAParameters;

    .end local v26    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v11

    move-object/from16 v0, v26

    invoke-direct {v0, v2, v10, v11}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 157
    .end local v27    # "params":Lorg/spongycastle/asn1/x509/DSAParameter;
    .restart local v26    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    :cond_9
    new-instance v2, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v10

    move-object/from16 v0, v26

    invoke-direct {v2, v10, v0}, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAParameters;)V

    goto/16 :goto_0

    .line 159
    .end local v17    # "de":Lorg/spongycastle/asn1/ASN1Encodable;
    .end local v19    # "derY":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v26    # "parameters":Lorg/spongycastle/crypto/params/DSAParameters;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v10, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 161
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X962Parameters;

    move-result-object v27

    .line 166
    .local v27, "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 168
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/x9/X962Parameters;->getParameters()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 170
    .local v9, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v9}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v31

    .line 171
    .local v31, "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    if-nez v31, :cond_b

    .line 173
    invoke-static {v9}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v31

    .line 175
    :cond_b
    new-instance v8, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;

    .line 176
    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v10

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v14

    invoke-direct/range {v8 .. v14}, Lorg/spongycastle/crypto/params/ECNamedDomainParameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 185
    .end local v9    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .local v8, "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    :goto_2
    new-instance v23, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 186
    .local v23, "key":Lorg/spongycastle/asn1/ASN1OctetString;
    new-instance v18, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/ASN1OctetString;)V

    .line 188
    .local v18, "derQ":Lorg/spongycastle/asn1/x9/X9ECPoint;
    new-instance v2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-direct {v2, v10, v8}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    goto/16 :goto_0

    .line 180
    .end local v8    # "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    .end local v18    # "derQ":Lorg/spongycastle/asn1/x9/X9ECPoint;
    .end local v23    # "key":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v31    # "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    :cond_c
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/x9/X962Parameters;->getParameters()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v31

    .line 181
    .restart local v31    # "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    new-instance v8, Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 182
    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v11

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v12

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v15

    move-object v10, v8

    invoke-direct/range {v10 .. v15}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .restart local v8    # "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    goto :goto_2

    .line 192
    .end local v8    # "dParams":Lorg/spongycastle/crypto/params/ECDomainParameters;
    .end local v27    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    .end local v31    # "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    :cond_d
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v10, "algorithm identifier in key not recognised"

    invoke-direct {v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createKey([B)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1
    .param p0, "keyInfoData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method
