.class public Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;
.super Ljava/lang/Object;
.source "BCNHPrivateKey.java"

# interfaces
.implements Lorg/spongycastle/pqc/jcajce/interfaces/NHPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 2
    .param p1, "keyInfo"    # Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->convert([B)[S

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;-><init>([S)V

    iput-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;)V
    .locals 0
    .param p1, "params"    # Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    .line 27
    return-void
.end method

.method private static convert([B)[S
    .locals 3
    .param p0, "octets"    # [B

    .prologue
    .line 107
    array-length v2, p0

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [S

    .line 109
    .local v1, "rv":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 111
    mul-int/lit8 v2, v0, 0x2

    invoke-static {p0, v2}, Lorg/spongycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v2

    aput-short v2, v1, v0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    instance-of v1, p1, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;

    if-nez v1, :cond_1

    .line 45
    :cond_0
    const/4 v1, 0x0

    .line 49
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 47
    check-cast v0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;

    .line 49
    .local v0, "otherKey":Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;
    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object v1

    iget-object v2, v0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->areEqual([S[S)Z

    move-result v1

    goto :goto_0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "NH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 8

    .prologue
    .line 70
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 72
    .local v0, "algorithmIdentifier":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v6, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object v5

    .line 74
    .local v5, "privateKeyData":[S
    array-length v6, v5

    mul-int/lit8 v6, v6, 0x2

    new-array v3, v6, [B

    .line 75
    .local v3, "octets":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-eq v2, v6, :cond_0

    .line 77
    aget-short v6, v5, v2

    mul-int/lit8 v7, v2, 0x2

    invoke-static {v6, v3, v7}, Lorg/spongycastle/util/Pack;->shortToLittleEndian(S[BI)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    new-instance v4, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v6, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v6, v3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v0, v6}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 82
    .local v4, "pki":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v4}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 86
    .end local v0    # "algorithmIdentifier":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v2    # "i":I
    .end local v3    # "octets":[B
    .end local v4    # "pki":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v5    # "privateKeyData":[S
    :goto_1
    return-object v6

    .line 84
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method getKeyParams()Lorg/spongycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    return-object v0
.end method

.method public getSecretData()[S
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([S)I

    move-result v0

    return v0
.end method
