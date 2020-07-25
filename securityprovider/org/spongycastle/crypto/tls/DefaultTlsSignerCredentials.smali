.class public Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;
.super Lorg/spongycastle/crypto/tls/AbstractTlsSignerCredentials;
.source "DefaultTlsSignerCredentials.java"


# instance fields
.field protected certificate:Lorg/spongycastle/crypto/tls/Certificate;

.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected signatureAndHashAlgorithm:Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

.field protected signer:Lorg/spongycastle/crypto/tls/TlsSigner;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 1
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "certificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .param p3, "privateKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;)V
    .locals 3
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "certificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .param p3, "privateKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .param p4, "signatureAndHashAlgorithm"    # Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsSignerCredentials;-><init>()V

    .line 29
    if-nez p2, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certificate\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    invoke-virtual {p2}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certificate\' cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    if-nez p3, :cond_2

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'privateKey\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_3

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'privateKey\' must be private"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_3
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p4, :cond_4

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'signatureAndHashAlgorithm\' cannot be null for (D)TLS 1.2+"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_4
    instance-of v0, p3, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-eqz v0, :cond_5

    .line 52
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsRSASigner;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->signer:Lorg/spongycastle/crypto/tls/TlsSigner;

    .line 67
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->signer:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSigner;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 69
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 70
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->certificate:Lorg/spongycastle/crypto/tls/Certificate;

    .line 71
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 72
    iput-object p4, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->signatureAndHashAlgorithm:Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    .line 73
    return-void

    .line 54
    :cond_5
    instance-of v0, p3, Lorg/spongycastle/crypto/params/DSAPrivateKeyParameters;

    if-eqz v0, :cond_6

    .line 56
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsDSSSigner;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->signer:Lorg/spongycastle/crypto/tls/TlsSigner;

    goto :goto_0

    .line 58
    :cond_6
    instance-of v0, p3, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz v0, :cond_7

    .line 60
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsECDSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsECDSASigner;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->signer:Lorg/spongycastle/crypto/tls/TlsSigner;

    goto :goto_0

    .line 64
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'privateKey\' type not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generateCertificateSignature([B)[B
    .locals 4
    .param p1, "hash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->signer:Lorg/spongycastle/crypto/tls/TlsSigner;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->signatureAndHashAlgorithm:Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v1, v2, v3, p1}, Lorg/spongycastle/crypto/tls/TlsSigner;->generateRawSignature(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)[B

    move-result-object v1

    .line 91
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->signer:Lorg/spongycastle/crypto/tls/TlsSigner;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v1, v2, p1}, Lorg/spongycastle/crypto/tls/TlsSigner;->generateRawSignature(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)[B
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lorg/spongycastle/crypto/CryptoException;
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1
.end method

.method public getCertificate()Lorg/spongycastle/crypto/tls/Certificate;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->certificate:Lorg/spongycastle/crypto/tls/Certificate;

    return-object v0
.end method

.method public getSignatureAndHashAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsSignerCredentials;->signatureAndHashAlgorithm:Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    return-object v0
.end method
