.class public Lorg/spongycastle/x509/X509StreamParser;
.super Ljava/lang/Object;
.source "X509StreamParser.java"

# interfaces
.implements Lorg/spongycastle/x509/util/StreamParser;


# instance fields
.field private _provider:Ljava/security/Provider;

.field private _spi:Lorg/spongycastle/x509/X509StreamParserSpi;


# direct methods
.method private constructor <init>(Ljava/security/Provider;Lorg/spongycastle/x509/X509StreamParserSpi;)V
    .locals 0
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "spi"    # Lorg/spongycastle/x509/X509StreamParserSpi;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lorg/spongycastle/x509/X509StreamParser;->_provider:Ljava/security/Provider;

    .line 132
    iput-object p2, p0, Lorg/spongycastle/x509/X509StreamParser;->_spi:Lorg/spongycastle/x509/X509StreamParserSpi;

    .line 133
    return-void
.end method

.method private static createParser(Lorg/spongycastle/x509/X509Util$Implementation;)Lorg/spongycastle/x509/X509StreamParser;
    .locals 3
    .param p0, "impl"    # Lorg/spongycastle/x509/X509Util$Implementation;

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/spongycastle/x509/X509Util$Implementation;->getEngine()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/X509StreamParserSpi;

    .line 121
    .local v0, "spi":Lorg/spongycastle/x509/X509StreamParserSpi;
    new-instance v1, Lorg/spongycastle/x509/X509StreamParser;

    invoke-virtual {p0}, Lorg/spongycastle/x509/X509Util$Implementation;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/x509/X509StreamParser;-><init>(Ljava/security/Provider;Lorg/spongycastle/x509/X509StreamParserSpi;)V

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/spongycastle/x509/X509StreamParser;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/NoSuchParserException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    const-string v2, "X509StreamParser"

    invoke-static {v2, p0}, Lorg/spongycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;)Lorg/spongycastle/x509/X509Util$Implementation;

    move-result-object v1

    .line 53
    .local v1, "impl":Lorg/spongycastle/x509/X509Util$Implementation;
    invoke-static {v1}, Lorg/spongycastle/x509/X509StreamParser;->createParser(Lorg/spongycastle/x509/X509Util$Implementation;)Lorg/spongycastle/x509/X509StreamParser;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 55
    .end local v1    # "impl":Lorg/spongycastle/x509/X509Util$Implementation;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lorg/spongycastle/x509/NoSuchParserException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/x509/NoSuchParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/spongycastle/x509/X509StreamParser;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/NoSuchParserException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p1}, Lorg/spongycastle/x509/X509Util;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/spongycastle/x509/X509StreamParser;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Lorg/spongycastle/x509/X509StreamParser;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Lorg/spongycastle/x509/X509StreamParser;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/NoSuchParserException;
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    const-string v2, "X509StreamParser"

    invoke-static {v2, p0, p1}, Lorg/spongycastle/x509/X509Util;->getImplementation(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Lorg/spongycastle/x509/X509Util$Implementation;

    move-result-object v1

    .line 109
    .local v1, "impl":Lorg/spongycastle/x509/X509Util$Implementation;
    invoke-static {v1}, Lorg/spongycastle/x509/X509StreamParser;->createParser(Lorg/spongycastle/x509/X509Util$Implementation;)Lorg/spongycastle/x509/X509StreamParser;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 111
    .end local v1    # "impl":Lorg/spongycastle/x509/X509Util$Implementation;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lorg/spongycastle/x509/NoSuchParserException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/x509/NoSuchParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/spongycastle/x509/X509StreamParser;->_provider:Ljava/security/Provider;

    return-object v0
.end method

.method public init(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/spongycastle/x509/X509StreamParser;->_spi:Lorg/spongycastle/x509/X509StreamParserSpi;

    invoke-virtual {v0, p1}, Lorg/spongycastle/x509/X509StreamParserSpi;->engineInit(Ljava/io/InputStream;)V

    .line 143
    return-void
.end method

.method public init([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 147
    iget-object v0, p0, Lorg/spongycastle/x509/X509StreamParser;->_spi:Lorg/spongycastle/x509/X509StreamParserSpi;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509StreamParserSpi;->engineInit(Ljava/io/InputStream;)V

    .line 148
    return-void
.end method

.method public read()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/util/StreamParsingException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/spongycastle/x509/X509StreamParser;->_spi:Lorg/spongycastle/x509/X509StreamParserSpi;

    invoke-virtual {v0}, Lorg/spongycastle/x509/X509StreamParserSpi;->engineRead()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readAll()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/util/StreamParsingException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/spongycastle/x509/X509StreamParser;->_spi:Lorg/spongycastle/x509/X509StreamParserSpi;

    invoke-virtual {v0}, Lorg/spongycastle/x509/X509StreamParserSpi;->engineReadAll()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
