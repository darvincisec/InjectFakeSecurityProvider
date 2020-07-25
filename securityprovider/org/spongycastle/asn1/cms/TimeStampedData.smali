.class public Lorg/spongycastle/asn1/cms/TimeStampedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TimeStampedData.java"


# instance fields
.field private content:Lorg/spongycastle/asn1/ASN1OctetString;

.field private dataUri:Lorg/spongycastle/asn1/DERIA5String;

.field private metaData:Lorg/spongycastle/asn1/cms/MetaData;

.field private temporalEvidence:Lorg/spongycastle/asn1/cms/Evidence;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 46
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 48
    const/4 v0, 0x1

    .line 49
    .local v0, "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v2, :cond_0

    .line 51
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->dataUri:Lorg/spongycastle/asn1/DERIA5String;

    move v0, v1

    .line 53
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/cms/MetaData;

    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_2

    .line 55
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cms/MetaData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/MetaData;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->metaData:Lorg/spongycastle/asn1/cms/MetaData;

    move v0, v1

    .line 57
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_2
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v2, :cond_3

    .line 59
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->content:Lorg/spongycastle/asn1/ASN1OctetString;

    move v0, v1

    .line 61
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_3
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cms/Evidence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/Evidence;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->temporalEvidence:Lorg/spongycastle/asn1/cms/Evidence;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERIA5String;Lorg/spongycastle/asn1/cms/MetaData;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/cms/Evidence;)V
    .locals 4
    .param p1, "dataUri"    # Lorg/spongycastle/asn1/DERIA5String;
    .param p2, "metaData"    # Lorg/spongycastle/asn1/cms/MetaData;
    .param p3, "content"    # Lorg/spongycastle/asn1/ASN1OctetString;
    .param p4, "temporalEvidence"    # Lorg/spongycastle/asn1/cms/Evidence;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 37
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 38
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->dataUri:Lorg/spongycastle/asn1/DERIA5String;

    .line 39
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->metaData:Lorg/spongycastle/asn1/cms/MetaData;

    .line 40
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->content:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 41
    iput-object p4, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->temporalEvidence:Lorg/spongycastle/asn1/cms/Evidence;

    .line 42
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/TimeStampedData;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 79
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/cms/TimeStampedData;

    .line 83
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/cms/TimeStampedData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/TimeStampedData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getContent()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->content:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getDataUri()Lorg/spongycastle/asn1/DERIA5String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->dataUri:Lorg/spongycastle/asn1/DERIA5String;

    return-object v0
.end method

.method public getMetaData()Lorg/spongycastle/asn1/cms/MetaData;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->metaData:Lorg/spongycastle/asn1/cms/MetaData;

    return-object v0
.end method

.method public getTemporalEvidence()Lorg/spongycastle/asn1/cms/Evidence;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->temporalEvidence:Lorg/spongycastle/asn1/cms/Evidence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 110
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 112
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->dataUri:Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->dataUri:Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 117
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->metaData:Lorg/spongycastle/asn1/cms/MetaData;

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->metaData:Lorg/spongycastle/asn1/cms/MetaData;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 122
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->content:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->content:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 127
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedData;->temporalEvidence:Lorg/spongycastle/asn1/cms/Evidence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 129
    new-instance v1, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
