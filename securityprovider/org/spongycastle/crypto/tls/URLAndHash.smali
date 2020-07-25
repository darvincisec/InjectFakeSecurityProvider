.class public Lorg/spongycastle/crypto/tls/URLAndHash;
.super Ljava/lang/Object;
.source "URLAndHash.java"


# instance fields
.field protected sha1Hash:[B

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sha1Hash"    # [B

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_1

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'url\' must have length from 1 to (2^16 - 1)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'sha1Hash\' must have length == 20, if present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_2
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/URLAndHash;->url:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/URLAndHash;->sha1Hash:[B

    .line 30
    return-void
.end method

.method public static parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/URLAndHash;
    .locals 7
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2f

    .line 78
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 79
    .local v3, "urlEncoding":[B
    array-length v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 81
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v4, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 83
    :cond_0
    invoke-static {v3}, Lorg/spongycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 86
    .local v1, "sha1Hash":[B
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    .line 87
    .local v0, "padding":S
    packed-switch v0, :pswitch_data_0

    .line 99
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v4, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 90
    :pswitch_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v4, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 96
    :pswitch_1
    const/16 v4, 0x14

    invoke-static {v4, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    .line 102
    :cond_1
    new-instance v4, Lorg/spongycastle/crypto/tls/URLAndHash;

    invoke-direct {v4, v2, v1}, Lorg/spongycastle/crypto/tls/URLAndHash;-><init>(Ljava/lang/String;[B)V

    return-object v4

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/URLAndHash;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 52
    .local v0, "urlEncoding":[B
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 54
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/URLAndHash;->sha1Hash:[B

    if-nez v1, :cond_0

    .line 56
    const/4 v1, 0x0

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    .line 61
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/URLAndHash;->sha1Hash:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public getSHA1Hash()[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/URLAndHash;->sha1Hash:[B

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/URLAndHash;->url:Ljava/lang/String;

    return-object v0
.end method
