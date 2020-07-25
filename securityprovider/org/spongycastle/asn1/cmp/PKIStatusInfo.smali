.class public Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PKIStatusInfo.java"


# instance fields
.field failInfo:Lorg/spongycastle/asn1/DERBitString;

.field status:Lorg/spongycastle/asn1/ASN1Integer;

.field statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 45
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 46
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/spongycastle/asn1/ASN1Integer;

    .line 48
    iput-object v4, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .line 49
    iput-object v4, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/spongycastle/asn1/DERBitString;

    .line 51
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 53
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIFreeText;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .line 54
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/spongycastle/asn1/DERBitString;

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 58
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 59
    .local v0, "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/spongycastle/asn1/DERBitString;

    if-eqz v1, :cond_2

    .line 61
    invoke-static {v0}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/spongycastle/asn1/DERBitString;

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {v0}, Lorg/spongycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIFreeText;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/PKIStatus;)V
    .locals 1
    .param p1, "status"    # Lorg/spongycastle/asn1/cmp/PKIStatus;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cmp/PKIStatus;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/spongycastle/asn1/ASN1Integer;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/PKIStatus;Lorg/spongycastle/asn1/cmp/PKIFreeText;)V
    .locals 1
    .param p1, "status"    # Lorg/spongycastle/asn1/cmp/PKIStatus;
    .param p2, "statusString"    # Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cmp/PKIStatus;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/spongycastle/asn1/ASN1Integer;

    .line 88
    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/PKIStatus;Lorg/spongycastle/asn1/cmp/PKIFreeText;Lorg/spongycastle/asn1/cmp/PKIFailureInfo;)V
    .locals 1
    .param p1, "status"    # Lorg/spongycastle/asn1/cmp/PKIStatus;
    .param p2, "statusString"    # Lorg/spongycastle/asn1/cmp/PKIFreeText;
    .param p3, "failInfo"    # Lorg/spongycastle/asn1/cmp/PKIFailureInfo;

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cmp/PKIStatus;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/spongycastle/asn1/ASN1Integer;

    .line 97
    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .line 98
    iput-object p3, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/spongycastle/asn1/DERBitString;

    .line 99
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 31
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    if-eqz v0, :cond_0

    .line 33
    check-cast p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    .line 40
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 35
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 37
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 40
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 25
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFailInfo()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getStatus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getStatusString()Lorg/spongycastle/asn1/cmp/PKIFreeText;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 151
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 153
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 158
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/spongycastle/asn1/DERBitString;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 163
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
