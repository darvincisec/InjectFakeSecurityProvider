.class public Lorg/spongycastle/asn1/pkcs/SignedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SignedData.java"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private certificates:Lorg/spongycastle/asn1/ASN1Set;

.field private contentInfo:Lorg/spongycastle/asn1/pkcs/ContentInfo;

.field private crls:Lorg/spongycastle/asn1/ASN1Set;

.field private digestAlgorithms:Lorg/spongycastle/asn1/ASN1Set;

.field private signerInfos:Lorg/spongycastle/asn1/ASN1Set;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/pkcs/ContentInfo;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "_version"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p2, "_digestAlgorithms"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p3, "_contentInfo"    # Lorg/spongycastle/asn1/pkcs/ContentInfo;
    .param p4, "_certificates"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p5, "_crls"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p6, "_signerInfos"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 53
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lorg/spongycastle/asn1/ASN1Set;

    .line 54
    iput-object p3, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->contentInfo:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    .line 55
    iput-object p4, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->certificates:Lorg/spongycastle/asn1/ASN1Set;

    .line 56
    iput-object p5, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->crls:Lorg/spongycastle/asn1/ASN1Set;

    .line 57
    iput-object p6, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->signerInfos:Lorg/spongycastle/asn1/ASN1Set;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 65
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v3, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 66
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Set;

    iput-object v3, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lorg/spongycastle/asn1/ASN1Set;

    .line 67
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->contentInfo:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    .line 69
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Primitive;

    .line 77
    .local v1, "o":Lorg/spongycastle/asn1/ASN1Primitive;
    instance-of v3, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 79
    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 81
    .local v2, "tagged":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 90
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tag value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :pswitch_0
    invoke-static {v2, v4}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->certificates:Lorg/spongycastle/asn1/ASN1Set;

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-static {v2, v4}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->crls:Lorg/spongycastle/asn1/ASN1Set;

    goto :goto_0

    .line 95
    .end local v2    # "tagged":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_0
    check-cast v1, Lorg/spongycastle/asn1/ASN1Set;

    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->signerInfos:Lorg/spongycastle/asn1/ASN1Set;

    goto :goto_0

    .line 98
    :cond_1
    return-void

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/SignedData;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 32
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;

    if-eqz v0, :cond_0

    .line 34
    check-cast p0, Lorg/spongycastle/asn1/pkcs/SignedData;

    .line 41
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 36
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 38
    new-instance v0, Lorg/spongycastle/asn1/pkcs/SignedData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/SignedData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 41
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCRLs()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->crls:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getCertificates()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->certificates:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getContentInfo()Lorg/spongycastle/asn1/pkcs/ContentInfo;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->contentInfo:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    return-object v0
.end method

.method public getDigestAlgorithms()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getSignerInfos()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->signerInfos:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 147
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 149
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 150
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->digestAlgorithms:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 151
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->contentInfo:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 153
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->certificates:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->certificates:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 158
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->crls:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 160
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->crls:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 163
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/SignedData;->signerInfos:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 165
    new-instance v1, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
