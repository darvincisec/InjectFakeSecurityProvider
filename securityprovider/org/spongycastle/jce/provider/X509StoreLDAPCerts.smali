.class public Lorg/spongycastle/jce/provider/X509StoreLDAPCerts;
.super Lorg/spongycastle/x509/X509StoreSpi;
.source "X509StoreLDAPCerts.java"


# instance fields
.field private helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/spongycastle/x509/X509StoreSpi;-><init>()V

    .line 33
    return-void
.end method

.method private getCertificatesFromCrossCertificatePairs(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;
    .locals 8
    .param p1, "xselector"    # Lorg/spongycastle/x509/X509CertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 103
    .local v6, "set":Ljava/util/Set;
    new-instance v4, Lorg/spongycastle/x509/X509CertPairStoreSelector;

    invoke-direct {v4}, Lorg/spongycastle/x509/X509CertPairStoreSelector;-><init>()V

    .line 105
    .local v4, "ps":Lorg/spongycastle/x509/X509CertPairStoreSelector;
    invoke-virtual {v4, p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->setForwardSelector(Lorg/spongycastle/x509/X509CertStoreSelector;)V

    .line 106
    new-instance v7, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v7}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    invoke-virtual {v4, v7}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->setReverseSelector(Lorg/spongycastle/x509/X509CertStoreSelector;)V

    .line 108
    new-instance v0, Ljava/util/HashSet;

    iget-object v7, p0, Lorg/spongycastle/jce/provider/X509StoreLDAPCerts;->helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;

    invoke-virtual {v7, v4}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getCrossCertificatePairs(Lorg/spongycastle/x509/X509CertPairStoreSelector;)Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 109
    .local v0, "crossCerts":Ljava/util/Set;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 110
    .local v1, "forward":Ljava/util/Set;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 111
    .local v5, "reverse":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 112
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/x509/X509CertificatePair;

    .line 115
    .local v3, "pair":Lorg/spongycastle/x509/X509CertificatePair;
    invoke-virtual {v3}, Lorg/spongycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 117
    invoke-virtual {v3}, Lorg/spongycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    invoke-virtual {v3}, Lorg/spongycastle/x509/X509CertificatePair;->getReverse()Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 121
    invoke-virtual {v3}, Lorg/spongycastle/x509/X509CertificatePair;->getReverse()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v3    # "pair":Lorg/spongycastle/x509/X509CertificatePair;
    :cond_2
    invoke-interface {v6, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 125
    invoke-interface {v6, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 126
    return-object v6
.end method


# virtual methods
.method public engineGetMatches(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;
    .locals 4
    .param p1, "selector"    # Lorg/spongycastle/util/Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 72
    instance-of v2, p1, Lorg/spongycastle/x509/X509CertStoreSelector;

    if-nez v2, :cond_0

    .line 74
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 96
    :goto_0
    return-object v0

    :cond_0
    move-object v1, p1

    .line 76
    check-cast v1, Lorg/spongycastle/x509/X509CertStoreSelector;

    .line 77
    .local v1, "xselector":Lorg/spongycastle/x509/X509CertStoreSelector;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 79
    .local v0, "set":Ljava/util/Set;
    invoke-virtual {v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getBasicConstraints()I

    move-result v2

    if-lez v2, :cond_1

    .line 81
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509StoreLDAPCerts;->helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;

    invoke-virtual {v2, v1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getCACertificates(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/X509StoreLDAPCerts;->getCertificatesFromCrossCertificatePairs(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getBasicConstraints()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    .line 87
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509StoreLDAPCerts;->helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;

    invoke-virtual {v2, v1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getUserCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 92
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509StoreLDAPCerts;->helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;

    invoke-virtual {v2, v1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getUserCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 93
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509StoreLDAPCerts;->helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;

    invoke-virtual {v2, v1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getCACertificates(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/X509StoreLDAPCerts;->getCertificatesFromCrossCertificatePairs(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public engineInit(Lorg/spongycastle/x509/X509StoreParameters;)V
    .locals 3
    .param p1, "params"    # Lorg/spongycastle/x509/X509StoreParameters;

    .prologue
    .line 44
    instance-of v0, p1, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialization parameters must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 48
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    new-instance v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;

    check-cast p1, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .end local p1    # "params":Lorg/spongycastle/x509/X509StoreParameters;
    invoke-direct {v0, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;-><init>(Lorg/spongycastle/jce/X509LDAPCertStoreParameters;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509StoreLDAPCerts;->helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;

    .line 51
    return-void
.end method
