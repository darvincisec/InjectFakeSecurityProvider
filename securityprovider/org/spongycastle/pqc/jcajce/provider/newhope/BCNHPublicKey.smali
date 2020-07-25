.class public Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;
.super Ljava/lang/Object;
.source "BCNHPublicKey.java"

# interfaces
.implements Lorg/spongycastle/pqc/jcajce/interfaces/NHPublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 2
    .param p1, "keyInfo"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;)V
    .locals 0
    .param p1, "params"    # Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    if-nez v1, :cond_1

    .line 41
    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 43
    check-cast v0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    .line 45
    .local v0, "otherKey":Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;->getPubData()[B

    move-result-object v1

    iget-object v2, v0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;->getPubData()[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "NH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    .prologue
    .line 66
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 67
    .local v0, "algorithmIdentifier":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v2, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;->getPubData()[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 69
    .local v2, "pki":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 73
    .end local v0    # "algorithmIdentifier":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v2    # "pki":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :goto_0
    return-object v3

    .line 71
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "X.509"

    return-object v0
.end method

.method getKeyParams()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    return-object v0
.end method

.method public getPublicData()[B
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;->getPubData()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/newhope/NHPublicKeyParameters;->getPubData()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
