.class public Lorg/spongycastle/asn1/cms/TimeStampedDataParser;
.super Ljava/lang/Object;
.source "TimeStampedDataParser.java"


# instance fields
.field private content:Lorg/spongycastle/asn1/ASN1OctetStringParser;

.field private dataUri:Lorg/spongycastle/asn1/DERIA5String;

.field private metaData:Lorg/spongycastle/asn1/cms/MetaData;

.field private parser:Lorg/spongycastle/asn1/ASN1SequenceParser;

.field private temporalEvidence:Lorg/spongycastle/asn1/cms/Evidence;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/spongycastle/asn1/ASN1SequenceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->parser:Lorg/spongycastle/asn1/ASN1SequenceParser;

    .line 39
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 41
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 43
    .local v0, "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v1, :cond_0

    .line 45
    invoke-static {v0}, Lorg/spongycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->dataUri:Lorg/spongycastle/asn1/DERIA5String;

    .line 46
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 48
    :cond_0
    instance-of v1, v0, Lorg/spongycastle/asn1/cms/MetaData;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    if-eqz v1, :cond_2

    .line 50
    :cond_1
    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cms/MetaData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/MetaData;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->metaData:Lorg/spongycastle/asn1/cms/MetaData;

    .line 51
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 53
    :cond_2
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    if-eqz v1, :cond_3

    .line 55
    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetStringParser;

    .end local v0    # "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    iput-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->content:Lorg/spongycastle/asn1/ASN1OctetStringParser;

    .line 57
    :cond_3
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/TimeStampedDataParser;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->parser()Lorg/spongycastle/asn1/ASN1SequenceParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;-><init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V

    .line 71
    :goto_0
    return-object v0

    .line 66
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;

    check-cast p0, Lorg/spongycastle/asn1/ASN1SequenceParser;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;-><init>(Lorg/spongycastle/asn1/ASN1SequenceParser;)V

    goto :goto_0

    .line 71
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContent()Lorg/spongycastle/asn1/ASN1OctetStringParser;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->content:Lorg/spongycastle/asn1/ASN1OctetStringParser;

    return-object v0
.end method

.method public getDataUri()Lorg/spongycastle/asn1/DERIA5String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->dataUri:Lorg/spongycastle/asn1/DERIA5String;

    return-object v0
.end method

.method public getMetaData()Lorg/spongycastle/asn1/cms/MetaData;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->metaData:Lorg/spongycastle/asn1/cms/MetaData;

    return-object v0
.end method

.method public getTemporalEvidence()Lorg/spongycastle/asn1/cms/Evidence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->temporalEvidence:Lorg/spongycastle/asn1/cms/Evidence;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->parser:Lorg/spongycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/Evidence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/Evidence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->temporalEvidence:Lorg/spongycastle/asn1/cms/Evidence;

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/TimeStampedDataParser;->temporalEvidence:Lorg/spongycastle/asn1/cms/Evidence;

    return-object v0
.end method
