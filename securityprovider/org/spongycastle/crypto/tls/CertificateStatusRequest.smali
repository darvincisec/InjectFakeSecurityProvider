.class public Lorg/spongycastle/crypto/tls/CertificateStatusRequest;
.super Ljava/lang/Object;
.source "CertificateStatusRequest.java"


# instance fields
.field protected request:Ljava/lang/Object;

.field protected statusType:S


# direct methods
.method public constructor <init>(SLjava/lang/Object;)V
    .locals 2
    .param p1, "statusType"    # S
    .param p2, "request"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1, p2}, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'request\' is not an instance of the correct type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->statusType:S

    .line 20
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->request:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method protected static isCorrectType(SLjava/lang/Object;)Z
    .locals 2
    .param p0, "statusType"    # S
    .param p1, "request"    # Ljava/lang/Object;

    .prologue
    .line 90
    packed-switch p0, :pswitch_data_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'statusType\' is an unsupported CertificateStatusType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_0
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;

    return v0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateStatusRequest;
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v1

    .line 76
    .local v1, "status_type":S
    packed-switch v1, :pswitch_data_0

    .line 82
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 79
    :pswitch_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/OCSPStatusRequest;

    move-result-object v0

    .line 85
    .local v0, "result":Lorg/spongycastle/crypto/tls/OCSPStatusRequest;
    new-instance v2, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;

    invoke-direct {v2, v1, v0}, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;-><init>(SLjava/lang/Object;)V

    return-object v2

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->statusType:S

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 53
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->statusType:S

    packed-switch v0, :pswitch_data_0

    .line 59
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 56
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->request:Ljava/lang/Object;

    check-cast v0, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;->encode(Ljava/io/OutputStream;)V

    .line 61
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getOCSPStatusRequest()Lorg/spongycastle/crypto/tls/OCSPStatusRequest;
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->request:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'request\' is not an OCSPStatusRequest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->request:Ljava/lang/Object;

    check-cast v0, Lorg/spongycastle/crypto/tls/OCSPStatusRequest;

    return-object v0
.end method

.method public getRequest()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->request:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatusType()S
    .locals 1

    .prologue
    .line 25
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->statusType:S

    return v0
.end method
