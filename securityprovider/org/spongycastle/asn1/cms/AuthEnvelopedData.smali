.class public Lorg/spongycastle/asn1/cms/AuthEnvelopedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "AuthEnvelopedData.java"


# instance fields
.field private authAttrs:Lorg/spongycastle/asn1/ASN1Set;

.field private authEncryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

.field private mac:Lorg/spongycastle/asn1/ASN1OctetString;

.field private originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

.field private recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

.field private unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v5, 0x0

    .line 91
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    .line 95
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 96
    .local v2, "tmp":Lorg/spongycastle/asn1/ASN1Primitive;
    check-cast v2, Lorg/spongycastle/asn1/ASN1Integer;

    .end local v2    # "tmp":Lorg/spongycastle/asn1/ASN1Primitive;
    iput-object v2, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 97
    iget-object v3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "AuthEnvelopedData version number must be 0"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 103
    .restart local v2    # "tmp":Lorg/spongycastle/asn1/ASN1Primitive;
    instance-of v3, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_1

    .line 105
    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local v2    # "tmp":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-static {v2, v5}, Lorg/spongycastle/asn1/cms/OriginatorInfo;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/OriginatorInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    .line 106
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .restart local v2    # "tmp":Lorg/spongycastle/asn1/ASN1Primitive;
    move v0, v1

    .line 110
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_1
    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    .line 111
    iget-object v3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 113
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "AuthEnvelopedData requires at least 1 RecipientInfo"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 117
    invoke-static {v2}, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authEncryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    .line 119
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 120
    instance-of v3, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_5

    .line 122
    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local v2    # "tmp":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-static {v2, v5}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    .line 123
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .restart local v2    # "tmp":Lorg/spongycastle/asn1/ASN1Primitive;
    move v0, v1

    .line 138
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_3
    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 140
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 142
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    move-object v3, v2

    .line 143
    check-cast v3, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v3, v5}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

    .line 145
    :cond_4
    return-void

    .line 129
    :cond_5
    iget-object v3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authEncryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 131
    iget-object v3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 133
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "authAttrs must be present with non-data content"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/OriginatorInfo;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/cms/EncryptedContentInfo;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 4
    .param p1, "originatorInfo"    # Lorg/spongycastle/asn1/cms/OriginatorInfo;
    .param p2, "recipientInfos"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p3, "authEncryptedContentInfo"    # Lorg/spongycastle/asn1/cms/EncryptedContentInfo;
    .param p4, "authAttrs"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p5, "mac"    # Lorg/spongycastle/asn1/ASN1OctetString;
    .param p6, "unauthAttrs"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 57
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    .line 60
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AuthEnvelopedData requires at least 1 RecipientInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authEncryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    .line 70
    iput-object p4, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    .line 71
    invoke-virtual {p3}, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authAttrs must be present with non-data content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    iput-object p5, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 81
    iput-object p6, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

    .line 82
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/AuthEnvelopedData;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 187
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;

    .line 194
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 192
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 194
    new-instance v0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 197
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid AuthEnvelopedData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/AuthEnvelopedData;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 167
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/AuthEnvelopedData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAuthAttrs()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getAuthEncryptedContentInfo()Lorg/spongycastle/asn1/cms/EncryptedContentInfo;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authEncryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    return-object v0
.end method

.method public getMac()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getOriginatorInfo()Lorg/spongycastle/asn1/cms/OriginatorInfo;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getUnauthAttrs()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 240
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 242
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 244
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    if-eqz v1, :cond_0

    .line 246
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 249
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 250
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authEncryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 253
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 257
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->authAttrs:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 260
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 263
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_2

    .line 265
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/asn1/cms/AuthEnvelopedData;->unauthAttrs:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 268
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
