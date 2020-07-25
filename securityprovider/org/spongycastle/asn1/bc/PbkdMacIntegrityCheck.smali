.class public Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PbkdMacIntegrityCheck.java"


# instance fields
.field private final mac:Lorg/spongycastle/asn1/ASN1OctetString;

.field private final macAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private final pbkdAlgorithm:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->macAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->pbkdAlgorithm:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;[B)V
    .locals 2
    .param p1, "macAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "pbkdAlgorithm"    # Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    .param p3, "mac"    # [B

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->macAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 33
    iput-object p2, p0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->pbkdAlgorithm:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    .line 34
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 35
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 46
    instance-of v0, p0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;

    .line 55
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 50
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 52
    new-instance v0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 55
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMac()[B
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->macAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getPbkdAlgorithm()Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->pbkdAlgorithm:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 77
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->macAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 78
    iget-object v1, p0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->pbkdAlgorithm:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 79
    iget-object v1, p0, Lorg/spongycastle/asn1/bc/PbkdMacIntegrityCheck;->mac:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 81
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
