.class public Lorg/spongycastle/jce/provider/X509StoreLDAPCRLs;
.super Lorg/spongycastle/x509/X509StoreSpi;
.source "X509StoreLDAPCRLs.java"


# instance fields
.field private helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/spongycastle/x509/X509StoreSpi;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public engineGetMatches(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;
    .locals 3
    .param p1, "selector"    # Lorg/spongycastle/util/Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 63
    instance-of v2, p1, Lorg/spongycastle/x509/X509CRLStoreSelector;

    if-nez v2, :cond_0

    .line 65
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 85
    :goto_0
    return-object v0

    :cond_0
    move-object v1, p1

    .line 67
    check-cast v1, Lorg/spongycastle/x509/X509CRLStoreSelector;

    .line 68
    .local v1, "xselector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 70
    .local v0, "set":Ljava/util/Set;
    invoke-virtual {v1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->isDeltaCRLIndicatorEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509StoreLDAPCRLs;->helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;

    invoke-virtual {v2, v1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getDeltaCertificateRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 77
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509StoreLDAPCRLs;->helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;

    invoke-virtual {v2, v1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getDeltaCertificateRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 78
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509StoreLDAPCRLs;->helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;

    invoke-virtual {v2, v1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getAttributeAuthorityRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509StoreLDAPCRLs;->helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;

    .line 81
    invoke-virtual {v2, v1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getAttributeCertificateRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;

    move-result-object v2

    .line 80
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509StoreLDAPCRLs;->helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;

    invoke-virtual {v2, v1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getAuthorityRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 83
    iget-object v2, p0, Lorg/spongycastle/jce/provider/X509StoreLDAPCRLs;->helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;

    invoke-virtual {v2, v1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getCertificateRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public engineInit(Lorg/spongycastle/x509/X509StoreParameters;)V
    .locals 3
    .param p1, "params"    # Lorg/spongycastle/x509/X509StoreParameters;

    .prologue
    .line 40
    instance-of v0, p1, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialization parameters must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 44
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

    .line 46
    :cond_0
    new-instance v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;

    check-cast p1, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .end local p1    # "params":Lorg/spongycastle/x509/X509StoreParameters;
    invoke-direct {v0, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;-><init>(Lorg/spongycastle/jce/X509LDAPCertStoreParameters;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/X509StoreLDAPCRLs;->helper:Lorg/spongycastle/x509/util/LDAPStoreHelper;

    .line 47
    return-void
.end method
