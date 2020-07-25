.class public Lorg/spongycastle/asn1/cmp/CMPCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CMPCertificate.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private otherCert:Lorg/spongycastle/asn1/ASN1Object;

.field private otherTagValue:I

.field private x509v3PKCert:Lorg/spongycastle/asn1/x509/Certificate;


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/ASN1Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "otherCert"    # Lorg/spongycastle/asn1/ASN1Object;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 42
    iput p1, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->otherTagValue:I

    .line 43
    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->otherCert:Lorg/spongycastle/asn1/ASN1Object;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AttributeCertificate;)V
    .locals 1
    .param p1, "x509v2AttrCert"    # Lorg/spongycastle/asn1/x509/AttributeCertificate;

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/asn1/cmp/CMPCertificate;-><init>(ILorg/spongycastle/asn1/ASN1Object;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/Certificate;)V
    .locals 2
    .param p1, "x509v3PKCert"    # Lorg/spongycastle/asn1/x509/Certificate;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/Certificate;->getVersionNumber()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only version 3 certificates allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->x509v3PKCert:Lorg/spongycastle/asn1/x509/Certificate;

    .line 54
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/CMPCertificate;
    .locals 5
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    instance-of v2, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;

    if-eqz v2, :cond_1

    .line 60
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;

    .line 84
    .end local p0    # "o":Ljava/lang/Object;
    .local v1, "taggedObject":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :goto_0
    return-object p0

    .line 63
    .end local v1    # "taggedObject":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, [B

    if-eqz v2, :cond_2

    .line 67
    :try_start_0
    check-cast p0, [B

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 75
    :cond_2
    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_3

    .line 77
    new-instance v2, Lorg/spongycastle/asn1/cmp/CMPCertificate;

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/spongycastle/asn1/x509/Certificate;)V

    move-object p0, v2

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid encoding in CMPCertificate"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_4

    move-object v1, p0

    .line 82
    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 84
    .restart local v1    # "taggedObject":Lorg/spongycastle/asn1/ASN1TaggedObject;
    new-instance p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/spongycastle/asn1/cmp/CMPCertificate;-><init>(ILorg/spongycastle/asn1/ASN1Object;)V

    goto :goto_0

    .line 87
    .end local v1    # "taggedObject":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getOtherCert()Lorg/spongycastle/asn1/ASN1Object;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->otherCert:Lorg/spongycastle/asn1/ASN1Object;

    return-object v0
.end method

.method public getOtherCertTag()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->otherTagValue:I

    return v0
.end method

.method public getX509v2AttrCert()Lorg/spongycastle/asn1/x509/AttributeCertificate;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->otherCert:Lorg/spongycastle/asn1/ASN1Object;

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttributeCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getX509v3PKCert()Lorg/spongycastle/asn1/x509/Certificate;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->x509v3PKCert:Lorg/spongycastle/asn1/x509/Certificate;

    return-object v0
.end method

.method public isX509v3PKCert()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->x509v3PKCert:Lorg/spongycastle/asn1/x509/Certificate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->otherCert:Lorg/spongycastle/asn1/ASN1Object;

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    iget v2, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->otherTagValue:I

    iget-object v3, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->otherCert:Lorg/spongycastle/asn1/ASN1Object;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 139
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CMPCertificate;->x509v3PKCert:Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Certificate;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0
.end method
