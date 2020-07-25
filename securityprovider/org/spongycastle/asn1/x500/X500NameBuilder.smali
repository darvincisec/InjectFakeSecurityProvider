.class public Lorg/spongycastle/asn1/x500/X500NameBuilder;
.super Ljava/lang/Object;
.source "X500NameBuilder.java"


# instance fields
.field private rdns:Ljava/util/Vector;

.field private template:Lorg/spongycastle/asn1/x500/X500NameStyle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/spongycastle/asn1/x500/style/BCStyle;->INSTANCE:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x500/X500NameBuilder;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500NameStyle;)V
    .locals 1
    .param p1, "template"    # Lorg/spongycastle/asn1/x500/X500NameStyle;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    .line 32
    iput-object p1, p0, Lorg/spongycastle/asn1/x500/X500NameBuilder;->template:Lorg/spongycastle/asn1/x500/X500NameStyle;

    .line 33
    return-void
.end method


# virtual methods
.method public addMultiValuedRDN([Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[Ljava/lang/String;)Lorg/spongycastle/asn1/x500/X500NameBuilder;
    .locals 5
    .param p1, "oids"    # [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 85
    array-length v2, p2

    new-array v1, v2, [Lorg/spongycastle/asn1/ASN1Encodable;

    .line 87
    .local v1, "vals":[Lorg/spongycastle/asn1/ASN1Encodable;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 89
    iget-object v2, p0, Lorg/spongycastle/asn1/x500/X500NameBuilder;->template:Lorg/spongycastle/asn1/x500/X500NameStyle;

    aget-object v3, p1, v0

    aget-object v4, p2, v0

    invoke-interface {v2, v3, v4}, Lorg/spongycastle/asn1/x500/X500NameStyle;->stringToValue(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/spongycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/asn1/x500/X500NameBuilder;

    move-result-object v2

    return-object v2
.end method

.method public addMultiValuedRDN([Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/asn1/x500/X500NameBuilder;
    .locals 5
    .param p1, "oids"    # [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "values"    # [Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 104
    array-length v2, p1

    new-array v0, v2, [Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    .line 106
    .local v0, "avs":[Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 108
    new-instance v2, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    aput-object v2, v0, v1

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/x500/X500NameBuilder;->addMultiValuedRDN([Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;)Lorg/spongycastle/asn1/x500/X500NameBuilder;

    move-result-object v2

    return-object v2
.end method

.method public addMultiValuedRDN([Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;)Lorg/spongycastle/asn1/x500/X500NameBuilder;
    .locals 2
    .param p1, "attrTAndVs"    # [Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    new-instance v1, Lorg/spongycastle/asn1/x500/RDN;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/x500/RDN;-><init>([Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 124
    return-object p0
.end method

.method public addRDN(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/x500/X500NameBuilder;
    .locals 1
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500NameBuilder;->template:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/asn1/x500/X500NameStyle;->stringToValue(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/asn1/x500/X500NameBuilder;->addRDN(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/asn1/x500/X500NameBuilder;

    .line 46
    return-object p0
.end method

.method public addRDN(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)Lorg/spongycastle/asn1/x500/X500NameBuilder;
    .locals 2
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "value"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 58
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    new-instance v1, Lorg/spongycastle/asn1/x500/RDN;

    invoke-direct {v1, p1, p2}, Lorg/spongycastle/asn1/x500/RDN;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 60
    return-object p0
.end method

.method public addRDN(Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;)Lorg/spongycastle/asn1/x500/X500NameBuilder;
    .locals 2
    .param p1, "attrTAndV"    # Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/spongycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    new-instance v1, Lorg/spongycastle/asn1/x500/RDN;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/x500/RDN;-><init>(Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 73
    return-object p0
.end method

.method public build()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 4

    .prologue
    .line 134
    iget-object v2, p0, Lorg/spongycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/x500/RDN;

    .line 136
    .local v1, "vals":[Lorg/spongycastle/asn1/x500/RDN;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 138
    iget-object v2, p0, Lorg/spongycastle/asn1/x500/X500NameBuilder;->rdns:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/x500/RDN;

    aput-object v2, v1, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    new-instance v2, Lorg/spongycastle/asn1/x500/X500Name;

    iget-object v3, p0, Lorg/spongycastle/asn1/x500/X500NameBuilder;->template:Lorg/spongycastle/asn1/x500/X500NameStyle;

    invoke-direct {v2, v3, v1}, Lorg/spongycastle/asn1/x500/X500Name;-><init>(Lorg/spongycastle/asn1/x500/X500NameStyle;[Lorg/spongycastle/asn1/x500/RDN;)V

    return-object v2
.end method
