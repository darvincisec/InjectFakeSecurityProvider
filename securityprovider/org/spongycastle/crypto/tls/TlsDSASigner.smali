.class public abstract Lorg/spongycastle/crypto/tls/TlsDSASigner;
.super Lorg/spongycastle/crypto/tls/AbstractTlsSigner;
.source "TlsDSASigner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsSigner;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createDSAImpl(S)Lorg/spongycastle/crypto/DSA;
.end method

.method public createSigner(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;
    .locals 2
    .param p1, "algorithm"    # Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .param p2, "privateKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .prologue
    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->makeSigner(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    return-object v0
.end method

.method public createVerifyer(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)Lorg/spongycastle/crypto/Signer;
    .locals 1
    .param p1, "algorithm"    # Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .param p2, "publicKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, v0, v0, p2}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->makeSigner(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    return-object v0
.end method

.method public generateRawSignature(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)[B
    .locals 4
    .param p1, "algorithm"    # Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .param p2, "privateKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .param p3, "hash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 20
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsDSASigner;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 21
    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .line 20
    invoke-virtual {p0, p1, v3, v3, v1}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->makeSigner(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    .line 22
    .local v0, "signer":Lorg/spongycastle/crypto/Signer;
    if-nez p1, :cond_0

    .line 25
    const/16 v1, 0x10

    const/16 v2, 0x14

    invoke-interface {v0, p3, v1, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 31
    :goto_0
    invoke-interface {v0}, Lorg/spongycastle/crypto/Signer;->generateSignature()[B

    move-result-object v1

    return-object v1

    .line 29
    :cond_0
    const/4 v1, 0x0

    array-length v2, p3

    invoke-interface {v0, p3, v1, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    goto :goto_0
.end method

.method protected abstract getSignatureAlgorithm()S
.end method

.method protected makeInitParameters(ZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/CipherParameters;
    .locals 0
    .param p1, "forSigning"    # Z
    .param p2, "cp"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 63
    return-object p2
.end method

.method protected makeSigner(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/Signer;
    .locals 5
    .param p1, "algorithm"    # Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .param p2, "raw"    # Z
    .param p3, "forSigning"    # Z
    .param p4, "cp"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsDSASigner;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v4

    if-eq v3, v4, :cond_1

    .line 71
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 69
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 74
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v3

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->getSignatureAlgorithm()S

    move-result v4

    if-eq v3, v4, :cond_2

    .line 76
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 79
    :cond_2
    if-nez p1, :cond_3

    const/4 v1, 0x2

    .line 80
    .local v1, "hashAlgorithm":S
    :goto_1
    if-eqz p2, :cond_4

    new-instance v0, Lorg/spongycastle/crypto/digests/NullDigest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/NullDigest;-><init>()V

    .line 82
    .local v0, "d":Lorg/spongycastle/crypto/Digest;
    :goto_2
    new-instance v2, Lorg/spongycastle/crypto/signers/DSADigestSigner;

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->createDSAImpl(S)Lorg/spongycastle/crypto/DSA;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/crypto/Digest;)V

    .line 83
    .local v2, "s":Lorg/spongycastle/crypto/Signer;
    invoke-virtual {p0, p3, p4}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->makeInitParameters(ZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Lorg/spongycastle/crypto/Signer;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 84
    return-object v2

    .line 79
    .end local v0    # "d":Lorg/spongycastle/crypto/Digest;
    .end local v1    # "hashAlgorithm":S
    .end local v2    # "s":Lorg/spongycastle/crypto/Signer;
    :cond_3
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v1

    goto :goto_1

    .line 80
    .restart local v1    # "hashAlgorithm":S
    :cond_4
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    goto :goto_2
.end method

.method public verifyRawSignature(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[BLorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)Z
    .locals 3
    .param p1, "algorithm"    # Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .param p2, "sigBytes"    # [B
    .param p3, "publicKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .param p4, "hash"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 38
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v2, p3}, Lorg/spongycastle/crypto/tls/TlsDSASigner;->makeSigner(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;ZZLorg/spongycastle/crypto/CipherParameters;)Lorg/spongycastle/crypto/Signer;

    move-result-object v0

    .line 39
    .local v0, "signer":Lorg/spongycastle/crypto/Signer;
    if-nez p1, :cond_0

    .line 42
    const/16 v1, 0x10

    const/16 v2, 0x14

    invoke-interface {v0, p4, v1, v2}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    .line 48
    :goto_0
    invoke-interface {v0, p2}, Lorg/spongycastle/crypto/Signer;->verifySignature([B)Z

    move-result v1

    return v1

    .line 46
    :cond_0
    array-length v1, p4

    invoke-interface {v0, p4, v2, v1}, Lorg/spongycastle/crypto/Signer;->update([BII)V

    goto :goto_0
.end method
