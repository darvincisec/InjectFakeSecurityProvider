.class public Lorg/spongycastle/jce/provider/X509CertPairParser;
.super Lorg/spongycastle/x509/X509StreamParserSpi;
.source "X509CertPairParser.java"


# instance fields
.field private currentStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/spongycastle/x509/X509StreamParserSpi;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    return-void
.end method

.method private readDERCrossCertificatePair(Ljava/io/InputStream;)Lorg/spongycastle/x509/X509CertificatePair;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    .local v0, "dIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 29
    .local v2, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-static {v2}, Lorg/spongycastle/asn1/x509/CertificatePair;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificatePair;

    move-result-object v1

    .line 30
    .local v1, "pair":Lorg/spongycastle/asn1/x509/CertificatePair;
    new-instance v3, Lorg/spongycastle/x509/X509CertificatePair;

    invoke-direct {v3, v1}, Lorg/spongycastle/x509/X509CertificatePair;-><init>(Lorg/spongycastle/asn1/x509/CertificatePair;)V

    return-object v3
.end method


# virtual methods
.method public engineInit(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    .line 37
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    .line 41
    :cond_0
    return-void
.end method

.method public engineRead()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/util/StreamParsingException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    .line 49
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 51
    .local v1, "tag":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 53
    const/4 v2, 0x0

    .line 57
    :goto_0
    return-object v2

    .line 56
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 57
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    invoke-direct {p0, v2}, Lorg/spongycastle/jce/provider/X509CertPairParser;->readDERCrossCertificatePair(Ljava/io/InputStream;)Lorg/spongycastle/x509/X509CertificatePair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 59
    .end local v1    # "tag":I
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/spongycastle/x509/util/StreamParsingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/x509/util/StreamParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public engineReadAll()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/util/StreamParsingException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "certs":Ljava/util/List;
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509CertPairParser;->engineRead()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/x509/X509CertificatePair;

    .local v1, "pair":Lorg/spongycastle/x509/X509CertificatePair;
    if-eqz v1, :cond_0

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_0
    return-object v0
.end method
