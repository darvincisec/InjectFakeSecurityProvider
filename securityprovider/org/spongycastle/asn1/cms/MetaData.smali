.class public Lorg/spongycastle/asn1/cms/MetaData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "MetaData.java"


# instance fields
.field private fileName:Lorg/spongycastle/asn1/DERUTF8String;

.field private hashProtected:Lorg/spongycastle/asn1/ASN1Boolean;

.field private mediaType:Lorg/spongycastle/asn1/DERIA5String;

.field private otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Boolean;Lorg/spongycastle/asn1/DERUTF8String;Lorg/spongycastle/asn1/DERIA5String;Lorg/spongycastle/asn1/cms/Attributes;)V
    .locals 0
    .param p1, "hashProtected"    # Lorg/spongycastle/asn1/ASN1Boolean;
    .param p2, "fileName"    # Lorg/spongycastle/asn1/DERUTF8String;
    .param p3, "mediaType"    # Lorg/spongycastle/asn1/DERIA5String;
    .param p4, "otherMetaData"    # Lorg/spongycastle/asn1/cms/Attributes;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/MetaData;->hashProtected:Lorg/spongycastle/asn1/ASN1Boolean;

    .line 40
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/MetaData;->fileName:Lorg/spongycastle/asn1/DERUTF8String;

    .line 41
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/MetaData;->mediaType:Lorg/spongycastle/asn1/DERIA5String;

    .line 42
    iput-object p4, p0, Lorg/spongycastle/asn1/cms/MetaData;->otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;

    .line 43
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 47
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/MetaData;->hashProtected:Lorg/spongycastle/asn1/ASN1Boolean;

    .line 49
    const/4 v0, 0x1

    .line 51
    .local v0, "index":I
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v2, :cond_0

    .line 53
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERUTF8String;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/MetaData;->fileName:Lorg/spongycastle/asn1/DERUTF8String;

    move v0, v1

    .line 55
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v2, :cond_1

    .line 57
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/MetaData;->mediaType:Lorg/spongycastle/asn1/DERIA5String;

    move v0, v1

    .line 59
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 61
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cms/Attributes;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/Attributes;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/MetaData;->otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;

    move v0, v1

    .line 63
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_2
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/MetaData;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 80
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    .line 82
    check-cast p0, Lorg/spongycastle/asn1/cms/MetaData;

    .line 89
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 84
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 86
    new-instance v0, Lorg/spongycastle/asn1/cms/MetaData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/MetaData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 89
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFileName()Lorg/spongycastle/asn1/DERUTF8String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->fileName:Lorg/spongycastle/asn1/DERUTF8String;

    return-object v0
.end method

.method public getMediaType()Lorg/spongycastle/asn1/DERIA5String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->mediaType:Lorg/spongycastle/asn1/DERIA5String;

    return-object v0
.end method

.method public getOtherMetaData()Lorg/spongycastle/asn1/cms/Attributes;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;

    return-object v0
.end method

.method public isHashProtected()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/MetaData;->hashProtected:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 96
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->hashProtected:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 98
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->fileName:Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->fileName:Lorg/spongycastle/asn1/DERUTF8String;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->mediaType:Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->mediaType:Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 108
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/MetaData;->otherMetaData:Lorg/spongycastle/asn1/cms/Attributes;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 113
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
