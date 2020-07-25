.class public Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;
.super Ljava/lang/Object;
.source "CertTemplateBuilder.java"


# instance fields
.field private extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private issuer:Lorg/spongycastle/asn1/x500/X500Name;

.field private issuerUID:Lorg/spongycastle/asn1/DERBitString;

.field private publicKey:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

.field private serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

.field private signingAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private subject:Lorg/spongycastle/asn1/x500/X500Name;

.field private subjectUID:Lorg/spongycastle/asn1/DERBitString;

.field private validity:Lorg/spongycastle/asn1/crmf/OptionalValidity;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;IZLorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "tagNo"    # I
    .param p3, "isExplicit"    # Z
    .param p4, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 145
    if-eqz p4, :cond_0

    .line 147
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-direct {v0, p3, p2, p4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lorg/spongycastle/asn1/crmf/CertTemplate;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 129
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {p0, v0, v3, v3, v1}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;IZLorg/spongycastle/asn1/ASN1Encodable;)V

    .line 130
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {p0, v0, v4, v3, v1}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;IZLorg/spongycastle/asn1/ASN1Encodable;)V

    .line 131
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->signingAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;IZLorg/spongycastle/asn1/ASN1Encodable;)V

    .line 132
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-direct {p0, v0, v1, v4, v2}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;IZLorg/spongycastle/asn1/ASN1Encodable;)V

    .line 133
    const/4 v1, 0x4

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->validity:Lorg/spongycastle/asn1/crmf/OptionalValidity;

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;IZLorg/spongycastle/asn1/ASN1Encodable;)V

    .line 134
    const/4 v1, 0x5

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-direct {p0, v0, v1, v4, v2}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;IZLorg/spongycastle/asn1/ASN1Encodable;)V

    .line 135
    const/4 v1, 0x6

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->publicKey:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;IZLorg/spongycastle/asn1/ASN1Encodable;)V

    .line 136
    const/4 v1, 0x7

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->issuerUID:Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;IZLorg/spongycastle/asn1/ASN1Encodable;)V

    .line 137
    const/16 v1, 0x8

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->subjectUID:Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;IZLorg/spongycastle/asn1/ASN1Encodable;)V

    .line 138
    const/16 v1, 0x9

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;IZLorg/spongycastle/asn1/ASN1Encodable;)V

    .line 140
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/spongycastle/asn1/crmf/CertTemplate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertTemplate;

    move-result-object v1

    return-object v1
.end method

.method public setExtensions(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "extens"    # Lorg/spongycastle/asn1/x509/Extensions;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    .line 106
    return-object p0
.end method

.method public setExtensions(Lorg/spongycastle/asn1/x509/X509Extensions;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;
    .locals 1
    .param p1, "extens"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 99
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->setExtensions(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setIssuer(Lorg/spongycastle/asn1/x500/X500Name;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "name"    # Lorg/spongycastle/asn1/x500/X500Name;

    .prologue
    .line 52
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    .line 54
    return-object p0
.end method

.method public setIssuerUID(Lorg/spongycastle/asn1/DERBitString;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "uid"    # Lorg/spongycastle/asn1/DERBitString;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->issuerUID:Lorg/spongycastle/asn1/DERBitString;

    .line 83
    return-object p0
.end method

.method public setPublicKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "spki"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    .line 73
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->publicKey:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 75
    return-object p0
.end method

.method public setSerialNumber(Lorg/spongycastle/asn1/ASN1Integer;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "ser"    # Lorg/spongycastle/asn1/ASN1Integer;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    .line 40
    return-object p0
.end method

.method public setSigningAlg(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "aid"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->signingAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 47
    return-object p0
.end method

.method public setSubject(Lorg/spongycastle/asn1/x500/X500Name;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "name"    # Lorg/spongycastle/asn1/x500/X500Name;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    .line 68
    return-object p0
.end method

.method public setSubjectUID(Lorg/spongycastle/asn1/DERBitString;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "uid"    # Lorg/spongycastle/asn1/DERBitString;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->subjectUID:Lorg/spongycastle/asn1/DERBitString;

    .line 91
    return-object p0
.end method

.method public setValidity(Lorg/spongycastle/asn1/crmf/OptionalValidity;)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;
    .locals 0
    .param p1, "v"    # Lorg/spongycastle/asn1/crmf/OptionalValidity;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->validity:Lorg/spongycastle/asn1/crmf/OptionalValidity;

    .line 61
    return-object p0
.end method

.method public setVersion(I)Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;
    .locals 4
    .param p1, "ver"    # I

    .prologue
    .line 31
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/CertTemplateBuilder;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 33
    return-object p0
.end method
