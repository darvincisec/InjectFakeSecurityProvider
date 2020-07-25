.class public Lorg/spongycastle/asn1/ocsp/OCSPResponse;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OCSPResponse.java"


# instance fields
.field responseBytes:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

.field responseStatus:Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v2, 0x1

    .line 27
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    .line 30
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 33
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 32
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/ocsp/ResponseBytes;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    .line 35
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;Lorg/spongycastle/asn1/ocsp/ResponseBytes;)V
    .locals 0
    .param p1, "responseStatus"    # Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;
    .param p2, "responseBytes"    # Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    .line 22
    iput-object p2, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    .line 23
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPResponse;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 47
    instance-of v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    if-eqz v0, :cond_0

    .line 49
    check-cast p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    .line 56
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 51
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 53
    new-instance v0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 56
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/OCSPResponse;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 41
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getResponseBytes()Lorg/spongycastle/asn1/ocsp/ResponseBytes;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    return-object v0
.end method

.method public getResponseStatus()Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    .line 79
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 81
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 83
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    if-eqz v1, :cond_0

    .line 85
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 88
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
