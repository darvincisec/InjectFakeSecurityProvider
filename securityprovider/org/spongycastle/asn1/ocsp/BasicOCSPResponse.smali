.class public Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "BasicOCSPResponse.java"


# instance fields
.field private certs:Lorg/spongycastle/asn1/ASN1Sequence;

.field private signature:Lorg/spongycastle/asn1/DERBitString;

.field private signatureAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private tbsResponseData:Lorg/spongycastle/asn1/ocsp/ResponseData;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->tbsResponseData:Lorg/spongycastle/asn1/ocsp/ResponseData;

    .line 37
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->signatureAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERBitString;

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->signature:Lorg/spongycastle/asn1/DERBitString;

    .line 40
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 42
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 44
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/ResponseData;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "tbsResponseData"    # Lorg/spongycastle/asn1/ocsp/ResponseData;
    .param p2, "signatureAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "signature"    # Lorg/spongycastle/asn1/DERBitString;
    .param p4, "certs"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->tbsResponseData:Lorg/spongycastle/asn1/ocsp/ResponseData;

    .line 28
    iput-object p2, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->signatureAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 29
    iput-object p3, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->signature:Lorg/spongycastle/asn1/DERBitString;

    .line 30
    iput-object p4, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 31
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 56
    instance-of v0, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    if-eqz v0, :cond_0

    .line 58
    check-cast p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    .line 65
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 60
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 62
    new-instance v0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 65
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 50
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCerts()Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getSignature()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->signature:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->signatureAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getTbsResponseData()Lorg/spongycastle/asn1/ocsp/ResponseData;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->tbsResponseData:Lorg/spongycastle/asn1/ocsp/ResponseData;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    .line 100
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 102
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->tbsResponseData:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->signatureAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 104
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->signature:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 105
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 110
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
