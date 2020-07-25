.class public Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertifiedKeyPair.java"


# instance fields
.field private certOrEncCert:Lorg/spongycastle/asn1/cmp/CertOrEncCert;

.field private privateKey:Lorg/spongycastle/asn1/crmf/EncryptedValue;

.field private publicationInfo:Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 21
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 22
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cmp/CertOrEncCert;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/CertOrEncCert;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/spongycastle/asn1/cmp/CertOrEncCert;

    .line 24
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 26
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 28
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 29
    .local v0, "tagged":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-nez v1, :cond_1

    .line 31
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/EncryptedValue;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    .line 44
    .end local v0    # "tagged":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_0
    :goto_0
    return-void

    .line 35
    .restart local v0    # "tagged":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_1
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;

    goto :goto_0

    .line 40
    .end local v0    # "tagged":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_2
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/EncryptedValue;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    .line 41
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/CertOrEncCert;)V
    .locals 1
    .param p1, "certOrEncCert"    # Lorg/spongycastle/asn1/cmp/CertOrEncCert;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0, v0}, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;-><init>(Lorg/spongycastle/asn1/cmp/CertOrEncCert;Lorg/spongycastle/asn1/crmf/EncryptedValue;Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/CertOrEncCert;Lorg/spongycastle/asn1/crmf/EncryptedValue;Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;)V
    .locals 2
    .param p1, "certOrEncCert"    # Lorg/spongycastle/asn1/cmp/CertOrEncCert;
    .param p2, "privateKey"    # Lorg/spongycastle/asn1/crmf/EncryptedValue;
    .param p3, "publicationInfo"    # Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certOrEncCert\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/spongycastle/asn1/cmp/CertOrEncCert;

    .line 79
    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    .line 80
    iput-object p3, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;

    .line 81
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 48
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    if-eqz v0, :cond_0

    .line 50
    check-cast p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    .line 58
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 53
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 58
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertOrEncCert()Lorg/spongycastle/asn1/cmp/CertOrEncCert;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/spongycastle/asn1/cmp/CertOrEncCert;

    return-object v0
.end method

.method public getPrivateKey()Lorg/spongycastle/asn1/crmf/EncryptedValue;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    return-object v0
.end method

.method public getPublicationInfo()Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 111
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 113
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/spongycastle/asn1/cmp/CertOrEncCert;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 120
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;

    if-eqz v1, :cond_1

    .line 122
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
