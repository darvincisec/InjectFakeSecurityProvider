.class public Lorg/spongycastle/crypto/tls/TlsRSAUtils;
.super Ljava/lang/Object;
.source "TlsRSAUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateEncryptedPreMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/params/RSAKeyParameters;Ljava/io/OutputStream;)[B
    .locals 7
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "rsaServerPublicKey"    # Lorg/spongycastle/crypto/params/RSAKeyParameters;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 21
    const/16 v4, 0x30

    new-array v3, v4, [B

    .line 22
    .local v3, "premasterSecret":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 23
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v4

    invoke-static {v4, v3, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 25
    new-instance v1, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v4, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v4}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v4}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    .line 26
    .local v1, "encoding":Lorg/spongycastle/crypto/encodings/PKCS1Encoding;
    const/4 v4, 0x1

    new-instance v5, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v1, v4, v5}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 30
    const/4 v4, 0x0

    :try_start_0
    array-length v5, v3

    invoke-virtual {v1, v3, v4, v5}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->processBlock([BII)[B

    move-result-object v2

    .line 32
    .local v2, "encryptedPreMasterSecret":[B
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 50
    :goto_0
    return-object v3

    .line 39
    :cond_0
    invoke-static {v2, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v2    # "encryptedPreMasterSecret":[B
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x50

    invoke-direct {v4, v5, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v4
.end method

.method public static safeDecryptPreMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/params/RSAKeyParameters;[B)[B
    .locals 13
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "rsaServerPrivateKey"    # Lorg/spongycastle/crypto/params/RSAKeyParameters;
    .param p2, "encryptedPreMasterSecret"    # [B

    .prologue
    const/16 v12, 0x30

    const/4 v11, 0x0

    .line 59
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    .line 62
    .local v1, "clientVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    const/4 v7, 0x0

    .line 68
    .local v7, "versionNumberCheckDisabled":Z
    new-array v4, v12, [B

    .line 69
    .local v4, "fallback":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 71
    invoke-static {v4}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    .line 74
    .local v0, "M":[B
    :try_start_0
    new-instance v3, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v8, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v8}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v3, v8, v4}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;[B)V

    .line 75
    .local v3, "encoding":Lorg/spongycastle/crypto/encodings/PKCS1Encoding;
    const/4 v8, 0x0

    new-instance v9, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 76
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v10

    invoke-direct {v9, p1, v10}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .line 75
    invoke-virtual {v3, v8, v9}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 78
    const/4 v8, 0x0

    array-length v9, p2

    invoke-virtual {v3, p2, v8, v9}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->processBlock([BII)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    .end local v3    # "encoding":Lorg/spongycastle/crypto/encodings/PKCS1Encoding;
    :goto_0
    if-eqz v7, :cond_1

    sget-object v8, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v1, v8}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 129
    :cond_0
    return-object v0

    .line 114
    :cond_1
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v8

    aget-byte v9, v0, v11

    and-int/lit16 v9, v9, 0xff

    xor-int/2addr v8, v9

    .line 115
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v9

    const/4 v10, 0x1

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v9, v10

    or-int v2, v8, v9

    .line 116
    .local v2, "correct":I
    shr-int/lit8 v8, v2, 0x1

    or-int/2addr v2, v8

    .line 117
    shr-int/lit8 v8, v2, 0x2

    or-int/2addr v2, v8

    .line 118
    shr-int/lit8 v8, v2, 0x4

    or-int/2addr v2, v8

    .line 119
    and-int/lit8 v8, v2, 0x1

    add-int/lit8 v8, v8, -0x1

    xor-int/lit8 v6, v8, -0x1

    .line 124
    .local v6, "mask":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v12, :cond_0

    .line 126
    aget-byte v8, v0, v5

    xor-int/lit8 v9, v6, -0x1

    and-int/2addr v8, v9

    aget-byte v9, v4, v5

    and-int/2addr v9, v6

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    .line 124
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 80
    .end local v2    # "correct":I
    .end local v5    # "i":I
    .end local v6    # "mask":I
    :catch_0
    move-exception v8

    goto :goto_0
.end method
