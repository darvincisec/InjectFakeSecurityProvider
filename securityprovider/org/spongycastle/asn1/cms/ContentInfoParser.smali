.class public Lorg/spongycastle/asn1/cms/ContentInfoParser;
.super Ljava/lang/Object;
.source "ContentInfoParser.java"


# instance fields
.field private content:Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

.field private contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


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
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/ContentInfoParser;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1SequenceParser;->readObject()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/ContentInfoParser;->content:Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    .line 30
    return-void
.end method


# virtual methods
.method public getContent(I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 2
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/ContentInfoParser;->content:Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/ContentInfoParser;->content:Lorg/spongycastle/asn1/ASN1TaggedObjectParser;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/spongycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/ContentInfoParser;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method
