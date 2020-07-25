.class public Lorg/spongycastle/asn1/cmc/GetCRL;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "GetCRL.java"


# instance fields
.field private cRLName:Lorg/spongycastle/asn1/x509/GeneralName;

.field private final issuerName:Lorg/spongycastle/asn1/x500/X500Name;

.field private reasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

.field private time:Lorg/spongycastle/asn1/ASN1GeneralizedTime;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 47
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "incorrect sequence size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->issuerName:Lorg/spongycastle/asn1/x500/X500Name;

    .line 51
    const/4 v0, 0x1

    .line 52
    .local v0, "index":I
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v2, v0, :cond_2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_2

    .line 54
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->cRLName:Lorg/spongycastle/asn1/x509/GeneralName;

    move v0, v1

    .line 56
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v2, v0, :cond_3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v2, :cond_3

    .line 58
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->time:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move v0, v1

    .line 60
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_3
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v2, v0, :cond_4

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/DERBitString;

    if-eqz v2, :cond_4

    .line 62
    new-instance v2, Lorg/spongycastle/asn1/x509/ReasonFlags;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/x509/ReasonFlags;-><init>(Lorg/spongycastle/asn1/DERBitString;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->reasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

    .line 64
    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/x509/ReasonFlags;)V
    .locals 0
    .param p1, "issuerName"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p2, "cRLName"    # Lorg/spongycastle/asn1/x509/GeneralName;
    .param p3, "time"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .param p4, "reasons"    # Lorg/spongycastle/asn1/x509/ReasonFlags;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->issuerName:Lorg/spongycastle/asn1/x500/X500Name;

    .line 37
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->cRLName:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 38
    iput-object p3, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->time:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 39
    iput-object p4, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->reasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

    .line 40
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/GetCRL;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 68
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/GetCRL;

    if-eqz v0, :cond_0

    .line 70
    check-cast p0, Lorg/spongycastle/asn1/cmc/GetCRL;

    .line 78
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 73
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 75
    new-instance v0, Lorg/spongycastle/asn1/cmc/GetCRL;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/GetCRL;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 78
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIssuerName()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->issuerName:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->reasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

    return-object v0
.end method

.method public getTime()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->time:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getcRLName()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->cRLName:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 105
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->issuerName:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 106
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->cRLName:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->cRLName:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->time:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->time:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 114
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->reasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/GetCRL;->reasons:Lorg/spongycastle/asn1/x509/ReasonFlags;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 119
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
