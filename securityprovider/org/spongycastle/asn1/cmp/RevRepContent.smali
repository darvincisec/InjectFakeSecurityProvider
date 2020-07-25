.class public Lorg/spongycastle/asn1/cmp/RevRepContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "RevRepContent.java"


# instance fields
.field private crls:Lorg/spongycastle/asn1/ASN1Sequence;

.field private revCerts:Lorg/spongycastle/asn1/ASN1Sequence;

.field private status:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x1

    .line 24
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 27
    .local v0, "en":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->status:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 32
    .local v1, "tObj":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-nez v2, :cond_0

    .line 34
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->revCerts:Lorg/spongycastle/asn1/ASN1Sequence;

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->crls:Lorg/spongycastle/asn1/ASN1Sequence;

    goto :goto_0

    .line 41
    .end local v1    # "tObj":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_1
    return-void
.end method

.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 132
    if-eqz p3, :cond_0

    .line 134
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 136
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/RevRepContent;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 45
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;

    if-eqz v0, :cond_0

    .line 47
    check-cast p0, Lorg/spongycastle/asn1/cmp/RevRepContent;

    .line 55
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 50
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 52
    new-instance v0, Lorg/spongycastle/asn1/cmp/RevRepContent;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/RevRepContent;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 55
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCrls()[Lorg/spongycastle/asn1/x509/CertificateList;
    .locals 3

    .prologue
    .line 89
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->crls:Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_1

    .line 91
    const/4 v1, 0x0

    .line 101
    :cond_0
    return-object v1

    .line 94
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->crls:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/x509/CertificateList;

    .line 96
    .local v1, "results":[Lorg/spongycastle/asn1/x509/CertificateList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 98
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->crls:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificateList;

    move-result-object v2

    aput-object v2, v1, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRevCerts()[Lorg/spongycastle/asn1/crmf/CertId;
    .locals 3

    .prologue
    .line 72
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->revCerts:Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_1

    .line 74
    const/4 v1, 0x0

    .line 84
    :cond_0
    return-object v1

    .line 77
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->revCerts:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/crmf/CertId;

    .line 79
    .local v1, "results":[Lorg/spongycastle/asn1/crmf/CertId;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 81
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->revCerts:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/crmf/CertId;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertId;

    move-result-object v2

    aput-object v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getStatus()[Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    .locals 3

    .prologue
    .line 60
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->status:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    .line 62
    .local v1, "results":[Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 64
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->status:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v2

    aput-object v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-object v1
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 122
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->status:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 124
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->revCerts:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/RevRepContent;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContent;->crls:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/RevRepContent;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 127
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
