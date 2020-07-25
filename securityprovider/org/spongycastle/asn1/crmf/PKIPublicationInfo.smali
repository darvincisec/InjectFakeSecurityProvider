.class public Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PKIPublicationInfo.java"


# instance fields
.field private action:Lorg/spongycastle/asn1/ASN1Integer;

.field private pubInfos:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;->action:Lorg/spongycastle/asn1/ASN1Integer;

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;->pubInfos:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 20
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 24
    instance-of v0, p0, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;

    if-eqz v0, :cond_0

    .line 26
    check-cast p0, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;

    .line 34
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 29
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 31
    new-instance v0, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 34
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAction()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;->action:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getPubInfos()[Lorg/spongycastle/asn1/crmf/SinglePubInfo;
    .locals 3

    .prologue
    .line 44
    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;->pubInfos:Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_1

    .line 46
    const/4 v1, 0x0

    .line 56
    :cond_0
    return-object v1

    .line 49
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;->pubInfos:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/crmf/SinglePubInfo;

    .line 51
    .local v1, "results":[Lorg/spongycastle/asn1/crmf/SinglePubInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 53
    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;->pubInfos:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/crmf/SinglePubInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/SinglePubInfo;

    move-result-object v2

    aput-object v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 76
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;->action:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 77
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/PKIPublicationInfo;->pubInfos:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 79
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
