.class public Lorg/spongycastle/crypto/tls/CertificateURL;
.super Ljava/lang/Object;
.source "CertificateURL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/tls/CertificateURL$ListBuffer16;
    }
.end annotation


# instance fields
.field protected type:S

.field protected urlAndHashList:Ljava/util/Vector;


# direct methods
.method public constructor <init>(SLjava/util/Vector;)V
    .locals 2
    .param p1, "type"    # S
    .param p2, "urlAndHashList"    # Ljava/util/Vector;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/CertChainType;->isValid(S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'type\' is not a valid CertChainType value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'urlAndHashList\' must have length > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_2
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/CertificateURL;->type:S

    .line 36
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/CertificateURL;->urlAndHashList:Ljava/util/Vector;

    .line 37
    return-void
.end method

.method public static parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateURL;
    .locals 8
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x32

    .line 88
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    .line 89
    .local v2, "type":S
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/CertChainType;->isValid(S)Z

    move-result v6

    if-nez v6, :cond_0

    .line 91
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 94
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    .line 95
    .local v1, "totalLength":I
    const/4 v6, 0x1

    if-ge v1, v6, :cond_1

    .line 97
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 100
    :cond_1
    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v3

    .line 102
    .local v3, "urlAndHashListData":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 104
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 105
    .local v5, "url_and_hash_list":Ljava/util/Vector;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    if-lez v6, :cond_2

    .line 107
    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/URLAndHash;->parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/URLAndHash;

    move-result-object v4

    .line 108
    .local v4, "url_and_hash":Lorg/spongycastle/crypto/tls/URLAndHash;
    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    .end local v4    # "url_and_hash":Lorg/spongycastle/crypto/tls/URLAndHash;
    :cond_2
    new-instance v6, Lorg/spongycastle/crypto/tls/CertificateURL;

    invoke-direct {v6, v2, v5}, Lorg/spongycastle/crypto/tls/CertificateURL;-><init>(SLjava/util/Vector;)V

    return-object v6
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-short v3, p0, Lorg/spongycastle/crypto/tls/CertificateURL;->type:S

    invoke-static {v3, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 66
    new-instance v0, Lorg/spongycastle/crypto/tls/CertificateURL$ListBuffer16;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/tls/CertificateURL$ListBuffer16;-><init>(Lorg/spongycastle/crypto/tls/CertificateURL;)V

    .line 67
    .local v0, "buf":Lorg/spongycastle/crypto/tls/CertificateURL$ListBuffer16;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/CertificateURL;->urlAndHashList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 69
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/CertificateURL;->urlAndHashList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/tls/URLAndHash;

    .line 70
    .local v2, "urlAndHash":Lorg/spongycastle/crypto/tls/URLAndHash;
    invoke-virtual {v2, v0}, Lorg/spongycastle/crypto/tls/URLAndHash;->encode(Ljava/io/OutputStream;)V

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "urlAndHash":Lorg/spongycastle/crypto/tls/URLAndHash;
    :cond_0
    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/tls/CertificateURL$ListBuffer16;->encodeTo(Ljava/io/OutputStream;)V

    .line 73
    return-void
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 44
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/CertificateURL;->type:S

    return v0
.end method

.method public getURLAndHashList()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateURL;->urlAndHashList:Ljava/util/Vector;

    return-object v0
.end method
