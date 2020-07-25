.class public Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;
.super Ljava/security/Signature;
.source "XMSSSignatureSpi.java"

# interfaces
.implements Lorg/spongycastle/pqc/jcajce/interfaces/StateAwareSignature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi$withShake256;,
        Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi$withSha512;,
        Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi$withShake128;,
        Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi$withSha256;
    }
.end annotation


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

.field private treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;)V
    .locals 0
    .param p1, "sigName"    # Ljava/lang/String;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "signer"    # Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    .line 41
    iput-object p3, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

    .line 42
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 152
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
    .line 71
    instance-of v2, p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 73
    check-cast v2, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->getKeyParams()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    .line 75
    .local v0, "param":Lorg/spongycastle/crypto/CipherParameters;
    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;

    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;->getTreeDigestOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 76
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    .line 78
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v0, v2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .end local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .local v1, "param":Lorg/spongycastle/crypto/CipherParameters;
    move-object v0, v1

    .line 81
    .end local v1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 82
    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 88
    return-void

    .line 86
    .end local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p1    # "privateKey":Ljava/security/PrivateKey;
    :cond_1
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "unknown private key passed to XMSS"

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
    .line 64
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->random:Ljava/security/SecureRandom;

    .line 65
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 66
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
    .line 47
    instance-of v1, p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;

    if-eqz v1, :cond_0

    .line 49
    check-cast p1, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;

    .end local p1    # "publicKey":Ljava/security/PublicKey;
    invoke-virtual {p1}, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPublicKey;->getKeyParams()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    .line 51
    .local v0, "param":Lorg/spongycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 53
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 59
    return-void

    .line 57
    .end local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p1    # "publicKey":Ljava/security/PublicKey;
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "unknown public key passed to XMSS"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 134
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
    .line 105
    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v3}, Lorg/spongycastle/pqc/jcajce/provider/xmss/DigestUtil;->getDigestResult(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v1

    .line 109
    .local v1, "hash":[B
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

    invoke-virtual {v3, v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->generateSignature([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 111
    .local v2, "sig":[B
    return-object v2

    .line 113
    .end local v2    # "sig":[B
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    instance-of v3, v0, Ljava/lang/IllegalStateException;

    if-eqz v3, :cond_0

    .line 117
    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :cond_0
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
    .line 93
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 94
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
    .line 99
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 100
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 2
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v1}, Lorg/spongycastle/pqc/jcajce/provider/xmss/DigestUtil;->getDigestResult(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v0

    .line 128
    .local v0, "hash":[B
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

    invoke-virtual {v1, v0, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->verifySignature([B[B)Z

    move-result v1

    return v1
.end method

.method public getUpdatedPrivateKey()Ljava/security/PrivateKey;
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-nez v1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "signature object not in a signing state"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_0
    new-instance v0, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->signer:Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;->getUpdatedPrivateKey()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/pqc/jcajce/provider/xmss/BCXMSSPrivateKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;)V

    .line 163
    .local v0, "rKey":Ljava/security/PrivateKey;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;->treeDigest:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 165
    return-object v0
.end method
