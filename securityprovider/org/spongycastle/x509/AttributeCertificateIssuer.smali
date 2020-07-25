.class public Lorg/spongycastle/x509/AttributeCertificateIssuer;
.super Ljava/lang/Object;
.source "AttributeCertificateIssuer.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field final form:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 2
    .param p1, "principal"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lorg/spongycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/X509Principal;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/x509/AttributeCertificateIssuer;-><init>(Lorg/spongycastle/jce/X509Principal;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AttCertIssuer;)V
    .locals 1
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x509/AttCertIssuer;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AttCertIssuer;->getIssuer()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/jce/X509Principal;)V
    .locals 3
    .param p1, "principal"    # Lorg/spongycastle/jce/X509Principal;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/spongycastle/asn1/x509/V2Form;

    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    new-instance v2, Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-direct {v2, p1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x509/X509Name;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/V2Form;-><init>(Lorg/spongycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 50
    return-void
.end method

.method private getNames()[Ljava/lang/Object;
    .locals 7

    .prologue
    .line 56
    iget-object v5, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v5, v5, Lorg/spongycastle/asn1/x509/V2Form;

    if-eqz v5, :cond_1

    .line 58
    iget-object v5, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v5, Lorg/spongycastle/asn1/x509/V2Form;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/V2Form;->getIssuerName()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v3

    .line 65
    .local v3, "name":Lorg/spongycastle/asn1/x509/GeneralNames;
    :goto_0
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 67
    .local v4, "names":[Lorg/spongycastle/asn1/x509/GeneralName;
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v4

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v2, "l":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v4

    if-eq v1, v5, :cond_2

    .line 71
    aget-object v5, v4, v1

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 75
    :try_start_0
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    aget-object v6, v4, v1

    .line 76
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-interface {v6}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 75
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    .end local v1    # "i":I
    .end local v2    # "l":Ljava/util/List;
    .end local v3    # "name":Lorg/spongycastle/asn1/x509/GeneralNames;
    .end local v4    # "names":[Lorg/spongycastle/asn1/x509/GeneralName;
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v3, Lorg/spongycastle/asn1/x509/GeneralNames;

    .restart local v3    # "name":Lorg/spongycastle/asn1/x509/GeneralNames;
    goto :goto_0

    .line 78
    .restart local v1    # "i":I
    .restart local v2    # "l":Ljava/util/List;
    .restart local v4    # "names":[Lorg/spongycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "badly formed Name object"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private matchesDN(Ljavax/security/auth/x500/X500Principal;Lorg/spongycastle/asn1/x509/GeneralNames;)Z
    .locals 5
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "targets"    # Lorg/spongycastle/asn1/x509/GeneralNames;

    .prologue
    .line 112
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 114
    .local v2, "names":[Lorg/spongycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-eq v1, v3, :cond_1

    .line 116
    aget-object v0, v2, v1

    .line 118
    .local v0, "gn":Lorg/spongycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 122
    :try_start_0
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-interface {v4}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v3, p1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    const/4 v3, 0x1

    .line 133
    .end local v0    # "gn":Lorg/spongycastle/asn1/x509/GeneralName;
    :goto_1
    return v3

    .line 127
    .restart local v0    # "gn":Lorg/spongycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v3

    .line 114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "gn":Lorg/spongycastle/asn1/x509/GeneralName;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lorg/spongycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/AttributeCertificateIssuer;-><init>(Lorg/spongycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 179
    if-ne p1, p0, :cond_0

    .line 181
    const/4 v1, 0x1

    .line 191
    :goto_0
    return v1

    .line 184
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/x509/AttributeCertificateIssuer;

    if-nez v1, :cond_1

    .line 186
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 189
    check-cast v0, Lorg/spongycastle/x509/AttributeCertificateIssuer;

    .line 191
    .local v0, "other":Lorg/spongycastle/x509/AttributeCertificateIssuer;
    iget-object v1, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    iget-object v2, v0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .locals 4

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getNames()[Ljava/lang/Object;

    move-result-object v2

    .line 97
    .local v2, "p":[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, "l":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_1

    .line 101
    aget-object v3, v2, v0

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_0

    .line 103
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/Principal;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/Principal;

    check-cast v3, [Ljava/security/Principal;

    return-object v3
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 201
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 206
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/security/cert/Certificate;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 7
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 143
    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_1

    move v3, v4

    .line 174
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 148
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 150
    .local v2, "x509Cert":Ljava/security/cert/X509Certificate;
    iget-object v5, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v5, v5, Lorg/spongycastle/asn1/x509/V2Form;

    if-eqz v5, :cond_5

    .line 152
    iget-object v0, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/x509/V2Form;

    .line 153
    .local v0, "issuer":Lorg/spongycastle/asn1/x509/V2Form;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 155
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lorg/spongycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/V2Form;->getIssuerName()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v1

    .line 160
    .local v1, "name":Lorg/spongycastle/asn1/x509/GeneralNames;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lorg/spongycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-nez v5, :cond_0

    .end local v0    # "issuer":Lorg/spongycastle/asn1/x509/V2Form;
    :cond_4
    move v3, v4

    .line 174
    goto :goto_0

    .line 167
    .end local v1    # "name":Lorg/spongycastle/asn1/x509/GeneralNames;
    :cond_5
    iget-object v1, p0, Lorg/spongycastle/x509/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v1, Lorg/spongycastle/asn1/x509/GeneralNames;

    .line 168
    .restart local v1    # "name":Lorg/spongycastle/asn1/x509/GeneralNames;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lorg/spongycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0
.end method
