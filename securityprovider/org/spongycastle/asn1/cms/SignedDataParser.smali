.class public Lorg/spongycastle/asn1/cms/SignedDataParser;
.super Ljava/lang/Object;
.source "SignedDataParser.java"


# instance fields
.field private _certsCalled:Z

.field private _crlsCalled:Z

.field private _nextObject:Ljava/lang/Object;

.field private _seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

.field private _version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1SequenceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    .line 56
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 57
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/SignedDataParser;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lorg/spongycastle/asn1/cms/SignedDataParser;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->parser()Lorg/spongycastle/asn1/ASN1SequenceParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/SignedDataParser;-><init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V

    .line 45
    :goto_0
    return-object v0

    .line 43
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Lorg/spongycastle/asn1/cms/SignedDataParser;

    check-cast p0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/SignedDataParser;-><init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V

    goto :goto_0

    .line 48
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object encountered: "

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

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCertificates()Lorg/spongycastle/asn1/ASN1SetParser;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_certsCalled:Z

    .line 87
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1SetParser;

    .line 92
    .local v0, "certs":Lorg/spongycastle/asn1/ASN1SetParser;
    iput-object v2, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    .line 97
    .end local v0    # "certs":Lorg/spongycastle/asn1/ASN1SetParser;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public getCrls()Lorg/spongycastle/asn1/ASN1SetParser;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 103
    iget-boolean v1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_certsCalled:Z

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Ljava/io/IOException;

    const-string v2, "getCerts() has not been called."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_0
    iput-boolean v3, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_crlsCalled:Z

    .line 110
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 112
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    .line 115
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 117
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1SetParser;

    .line 118
    .local v0, "crls":Lorg/spongycastle/asn1/ASN1SetParser;
    iput-object v2, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    .line 123
    .end local v0    # "crls":Lorg/spongycastle/asn1/ASN1SetParser;
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public getDigestAlgorithms()Lorg/spongycastle/asn1/ASN1SetParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 69
    .local v0, "o":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 71
    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    .end local v0    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->parser()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .restart local v0    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_0
    check-cast v0, Lorg/spongycastle/asn1/ASN1SetParser;

    goto :goto_0
.end method

.method public getEncapContentInfo()Lorg/spongycastle/asn1/cms/ContentInfoParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v1, Lorg/spongycastle/asn1/cms/ContentInfoParser;

    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V

    return-object v1
.end method

.method public getSignerInfos()Lorg/spongycastle/asn1/ASN1SetParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_certsCalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_crlsCalled:Z

    if-nez v0, :cond_1

    .line 131
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getCerts() and/or getCrls() has not been called."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_seq:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    .line 139
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_nextObject:Ljava/lang/Object;

    check-cast v0, Lorg/spongycastle/asn1/ASN1SetParser;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignedDataParser;->_version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method
