.class public Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "InfoTypeAndValue.java"


# instance fields
.field private infoType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private infoValue:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "infoType"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "infoType"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "optionalValue"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 97
    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 98
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 66
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 68
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 72
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;

    if-eqz v0, :cond_0

    .line 74
    check-cast p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;

    .line 82
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 77
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 79
    new-instance v0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 82
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getInfoType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getInfoValue()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 123
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->infoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 130
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
