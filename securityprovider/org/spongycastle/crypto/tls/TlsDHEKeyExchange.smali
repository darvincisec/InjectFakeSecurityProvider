.class public Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;
.super Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;
.source "TlsDHEKeyExchange.java"


# instance fields
.field protected serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V
    .locals 1
    .param p1, "keyExchange"    # I
    .param p2, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .param p3, "dhParameters"    # Lorg/spongycastle/crypto/params/DHParameters;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;-><init>(ILjava/util/Vector;Lorg/spongycastle/crypto/params/DHParameters;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 20
    return-void
.end method


# virtual methods
.method public generateServerKeyExchange()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 38
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

    if-nez v7, :cond_0

    .line 40
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v8, 0x50

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 43
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;-><init>()V

    .line 45
    .local v0, "buf":Lorg/spongycastle/crypto/tls/DigestInputBuffer;
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v7}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-static {v7, v8, v0}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->generateEphemeralServerKeyExchange(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v7

    iput-object v7, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->dhAgreePrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 51
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-static {v7, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsSignerCredentials;)Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v5

    .line 54
    .local v5, "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    .line 56
    .local v1, "d":Lorg/spongycastle/crypto/Digest;
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v7}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v3

    .line 57
    .local v3, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    iget-object v7, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v8, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v8, v8

    invoke-interface {v1, v7, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 58
    iget-object v7, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v8, v3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v8, v8

    invoke-interface {v1, v7, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 59
    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/spongycastle/crypto/Digest;)V

    .line 61
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v2, v7, [B

    .line 62
    .local v2, "hash":[B
    invoke-interface {v1, v2, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 64
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v7, v2}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v4

    .line 66
    .local v4, "signature":[B
    new-instance v6, Lorg/spongycastle/crypto/tls/DigitallySigned;

    invoke-direct {v6, v5, v4}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 67
    .local v6, "signed_params":Lorg/spongycastle/crypto/tls/DigitallySigned;
    invoke-virtual {v6, v0}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 69
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method protected initVerifyer(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 4
    .param p1, "tlsSigner"    # Lorg/spongycastle/crypto/tls/TlsSigner;
    .param p2, "algorithm"    # Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .param p3, "securityParameters"    # Lorg/spongycastle/crypto/tls/SecurityParameters;

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, p2, v1}, Lorg/spongycastle/crypto/tls/TlsSigner;->createVerifyer(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    .line 98
    .local v0, "signer":Lorg/spongycastle/crypto/Signer;
    iget-object v1, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v2, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 99
    iget-object v1, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v2, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 100
    return-object v0
.end method

.method public processServerCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2
    .param p1, "serverCredentials"    # Lorg/spongycastle/crypto/tls/TlsCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 30
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 32
    check-cast p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .end local p1    # "serverCredentials":Lorg/spongycastle/crypto/tls/TlsCredentials;
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 33
    return-void
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v6}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v2

    .line 77
    .local v2, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    new-instance v0, Lorg/spongycastle/crypto/tls/SignerInputBuffer;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;-><init>()V

    .line 78
    .local v0, "buf":Lorg/spongycastle/crypto/tls/SignerInputBuffer;
    new-instance v5, Lorg/spongycastle/util/io/TeeInputStream;

    invoke-direct {v5, p1, v0}, Lorg/spongycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 80
    .local v5, "teeIn":Ljava/io/InputStream;
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/ServerDHParams;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerDHParams;

    move-result-object v1

    .line 82
    .local v1, "dhParams":Lorg/spongycastle/crypto/tls/ServerDHParams;
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->parseSignature(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object v3

    .line 84
    .local v3, "signed_params":Lorg/spongycastle/crypto/tls/DigitallySigned;
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v2}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->initVerifyer(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v4

    .line 85
    .local v4, "signer":Lorg/spongycastle/crypto/Signer;
    invoke-virtual {v0, v4}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;->updateSigner(Lorg/spongycastle/crypto/Signer;)V

    .line 86
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/spongycastle/crypto/Signer;->verifySignature([B)Z

    move-result v6

    if-nez v6, :cond_0

    .line 88
    new-instance v6, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v7, 0x33

    invoke-direct {v6, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v6

    .line 91
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ServerDHParams;->getPublicKey()Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->validateDHPublicKey(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->dhAgreePublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 92
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->dhAgreePublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->validateDHParameters(Lorg/spongycastle/crypto/params/DHParameters;)Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;->dhParameters:Lorg/spongycastle/crypto/params/DHParameters;

    .line 93
    return-void
.end method
