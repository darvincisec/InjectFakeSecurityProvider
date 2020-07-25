.class public Lorg/spongycastle/jce/provider/X509AttrCertParser;
.super Lorg/spongycastle/x509/X509StreamParserSpi;
.source "X509AttrCertParser.java"


# static fields
.field private static final PEM_PARSER:Lorg/spongycastle/jce/provider/PEMUtil;


# instance fields
.field private currentStream:Ljava/io/InputStream;

.field private sData:Lorg/spongycastle/asn1/ASN1Set;

.field private sDataObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lorg/spongycastle/jce/provider/PEMUtil;

    const-string v1, "ATTRIBUTE CERTIFICATE"

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->PEM_PARSER:Lorg/spongycastle/jce/provider/PEMUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lorg/spongycastle/x509/X509StreamParserSpi;-><init>()V

    .line 27
    iput-object v1, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sData:Lorg/spongycastle/asn1/ASN1Set;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sDataObjectCount:I

    .line 29
    iput-object v1, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    return-void
.end method

.method private getCertificate()Lorg/spongycastle/x509/X509AttributeCertificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sData:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 58
    :cond_0
    iget v1, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sDataObjectCount:I

    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sData:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 60
    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sData:Lorg/spongycastle/asn1/ASN1Set;

    iget v2, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sDataObjectCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sDataObjectCount:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 62
    .local v0, "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 64
    new-instance v1, Lorg/spongycastle/x509/X509V2AttributeCertificate;

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local v0    # "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    const/4 v2, 0x0

    .line 65
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/x509/X509V2AttributeCertificate;-><init>([B)V

    .line 70
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readDERCertificate(Ljava/io/InputStream;)Lorg/spongycastle/x509/X509AttributeCertificate;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    .local v0, "dIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 38
    .local v1, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 39
    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    new-instance v3, Lorg/spongycastle/asn1/pkcs/SignedData;

    .line 44
    invoke-virtual {v1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 43
    invoke-static {v2, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/pkcs/SignedData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 44
    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/SignedData;->getCertificates()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sData:Lorg/spongycastle/asn1/ASN1Set;

    .line 46
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->getCertificate()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v2

    .line 50
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/spongycastle/x509/X509V2AttributeCertificate;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/x509/X509V2AttributeCertificate;-><init>([B)V

    goto :goto_0
.end method

.method private readPEMCertificate(Ljava/io/InputStream;)Lorg/spongycastle/x509/X509AttributeCertificate;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    sget-object v1, Lorg/spongycastle/jce/provider/X509AttrCertParser;->PEM_PARSER:Lorg/spongycastle/jce/provider/PEMUtil;

    invoke-virtual {v1, p1}, Lorg/spongycastle/jce/provider/PEMUtil;->readPEMObject(Ljava/io/InputStream;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 79
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Lorg/spongycastle/x509/X509V2AttributeCertificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/x509/X509V2AttributeCertificate;-><init>([B)V

    .line 84
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public engineInit(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sData:Lorg/spongycastle/asn1/ASN1Set;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sDataObjectCount:I

    .line 93
    iget-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    .line 97
    :cond_0
    return-void
.end method

.method public engineRead()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/util/StreamParsingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 104
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sData:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v3, :cond_2

    .line 106
    iget v3, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sDataObjectCount:I

    iget-object v4, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sData:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 108
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->getCertificate()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v2

    .line 134
    :cond_0
    :goto_0
    return-object v2

    .line 112
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sData:Lorg/spongycastle/asn1/ASN1Set;

    .line 113
    const/4 v3, 0x0

    iput v3, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->sDataObjectCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/spongycastle/x509/util/StreamParsingException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/x509/util/StreamParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    .line 119
    iget-object v3, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 121
    .local v1, "tag":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 126
    const/16 v2, 0x30

    if-eq v1, v2, :cond_3

    .line 128
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 129
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    invoke-direct {p0, v2}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->readPEMCertificate(Ljava/io/InputStream;)Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v2

    goto :goto_0

    .line 133
    :cond_3
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 134
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    invoke-direct {p0, v2}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->readDERCertificate(Ljava/io/InputStream;)Lorg/spongycastle/x509/X509AttributeCertificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public engineReadAll()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/util/StreamParsingException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, "certs":Ljava/util/List;
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->engineRead()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertificate;

    .local v0, "cert":Lorg/spongycastle/x509/X509AttributeCertificate;
    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_0
    return-object v1
.end method
