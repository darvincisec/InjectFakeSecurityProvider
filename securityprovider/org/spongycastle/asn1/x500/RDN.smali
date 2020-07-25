.class public Lorg/spongycastle/asn1/x500/RDN;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "RDN.java"


# instance fields
.field private values:Lorg/spongycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 3
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 47
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 49
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 50
    invoke-virtual {v0, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 52
    new-instance v1, Lorg/spongycastle/asn1/DERSet;

    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lorg/spongycastle/asn1/x500/RDN;->values:Lorg/spongycastle/asn1/ASN1Set;

    .line 53
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "values"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/RDN;->values:Lorg/spongycastle/asn1/ASN1Set;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;)V
    .locals 1
    .param p1, "attrTAndV"    # Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 57
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x500/RDN;->values:Lorg/spongycastle/asn1/ASN1Set;

    .line 58
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;)V
    .locals 1
    .param p1, "aAndVs"    # [Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 67
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERSet;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x500/RDN;->values:Lorg/spongycastle/asn1/ASN1Set;

    .line 68
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/RDN;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 27
    instance-of v0, p0, Lorg/spongycastle/asn1/x500/RDN;

    if-eqz v0, :cond_0

    .line 29
    check-cast p0, Lorg/spongycastle/asn1/x500/RDN;

    .line 36
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 31
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 33
    new-instance v0, Lorg/spongycastle/asn1/x500/RDN;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x500/RDN;-><init>(Lorg/spongycastle/asn1/ASN1Set;)V

    move-object p0, v0

    goto :goto_0

    .line 36
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/RDN;->values:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/RDN;->values:Lorg/spongycastle/asn1/ASN1Set;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    goto :goto_0
.end method

.method public getTypesAndValues()[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    .locals 3

    .prologue
    .line 97
    iget-object v2, p0, Lorg/spongycastle/asn1/x500/RDN;->values:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    .line 99
    .local v1, "tmp":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 101
    iget-object v2, p0, Lorg/spongycastle/asn1/x500/RDN;->values:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v2

    aput-object v2, v1, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-object v1
.end method

.method public isMultiValued()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 72
    iget-object v1, p0, Lorg/spongycastle/asn1/x500/RDN;->values:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/RDN;->values:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/RDN;->values:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method
