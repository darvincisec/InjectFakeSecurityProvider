.class public Lorg/spongycastle/jce/ECKeyUtil;
.super Ljava/lang/Object;
.source "ECKeyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/ECKeyUtil$UnexpectedException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static privateToExplicitParameters(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 138
    .local v0, "provider":Ljava/security/Provider;
    if-nez v0, :cond_0

    .line 140
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    invoke-static {p0, v0}, Lorg/spongycastle/jce/ECKeyUtil;->privateToExplicitParameters(Ljava/security/PrivateKey;Ljava/security/Provider;)Ljava/security/PrivateKey;

    move-result-object v1

    return-object v1
.end method

.method public static privateToExplicitParameters(Ljava/security/PrivateKey;Ljava/security/Provider;)Ljava/security/PrivateKey;
    .locals 12
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v3

    .line 163
    .local v3, "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    sget-object v9, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 165
    new-instance v8, Ljava/io/UnsupportedEncodingException;

    const-string v9, "cannot convert GOST key to explicit parameters."

    invoke-direct {v8, v9}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 198
    .end local v3    # "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    throw v2

    .line 169
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X962Parameters;

    move-result-object v7

    .line 172
    .local v7, "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 174
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X962Parameters;->getParameters()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    .line 176
    .local v6, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v6}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 178
    .local v0, "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    new-instance v1, Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v1, v8, v9, v10, v11}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .end local v0    # "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .local v1, "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    move-object v0, v1

    .line 189
    .end local v1    # "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v6    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local v0    # "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    :goto_0
    new-instance v7, Lorg/spongycastle/asn1/x9/X962Parameters;

    .end local v7    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .line 191
    .restart local v7    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    new-instance v4, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v8, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v9, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v8, v9, v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 193
    .end local v3    # "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .local v4, "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v5

    .line 195
    .local v5, "keyFact":Ljava/security/KeyFactory;
    new-instance v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v8}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    .end local p0    # "key":Ljava/security/PrivateKey;
    move-object v3, v4

    .end local v0    # "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v4    # "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v5    # "keyFact":Ljava/security/KeyFactory;
    .restart local v3    # "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_1
    return-object p0

    .line 180
    .restart local p0    # "key":Ljava/security/PrivateKey;
    :cond_2
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 182
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    sget-object v8, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v8}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    sget-object v9, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v9}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    sget-object v10, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v10}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v11}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v0, v8, v9, v10, v11}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .restart local v0    # "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    goto :goto_0

    .line 202
    .end local v0    # "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v3    # "info":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v7    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    :catch_1
    move-exception v2

    .line 204
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    throw v2

    .line 206
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/spongycastle/jce/ECKeyUtil$UnexpectedException;

    invoke-direct {v8, v2}, Lorg/spongycastle/jce/ECKeyUtil$UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public static publicToExplicitParameters(Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 48
    .local v0, "provider":Ljava/security/Provider;
    if-nez v0, :cond_0

    .line 50
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    invoke-static {p0, v0}, Lorg/spongycastle/jce/ECKeyUtil;->publicToExplicitParameters(Ljava/security/PublicKey;Ljava/security/Provider;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1
.end method

.method public static publicToExplicitParameters(Ljava/security/PublicKey;Ljava/security/Provider;)Ljava/security/PublicKey;
    .locals 12
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 73
    .local v3, "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    sget-object v9, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 75
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "cannot convert GOST key to explicit parameters."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 108
    .end local v3    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    throw v2

    .line 79
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/x9/X962Parameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X962Parameters;

    move-result-object v7

    .line 82
    .local v7, "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 84
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X962Parameters;->getParameters()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    .line 86
    .local v6, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-static {v6}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->getNamedCurveByOid(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 88
    .local v0, "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    new-instance v1, Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v1, v8, v9, v10, v11}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .end local v0    # "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .local v1, "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    move-object v0, v1

    .line 99
    .end local v1    # "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v6    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local v0    # "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    :goto_0
    new-instance v7, Lorg/spongycastle/asn1/x9/X962Parameters;

    .end local v7    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .line 101
    .restart local v7    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    new-instance v4, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v8, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v9, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v8, v9, v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 103
    .end local v3    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .local v4, "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-interface {p0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v5

    .line 105
    .local v5, "keyFact":Ljava/security/KeyFactory;
    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    .end local p0    # "key":Ljava/security/PublicKey;
    move-object v3, v4

    .end local v0    # "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v4    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v5    # "keyFact":Ljava/security/KeyFactory;
    .restart local v3    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :cond_1
    return-object p0

    .line 90
    .restart local p0    # "key":Ljava/security/PublicKey;
    :cond_2
    invoke-virtual {v7}, Lorg/spongycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 92
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    sget-object v8, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v8}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    sget-object v9, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v9}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v9

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v9

    sget-object v10, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v10}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v11}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v0, v8, v9, v10, v11}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .restart local v0    # "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    goto :goto_0

    .line 112
    .end local v0    # "curveParams":Lorg/spongycastle/asn1/x9/X9ECParameters;
    .end local v3    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v7    # "params":Lorg/spongycastle/asn1/x9/X962Parameters;
    :catch_1
    move-exception v2

    .line 114
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    throw v2

    .line 116
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/spongycastle/jce/ECKeyUtil$UnexpectedException;

    invoke-direct {v8, v2}, Lorg/spongycastle/jce/ECKeyUtil$UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method
