.class public Lorg/spongycastle/asn1/cmp/RevAnnContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "RevAnnContent.java"


# instance fields
.field private badSinceDate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private certId:Lorg/spongycastle/asn1/crmf/CertId;

.field private crlDetails:Lorg/spongycastle/asn1/x509/Extensions;

.field private status:Lorg/spongycastle/asn1/cmp/PKIStatus;

.field private willBeRevokedAt:Lorg/spongycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v1, 0x4

    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmp/PKIStatus;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->status:Lorg/spongycastle/asn1/cmp/PKIStatus;

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/CertId;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertId;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->certId:Lorg/spongycastle/asn1/crmf/CertId;

    .line 25
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 26
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 28
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 30
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/spongycastle/asn1/x509/Extensions;

    .line 32
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/RevAnnContent;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 36
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;

    if-eqz v0, :cond_0

    .line 38
    check-cast p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;

    .line 46
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 41
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 43
    new-instance v0, Lorg/spongycastle/asn1/cmp/RevAnnContent;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/RevAnnContent;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBadSinceDate()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getCertId()Lorg/spongycastle/asn1/crmf/CertId;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->certId:Lorg/spongycastle/asn1/crmf/CertId;

    return-object v0
.end method

.method public getCrlDetails()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/spongycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getStatus()Lorg/spongycastle/asn1/cmp/PKIStatus;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->status:Lorg/spongycastle/asn1/cmp/PKIStatus;

    return-object v0
.end method

.method public getWillBeRevokedAt()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 91
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->status:Lorg/spongycastle/asn1/cmp/PKIStatus;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 92
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->certId:Lorg/spongycastle/asn1/crmf/CertId;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 93
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->willBeRevokedAt:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 94
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->badSinceDate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 96
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevAnnContent;->crlDetails:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 101
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
