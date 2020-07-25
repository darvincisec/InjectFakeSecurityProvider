.class Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "BcFKSKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;,
        Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$Def;,
        Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$Std;
    }
.end annotation


# static fields
.field private static final CERTIFICATE:Ljava/math/BigInteger;

.field private static final PRIVATE_KEY:Ljava/math/BigInteger;

.field private static final PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

.field private static final PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

.field private static final SECRET_KEY:Ljava/math/BigInteger;

.field private static final oidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/spongycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final publicAlgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/spongycastle/asn1/ASN1ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private creationDate:Ljava/util/Date;

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/spongycastle/asn1/bc/ObjectData;",
            ">;"
        }
    .end annotation
.end field

.field private hmacAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private hmacPkbdAlgorithm:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

.field private lastModifiedDate:Ljava/util/Date;

.field private final privateKeyCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    .line 84
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "DESEDE"

    sget-object v2, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->desEDE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "TRIPLEDES"

    sget-object v2, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->desEDE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "TDEA"

    sget-object v2, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->desEDE:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "HMACSHA1"

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "HMACSHA224"

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "HMACSHA256"

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "HMACSHA384"

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "HMACSHA512"

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "EC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    .line 113
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    .line 114
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->SECRET_KEY:Ljava/math/BigInteger;

    .line 115
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    .line 116
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jce/provider/BouncyCastleProvider;)V
    .locals 1
    .param p1, "provider"    # Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    .line 129
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    .line 130
    return-void
.end method

