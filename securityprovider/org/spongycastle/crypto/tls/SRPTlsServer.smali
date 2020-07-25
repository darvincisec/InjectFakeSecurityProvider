.class public Lorg/spongycastle/crypto/tls/SRPTlsServer;
.super Lorg/spongycastle/crypto/tls/AbstractTlsServer;
.source "SRPTlsServer.java"


# instance fields
.field protected loginParameters:Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;

.field protected srpIdentity:[B

.field protected srpIdentityManager:Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;)V
    .locals 1
    .param p1, "cipherFactory"    # Lorg/spongycastle/crypto/tls/TlsCipherFactory;
    .param p2, "srpIdentityManager"    # Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V

    .line 11
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->srpIdentity:[B

    .line 12
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->loginParameters:Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;

    .line 22
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->srpIdentityManager:Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;)V
    .locals 1
    .param p1, "srpIdentityManager"    # Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;

    .prologue
    .line 16
    new-instance v0, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/tls/SRPTlsServer;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected createSRPKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 4
    .param p1, "keyExchange"    # I

    .prologue
    .line 122
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->supportedSignatureAlgorithms:Ljava/util/Vector;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->srpIdentity:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->loginParameters:Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;-><init>(ILjava/util/Vector;[BLorg/spongycastle/crypto/tls/TlsSRPLoginParameters;)V

    return-object v0
.end method

.method protected getCipherSuites()[I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xc022
        0xc01f
        0xc021
        0xc01e
        0xc020
        0xc01d
    .end array-data
.end method

.method public getCredentials()Lorg/spongycastle/crypto/tls/TlsCredentials;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->selectedCipherSuite:I

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    .line 81
    .local v0, "keyExchangeAlgorithm":I
    packed-switch v0, :pswitch_data_0

    .line 94
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 84
    :pswitch_0
    const/4 v1, 0x0

    .line 90
    :goto_0
    return-object v1

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SRPTlsServer;->getDSASignerCredentials()Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    move-result-object v1

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SRPTlsServer;->getRSASignerCredentials()Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    move-result-object v1

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getDSASignerCredentials()Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->selectedCipherSuite:I

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I

    move-result v0

    .line 103
    .local v0, "keyExchangeAlgorithm":I
    packed-switch v0, :pswitch_data_0

    .line 116
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 108
    :pswitch_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/SRPTlsServer;->createSRPKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v1

    return-object v1

    .line 103
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getRSASignerCredentials()Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public getSelectedCipherSuite()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->getSelectedCipherSuite()I

    move-result v0

    .line 61
    .local v0, "cipherSuite":I
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->isSRPCipherSuite(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->srpIdentity:[B

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->srpIdentityManager:Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->srpIdentity:[B

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/tls/TlsSRPIdentityManager;->getLoginParameters([B)Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->loginParameters:Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;

    .line 68
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->loginParameters:Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;

    if-nez v1, :cond_1

    .line 70
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x73

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 74
    :cond_1
    return v0
.end method

.method public processClientExtensions(Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "clientExtensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsServer;->processClientExtensions(Ljava/util/Hashtable;)V

    .line 54
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->getSRPExtension(Ljava/util/Hashtable;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsServer;->srpIdentity:[B

    .line 55
    return-void
.end method
