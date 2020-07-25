.class public Lorg/spongycastle/asn1/pkcs/SignerInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SignerInfo.java"


# instance fields
.field private authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

.field private digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

.field private issuerAndSerialNumber:Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;

.field private unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "version"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p2, "issuerAndSerialNumber"    # Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;
    .param p3, "digAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p4, "authenticatedAttributes"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p5, "digEncryptionAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p6, "encryptedDigest"    # Lorg/spongycastle/asn1/ASN1OctetString;
    .param p7, "unauthenticatedAttributes"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 57
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->issuerAndSerialNumber:Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;

    .line 58
    iput-object p3, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 59
    iput-object p4, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 60
    iput-object p5, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 61
    iput-object p6, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 62
    iput-object p7, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 70
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 71
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->issuerAndSerialNumber:Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;

    .line 72
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 74
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 76
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    .line 78
    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 80
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 88
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 90
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 98
    :goto_1
    return-void

    .line 84
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    iput-object v4, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 85
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    .line 96
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    iput-object v4, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    goto :goto_1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/SignerInfo;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 35
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;

    .line 41
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 39
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Lorg/spongycastle/asn1/pkcs/SignerInfo;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/pkcs/SignerInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 44
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAuthenticatedAttributes()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getDigestEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncryptedDigest()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getIssuerAndSerialNumber()Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->issuerAndSerialNumber:Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;

    return-object v0
.end method

.method public getUnauthenticatedAttributes()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 159
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 160
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->issuerAndSerialNumber:Lorg/spongycastle/asn1/pkcs/IssuerAndSerialNumber;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 163
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 165
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 168
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 169
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 171
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 173
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/asn1/pkcs/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 176
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
