.class public Lorg/spongycastle/asn1/x509/CertificatePolicies;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertificatePolicies.java"


# instance fields
.field private final policyInformation:[Lorg/spongycastle/asn1/x509/PolicyInformation;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/spongycastle/asn1/x509/PolicyInformation;

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v2

    aput-object v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/PolicyInformation;)V
    .locals 2
    .param p1, "name"    # Lorg/spongycastle/asn1/x509/PolicyInformation;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/PolicyInformation;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    .line 58
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/PolicyInformation;)V
    .locals 0
    .param p1, "policyInformation"    # [Lorg/spongycastle/asn1/x509/PolicyInformation;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    .line 64
    return-void
.end method

.method public static fromExtensions(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/x509/CertificatePolicies;
    .locals 1
    .param p0, "extensions"    # Lorg/spongycastle/asn1/x509/Extensions;

    .prologue
    .line 46
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->certificatePolicies:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CertificatePolicies;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificatePolicies;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificatePolicies;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 18
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;

    if-eqz v0, :cond_0

    .line 20
    check-cast p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;

    .line 28
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 23
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 25
    new-instance v0, Lorg/spongycastle/asn1/x509/CertificatePolicies;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/CertificatePolicies;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/CertificatePolicies;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 35
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CertificatePolicies;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificatePolicies;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPolicyInformation(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/PolicyInformation;
    .locals 2
    .param p1, "policyIdentifier"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 90
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    aget-object v1, v1, v0

    .line 96
    :goto_1
    return-object v1

    .line 88
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getPolicyInformation()[Lorg/spongycastle/asn1/x509/PolicyInformation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    array-length v1, v1

    new-array v0, v1, [Lorg/spongycastle/asn1/x509/PolicyInformation;

    .line 81
    .local v0, "tmp":[Lorg/spongycastle/asn1/x509/PolicyInformation;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v1, "p":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CertificatePolicies: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
