.class public Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OtherRevocationInfoFormat.java"


# instance fields
.field private otherRevInfo:Lorg/spongycastle/asn1/ASN1Encodable;

.field private otherRevInfoFormat:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "otherRevInfoFormat"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "otherRevInfo"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfoFormat:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfo:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 33
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfoFormat:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfo:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 40
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 74
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;

    if-eqz v0, :cond_0

    .line 76
    check-cast p0, Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;

    .line 84
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 79
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 81
    new-instance v0, Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 84
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 55
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInfo()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfo:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getInfoFormat()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfoFormat:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 104
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfoFormat:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 105
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/OtherRevocationInfoFormat;->otherRevInfo:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 107
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
