.class public Lorg/spongycastle/asn1/ocsp/ServiceLocator;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ServiceLocator.java"


# instance fields
.field private final issuer:Lorg/spongycastle/asn1/x500/X500Name;

.field private final locator:Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "sequence"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/ServiceLocator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    .line 20
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/ServiceLocator;->locator:Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;

    .line 29
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/ServiceLocator;->locator:Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/ServiceLocator;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 34
    instance-of v0, p0, Lorg/spongycastle/asn1/ocsp/ServiceLocator;

    if-eqz v0, :cond_0

    .line 36
    check-cast p0, Lorg/spongycastle/asn1/ocsp/ServiceLocator;

    .line 43
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 38
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/ocsp/ServiceLocator;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ocsp/ServiceLocator;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 43
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIssuer()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ServiceLocator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getLocator()Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ServiceLocator;->locator:Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 68
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ServiceLocator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 70
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ServiceLocator;->locator:Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ServiceLocator;->locator:Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 75
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
