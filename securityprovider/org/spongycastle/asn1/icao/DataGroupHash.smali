.class public Lorg/spongycastle/asn1/icao/DataGroupHash;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "DataGroupHash.java"


# instance fields
.field dataGroupHashValue:Lorg/spongycastle/asn1/ASN1OctetString;

.field dataGroupNumber:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 4
    .param p1, "dataGroupNumber"    # I
    .param p2, "dataGroupHashValue"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 75
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/icao/DataGroupHash;->dataGroupNumber:Lorg/spongycastle/asn1/ASN1Integer;

    .line 76
    iput-object p2, p0, Lorg/spongycastle/asn1/icao/DataGroupHash;->dataGroupHashValue:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 77
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 66
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/icao/DataGroupHash;->dataGroupNumber:Lorg/spongycastle/asn1/ASN1Integer;

    .line 68
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/icao/DataGroupHash;->dataGroupHashValue:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 69
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/icao/DataGroupHash;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 49
    instance-of v0, p0, Lorg/spongycastle/asn1/icao/DataGroupHash;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Lorg/spongycastle/asn1/icao/DataGroupHash;

    .line 58
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 53
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/icao/DataGroupHash;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/icao/DataGroupHash;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 58
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDataGroupHashValue()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/DataGroupHash;->dataGroupHashValue:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getDataGroupNumber()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/DataGroupHash;->dataGroupNumber:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 92
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/icao/DataGroupHash;->dataGroupNumber:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 93
    iget-object v1, p0, Lorg/spongycastle/asn1/icao/DataGroupHash;->dataGroupHashValue:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 95
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
