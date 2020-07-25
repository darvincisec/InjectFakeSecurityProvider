.class public Lorg/spongycastle/jce/PKCS12Util;
.super Ljava/lang/Object;
.source "PKCS12Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculatePbeMac(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[BI[C[BLjava/lang/String;)[B
    .locals 6
    .param p0, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "salt"    # [B
    .param p2, "itCount"    # I
    .param p3, "password"    # [C
    .param p4, "data"    # [B
    .param p5, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 116
    .local v2, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 117
    .local v0, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 118
    .local v4, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v2, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 120
    .local v1, "key":Ljavax/crypto/SecretKey;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 121
    .local v3, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v3, v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 122
    invoke-virtual {v3, p4}, Ljavax/crypto/Mac;->update([B)V

    .line 124
    invoke-virtual {v3}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v5

    return-object v5
.end method

.method public static convertToDefiniteLength([B)[B
    .locals 4
    .param p0, "berPKCS12File"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/spongycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    .local v1, "dOut":Lorg/spongycastle/asn1/DEROutputStream;
    invoke-static {p0}, Lorg/spongycastle/asn1/pkcs/Pfx;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/Pfx;

    move-result-object v2

    .line 45
    .local v2, "pfx":Lorg/spongycastle/asn1/pkcs/Pfx;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 47
    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/DEROutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static convertToDefiniteLength([B[CLjava/lang/String;)[B
    .locals 23
    .param p0, "berPKCS12File"    # [B
    .param p1, "passwd"    # [C
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static/range {p0 .. p0}, Lorg/spongycastle/asn1/pkcs/Pfx;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/Pfx;

    move-result-object v21

    .line 66
    .local v21, "pfx":Lorg/spongycastle/asn1/pkcs/Pfx;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/Pfx;->getAuthSafe()Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-result-object v16

    .line 68
    .local v16, "info":Lorg/spongycastle/asn1/pkcs/ContentInfo;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v11

    .line 70
    .local v11, "content":Lorg/spongycastle/asn1/ASN1OctetString;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 71
    .local v10, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v14, Lorg/spongycastle/asn1/DEROutputStream;

    invoke-direct {v14, v10}, Lorg/spongycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 73
    .local v14, "dOut":Lorg/spongycastle/asn1/DEROutputStream;
    new-instance v12, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {v11}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v12, v3}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 74
    .local v12, "contentIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v20

    .line 76
    .local v20, "obj":Lorg/spongycastle/asn1/ASN1Primitive;
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/spongycastle/asn1/DEROutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 78
    new-instance v17, Lorg/spongycastle/asn1/pkcs/ContentInfo;

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    new-instance v4, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Lorg/spongycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 80
    .end local v16    # "info":Lorg/spongycastle/asn1/pkcs/ContentInfo;
    .local v17, "info":Lorg/spongycastle/asn1/pkcs/ContentInfo;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/Pfx;->getMacData()Lorg/spongycastle/asn1/pkcs/MacData;

    move-result-object v18

    .line 83
    .local v18, "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 84
    .local v5, "itCount":I
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 85
    .local v7, "data":[B
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/pkcs/MacData;->getMac()Lorg/spongycastle/asn1/x509/DigestInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v4

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/jce/PKCS12Util;->calculatePbeMac(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[BI[C[BLjava/lang/String;)[B

    move-result-object v22

    .line 87
    .local v22, "res":[B
    new-instance v9, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/pkcs/MacData;->getMac()Lorg/spongycastle/asn1/x509/DigestInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v9, v3, v4}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 88
    .local v9, "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v13, Lorg/spongycastle/asn1/x509/DigestInfo;

    move-object/from16 v0, v22

    invoke-direct {v13, v9, v0}, Lorg/spongycastle/asn1/x509/DigestInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 90
    .local v13, "dInfo":Lorg/spongycastle/asn1/x509/DigestInfo;
    new-instance v19, Lorg/spongycastle/asn1/pkcs/MacData;

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v13, v3, v5}, Lorg/spongycastle/asn1/pkcs/MacData;-><init>(Lorg/spongycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v18    # "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    .local v19, "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    new-instance v21, Lorg/spongycastle/asn1/pkcs/Pfx;

    .end local v21    # "pfx":Lorg/spongycastle/asn1/pkcs/Pfx;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/pkcs/Pfx;-><init>(Lorg/spongycastle/asn1/pkcs/ContentInfo;Lorg/spongycastle/asn1/pkcs/MacData;)V

    .line 99
    .restart local v21    # "pfx":Lorg/spongycastle/asn1/pkcs/Pfx;
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 101
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/spongycastle/asn1/DEROutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 92
    .end local v5    # "itCount":I
    .end local v7    # "data":[B
    .end local v9    # "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v13    # "dInfo":Lorg/spongycastle/asn1/x509/DigestInfo;
    .end local v19    # "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    .end local v22    # "res":[B
    .restart local v18    # "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    :catch_0
    move-exception v15

    .line 94
    .local v15, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error constructing MAC: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
