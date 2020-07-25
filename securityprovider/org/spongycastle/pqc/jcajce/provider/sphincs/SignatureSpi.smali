.class public Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;
.super Ljava/security/SignatureSpi;
.source "SignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi$withSha3_512;,
        Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi$withSha512;
    }
.end annotation


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "signer"    # Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    .line 28
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;

    .line 29
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 57
    instance-of v2, p1, Lorg/spongycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;

    if-eqz v2, :cond_1

    .line 59
    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;

    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/provider/sphincs/BCSphincs256PrivateKey;->getKeyParams()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    .line 61
    .local v0, "param":Lorg/spongycastle/crypto/CipherParameters;
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    .line 63
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v0, v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .end local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .local v1, "param":Lorg/spongycastle/crypto/CipherParameters;
    move-object v0, v1

    .line 66
    .end local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 67
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 73
    return-void

    .line 71
    .end local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p1    # "privateKey":Ljava/security/PrivateKey;
    :cond_1
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "unknown private key passed to SPHINCS-256"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 50
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->random:Ljava/security/SecureRandom;

    .line 51
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 52
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 34
    instance-of v1, p1, Lorg/spongycastle/pqc/jcajce/provider/sphincs/BCSphincs256PublicKey;

    if-eqz v1, :cond_0

    .line 36
    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/sphincs/BCSphincs256PublicKey;

    .end local p1    # "publicKey":Ljava/security/PublicKey;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/provider/sphincs/BCSphincs256PublicKey;->getKeyParams()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    .line 38
    .local v0, "param":Lorg/spongycastle/crypto/CipherParameters;
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 39
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 45
    return-void

    .line 43
    .end local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p1    # "publicKey":Ljava/security/PublicKey;
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "unknown public key passed to SPHINCS-256"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 91
    .local v1, "hash":[B
    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 94
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;

    invoke-virtual {v3, v1}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->generateSignature([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 96
    .local v2, "sig":[B
    return-object v2

    .line 98
    .end local v2    # "sig":[B
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 79
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 85
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 3
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 107
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 108
    .local v0, "hash":[B
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 109
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;

    invoke-virtual {v1, v0, p1}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;->verifySignature([B[B)Z

    move-result v1

    return v1
.end method
