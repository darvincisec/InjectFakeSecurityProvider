.class public Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;
.super Ljava/lang/Object;
.source "PKIXCRLStoreSelector.java"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;,
        Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/CRL;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/spongycastle/util/Selector",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final baseSelector:Ljava/security/cert/CRLSelector;

.field private final completeCRLEnabled:Z

.field private final deltaCRLIndicator:Z

.field private final issuingDistributionPoint:[B

.field private final issuingDistributionPointEnabled:Z

.field private final maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;)V
    .locals 1
    .param p1, "baseBuilder"    # Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .prologue
    .line 154
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->access$100(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/security/cert/CRLSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    .line 156
    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->access$200(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->deltaCRLIndicator:Z

    .line 157
    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->access$300(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->completeCRLEnabled:Z

    .line 158
    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->access$400(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 159
    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->access$500(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    .line 160
    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->access$600(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    .line 161
    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .param p2, "x1"    # Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$1;

    .prologue
    .line 25
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;-><init>(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;)V

    return-void
.end method

.method static synthetic access$700(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    return-object v0
.end method

.method public static getCRLs(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;
    .locals 1
    .param p0, "selector"    # Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;
    .param p1, "certStore"    # Ljava/security/cert/CertStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;",
            "Ljava/security/cert/CertStore;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;

    invoke-direct {v0, p0}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;-><init>(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 265
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    return-object p0
.end method

.method public getCertificateChecking()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 307
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    instance-of v0, v0, Ljava/security/cert/X509CRLSelector;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    check-cast v0, Ljava/security/cert/X509CRLSelector;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIssuingDistributionPoint()[B
    .locals 1

    .prologue
    .line 302
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMaxBaseCRLNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 286
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isCompleteCRLEnabled()Z
    .locals 1

    .prologue
    .line 276
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->completeCRLEnabled:Z

    return v0
.end method

.method public isDeltaCRLIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 260
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->deltaCRLIndicator:Z

    return v0
.end method

.method public isIssuingDistributionPointEnabled()Z
    .locals 1

    .prologue
    .line 175
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    return v0
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    check-cast p1, Ljava/security/cert/CRL;

    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    return v0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 8
    .param p1, "obj"    # Ljava/security/cert/CRL;

    .prologue
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCRLStoreSelector<TT;>;"
    const/4 v5, 0x0

    .line 182
    instance-of v6, p1, Ljava/security/cert/X509CRL;

    if-nez v6, :cond_1

    .line 184
    iget-object v5, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    invoke-interface {v5, p1}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v5

    .line 248
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v1, p1

    .line 187
    check-cast v1, Ljava/security/cert/X509CRL;

    .line 188
    .local v1, "crl":Ljava/security/cert/X509CRL;
    const/4 v2, 0x0

    .line 191
    .local v2, "dci":Lorg/spongycastle/asn1/ASN1Integer;
    :try_start_0
    sget-object v6, Lorg/spongycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 192
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 193
    .local v0, "bytes":[B
    if-eqz v0, :cond_2

    .line 195
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 202
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 204
    if-eqz v2, :cond_0

    .line 209
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->isCompleteCRLEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 211
    if-nez v2, :cond_0

    .line 216
    :cond_4
    if-eqz v2, :cond_5

    .line 219
    iget-object v6, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    if-eqz v6, :cond_5

    .line 221
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->maxBaseCRLNumber:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 227
    :cond_5
    iget-boolean v6, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPointEnabled:Z

    if-eqz v6, :cond_6

    .line 229
    sget-object v6, Lorg/spongycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 231
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    .line 230
    invoke-virtual {v1, v6}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 232
    .local v4, "idp":[B
    iget-object v6, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    if-nez v6, :cond_7

    .line 234
    if-nez v4, :cond_0

    .line 248
    .end local v4    # "idp":[B
    :cond_6
    iget-object v5, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->baseSelector:Ljava/security/cert/CRLSelector;

    invoke-interface {v5, p1}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v5

    goto :goto_0

    .line 198
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v3

    .line 200
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 241
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bytes":[B
    .restart local v4    # "idp":[B
    :cond_7
    iget-object v6, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->issuingDistributionPoint:[B

    invoke-static {v4, v6}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0
.end method
