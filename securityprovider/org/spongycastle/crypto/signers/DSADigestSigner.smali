.class public Lorg/spongycastle/crypto/signers/DSADigestSigner;
.super Ljava/lang/Object;
.source "DSADigestSigner.java"

# interfaces
.implements Lorg/spongycastle/crypto/Signer;


# instance fields
.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private final dsaSigner:Lorg/spongycastle/crypto/DSA;

.field private forSigning:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "signer"    # Lorg/spongycastle/crypto/DSA;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->digest:Lorg/spongycastle/crypto/Digest;

    .line 31
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->dsaSigner:Lorg/spongycastle/crypto/DSA;

    .line 32
    return-void
.end method

.method private derDecode([B)[Ljava/math/BigInteger;
    .locals 5
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 157
    .local v0, "s":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/math/BigInteger;

    .line 159
    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v2, v3

    .line 160
    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v2, v4

    .line 157
    return-object v2
.end method

.method private derEncode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 3
    .param p1, "r"    # Ljava/math/BigInteger;
    .param p2, "s"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 145
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 146
    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v1, p2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 148
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public generateSignature()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-boolean v3, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->forSigning:Z

    if-nez v3, :cond_0

    .line 94
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "DSADigestSigner not initialised for signature generation."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 98
    .local v1, "hash":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 100
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->dsaSigner:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v3, v1}, Lorg/spongycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v2

    .line 104
    .local v2, "sig":[Ljava/math/BigInteger;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/crypto/signers/DSADigestSigner;->derEncode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "unable to encode signature"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forSigning"    # Z
    .param p2, "parameters"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 38
    iput-boolean p1, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->forSigning:Z

    .line 42
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 44
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 51
    .local v0, "k":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Signing Requires Private Key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "k":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    move-object v0, p2

    .line 48
    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .restart local v0    # "k":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_0

    .line 56
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Verification Requires Public Key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/DSADigestSigner;->reset()V

    .line 63
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->dsaSigner:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v1, p1, p2}, Lorg/spongycastle/crypto/DSA;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 64
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 137
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "input"    # B

    .prologue
    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 73
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "length"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 84
    return-void
.end method

.method public verifySignature([B)Z
    .locals 7
    .param p1, "signature"    # [B

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-boolean v4, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->forSigning:Z

    if-eqz v4, :cond_0

    .line 117
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "DSADigestSigner not initialised for verification"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v1, v4, [B

    .line 121
    .local v1, "hash":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v1, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 125
    :try_start_0
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/signers/DSADigestSigner;->derDecode([B)[Ljava/math/BigInteger;

    move-result-object v2

    .line 126
    .local v2, "sig":[Ljava/math/BigInteger;
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->dsaSigner:Lorg/spongycastle/crypto/DSA;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-interface {v4, v1, v5, v6}, Lorg/spongycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 130
    .end local v2    # "sig":[Ljava/math/BigInteger;
    :goto_0
    return v3

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method
