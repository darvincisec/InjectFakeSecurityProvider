.class public Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;
.super Ljava/lang/Object;
.source "RevRepContentBuilder.java"


# instance fields
.field private crls:Lorg/spongycastle/asn1/ASN1EncodableVector;

.field private revCerts:Lorg/spongycastle/asn1/ASN1EncodableVector;

.field private status:Lorg/spongycastle/asn1/ASN1EncodableVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->status:Lorg/spongycastle/asn1/ASN1EncodableVector;

    .line 12
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->revCerts:Lorg/spongycastle/asn1/ASN1EncodableVector;

    .line 13
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->crls:Lorg/spongycastle/asn1/ASN1EncodableVector;

    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/asn1/cmp/PKIStatusInfo;)Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;
    .locals 1
    .param p1, "status"    # Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    .prologue
    .line 17
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->status:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 19
    return-object p0
.end method

.method public add(Lorg/spongycastle/asn1/cmp/PKIStatusInfo;Lorg/spongycastle/asn1/crmf/CertId;)Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;
    .locals 2
    .param p1, "status"    # Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    .param p2, "certId"    # Lorg/spongycastle/asn1/crmf/CertId;

    .prologue
    .line 24
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->status:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->revCerts:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "status and revCerts sequence must be in common order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->status:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 29
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->revCerts:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 31
    return-object p0
.end method

.method public addCrl(Lorg/spongycastle/asn1/x509/CertificateList;)Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;
    .locals 1
    .param p1, "crl"    # Lorg/spongycastle/asn1/x509/CertificateList;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->crls:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 38
    return-object p0
.end method

.method public build()Lorg/spongycastle/asn1/cmp/RevRepContent;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 43
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 45
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->status:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 47
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->revCerts:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->revCerts:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v5, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 52
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->crls:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/spongycastle/asn1/cmp/RevRepContentBuilder;->crls:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v5, v5, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 57
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/spongycastle/asn1/cmp/RevRepContent;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/RevRepContent;

    move-result-object v1

    return-object v1
.end method
