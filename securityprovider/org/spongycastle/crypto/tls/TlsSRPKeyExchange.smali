.class public Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;
.super Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;
.source "TlsSRPKeyExchange.java"


# instance fields
.field protected groupVerifier:Lorg/spongycastle/crypto/tls/TlsSRPGroupVerifier;

.field protected identity:[B

.field protected password:[B

.field protected serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

.field protected serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

.field protected srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

.field protected srpPeerCredentials:Ljava/math/BigInteger;

.field protected srpSalt:[B

.field protected srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

.field protected srpVerifier:Ljava/math/BigInteger;

.field protected tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;


# direct methods
.method public constructor <init>(ILjava/util/Vector;Lorg/spongycastle/crypto/tls/TlsSRPGroupVerifier;[B[B)V
    .locals 1
    .param p1, "keyExchange"    # I
    .param p2, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .param p3, "groupVerifier"    # Lorg/spongycastle/crypto/tls/TlsSRPGroupVerifier;
    .param p4, "identity"    # [B
    .param p5, "password"    # [B

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    .line 49
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 51
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    .line 52
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    .line 53
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    .line 54
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    .line 55
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpVerifier:Ljava/math/BigInteger;

    .line 56
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    .line 58
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 73
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->createSigner(I)Lorg/spongycastle/crypto/tls/TlsSigner;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    .line 74
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->groupVerifier:Lorg/spongycastle/crypto/tls/TlsSRPGroupVerifier;

    .line 75
    iput-object p4, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    .line 76
    iput-object p5, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->password:[B

    .line 77
    new-instance v0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    invoke-direct {v0}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    .line 78
    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;[BLorg/spongycastle/crypto/tls/TlsSRPLoginParameters;)V
    .locals 1
    .param p1, "keyExchange"    # I
    .param p2, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .param p3, "identity"    # [B
    .param p4, "loginParameters"    # Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;-><init>(ILjava/util/Vector;)V

    .line 49
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 51
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    .line 52
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    .line 53
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    .line 54
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    .line 55
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpVerifier:Ljava/math/BigInteger;

    .line 56
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    .line 58
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 85
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->createSigner(I)Lorg/spongycastle/crypto/tls/TlsSigner;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    .line 86
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    .line 87
    new-instance v0, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    invoke-direct {v0}, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    .line 88
    invoke-virtual {p4}, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->getGroup()Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    .line 89
    invoke-virtual {p4}, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->getVerifier()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpVerifier:Ljava/math/BigInteger;

    .line 90
    invoke-virtual {p4}, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->getSalt()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    .line 91
    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;[B[B)V
    .locals 6
    .param p1, "keyExchange"    # I
    .param p2, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .param p3, "identity"    # [B
    .param p4, "password"    # [B

    .prologue
    .line 65
    new-instance v3, Lorg/spongycastle/crypto/tls/DefaultTlsSRPGroupVerifier;

    invoke-direct {v3}, Lorg/spongycastle/crypto/tls/DefaultTlsSRPGroupVerifier;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;-><init>(ILjava/util/Vector;Lorg/spongycastle/crypto/tls/TlsSRPGroupVerifier;[B[B)V

    .line 66
    return-void
.end method

.method protected static createSigner(I)Lorg/spongycastle/crypto/tls/TlsSigner;
    .locals 2
    .param p0, "keyExchange"    # I

    .prologue
    .line 31
    packed-switch p0, :pswitch_data_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported key exchange algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :pswitch_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 36
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsRSASigner;-><init>()V

    goto :goto_0

    .line 38
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsDSSSigner;-><init>()V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->password:[B

    invoke-virtual {v1, v2, v3, v4}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->generateClientCredentials([B[B[B)Ljava/math/BigInteger;

    move-result-object v0

    .line 265
    .local v0, "A":Ljava/math/BigInteger;
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->writeSRPParameter(Ljava/math/BigInteger;Ljava/io/OutputStream;)V

    .line 267
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->srpIdentity:[B

    .line 268
    return-void
.end method

.method public generatePremasterSecret()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    .line 293
    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 297
    .local v0, "S":Ljava/math/BigInteger;
    :goto_0
    invoke-static {v0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v2

    return-object v2

    .line 293
    .end local v0    # "S":Ljava/math/BigInteger;
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;

    .line 294
    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->calculateSecret(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Lorg/spongycastle/crypto/CryptoException;
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x2f

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v2
.end method

.method public generateServerKeyExchange()[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 164
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    iget-object v11, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpVerifier:Ljava/math/BigInteger;

    const/4 v12, 0x2

    invoke-static {v12}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v12

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v13}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->init(Lorg/spongycastle/crypto/params/SRP6GroupParameters;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    .line 165
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpServer:Lorg/spongycastle/crypto/agreement/srp/SRP6Server;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/agreement/srp/SRP6Server;->generateServerCredentials()Ljava/math/BigInteger;

    move-result-object v0

    .line 167
    .local v0, "B":Ljava/math/BigInteger;
    new-instance v8, Lorg/spongycastle/crypto/tls/ServerSRPParams;

    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/SRP6GroupParameters;->getN()Ljava/math/BigInteger;

    move-result-object v9

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/SRP6GroupParameters;->getG()Ljava/math/BigInteger;

    move-result-object v10

    iget-object v11, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    invoke-direct {v8, v9, v10, v11, v0}, Lorg/spongycastle/crypto/tls/ServerSRPParams;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLjava/math/BigInteger;)V

    .line 169
    .local v8, "srpParams":Lorg/spongycastle/crypto/tls/ServerSRPParams;
    new-instance v1, Lorg/spongycastle/crypto/tls/DigestInputBuffer;

    invoke-direct {v1}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;-><init>()V

    .line 171
    .local v1, "buf":Lorg/spongycastle/crypto/tls/DigestInputBuffer;
    invoke-virtual {v8, v1}, Lorg/spongycastle/crypto/tls/ServerSRPParams;->encode(Ljava/io/OutputStream;)V

    .line 173
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v9, :cond_0

    .line 178
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-static {v9, v10}, Lorg/spongycastle/crypto/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsSignerCredentials;)Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v6

    .line 181
    .local v6, "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;)Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    .line 183
    .local v2, "d":Lorg/spongycastle/crypto/Digest;
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v9}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v4

    .line 184
    .local v4, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    iget-object v9, v4, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v10, v4, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v10, v10

    invoke-interface {v2, v9, v14, v10}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 185
    iget-object v9, v4, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v10, v4, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v10, v10

    invoke-interface {v2, v9, v14, v10}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 186
    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->updateDigest(Lorg/spongycastle/crypto/Digest;)V

    .line 188
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v3, v9, [B

    .line 189
    .local v3, "hash":[B
    invoke-interface {v2, v3, v14}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 191
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-interface {v9, v3}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v5

    .line 193
    .local v5, "signature":[B
    new-instance v7, Lorg/spongycastle/crypto/tls/DigitallySigned;

    invoke-direct {v7, v6, v5}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    .line 194
    .local v7, "signed_params":Lorg/spongycastle/crypto/tls/DigitallySigned;
    invoke-virtual {v7, v1}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    .line 197
    .end local v2    # "d":Lorg/spongycastle/crypto/Digest;
    .end local v3    # "hash":[B
    .end local v4    # "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    .end local v5    # "signature":[B
    .end local v6    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .end local v7    # "signed_params":Lorg/spongycastle/crypto/tls/DigitallySigned;
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DigestInputBuffer;->toByteArray()[B

    move-result-object v9

    return-object v9
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 1
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsSigner;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 101
    :cond_0
    return-void
.end method

.method protected initVerifyer(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 4
    .param p1, "tlsSigner"    # Lorg/spongycastle/crypto/tls/TlsSigner;
    .param p2, "algorithm"    # Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .param p3, "securityParameters"    # Lorg/spongycastle/crypto/tls/SecurityParameters;

    .prologue
    const/4 v3, 0x0

    .line 307
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {p1, p2, v1}, Lorg/spongycastle/crypto/tls/TlsSigner;->createVerifyer(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    .line 308
    .local v0, "signer":Lorg/spongycastle/crypto/Signer;
    iget-object v1, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v2, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 309
    iget-object v1, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v2, p3, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 310
    return-object v0
.end method

.method public processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2
    .param p1, "clientCredentials"    # Lorg/spongycastle/crypto/tls/TlsCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public processClientKeyExchange(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/SRP6GroupParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsSRPUtils;->readSRPParameter(Ljava/io/InputStream;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->identity:[B

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->srpIdentity:[B

    .line 286
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Lorg/spongycastle/crypto/CryptoException;
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x2f

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1
.end method

.method public processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 5
    .param p1, "serverCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-nez v3, :cond_0

    .line 115
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 117
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2a

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 122
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v2

    .line 124
    .local v2, "x509Cert":Lorg/spongycastle/asn1/x509/Certificate;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 127
    .local v1, "keyInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :try_start_0
    invoke-static {v1}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverPublicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v3, v4}, Lorg/spongycastle/crypto/tls/TlsSigner;->isValidPublicKey(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 136
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2e

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2b

    invoke-direct {v3, v4, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v3

    .line 139
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    const/16 v3, 0x80

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 141
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/tls/AbstractTlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 142
    return-void
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
    .line 147
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->keyExchange:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-nez v0, :cond_1

    .line 149
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 152
    :cond_1
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 154
    check-cast p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .end local p1    # "serverCredentials":Lorg/spongycastle/crypto/tls/TlsCredentials;
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->serverCredentials:Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 155
    return-void
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 11
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v7}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v2

    .line 204
    .local v2, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    const/4 v0, 0x0

    .line 205
    .local v0, "buf":Lorg/spongycastle/crypto/tls/SignerInputBuffer;
    move-object v6, p1

    .line 207
    .local v6, "teeIn":Ljava/io/InputStream;
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v7, :cond_0

    .line 209
    new-instance v0, Lorg/spongycastle/crypto/tls/SignerInputBuffer;

    .end local v0    # "buf":Lorg/spongycastle/crypto/tls/SignerInputBuffer;
    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;-><init>()V

    .line 210
    .restart local v0    # "buf":Lorg/spongycastle/crypto/tls/SignerInputBuffer;
    new-instance v6, Lorg/spongycastle/util/io/TeeInputStream;

    .end local v6    # "teeIn":Ljava/io/InputStream;
    invoke-direct {v6, p1, v0}, Lorg/spongycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 213
    .restart local v6    # "teeIn":Ljava/io/InputStream;
    :cond_0
    invoke-static {v6}, Lorg/spongycastle/crypto/tls/ServerSRPParams;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerSRPParams;

    move-result-object v5

    .line 215
    .local v5, "srpParams":Lorg/spongycastle/crypto/tls/ServerSRPParams;
    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->parseSignature(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/DigitallySigned;

    move-result-object v3

    .line 219
    .local v3, "signed_params":Lorg/spongycastle/crypto/tls/DigitallySigned;
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v2}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->initVerifyer(Lorg/spongycastle/crypto/tls/TlsSigner;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/tls/SecurityParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v4

    .line 220
    .local v4, "signer":Lorg/spongycastle/crypto/Signer;
    invoke-virtual {v0, v4}, Lorg/spongycastle/crypto/tls/SignerInputBuffer;->updateSigner(Lorg/spongycastle/crypto/Signer;)V

    .line 221
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/DigitallySigned;->getSignature()[B

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/spongycastle/crypto/Signer;->verifySignature([B)Z

    move-result v7

    if-nez v7, :cond_1

    .line 223
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v8, 0x33

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 227
    .end local v3    # "signed_params":Lorg/spongycastle/crypto/tls/DigitallySigned;
    .end local v4    # "signer":Lorg/spongycastle/crypto/Signer;
    :cond_1
    new-instance v7, Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ServerSRPParams;->getN()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ServerSRPParams;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/spongycastle/crypto/params/SRP6GroupParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v7, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    .line 229
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->groupVerifier:Lorg/spongycastle/crypto/tls/TlsSRPGroupVerifier;

    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    invoke-interface {v7, v8}, Lorg/spongycastle/crypto/tls/TlsSRPGroupVerifier;->accept(Lorg/spongycastle/crypto/params/SRP6GroupParameters;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 231
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v8, 0x47

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v7

    .line 234
    :cond_2
    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ServerSRPParams;->getS()[B

    move-result-object v7

    iput-object v7, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpSalt:[B

    .line 242
    :try_start_0
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/SRP6GroupParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ServerSRPParams;->getB()Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    iput-object v7, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpPeerCredentials:Ljava/math/BigInteger;
    :try_end_0
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpClient:Lorg/spongycastle/crypto/agreement/srp/SRP6Client;

    iget-object v8, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->srpGroup:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    const/4 v9, 0x2

    invoke-static {v9}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v9

    iget-object v10, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v10}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->init(Lorg/spongycastle/crypto/params/SRP6GroupParameters;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    .line 250
    return-void

    .line 244
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Lorg/spongycastle/crypto/CryptoException;
    new-instance v7, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v8, 0x2f

    invoke-direct {v7, v8, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v7
.end method

.method public requiresServerKeyExchange()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public skipServerCredentials()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;->tlsSigner:Lorg/spongycastle/crypto/tls/TlsSigner;

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 109
    :cond_0
    return-void
.end method

.method public validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 2
    .param p1, "certificateRequest"    # Lorg/spongycastle/crypto/tls/CertificateRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
