.class public Lorg/spongycastle/asn1/tsp/TimeStampResp;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TimeStampResp.java"


# instance fields
.field pkiStatusInfo:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

.field timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 41
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->pkiStatusInfo:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    .line 43
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/ContentInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;

    .line 47
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/PKIStatusInfo;Lorg/spongycastle/asn1/cms/ContentInfo;)V
    .locals 0
    .param p1, "pkiStatusInfo"    # Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    .param p2, "timeStampToken"    # Lorg/spongycastle/asn1/cms/ContentInfo;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->pkiStatusInfo:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    .line 52
    iput-object p2, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;

    .line 53
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/tsp/TimeStampResp;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 23
    instance-of v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;

    if-eqz v0, :cond_0

    .line 25
    check-cast p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;

    .line 32
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 27
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/tsp/TimeStampResp;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/tsp/TimeStampResp;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getStatus()Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->pkiStatusInfo:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    return-object v0
.end method

.method public getTimeStampToken()Lorg/spongycastle/asn1/cms/ContentInfo;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 76
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->pkiStatusInfo:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 77
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampResp;->timeStampToken:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 82
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