.method private calculateMac([BLorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;[C)[B
    .locals 6
    .param p1, "content"    # [B
    .param p2, "algorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "pbkdAlgorithm"    # Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    .param p4, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "algorithmId":Ljava/lang/String;
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    if-eqz v3, :cond_0

    .line 721
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v0, v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 730
    .local v2, "mac":Ljavax/crypto/Mac;
    :goto_0
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "INTEGRITY_CHECK"

    if-eqz p4, :cond_1

    .end local p4    # "password":[C
    :goto_1
    invoke-direct {p0, p3, v4, p4}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;Ljava/lang/String;[C)[B

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    return-object v3

    .line 725
    .end local v2    # "mac":Ljavax/crypto/Mac;
    .restart local p4    # "password":[C
    :cond_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .restart local v2    # "mac":Ljavax/crypto/Mac;
    goto :goto_0

    .line 730
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    new-array p4, v5, [C
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 732
    .end local p4    # "password":[C
    :catch_0
    move-exception v1

    .line 734
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set up MAC calculation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private createPrivateKeySequence(Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;[Ljava/security/cert/Certificate;)Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;
    .locals 3
    .param p1, "encryptedPrivateKeyInfo"    # Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .param p2, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 444
    array-length v2, p2

    new-array v0, v2, [Lorg/spongycastle/asn1/x509/Certificate;

    .line 445
    .local v0, "certChain":[Lorg/spongycastle/asn1/x509/Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-eq v1, v2, :cond_0

    .line 447
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    aput-object v2, v0, v1

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    :cond_0
    new-instance v2, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;

    invoke-direct {v2, p1, v0}, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;-><init>(Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;[Lorg/spongycastle/asn1/x509/Certificate;)V

    return-object v2
.end method

.method private decodeCertificate(Ljava/lang/Object;)Ljava/security/cert/Certificate;
    .locals 5
    .param p1, "cert"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    if-eqz v3, :cond_0

    .line 263
    :try_start_0
    const-string v3, "X.509"

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v3, v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 265
    .local v0, "certFact":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 282
    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    :goto_0
    return-object v2

    .line 267
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 276
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 278
    .restart local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 280
    .end local v0    # "certFact":Ljava/security/cert/CertificateFactory;
    :catch_1
    move-exception v1

    .line 282
    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private decryptData(Ljava/lang/String;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[C[B)[B
    .locals 11
    .param p1, "purpose"    # Ljava/lang/String;
    .param p2, "protectAlgId"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "password"    # [C
    .param p4, "encryptedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 888
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    sget-object v9, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 890
    new-instance v8, Ljava/io/IOException;

    const-string v9, "BCFKS KeyStore cannot recognize protection algorithm."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 893
    :cond_0
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PBES2Parameters;

    move-result-object v6

    .line 894
    .local v6, "pbes2Parameters":Lorg/spongycastle/asn1/pkcs/PBES2Parameters;
    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v0

    .line 896
    .local v0, "algId":Lorg/spongycastle/asn1/pkcs/EncryptionScheme;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    sget-object v9, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 898
    new-instance v8, Ljava/io/IOException;

    const-string v9, "BCFKS KeyStore cannot recognize protection encryption algorithm."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 903
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/cms/CCMParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/CCMParameters;

    move-result-object v3

    .line 906
    .local v3, "ccmParameters":Lorg/spongycastle/asn1/cms/CCMParameters;
    iget-object v8, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    if-nez v8, :cond_2

    .line 908
    const-string v8, "AES/CCM/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 909
    .local v2, "c":Ljavax/crypto/Cipher;
    const-string v8, "CCM"

    invoke-static {v8}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 917
    .local v1, "algParams":Ljava/security/AlgorithmParameters;
    :goto_0
    invoke-virtual {v3}, Lorg/spongycastle/asn1/cms/CCMParameters;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 919
    invoke-virtual {v6}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v8

    if-eqz p3, :cond_3

    .end local p3    # "password":[C
    :goto_1
    invoke-direct {p0, v8, p1, p3}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;Ljava/lang/String;[C)[B

    move-result-object v5

    .line 921
    .local v5, "keyBytes":[B
    const/4 v8, 0x2

    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "AES"

    invoke-direct {v9, v5, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v8, v9, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 923
    invoke-virtual {v2, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 924
    .local v7, "rv":[B
    return-object v7

    .line 913
    .end local v1    # "algParams":Ljava/security/AlgorithmParameters;
    .end local v2    # "c":Ljavax/crypto/Cipher;
    .end local v5    # "keyBytes":[B
    .end local v7    # "rv":[B
    .restart local p3    # "password":[C
    :cond_2
    const-string v8, "AES/CCM/NoPadding"

    iget-object v9, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v8, v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 914
    .restart local v2    # "c":Ljavax/crypto/Cipher;
    const-string v8, "CCM"

    iget-object v9, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v8, v9}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .restart local v1    # "algParams":Ljava/security/AlgorithmParameters;
    goto :goto_0

    .line 919
    :cond_3
    const/4 v9, 0x0

    new-array p3, v9, [C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 926
    .end local v1    # "algParams":Ljava/security/AlgorithmParameters;
    .end local v2    # "c":Ljavax/crypto/Cipher;
    .end local v3    # "ccmParameters":Lorg/spongycastle/asn1/cms/CCMParameters;
    .end local p3    # "password":[C
    :catch_0
    move-exception v4

    .line 928
    .local v4, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private extractCreationDate(Lorg/spongycastle/asn1/bc/ObjectData;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p1, "entry"    # Lorg/spongycastle/asn1/bc/ObjectData;
    .param p2, "creationDate"    # Ljava/util/Date;

    .prologue
    .line 536
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/bc/ObjectData;->getCreationDate()Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 542
    :goto_0
    return-object p2

    .line 538
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private generateKey(Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;Ljava/lang/String;[C)[B
    .locals 8
    .param p1, "pbkdAlgorithm"    # Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    .param p2, "purpose"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-static {p3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v1

    .line 673
    .local v1, "encPassword":[B
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    .line 676
    .local v0, "differentiator":[B
    new-instance v3, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v5, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v5}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v3, v5}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 678
    .local v3, "pGen":Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sget-object v6, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 680
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v4

    .line 682
    .local v4, "pbkdf2Params":Lorg/spongycastle/asn1/pkcs/PBKDF2Params;
    invoke-virtual {v4}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sget-object v6, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 685
    invoke-static {v1, v0}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v5

    invoke-virtual {v4}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v6

    invoke-virtual {v4}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->init([B[BI)V

    .line 687
    invoke-virtual {v4}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getKeyLength()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 699
    .local v2, "keySizeInBytes":I
    mul-int/lit8 v5, v2, 0x8

    invoke-virtual {v3, v5}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    return-object v5

    .line 691
    .end local v2    # "keySizeInBytes":I
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "BCFKS KeyStore: unrecognized MAC PBKD PRF."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 696
    .end local v4    # "pbkdf2Params":Lorg/spongycastle/asn1/pkcs/PBKDF2Params;
    :cond_1
    new-instance v5, Ljava/io/IOException;

    const-string v6, "BCFKS KeyStore: unrecognized MAC PBKD."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private generatePkbdAlgorithmIdentifier(I)Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    .locals 8
    .param p1, "keySizeInBytes"    # I

    .prologue
    .line 934
    const/16 v1, 0x40

    new-array v0, v1, [B

    .line 935
    .local v0, "pbkdSalt":[B
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->getDefaultSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 936
    new-instance v1, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    const/16 v4, 0x400

    new-instance v5, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v7, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v0, v4, p1, v5}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v1
.end method

.method private getDefaultSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 438
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method

.method private static getPublicKeyAlg(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 2
    .param p0, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 102
    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    .local v0, "algName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 109
    .end local v0    # "algName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "algName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private verifyMac([BLorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;[C)V
    .locals 3
    .param p1, "content"    # [B
    .param p2, "integrityCheck"    # Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;
    .param p3, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-virtual {p2}, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->getMacAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p2}, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->getPbkdAlgorithm()Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, p3}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->calculateMac([BLorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;[C)[B

    move-result-object v0

    .line 707
    .local v0, "check":[B
    invoke-virtual {p2}, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->getMac()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 709
    new-instance v1, Ljava/io/IOException;

    const-string v2, "BCFKS KeyStore corrupted: MAC calculation failed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 711
    :cond_0
    return-void
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 565
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v1, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$1;

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$1;-><init>(Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 581
    if-nez p1, :cond_0

    .line 583
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 548
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/bc/ObjectData;

    .line 550
    .local v0, "entry":Lorg/spongycastle/asn1/bc/ObjectData;
    if-nez v0, :cond_0

    .line 559
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    goto :goto_0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/bc/ObjectData;

    .line 239
    .local v2, "ent":Lorg/spongycastle/asn1/bc/ObjectData;
    if-eqz v2, :cond_2

    .line 241
    invoke-virtual {v2}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/bc/ObjectData;->getData()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;

    move-result-object v1

    .line 244
    .local v1, "encPrivData":Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->getCertificateChain()[Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    .line 246
    .local v0, "certificates":[Lorg/spongycastle/asn1/x509/Certificate;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-direct {p0, v3}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decodeCertificate(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 254
    .end local v0    # "certificates":[Lorg/spongycastle/asn1/x509/Certificate;
    .end local v1    # "encPrivData":Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;
    :goto_0
    return-object v3

    .line 248
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 250
    invoke-virtual {v2}, Lorg/spongycastle/asn1/bc/ObjectData;->getData()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decodeCertificate(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object v3

    goto :goto_0

    .line 254
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 9
    .param p1, "certificate"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v6, 0x0

    .line 622
    if-nez p1, :cond_0

    move-object v0, v6

    .line 666
    :goto_0
    return-object v0

    .line 630
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 637
    .local v3, "encodedCert":[B
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 639
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 640
    .local v0, "alias":Ljava/lang/String;
    iget-object v7, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/bc/ObjectData;

    .line 642
    .local v4, "ent":Lorg/spongycastle/asn1/bc/ObjectData;
    invoke-virtual {v4}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v7

    sget-object v8, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 644
    invoke-virtual {v4}, Lorg/spongycastle/asn1/bc/ObjectData;->getData()[B

    move-result-object v7

    invoke-static {v7, v3}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 632
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "encodedCert":[B
    .end local v4    # "ent":Lorg/spongycastle/asn1/bc/ObjectData;
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    move-object v0, v6

    .line 634
    goto :goto_0

    .line 649
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v3    # "encodedCert":[B
    .restart local v4    # "ent":Lorg/spongycastle/asn1/bc/ObjectData;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v4}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v7

    sget-object v8, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v7

    sget-object v8, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 653
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lorg/spongycastle/asn1/bc/ObjectData;->getData()[B

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;

    move-result-object v2

    .line 654
    .local v2, "encPrivData":Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->getCertificateChain()[Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/Certificate;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v7

    invoke-static {v7, v3}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "encPrivData":Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;
    .end local v4    # "ent":Lorg/spongycastle/asn1/bc/ObjectData;
    :cond_4
    move-object v0, v6

    .line 666
    goto :goto_0

    .line 659
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v4    # "ent":Lorg/spongycastle/asn1/bc/ObjectData;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/bc/ObjectData;

    .line 215
    .local v3, "ent":Lorg/spongycastle/asn1/bc/ObjectData;
    if-eqz v3, :cond_1

    .line 217
    invoke-virtual {v3}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 219
    :cond_0
    invoke-virtual {v3}, Lorg/spongycastle/asn1/bc/ObjectData;->getData()[B

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;

    move-result-object v2

    .line 220
    .local v2, "encPrivData":Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->getCertificateChain()[Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    .line 221
    .local v0, "certificates":[Lorg/spongycastle/asn1/x509/Certificate;
    array-length v5, v0

    new-array v1, v5, [Ljava/security/cert/X509Certificate;

    .line 223
    .local v1, "chain":[Ljava/security/cert/Certificate;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-eq v4, v5, :cond_2

    .line 225
    aget-object v5, v0, v4

    invoke-direct {p0, v5}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decodeCertificate(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object v5

    aput-object v5, v1, v4

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 232
    .end local v0    # "certificates":[Lorg/spongycastle/asn1/x509/Certificate;
    .end local v1    # "chain":[Ljava/security/cert/Certificate;
    .end local v2    # "encPrivData":Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;
    .end local v4    # "i":I
    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/bc/ObjectData;

    .line 291
    .local v1, "ent":Lorg/spongycastle/asn1/bc/ObjectData;
    if-eqz v1, :cond_0

    .line 296
    :try_start_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/bc/ObjectData;->getLastModifiedDate()Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 304
    :goto_0
    return-object v2

    .line 298
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/text/ParseException;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    goto :goto_0

    .line 304
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 13
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v10, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/bc/ObjectData;

    .line 137
    .local v5, "ent":Lorg/spongycastle/asn1/bc/ObjectData;
    if-eqz v5, :cond_7

    .line 139
    invoke-virtual {v5}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v5}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 141
    :cond_0
    iget-object v10, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    .line 142
    .local v0, "cachedKey":Ljava/security/PrivateKey;
    if-eqz v0, :cond_1

    .line 208
    .end local v0    # "cachedKey":Ljava/security/PrivateKey;
    :goto_0
    return-object v0

    .line 147
    .restart local v0    # "cachedKey":Ljava/security/PrivateKey;
    :cond_1
    invoke-virtual {v5}, Lorg/spongycastle/asn1/bc/ObjectData;->getData()[B

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;

    move-result-object v4

    .line 148
    .local v4, "encPrivData":Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;
    invoke-virtual {v4}, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->getEncryptedPrivateKeyInfo()Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v2

    .line 152
    .local v2, "encInfo":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :try_start_0
    const-string v10, "PRIVATE_KEY_ENCRYPTION"

    invoke-virtual {v2}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    invoke-virtual {v2}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v12

    invoke-direct {p0, v10, v11, p2, v12}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decryptData(Ljava/lang/String;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[C[B)[B

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v8

    .line 155
    .local v8, "pInfo":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    iget-object v10, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    if-eqz v10, :cond_2

    .line 157
    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v10, v11}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v6

    .line 164
    .local v6, "kFact":Ljava/security/KeyFactory;
    :goto_1
    new-instance v10, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v6, v10}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v9

    .line 169
    .local v9, "privateKey":Ljava/security/PrivateKey;
    iget-object v10, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v10, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v9

    .line 171
    goto :goto_0

    .line 161
    .end local v6    # "kFact":Ljava/security/KeyFactory;
    .end local v9    # "privateKey":Ljava/security/PrivateKey;
    :cond_2
    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->getPublicKeyAlg(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .restart local v6    # "kFact":Ljava/security/KeyFactory;
    goto :goto_1

    .line 173
    .end local v6    # "kFact":Ljava/security/KeyFactory;
    .end local v8    # "pInfo":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/security/UnrecoverableKeyException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BCFKS KeyStore unable to recover private key ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 178
    .end local v0    # "cachedKey":Ljava/security/PrivateKey;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "encInfo":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v4    # "encPrivData":Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;
    :cond_3
    invoke-virtual {v5}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v5}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 180
    :cond_4
    invoke-virtual {v5}, Lorg/spongycastle/asn1/bc/ObjectData;->getData()[B

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/bc/EncryptedSecretKeyData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/EncryptedSecretKeyData;

    move-result-object v3

    .line 184
    .local v3, "encKeyData":Lorg/spongycastle/asn1/bc/EncryptedSecretKeyData;
    :try_start_1
    const-string v10, "SECRET_KEY_ENCRYPTION"

    invoke-virtual {v3}, Lorg/spongycastle/asn1/bc/EncryptedSecretKeyData;->getKeyEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    invoke-virtual {v3}, Lorg/spongycastle/asn1/bc/EncryptedSecretKeyData;->getEncryptedKeyData()[B

    move-result-object v12

    invoke-direct {p0, v10, v11, p2, v12}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decryptData(Ljava/lang/String;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[C[B)[B

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/bc/SecretKeyData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/SecretKeyData;

    move-result-object v7

    .line 186
    .local v7, "keyData":Lorg/spongycastle/asn1/bc/SecretKeyData;
    iget-object v10, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    if-eqz v10, :cond_5

    .line 188
    invoke-virtual {v7}, Lorg/spongycastle/asn1/bc/SecretKeyData;->getKeyAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v10, v11}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 195
    .local v6, "kFact":Ljavax/crypto/SecretKeyFactory;
    :goto_2
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/bc/SecretKeyData;->getKeyBytes()[B

    move-result-object v11

    invoke-virtual {v7}, Lorg/spongycastle/asn1/bc/SecretKeyData;->getKeyAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v12

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v10}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    goto/16 :goto_0

    .line 192
    .end local v6    # "kFact":Ljavax/crypto/SecretKeyFactory;
    :cond_5
    invoke-virtual {v7}, Lorg/spongycastle/asn1/bc/SecretKeyData;->getKeyAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .restart local v6    # "kFact":Ljavax/crypto/SecretKeyFactory;
    goto :goto_2

    .line 197
    .end local v6    # "kFact":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "keyData":Lorg/spongycastle/asn1/bc/SecretKeyData;
    :catch_1
    move-exception v1

    .line 199
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/security/UnrecoverableKeyException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BCFKS KeyStore unable to recover secret key ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 204
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "encKeyData":Lorg/spongycastle/asn1/bc/EncryptedSecretKeyData;
    :cond_6
    new-instance v10, Ljava/security/UnrecoverableKeyException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BCFKS KeyStore unable to recover secret key ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "): type not recognized"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 208
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 610
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/bc/ObjectData;

    .line 612
    .local v0, "ent":Lorg/spongycastle/asn1/bc/ObjectData;
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 617
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 596
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/bc/ObjectData;

    .line 598
    .local v0, "ent":Lorg/spongycastle/asn1/bc/ObjectData;
    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {v0}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v1

    .line 601
    .local v1, "entryType":Ljava/math/BigInteger;
    sget-object v3, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    .line 602
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 605
    .end local v1    # "entryType":Ljava/math/BigInteger;
    :cond_1
    return v2
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 15
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 811
    iget-object v12, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 812
    iget-object v12, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 814
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->creationDate:Ljava/util/Date;

    iput-object v12, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    .line 815
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 817
    if-nez p1, :cond_1

    .line 820
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    iput-object v12, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->creationDate:Ljava/util/Date;

    iput-object v12, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    .line 822
    new-instance v12, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v13, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v14, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v12, v13, v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v12, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 823
    const/16 v12, 0x40

    invoke-direct {p0, v12}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generatePkbdAlgorithmIdentifier(I)Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    .line 883
    :cond_0
    return-void

    .line 828
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/ASN1InputStream;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 830
    .local v1, "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/asn1/bc/ObjectStore;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/ObjectStore;

    move-result-object v10

    .line 832
    .local v10, "store":Lorg/spongycastle/asn1/bc/ObjectStore;
    invoke-virtual {v10}, Lorg/spongycastle/asn1/bc/ObjectStore;->getIntegrityCheck()Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

    move-result-object v4

    .line 833
    .local v4, "integrityCheck":Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;
    invoke-virtual {v4}, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;->getType()I

    move-result v12

    if-nez v12, :cond_2

    .line 835
    invoke-virtual {v4}, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;->getIntegrityCheck()Lorg/spongycastle/asn1/ASN1Object;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;

    move-result-object v7

    .line 837
    .local v7, "pbkdMacIntegrityCheck":Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;
    invoke-virtual {v7}, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->getMacAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 838
    invoke-virtual {v7}, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->getPbkdAlgorithm()Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    .line 840
    invoke-virtual {v10}, Lorg/spongycastle/asn1/bc/ObjectStore;->getStoreData()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-interface {v12}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v12

    move-object/from16 v0, p2

    invoke-direct {p0, v12, v7, v0}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->verifyMac([BLorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;[C)V

    .line 847
    invoke-virtual {v10}, Lorg/spongycastle/asn1/bc/ObjectStore;->getStoreData()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v9

    .line 850
    .local v9, "sData":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v12, v9, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;

    if-eqz v12, :cond_3

    move-object v3, v9

    .line 852
    check-cast v3, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;

    .line 853
    .local v3, "encryptedStoreData":Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;->getEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    .line 855
    .local v8, "protectAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    const-string v12, "STORE_ENCRYPTION"

    invoke-virtual {v3}, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;->getEncryptedContent()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v13

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v13

    move-object/from16 v0, p2

    invoke-direct {p0, v12, v8, v0, v13}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decryptData(Ljava/lang/String;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[C[B)[B

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/asn1/bc/ObjectStoreData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/ObjectStoreData;

    move-result-object v11

    .line 864
    .end local v3    # "encryptedStoreData":Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;
    .end local v8    # "protectAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .local v11, "storeData":Lorg/spongycastle/asn1/bc/ObjectStoreData;
    :goto_0
    :try_start_0
    invoke-virtual {v11}, Lorg/spongycastle/asn1/bc/ObjectStoreData;->getCreationDate()Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v12

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->creationDate:Ljava/util/Date;

    .line 865
    invoke-virtual {v11}, Lorg/spongycastle/asn1/bc/ObjectStoreData;->getLastModifiedDate()Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v12

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    invoke-virtual {v11}, Lorg/spongycastle/asn1/bc/ObjectStoreData;->getIntegrityAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v12

    iget-object v13, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v12, v13}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 874
    new-instance v12, Ljava/io/IOException;

    const-string v13, "BCFKS KeyStore storeData integrity algorithm does not match store integrity algorithm."

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 844
    .end local v7    # "pbkdMacIntegrityCheck":Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;
    .end local v9    # "sData":Lorg/spongycastle/asn1/ASN1Encodable;
    .end local v11    # "storeData":Lorg/spongycastle/asn1/bc/ObjectStoreData;
    :cond_2
    new-instance v12, Ljava/io/IOException;

    const-string v13, "BCFKS KeyStore unable to recognize integrity check."

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 859
    .restart local v7    # "pbkdMacIntegrityCheck":Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;
    .restart local v9    # "sData":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_3
    invoke-static {v9}, Lorg/spongycastle/asn1/bc/ObjectStoreData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/ObjectStoreData;

    move-result-object v11

    .restart local v11    # "storeData":Lorg/spongycastle/asn1/bc/ObjectStoreData;
    goto :goto_0

    .line 867
    :catch_0
    move-exception v2

    .line 869
    .local v2, "e":Ljava/text/ParseException;
    new-instance v12, Ljava/io/IOException;

    const-string v13, "BCFKS KeyStore unable to parse store data information."

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 877
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_4
    invoke-virtual {v11}, Lorg/spongycastle/asn1/bc/ObjectStoreData;->getObjectDataSequence()Lorg/spongycastle/asn1/bc/ObjectDataSequence;

    move-result-object v12

    invoke-virtual {v12}, Lorg/spongycastle/asn1/bc/ObjectDataSequence;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 879
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/asn1/bc/ObjectData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/ObjectData;

    move-result-object v6

    .line 881
    .local v6, "objData":Lorg/spongycastle/asn1/bc/ObjectData;
    iget-object v12, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/bc/ObjectData;->getIdentifier()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 10
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/spongycastle/asn1/bc/ObjectData;

    .line 507
    .local v8, "entry":Lorg/spongycastle/asn1/bc/ObjectData;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 508
    .local v3, "creationDate":Ljava/util/Date;
    move-object v4, v3

    .line 510
    .local v4, "lastEditDate":Ljava/util/Date;
    if-eqz v8, :cond_1

    .line 512
    invoke-virtual {v8}, Lorg/spongycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BCFKS KeyStore already has a key entry with alias "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_0
    invoke-direct {p0, v8, v3}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->extractCreationDate(Lorg/spongycastle/asn1/bc/ObjectData;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 522
    :cond_1
    :try_start_0
    iget-object v9, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v0, Lorg/spongycastle/asn1/bc/ObjectData;

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/asn1/bc/ObjectData;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {v9, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    iput-object v4, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    .line 530
    return-void

    .line 524
    :catch_0
    move-exception v7

    .line 526
    .local v7, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BCFKS KeyStore unable to handle certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 25
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 311
    .local v6, "creationDate":Ljava/util/Date;
    move-object v7, v6

    .line 313
    .local v7, "lastEditDate":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/asn1/bc/ObjectData;

    .line 314
    .local v16, "entry":Lorg/spongycastle/asn1/bc/ObjectData;
    if-eqz v16, :cond_0

    .line 316
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->extractCreationDate(Lorg/spongycastle/asn1/bc/ObjectData;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    .line 319
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    move-object/from16 v0, p2

    instance-of v3, v0, Ljava/security/PrivateKey;

    if-eqz v3, :cond_4

    .line 323
    if-nez p4, :cond_1

    .line 325
    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "BCFKS KeyStore requires a certificate chain for private key storage."

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 333
    :cond_1
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v14

    .line 335
    .local v14, "encodedKey":[B
    const/16 v3, 0x20

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generatePkbdAlgorithmIdentifier(I)Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v23

    .line 336
    .local v23, "pbkdAlgId":Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    const-string v3, "PRIVATE_KEY_ENCRYPTION"

    if-eqz p3, :cond_2

    .end local p3    # "password":[C
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;Ljava/lang/String;[C)[B

    move-result-object v18

    .line 339
    .local v18, "keyBytes":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    if-nez v3, :cond_3

    .line 341
    const-string v3, "AES/CCM/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v12

    .line 348
    .local v12, "c":Ljavax/crypto/Cipher;
    :goto_1
    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    move-object/from16 v0, v18

    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v12, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 350
    invoke-virtual {v12, v14}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    .line 352
    .local v15, "encryptedKey":[B
    invoke-virtual {v12}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v11

    .line 354
    .local v11, "algParams":Ljava/security/AlgorithmParameters;
    new-instance v22, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;

    new-instance v3, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    sget-object v4, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/cms/CCMParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/CCMParameters;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;Lorg/spongycastle/asn1/pkcs/EncryptionScheme;)V

    .line 356
    .local v22, "pbeParams":Lorg/spongycastle/asn1/pkcs/PBES2Parameters;
    new-instance v20, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    new-instance v3, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v22

    invoke-direct {v3, v4, v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v15}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 358
    .local v20, "keyInfo":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->createPrivateKeySequence(Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;[Ljava/security/cert/Certificate;)Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;

    move-result-object v21

    .line 360
    .local v21, "keySeq":Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    move-object/from16 v24, v0

    new-instance v3, Lorg/spongycastle/asn1/bc/ObjectData;

    sget-object v4, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->getEncoded()[B

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v9}, Lorg/spongycastle/asn1/bc/ObjectData;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v20    # "keyInfo":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v21    # "keySeq":Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;
    :goto_2
    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    .line 434
    return-void

    .line 336
    .end local v11    # "algParams":Ljava/security/AlgorithmParameters;
    .end local v12    # "c":Ljavax/crypto/Cipher;
    .end local v15    # "encryptedKey":[B
    .end local v18    # "keyBytes":[B
    .end local v22    # "pbeParams":Lorg/spongycastle/asn1/pkcs/PBES2Parameters;
    .restart local p3    # "password":[C
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    new-array v0, v4, [C

    move-object/from16 p3, v0

    goto/16 :goto_0

    .line 345
    .end local p3    # "password":[C
    .restart local v18    # "keyBytes":[B
    :cond_3
    const-string v3, "AES/CCM/NoPadding"

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v3, v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .restart local v12    # "c":Ljavax/crypto/Cipher;
    goto :goto_1

    .line 362
    .end local v12    # "c":Ljavax/crypto/Cipher;
    .end local v14    # "encodedKey":[B
    .end local v18    # "keyBytes":[B
    .end local v23    # "pbkdAlgId":Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    :catch_0
    move-exception v13

    .line 364
    .local v13, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BCFKS KeyStore exception storing private key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v13}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 367
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local p3    # "password":[C
    :cond_4
    move-object/from16 v0, p2

    instance-of v3, v0, Ljavax/crypto/SecretKey;

    if-eqz v3, :cond_a

    .line 369
    if-eqz p4, :cond_5

    .line 371
    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "BCFKS KeyStore cannot store certificate chain with secret key."

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 376
    :cond_5
    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v14

    .line 378
    .restart local v14    # "encodedKey":[B
    const/16 v3, 0x20

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generatePkbdAlgorithmIdentifier(I)Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v23

    .line 379
    .restart local v23    # "pbkdAlgId":Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    const-string v3, "SECRET_KEY_ENCRYPTION"

    if-eqz p3, :cond_6

    .end local p3    # "password":[C
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;Ljava/lang/String;[C)[B

    move-result-object v18

    .line 382
    .restart local v18    # "keyBytes":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    if-nez v3, :cond_7

    .line 384
    const-string v3, "AES/CCM/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v12

    .line 391
    .restart local v12    # "c":Ljavax/crypto/Cipher;
    :goto_4
    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    move-object/from16 v0, v18

    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v12, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 394
    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 397
    .local v17, "keyAlg":Ljava/lang/String;
    const-string v3, "AES"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_8

    .line 399
    new-instance v3, Lorg/spongycastle/asn1/bc/SecretKeyData;

    sget-object v4, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4, v14}, Lorg/spongycastle/asn1/bc/SecretKeyData;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[B)V

    invoke-virtual {v3}, Lorg/spongycastle/asn1/bc/SecretKeyData;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v12, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    .line 415
    .restart local v15    # "encryptedKey":[B
    :goto_5
    invoke-virtual {v12}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v11

    .line 417
    .restart local v11    # "algParams":Ljava/security/AlgorithmParameters;
    new-instance v22, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;

    new-instance v3, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    sget-object v4, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v11}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/cms/CCMParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/CCMParameters;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;Lorg/spongycastle/asn1/pkcs/EncryptionScheme;)V

    .line 419
    .restart local v22    # "pbeParams":Lorg/spongycastle/asn1/pkcs/PBES2Parameters;
    new-instance v19, Lorg/spongycastle/asn1/bc/EncryptedSecretKeyData;

    new-instance v3, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v22

    invoke-direct {v3, v4, v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v15}, Lorg/spongycastle/asn1/bc/EncryptedSecretKeyData;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 421
    .local v19, "keyData":Lorg/spongycastle/asn1/bc/EncryptedSecretKeyData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    move-object/from16 v24, v0

    new-instance v3, Lorg/spongycastle/asn1/bc/ObjectData;

    sget-object v4, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/bc/EncryptedSecretKeyData;->getEncoded()[B

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v9}, Lorg/spongycastle/asn1/bc/ObjectData;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 423
    .end local v11    # "algParams":Ljava/security/AlgorithmParameters;
    .end local v12    # "c":Ljavax/crypto/Cipher;
    .end local v14    # "encodedKey":[B
    .end local v15    # "encryptedKey":[B
    .end local v17    # "keyAlg":Ljava/lang/String;
    .end local v18    # "keyBytes":[B
    .end local v19    # "keyData":Lorg/spongycastle/asn1/bc/EncryptedSecretKeyData;
    .end local v22    # "pbeParams":Lorg/spongycastle/asn1/pkcs/PBES2Parameters;
    .end local v23    # "pbkdAlgId":Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    :catch_1
    move-exception v13

    .line 425
    .restart local v13    # "e":Ljava/lang/Exception;
    new-instance v3, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BCFKS KeyStore exception storing private key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v13}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 379
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v14    # "encodedKey":[B
    .restart local v23    # "pbkdAlgId":Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    .restart local p3    # "password":[C
    :cond_6
    const/4 v4, 0x0

    :try_start_3
    new-array v0, v4, [C

    move-object/from16 p3, v0

    goto/16 :goto_3

    .line 388
    .end local p3    # "password":[C
    .restart local v18    # "keyBytes":[B
    :cond_7
    const-string v3, "AES/CCM/NoPadding"

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v3, v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v12

    .restart local v12    # "c":Ljavax/crypto/Cipher;
    goto/16 :goto_4

    .line 403
    .restart local v17    # "keyAlg":Ljava/lang/String;
    :cond_8
    sget-object v3, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 404
    .local v10, "algOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    if-eqz v10, :cond_9

    .line 406
    new-instance v3, Lorg/spongycastle/asn1/bc/SecretKeyData;

    invoke-direct {v3, v10, v14}, Lorg/spongycastle/asn1/bc/SecretKeyData;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[B)V

    invoke-virtual {v3}, Lorg/spongycastle/asn1/bc/SecretKeyData;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v12, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    .restart local v15    # "encryptedKey":[B
    goto/16 :goto_5

    .line 410
    .end local v15    # "encryptedKey":[B
    :cond_9
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BCFKS KeyStore cannot recognize secret key ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for storage."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 430
    .end local v10    # "algOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v12    # "c":Ljavax/crypto/Cipher;
    .end local v14    # "encodedKey":[B
    .end local v17    # "keyAlg":Ljava/lang/String;
    .end local v18    # "keyBytes":[B
    .end local v23    # "pbkdAlgId":Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    .restart local p3    # "password":[C
    :cond_a
    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "BCFKS KeyStore unable to recognize key."

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 11
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 456
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 457
    .local v3, "creationDate":Ljava/util/Date;
    move-object v4, v3

    .line 459
    .local v4, "lastEditDate":Ljava/util/Date;
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/asn1/bc/ObjectData;

    .line 460
    .local v9, "entry":Lorg/spongycastle/asn1/bc/ObjectData;
    if-eqz v9, :cond_0

    .line 462
    invoke-direct {p0, v9, v3}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->extractCreationDate(Lorg/spongycastle/asn1/bc/ObjectData;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 465
    :cond_0
    if-eqz p3, :cond_1

    .line 471
    :try_start_0
    invoke-static {p2}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 480
    .local v8, "encInfo":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v10, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v0, Lorg/spongycastle/asn1/bc/ObjectData;

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-direct {p0, v8, p3}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->createPrivateKeySequence(Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;[Ljava/security/cert/Certificate;)Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/asn1/bc/ObjectData;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {v10, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 500
    .end local v8    # "encInfo":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :goto_0
    iput-object v4, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    .line 501
    return-void

    .line 473
    :catch_0
    move-exception v7

    .line 475
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    const-string v1, "BCFKS KeyStore private key encoding must be an EncryptedPrivateKeyInfo."

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 483
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "encInfo":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :catch_1
    move-exception v7

    .line 485
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BCFKS KeyStore exception storing protected private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 492
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "encInfo":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :cond_1
    :try_start_2
    iget-object v10, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v0, Lorg/spongycastle/asn1/bc/ObjectData;

    sget-object v1, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/asn1/bc/ObjectData;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {v10, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 494
    :catch_2
    move-exception v7

    .line 496
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BCFKS KeyStore exception storing protected private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public engineSize()I
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 22
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 743
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lorg/spongycastle/asn1/bc/ObjectData;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/spongycastle/asn1/bc/ObjectData;

    move-object v10, v3

    check-cast v10, [Lorg/spongycastle/asn1/bc/ObjectData;

    .line 745
    .local v10, "dataArray":[Lorg/spongycastle/asn1/bc/ObjectData;
    const/16 v3, 0x20

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generatePkbdAlgorithmIdentifier(I)Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v17

    .line 746
    .local v17, "pbkdAlgId":Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    const-string v4, "STORE_ENCRYPTION"

    if-eqz p2, :cond_0

    move-object/from16 v3, p2

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4, v3}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;Ljava/lang/String;[C)[B

    move-result-object v14

    .line 748
    .local v14, "keyBytes":[B
    new-instance v2, Lorg/spongycastle/asn1/bc/ObjectStoreData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->creationDate:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    new-instance v6, Lorg/spongycastle/asn1/bc/ObjectDataSequence;

    invoke-direct {v6, v10}, Lorg/spongycastle/asn1/bc/ObjectDataSequence;-><init>([Lorg/spongycastle/asn1/bc/ObjectData;)V

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/asn1/bc/ObjectStoreData;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Ljava/util/Date;Ljava/util/Date;Lorg/spongycastle/asn1/bc/ObjectDataSequence;Ljava/lang/String;)V

    .line 754
    .local v2, "storeData":Lorg/spongycastle/asn1/bc/ObjectStoreData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    if-nez v3, :cond_1

    .line 756
    const-string v3, "AES/CCM/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v9

    .line 763
    .local v9, "c":Ljavax/crypto/Cipher;
    :goto_1
    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v14, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 765
    invoke-virtual {v2}, Lorg/spongycastle/asn1/bc/ObjectStoreData;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v9, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v12

    .line 767
    .local v12, "encOut":[B
    invoke-virtual {v9}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v8

    .line 769
    .local v8, "algorithmParameters":Ljava/security/AlgorithmParameters;
    new-instance v16, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;

    new-instance v3, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    sget-object v4, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/cms/CCMParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/CCMParameters;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;Lorg/spongycastle/asn1/pkcs/EncryptionScheme;)V

    .line 771
    .local v16, "pbeParams":Lorg/spongycastle/asn1/pkcs/PBES2Parameters;
    new-instance v13, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;

    new-instance v3, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v13, v3, v12}, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    .line 791
    .local v13, "encStoreData":Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v19

    .line 793
    .local v19, "pbkdf2Params":Lorg/spongycastle/asn1/pkcs/PBKDF2Params;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v3

    array-length v3, v3

    new-array v0, v3, [B

    move-object/from16 v18, v0

    .line 794
    .local v18, "pbkdSalt":[B
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->getDefaultSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 796
    new-instance v3, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    new-instance v5, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getKeyLength()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v6, v7, v1}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    .line 798
    invoke-virtual {v13}, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;->getEncoded()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v4, v5, v1}, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->calculateMac([BLorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;[C)[B

    move-result-object v15

    .line 800
    .local v15, "mac":[B
    new-instance v20, Lorg/spongycastle/asn1/bc/ObjectStore;

    new-instance v3, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

    new-instance v4, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-direct {v4, v5, v6, v15}, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;[B)V

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;)V

    move-object/from16 v0, v20

    invoke-direct {v0, v13, v3}, Lorg/spongycastle/asn1/bc/ObjectStore;-><init>(Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;)V

    .line 802
    .local v20, "store":Lorg/spongycastle/asn1/bc/ObjectStore;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/bc/ObjectStore;->getEncoded()[B

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 804
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 805
    return-void

    .line 746
    .end local v2    # "storeData":Lorg/spongycastle/asn1/bc/ObjectStoreData;
    .end local v8    # "algorithmParameters":Ljava/security/AlgorithmParameters;
    .end local v9    # "c":Ljavax/crypto/Cipher;
    .end local v12    # "encOut":[B
    .end local v13    # "encStoreData":Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;
    .end local v14    # "keyBytes":[B
    .end local v15    # "mac":[B
    .end local v16    # "pbeParams":Lorg/spongycastle/asn1/pkcs/PBES2Parameters;
    .end local v18    # "pbkdSalt":[B
    .end local v19    # "pbkdf2Params":Lorg/spongycastle/asn1/pkcs/PBKDF2Params;
    .end local v20    # "store":Lorg/spongycastle/asn1/bc/ObjectStore;
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [C

    goto/16 :goto_0

    .line 760
    .restart local v2    # "storeData":Lorg/spongycastle/asn1/bc/ObjectStoreData;
    .restart local v14    # "keyBytes":[B
    :cond_1
    :try_start_1
    const-string v3, "AES/CCM/NoPadding"

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v3, v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v9

    .restart local v9    # "c":Ljavax/crypto/Cipher;
    goto/16 :goto_1

    .line 773
    .end local v9    # "c":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v11

    .line 775
    .local v11, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v11}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 777
    .end local v11    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_1
    move-exception v11

    .line 779
    .local v11, "e":Ljavax/crypto/BadPaddingException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v11}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 781
    .end local v11    # "e":Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v11

    .line 783
    .local v11, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v11}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 785
    .end local v11    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_3
    move-exception v11

    .line 787
    .local v11, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v11}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
