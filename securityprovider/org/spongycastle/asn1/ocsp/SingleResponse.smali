.class public Lorg/spongycastle/asn1/ocsp/SingleResponse;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SingleResponse.java"


# instance fields
.field private certID:Lorg/spongycastle/asn1/ocsp/CertID;

.field private certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

.field private nextUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private singleExtensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private thisUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 57
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ocsp/CertID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/CertID;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certID:Lorg/spongycastle/asn1/ocsp/CertID;

    .line 59
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ocsp/CertStatus;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/CertStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

    .line 60
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 62
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 65
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 64
    invoke-static {v1, v2}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 67
    invoke-virtual {p1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 66
    invoke-static {v1, v2}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 71
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 73
    .local v0, "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-nez v1, :cond_2

    .line 75
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/CertID;Lorg/spongycastle/asn1/ocsp/CertStatus;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/x509/Extensions;)V
    .locals 0
    .param p1, "certID"    # Lorg/spongycastle/asn1/ocsp/CertID;
    .param p2, "certStatus"    # Lorg/spongycastle/asn1/ocsp/CertStatus;
    .param p3, "thisUpdate"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .param p4, "nextUpdate"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .param p5, "singleExtensions"    # Lorg/spongycastle/asn1/x509/Extensions;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certID:Lorg/spongycastle/asn1/ocsp/CertID;

    .line 49
    iput-object p2, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

    .line 50
    iput-object p3, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 51
    iput-object p4, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 52
    iput-object p5, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/CertID;Lorg/spongycastle/asn1/ocsp/CertStatus;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 6
    .param p1, "certID"    # Lorg/spongycastle/asn1/ocsp/CertID;
    .param p2, "certStatus"    # Lorg/spongycastle/asn1/ocsp/CertStatus;
    .param p3, "thisUpdate"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .param p4, "nextUpdate"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .param p5, "singleExtensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 38
    invoke-static {p5}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/ocsp/SingleResponse;-><init>(Lorg/spongycastle/asn1/ocsp/CertID;Lorg/spongycastle/asn1/ocsp/CertStatus;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/x509/Extensions;)V

    .line 39
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/SingleResponse;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 94
    instance-of v0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;

    if-eqz v0, :cond_0

    .line 96
    check-cast p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;

    .line 103
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 98
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 100
    new-instance v0, Lorg/spongycastle/asn1/ocsp/SingleResponse;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ocsp/SingleResponse;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 103
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/SingleResponse;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 88
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/SingleResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCertID()Lorg/spongycastle/asn1/ocsp/CertID;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certID:Lorg/spongycastle/asn1/ocsp/CertID;

    return-object v0
.end method

.method public getCertStatus()Lorg/spongycastle/asn1/ocsp/CertStatus;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

    return-object v0
.end method

.method public getNextUpdate()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getSingleExtensions()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getThisUpdate()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 144
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 146
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certID:Lorg/spongycastle/asn1/ocsp/CertID;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 147
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/spongycastle/asn1/ocsp/CertStatus;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 148
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 150
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 155
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_1

    .line 157
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 160
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
