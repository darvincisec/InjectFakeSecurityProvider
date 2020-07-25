.class public Lorg/spongycastle/asn1/cmc/CMCUnsignedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CMCUnsignedData.java"


# instance fields
.field private final bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

.field private final content:Lorg/spongycastle/asn1/ASN1Encodable;

.field private final identifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/BodyPartPath;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartPath;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->identifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->content:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmc/BodyPartPath;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "bodyPartPath"    # Lorg/spongycastle/asn1/cmc/BodyPartPath;
    .param p2, "identifier"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "content"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    .line 32
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->identifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    iput-object p3, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->content:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 34
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCUnsignedData;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 49
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;

    .line 59
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 54
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 59
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBodyPartPath()Lorg/spongycastle/asn1/cmc/BodyPartPath;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    return-object v0
.end method

.method public getContent()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->content:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->identifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 66
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 67
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->identifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 68
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCUnsignedData;->content:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 70
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
