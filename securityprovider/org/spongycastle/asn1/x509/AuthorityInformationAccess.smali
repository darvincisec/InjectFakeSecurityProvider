.class public Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "AuthorityInformationAccess.java"


# instance fields
.field private descriptions:[Lorg/spongycastle/asn1/x509/AccessDescription;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "location"    # Lorg/spongycastle/asn1/x509/GeneralName;

    .prologue
    .line 88
    new-instance v0, Lorg/spongycastle/asn1/x509/AccessDescription;

    invoke-direct {v0, p1, p2}, Lorg/spongycastle/asn1/x509/AccessDescription;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/GeneralName;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;-><init>(Lorg/spongycastle/asn1/x509/AccessDescription;)V

    .line 89
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "sequence may not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/spongycastle/asn1/x509/AccessDescription;

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/spongycastle/asn1/x509/AccessDescription;

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 64
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/spongycastle/asn1/x509/AccessDescription;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/AccessDescription;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AccessDescription;

    move-result-object v2

    aput-object v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AccessDescription;)V
    .locals 2
    .param p1, "description"    # Lorg/spongycastle/asn1/x509/AccessDescription;

    .prologue
    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/AccessDescription;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;-><init>([Lorg/spongycastle/asn1/x509/AccessDescription;)V

    .line 72
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/AccessDescription;)V
    .locals 3
    .param p1, "descriptions"    # [Lorg/spongycastle/asn1/x509/AccessDescription;

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 77
    array-length v0, p1

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/AccessDescription;

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/spongycastle/asn1/x509/AccessDescription;

    .line 78
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/spongycastle/asn1/x509/AccessDescription;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return-void
.end method

.method public static fromExtensions(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;
    .locals 1
    .param p0, "extensions"    # Lorg/spongycastle/asn1/x509/Extensions;

    .prologue
    .line 49
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 34
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;

    .line 44
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 39
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 41
    new-instance v0, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 44
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAccessDescriptions()[Lorg/spongycastle/asn1/x509/AccessDescription;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/spongycastle/asn1/x509/AccessDescription;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 102
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 104
    .local v1, "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/spongycastle/asn1/x509/AccessDescription;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 106
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/spongycastle/asn1/x509/AccessDescription;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorityInformationAccess: Oid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/spongycastle/asn1/x509/AccessDescription;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/AccessDescription;->getAccessMethod()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
