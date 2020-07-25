.class public Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;
.super Ljava/security/SignatureSpi;
.source "SignatureSpi.java"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lorg/spongycastle/crypto/DSA;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 37
    new-instance v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    .line 38
    new-instance v0, Lorg/spongycastle/crypto/signers/GOST3410Signer;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/GOST3410Signer;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    .line 39
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 97
    instance-of v1, p1, Lorg/spongycastle/jce/interfaces/ECKey;

    if-eqz v1, :cond_0

    .line 99
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 106
    .local v0, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 108
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->random:Ljava/security/SecureRandom;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, v0, v3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v4, v2}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 116
    :goto_1
    return-void

    .line 103
    .end local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/GOST3410Util;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .restart local v0    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v1, v4, v0}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_1
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
    .line 87
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->random:Ljava/security/SecureRandom;

    .line 88
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 89
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 5
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 47
    instance-of v3, p1, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-eqz v3, :cond_0

    .line 49
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 78
    .local v2, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 79
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 80
    return-void

    .line 51
    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    instance-of v3, p1, Lorg/spongycastle/jce/interfaces/GOST3410Key;

    if-eqz v3, :cond_1

    .line 53
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/GOST3410Util;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 59
    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 61
    .local v0, "bytes":[B
    invoke-static {v0}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->getPublicKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object p1

    .line 63
    instance-of v3, p1, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-eqz v3, :cond_2

    .line 65
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 69
    .end local v2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_2
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in DSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in DSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 208
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 137
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v1, v6, [B

    .line 139
    .local v1, "hash":[B
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6, v1, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 143
    const/16 v6, 0x40

    :try_start_0
    new-array v5, v6, [B

    .line 144
    .local v5, "sigBytes":[B
    iget-object v6, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v6, v1}, Lorg/spongycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v4

    .line 145
    .local v4, "sig":[Ljava/math/BigInteger;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 146
    .local v2, "r":[B
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 148
    .local v3, "s":[B
    const/4 v6, 0x0

    aget-byte v6, v3, v6

    if-eqz v6, :cond_0

    .line 150
    const/4 v6, 0x0

    array-length v7, v3

    rsub-int/lit8 v7, v7, 0x20

    array-length v8, v3

    invoke-static {v3, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    :goto_0
    const/4 v6, 0x0

    aget-byte v6, v2, v6

    if-eqz v6, :cond_1

    .line 159
    const/4 v6, 0x0

    array-length v7, v2

    rsub-int/lit8 v7, v7, 0x40

    array-length v8, v2

    invoke-static {v2, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    :goto_1
    return-object v5

    .line 154
    :cond_0
    const/4 v6, 0x1

    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    rsub-int/lit8 v7, v7, 0x20

    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v2    # "r":[B
    .end local v3    # "s":[B
    .end local v4    # "sig":[Ljava/math/BigInteger;
    .end local v5    # "sigBytes":[B
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "r":[B
    .restart local v3    # "s":[B
    .restart local v4    # "sig":[Ljava/math/BigInteger;
    .restart local v5    # "sigBytes":[B
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    rsub-int/lit8 v7, v7, 0x40

    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    invoke-static {v2, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
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
    .line 122
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 123
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
    .line 131
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 132
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 10
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 178
    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v1, v5, [B

    .line 180
    .local v1, "hash":[B
    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5, v1, v8}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 186
    const/16 v5, 0x20

    :try_start_0
    new-array v2, v5, [B

    .line 187
    .local v2, "r":[B
    const/16 v5, 0x20

    new-array v3, v5, [B

    .line 189
    .local v3, "s":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-static {p1, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    const/16 v5, 0x20

    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-static {p1, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/math/BigInteger;

    .line 194
    .local v4, "sig":[Ljava/math/BigInteger;
    const/4 v5, 0x0

    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v4, v5

    .line 195
    const/4 v5, 0x1

    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/gost/SignatureSpi;->signer:Lorg/spongycastle/crypto/DSA;

    aget-object v6, v4, v8

    aget-object v7, v4, v9

    invoke-interface {v5, v1, v6, v7}, Lorg/spongycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v5

    return v5

    .line 197
    .end local v2    # "r":[B
    .end local v3    # "s":[B
    .end local v4    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/security/SignatureException;

    const-string v6, "error decoding signature bytes."

    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
