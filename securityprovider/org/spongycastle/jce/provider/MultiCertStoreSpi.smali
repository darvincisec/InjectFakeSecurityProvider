.class public Lorg/spongycastle/jce/provider/MultiCertStoreSpi;
.super Ljava/security/cert/CertStoreSpi;
.source "MultiCertStoreSpi.java"


# instance fields
.field private params:Lorg/spongycastle/jce/MultiCertStoreParameters;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertStoreParameters;)V
    .locals 3
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    .line 28
    instance-of v0, p1, Lorg/spongycastle/jce/MultiCertStoreParameters;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.spongycastle.jce.provider.MultiCertStoreSpi: parameter must be a MultiCertStoreParameters object\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    check-cast p1, Lorg/spongycastle/jce/MultiCertStoreParameters;

    .end local p1    # "params":Ljava/security/cert/CertStoreParameters;
    iput-object p1, p0, Lorg/spongycastle/jce/provider/MultiCertStoreSpi;->params:Lorg/spongycastle/jce/MultiCertStoreParameters;

    .line 34
    return-void
.end method


# virtual methods
.method public engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 6
    .param p1, "crlSelector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v5, p0, Lorg/spongycastle/jce/provider/MultiCertStoreSpi;->params:Lorg/spongycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v5}, Lorg/spongycastle/jce/MultiCertStoreParameters;->getSearchAllStores()Z

    move-result v3

    .line 65
    .local v3, "searchAllStores":Z
    iget-object v5, p0, Lorg/spongycastle/jce/provider/MultiCertStoreSpi;->params:Lorg/spongycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v5}, Lorg/spongycastle/jce/MultiCertStoreParameters;->getCertStores()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 66
    .local v2, "iter":Ljava/util/Iterator;
    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "allCRLs":Ljava/util/List;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/CertStore;

    .line 71
    .local v4, "store":Ljava/security/cert/CertStore;
    invoke-virtual {v4, p1}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v1

    .line 73
    .local v1, "crls":Ljava/util/Collection;
    if-eqz v3, :cond_2

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 66
    .end local v0    # "allCRLs":Ljava/util/List;
    .end local v1    # "crls":Ljava/util/Collection;
    .end local v4    # "store":Ljava/security/cert/CertStore;
    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 77
    .restart local v0    # "allCRLs":Ljava/util/List;
    .restart local v1    # "crls":Ljava/util/Collection;
    .restart local v4    # "store":Ljava/security/cert/CertStore;
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 83
    .end local v1    # "crls":Ljava/util/Collection;
    .end local v4    # "store":Ljava/security/cert/CertStore;
    :goto_1
    return-object v1

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 6
    .param p1, "certSelector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v5, p0, Lorg/spongycastle/jce/provider/MultiCertStoreSpi;->params:Lorg/spongycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v5}, Lorg/spongycastle/jce/MultiCertStoreParameters;->getSearchAllStores()Z

    move-result v3

    .line 40
    .local v3, "searchAllStores":Z
    iget-object v5, p0, Lorg/spongycastle/jce/provider/MultiCertStoreSpi;->params:Lorg/spongycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v5}, Lorg/spongycastle/jce/MultiCertStoreParameters;->getCertStores()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 41
    .local v2, "iter":Ljava/util/Iterator;
    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "allCerts":Ljava/util/List;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/CertStore;

    .line 46
    .local v4, "store":Ljava/security/cert/CertStore;
    invoke-virtual {v4, p1}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v1

    .line 48
    .local v1, "certs":Ljava/util/Collection;
    if-eqz v3, :cond_2

    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 41
    .end local v0    # "allCerts":Ljava/util/List;
    .end local v1    # "certs":Ljava/util/Collection;
    .end local v4    # "store":Ljava/security/cert/CertStore;
    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 52
    .restart local v0    # "allCerts":Ljava/util/List;
    .restart local v1    # "certs":Ljava/util/Collection;
    .restart local v4    # "store":Ljava/security/cert/CertStore;
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 58
    .end local v1    # "certs":Ljava/util/Collection;
    .end local v4    # "store":Ljava/security/cert/CertStore;
    :goto_1
    return-object v1

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method
