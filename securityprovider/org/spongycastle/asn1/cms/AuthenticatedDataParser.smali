.class public Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;
.super Ljava/lang/Object;
.source "AuthenticatedDataParser.java"


# instance fields
.field private nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

.field private originatorInfoCalled:Z

.field private seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1SequenceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    .line 48
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 49
    return-void
.end method


# virtual methods
.method public getAuthAttrs()Lorg/spongycastle/asn1/ASN1SetParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v2, :cond_0

    .line 162
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 165
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    if-eqz v2, :cond_1

    .line 167
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 168
    .local v0, "o":Lorg/spongycastle/asn1/ASN1Encodable;
    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 169
    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    .end local v0    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1SetParser;

    .line 172
    :cond_1
    return-object v1
.end method

.method public getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 120
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 123
    .local v0, "obj":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    iput-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 127
    .end local v0    # "obj":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public getEnapsulatedContentInfo()Lorg/spongycastle/asn1/cms/ContentInfoParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->getEncapsulatedContentInfo()Lorg/spongycastle/asn1/cms/ContentInfoParser;

    move-result-object v0

    return-object v0
.end method

.method public getEncapsulatedContentInfo()Lorg/spongycastle/asn1/cms/ContentInfoParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v2, :cond_0

    .line 144
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 147
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_1

    .line 149
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    .line 150
    .local v0, "o":Lorg/spongycastle/asn1/ASN1SequenceParser;
    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 151
    new-instance v1, Lorg/spongycastle/asn1/cms/ContentInfoParser;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V

    .line 154
    .end local v0    # "o":Lorg/spongycastle/asn1/ASN1SequenceParser;
    :cond_1
    return-object v1
.end method

.method public getMac()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 184
    .local v0, "o":Lorg/spongycastle/asn1/ASN1Encodable;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 186
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    return-object v1
.end method

.method public getMacAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v2, :cond_0

    .line 99
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 102
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_1

    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    .line 105
    .local v0, "o":Lorg/spongycastle/asn1/ASN1SequenceParser;
    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 106
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1SequenceParser;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 109
    .end local v0    # "o":Lorg/spongycastle/asn1/ASN1SequenceParser;
    :cond_1
    return-object v1
.end method

.method public getOriginatorInfo()Lorg/spongycastle/asn1/cms/OriginatorInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->originatorInfoCalled:Z

    .line 61
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 66
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v1

    if-nez v1, :cond_1

    .line 68
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    .line 69
    .local v0, "originatorInfo":Lorg/spongycastle/asn1/ASN1SequenceParser;
    iput-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 70
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1SequenceParser;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cms/OriginatorInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/OriginatorInfo;

    move-result-object v1

    .line 73
    .end local v0    # "originatorInfo":Lorg/spongycastle/asn1/ASN1SequenceParser;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method public getRecipientInfos()Lorg/spongycastle/asn1/ASN1SetParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-boolean v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->originatorInfoCalled:Z

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->getOriginatorInfo()Lorg/spongycastle/asn1/cms/OriginatorInfo;

    .line 84
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v1, :cond_1

    .line 86
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/ASN1SetParser;

    .line 90
    .local v0, "recipientInfos":Lorg/spongycastle/asn1/ASN1SetParser;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 91
    return-object v0
.end method

.method public getUnauthAttrs()Lorg/spongycastle/asn1/ASN1SetParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 197
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_1

    .line 199
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 200
    .local v0, "o":Lorg/spongycastle/asn1/ASN1Encodable;
    iput-object v1, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 201
    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    .end local v0    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1SetParser;

    .line 204
    :cond_1
    return-object v1
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/AuthenticatedDataParser;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method
