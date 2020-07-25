.class public Lorg/spongycastle/asn1/icao/LDSSecurityObject;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "LDSSecurityObject.java"

# interfaces
.implements Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;


# static fields
.field public static final ub_DataGroups:I = 0x10


# instance fields
.field private datagroupHash:[Lorg/spongycastle/asn1/icao/DataGroupHash;

.field private digestAlgorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;

.field private versionInfo:Lorg/spongycastle/asn1/icao/LDSVersionInfo;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 35
    new-instance v3, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v3, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 58
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 60
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "null or empty sequence passed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 66
    .local v1, "e":Ljava/util/Enumeration;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 68
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->digestAlgorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 70
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 72
    .local v0, "datagroupHashSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    iget-object v3, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 74
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/icao/LDSVersionInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/icao/LDSVersionInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->versionInfo:Lorg/spongycastle/asn1/icao/LDSVersionInfo;

    .line 77
    :cond_2
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->checkDatagroupHashSeqSize(I)V

    .line 79
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [Lorg/spongycastle/asn1/icao/DataGroupHash;

    iput-object v3, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/spongycastle/asn1/icao/DataGroupHash;

    .line 80
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 82
    iget-object v3, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/spongycastle/asn1/icao/DataGroupHash;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/icao/DataGroupHash;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/icao/DataGroupHash;

    move-result-object v4

    aput-object v4, v3, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[Lorg/spongycastle/asn1/icao/DataGroupHash;)V
    .locals 4
    .param p1, "digestAlgorithmIdentifier"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "datagroupHash"    # [Lorg/spongycastle/asn1/icao/DataGroupHash;

    .prologue
    const-wide/16 v2, 0x0

    .line 89
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 90
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 91
    iput-object p1, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->digestAlgorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 92
    iput-object p2, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/spongycastle/asn1/icao/DataGroupHash;

    .line 94
    array-length v0, p2

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->checkDatagroupHashSeqSize(I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[Lorg/spongycastle/asn1/icao/DataGroupHash;Lorg/spongycastle/asn1/icao/LDSVersionInfo;)V
    .locals 4
    .param p1, "digestAlgorithmIdentifier"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "datagroupHash"    # [Lorg/spongycastle/asn1/icao/DataGroupHash;
    .param p3, "versionInfo"    # Lorg/spongycastle/asn1/icao/LDSVersionInfo;

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 102
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 103
    iput-object p1, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->digestAlgorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 104
    iput-object p2, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/spongycastle/asn1/icao/DataGroupHash;

    .line 105
    iput-object p3, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->versionInfo:Lorg/spongycastle/asn1/icao/LDSVersionInfo;

    .line 107
    array-length v0, p2

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->checkDatagroupHashSeqSize(I)V

    .line 108
    return-void
.end method

.method private checkDatagroupHashSeqSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 112
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-le p1, v0, :cond_1

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong size in DataGroupHashValues : not in (2..16)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/icao/LDSSecurityObject;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 43
    instance-of v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;

    .line 52
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 47
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 49
    new-instance v0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/icao/LDSSecurityObject;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 52
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDatagroupHash()[Lorg/spongycastle/asn1/icao/DataGroupHash;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/spongycastle/asn1/icao/DataGroupHash;

    return-object v0
.end method

.method public getDigestAlgorithmIdentifier()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->digestAlgorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getVersionInfo()Lorg/spongycastle/asn1/icao/LDSVersionInfo;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->versionInfo:Lorg/spongycastle/asn1/icao/LDSVersionInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 140
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 142
    .local v1, "seq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 143
    iget-object v3, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->digestAlgorithmIdentifier:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 145
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 146
    .local v2, "seqname":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/spongycastle/asn1/icao/DataGroupHash;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 148
    iget-object v3, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/spongycastle/asn1/icao/DataGroupHash;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v3, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->versionInfo:Lorg/spongycastle/asn1/icao/LDSVersionInfo;

    if-eqz v3, :cond_1

    .line 154
    iget-object v3, p0, Lorg/spongycastle/asn1/icao/LDSSecurityObject;->versionInfo:Lorg/spongycastle/asn1/icao/LDSVersionInfo;

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 157
    :cond_1
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v3
.end method
