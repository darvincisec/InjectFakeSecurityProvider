.class public Lorg/spongycastle/asn1/crmf/CertReqMsg;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertReqMsg.java"


# instance fields
.field private certReq:Lorg/spongycastle/asn1/crmf/CertRequest;

.field private pop:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

.field private regInfo:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 24
    .local v0, "en":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/crmf/CertRequest;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertRequest;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/spongycastle/asn1/crmf/CertRequest;

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_0

    instance-of v2, v1, Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    if-eqz v2, :cond_1

    .line 31
    :cond_0
    invoke-static {v1}, Lorg/spongycastle/asn1/crmf/ProofOfPossession;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->pop:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    goto :goto_0

    .line 38
    .end local v1    # "o":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/crmf/CertRequest;Lorg/spongycastle/asn1/crmf/ProofOfPossession;[Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;)V
    .locals 2
    .param p1, "certReq"    # Lorg/spongycastle/asn1/crmf/CertRequest;
    .param p2, "pop"    # Lorg/spongycastle/asn1/crmf/ProofOfPossession;
    .param p3, "regInfo"    # [Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 72
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certReq\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/spongycastle/asn1/crmf/CertRequest;

    .line 78
    iput-object p2, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->pop:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    .line 80
    if-eqz p3, :cond_1

    .line 82
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p3}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 84
    :cond_1
    return-void
.end method

.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 147
    if-eqz p2, :cond_0

    .line 149
    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 151
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertReqMsg;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 42
    instance-of v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;

    .line 51
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 46
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 48
    new-instance v0, Lorg/spongycastle/asn1/crmf/CertReqMsg;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/crmf/CertReqMsg;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 51
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/crmf/CertReqMsg;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 58
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertReqMsg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCertReq()Lorg/spongycastle/asn1/crmf/CertRequest;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/spongycastle/asn1/crmf/CertRequest;

    return-object v0
.end method

.method public getPop()Lorg/spongycastle/asn1/crmf/ProofOfPossession;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->pop:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    return-object v0
.end method

.method public getPopo()Lorg/spongycastle/asn1/crmf/ProofOfPossession;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->pop:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    return-object v0
.end method

.method public getRegInfo()[Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;
    .locals 3

    .prologue
    .line 108
    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_1

    .line 110
    const/4 v1, 0x0

    .line 120
    :cond_0
    return-object v1

    .line 113
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;

    .line 115
    .local v1, "results":[Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 117
    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object v2

    aput-object v2, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 137
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->certReq:Lorg/spongycastle/asn1/crmf/CertRequest;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 139
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->pop:Lorg/spongycastle/asn1/crmf/ProofOfPossession;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 140
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertReqMsg;->regInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 142
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
