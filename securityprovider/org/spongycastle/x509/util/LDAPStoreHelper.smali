.class public Lorg/spongycastle/x509/util/LDAPStoreHelper;
.super Ljava/lang/Object;
.source "LDAPStoreHelper.java"


# static fields
.field private static LDAP_PROVIDER:Ljava/lang/String; = null

.field private static REFERRALS_IGNORE:Ljava/lang/String; = null

.field private static final SEARCH_SECURITY_LEVEL:Ljava/lang/String; = "none"

.field private static final URL_CONTEXT_PREFIX:Ljava/lang/String; = "com.sun.jndi.url"

.field private static cacheSize:I

.field private static lifeTime:J


# instance fields
.field private cacheMap:Ljava/util/Map;

.field private params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "com.sun.jndi.ldap.LdapCtxFactory"

    sput-object v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->LDAP_PROVIDER:Ljava/lang/String;

    .line 86
    const-string v0, "ignore"

    sput-object v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->REFERRALS_IGNORE:Ljava/lang/String;

    .line 1033
    const/16 v0, 0x20

    sput v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheSize:I

    .line 1035
    const-wide/32 v0, 0xea60

    sput-wide v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->lifeTime:J

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/jce/X509LDAPCertStoreParameters;)V
    .locals 2
    .param p1, "params"    # Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    new-instance v0, Ljava/util/HashMap;

    sget v1, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheSize:I

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    .line 75
    iput-object p1, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 76
    return-void
.end method

.method private declared-synchronized addToCache(Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .param p1, "searchCriteria"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;

    .prologue
    .line 1039
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v5, v10, v11}, Ljava/sql/Date;-><init>(J)V

    .line 1040
    .local v5, "now":Ljava/sql/Date;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    .local v0, "cacheEntry":Ljava/util/List;
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    iget-object v9, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1045
    iget-object v9, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v9, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    :goto_0
    monitor-exit p0

    return-void

    .line 1049
    :cond_0
    :try_start_1
    iget-object v9, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    sget v10, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheSize:I

    if-lt v9, v10, :cond_3

    .line 1052
    iget-object v9, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1053
    .local v4, "it":Ljava/util/Iterator;
    invoke-virtual {v5}, Ljava/sql/Date;->getTime()J

    move-result-wide v6

    .line 1054
    .local v6, "oldest":J
    const/4 v8, 0x0

    .line 1055
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1057
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1058
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/sql/Date;

    .line 1059
    invoke-virtual {v9}, Ljava/sql/Date;->getTime()J

    move-result-wide v2

    .line 1060
    .local v2, "current":J
    cmp-long v9, v2, v6

    if-gez v9, :cond_1

    .line 1062
    move-wide v6, v2

    .line 1063
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .local v8, "replace":Ljava/lang/Object;
    goto :goto_1

    .line 1066
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "current":J
    .end local v8    # "replace":Ljava/lang/Object;
    :cond_2
    iget-object v9, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v6    # "oldest":J
    :cond_3
    iget-object v9, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v9, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1039
    .end local v0    # "cacheEntry":Ljava/util/List;
    .end local v5    # "now":Ljava/sql/Date;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private attrCertSubjectSerialSearch(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "xselector"    # Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    .param p2, "attrs"    # [Ljava/lang/String;
    .param p3, "attrNames"    # [Ljava/lang/String;
    .param p4, "subjectAttributeNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 327
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v3, "list":Ljava/util/List;
    const/4 v7, 0x0

    .line 334
    .local v7, "subject":Ljava/lang/String;
    const/4 v5, 0x0

    .line 336
    .local v5, "serial":Ljava/lang/String;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 337
    .local v6, "serials":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 338
    .local v4, "principals":[Ljava/security/Principal;
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 341
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 343
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    .line 344
    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    .line 343
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 349
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v4

    .line 353
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 355
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v8

    invoke-interface {v8}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 357
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v8

    invoke-interface {v8}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v8

    .line 358
    invoke-virtual {v8}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v4

    .line 361
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v8

    invoke-interface {v8}, Lorg/spongycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    .line 362
    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    .line 361
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_3
    if-eqz v4, :cond_4

    .line 367
    aget-object v8, v4, v9

    instance-of v8, v8, Ljavax/security/auth/x500/X500Principal;

    if-eqz v8, :cond_6

    .line 369
    aget-object v8, v4, v9

    check-cast v8, Ljavax/security/auth/x500/X500Principal;

    const-string v9, "RFC1779"

    .line 370
    invoke-virtual {v8, v9}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 378
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 380
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_5
    const/4 v0, 0x0

    .line 384
    .local v0, "attrValue":Ljava/lang/String;
    if-eqz v7, :cond_7

    .line 386
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v8, p4

    if-ge v1, v8, :cond_7

    .line 388
    aget-object v8, p4, v1

    invoke-direct {p0, v7, v8}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 390
    invoke-direct {p0, p3, v8, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 375
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_6
    aget-object v8, v4, v9

    invoke-interface {v8}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 394
    .restart local v0    # "attrValue":Ljava/lang/String;
    :cond_7
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v8

    if-lez v8, :cond_8

    iget-object v8, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 395
    invoke-virtual {v8}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 397
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 398
    .local v2, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 400
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "serial":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 401
    .restart local v5    # "serial":Ljava/lang/String;
    iget-object v8, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v8}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v5, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 404
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v8

    if-nez v8, :cond_9

    if-nez v7, :cond_9

    .line 406
    const-string v8, "*"

    invoke-direct {p0, p3, v8, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 409
    :cond_9
    return-object v3
.end method

.method private cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "xselector"    # Lorg/spongycastle/x509/X509CRLStoreSelector;
    .param p2, "attrs"    # [Ljava/lang/String;
    .param p3, "attrNames"    # [Ljava/lang/String;
    .param p4, "issuerAttributeNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 429
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v5, "list":Ljava/util/List;
    const/4 v2, 0x0

    .line 432
    .local v2, "issuer":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 433
    .local v3, "issuers":Ljava/util/Collection;
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 435
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 437
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 439
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getCertificateIssuer(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getAttrCertificateChecking()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 443
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getAttrCertificateChecking()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v7

    invoke-interface {v7}, Lorg/spongycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v6

    .line 444
    .local v6, "principals":[Ljava/security/Principal;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_3

    .line 446
    aget-object v7, v6, v1

    instance-of v7, v7, Ljavax/security/auth/x500/X500Principal;

    if-eqz v7, :cond_2

    .line 448
    aget-object v7, v6, v1

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    .end local v1    # "i":I
    .end local v6    # "principals":[Ljava/security/Principal;
    :cond_3
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 453
    .local v4, "it":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 455
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/security/auth/x500/X500Principal;

    const-string v8, "RFC1779"

    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    const/4 v0, 0x0

    .line 458
    .local v0, "attrValue":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v7, p4

    if-ge v1, v7, :cond_4

    .line 460
    aget-object v7, p4, v1

    invoke-direct {p0, v2, v7}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 462
    invoke-direct {p0, p3, v7, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 466
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_5
    if-nez v2, :cond_6

    .line 468
    const-string v7, "*"

    invoke-direct {p0, p3, v7, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 471
    :cond_6
    return-object v5
.end method

.method private certSubjectSerialSearch(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "xselector"    # Lorg/spongycastle/x509/X509CertStoreSelector;
    .param p2, "attrs"    # [Ljava/lang/String;
    .param p3, "attrNames"    # [Ljava/lang/String;
    .param p4, "subjectAttributeNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v2, "list":Ljava/util/List;
    const/4 v4, 0x0

    .line 208
    .local v4, "subject":Ljava/lang/String;
    const/4 v3, 0x0

    .line 210
    .local v3, "serial":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getSubjectAsString(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 214
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 218
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    const-string v6, "RFC1779"

    invoke-virtual {v5, v6}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    :cond_1
    const/4 v0, 0x0

    .line 223
    .local v0, "attrValue":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 225
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p4

    if-ge v1, v5, :cond_2

    .line 227
    aget-object v5, p4, v1

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-direct {p0, p3, v5, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "i":I
    :cond_2
    if-eqz v3, :cond_3

    iget-object v5, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v5}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 235
    move-object v0, v3

    .line 236
    iget-object v5, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 237
    invoke-virtual {v5}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 236
    invoke-direct {p0, v5, v0, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 240
    :cond_3
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    .line 242
    const-string v5, "*"

    invoke-direct {p0, p3, v5, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    :cond_4
    return-object v2
.end method

.method private connectLDAP()Ljavax/naming/directory/DirContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 101
    .local v1, "props":Ljava/util/Properties;
    const-string v2, "java.naming.factory.initial"

    sget-object v3, Lorg/spongycastle/x509/util/LDAPStoreHelper;->LDAP_PROVIDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    const-string v2, "java.naming.batchsize"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string v2, "java.naming.provider.url"

    iget-object v3, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v3}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    const-string v2, "java.naming.factory.url.pkgs"

    const-string v3, "com.sun.jndi.url"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    const-string v2, "java.naming.referral"

    sget-object v3, Lorg/spongycastle/x509/util/LDAPStoreHelper;->REFERRALS_IGNORE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    const-string v2, "java.naming.security.authentication"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    new-instance v0, Ljavax/naming/directory/InitialDirContext;

    invoke-direct {v0, v1}, Ljavax/naming/directory/InitialDirContext;-><init>(Ljava/util/Hashtable;)V

    .line 111
    .local v0, "ctx":Ljavax/naming/directory/DirContext;
    return-object v0
.end method

.method private createAttributeCertificates(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;
    .locals 6
    .param p1, "list"    # Ljava/util/List;
    .param p2, "xselector"    # Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 657
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 659
    .local v1, "certSet":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 660
    .local v2, "it":Ljava/util/Iterator;
    new-instance v3, Lorg/spongycastle/jce/provider/X509AttrCertParser;

    invoke-direct {v3}, Lorg/spongycastle/jce/provider/X509AttrCertParser;-><init>()V

    .line 661
    .local v3, "parser":Lorg/spongycastle/jce/provider/X509AttrCertParser;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 665
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 666
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 665
    invoke-virtual {v3, v5}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->engineInit(Ljava/io/InputStream;)V

    .line 668
    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/X509AttrCertParser;->engineRead()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/X509AttributeCertificate;

    .line 669
    .local v0, "cert":Lorg/spongycastle/x509/X509AttributeCertificate;
    invoke-virtual {p2, v0}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 671
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/spongycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 674
    .end local v0    # "cert":Lorg/spongycastle/x509/X509AttributeCertificate;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 680
    :cond_1
    return-object v1
.end method

.method private createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;
    .locals 6
    .param p1, "list"    # Ljava/util/List;
    .param p2, "xselector"    # Lorg/spongycastle/x509/X509CRLStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 576
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 578
    .local v1, "crlSet":Ljava/util/Set;
    new-instance v3, Lorg/spongycastle/jce/provider/X509CRLParser;

    invoke-direct {v3}, Lorg/spongycastle/jce/provider/X509CRLParser;-><init>()V

    .line 579
    .local v3, "parser":Lorg/spongycastle/jce/provider/X509CRLParser;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 580
    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 584
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 585
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 584
    invoke-virtual {v3, v5}, Lorg/spongycastle/jce/provider/X509CRLParser;->engineInit(Ljava/io/InputStream;)V

    .line 586
    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/X509CRLParser;->engineRead()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 587
    .local v0, "crl":Ljava/security/cert/X509CRL;
    invoke-virtual {p2, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 589
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/spongycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 598
    :cond_1
    return-object v1
.end method

.method private createCerts(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;
    .locals 6
    .param p1, "list"    # Ljava/util/List;
    .param p2, "xselector"    # Lorg/spongycastle/x509/X509CertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 160
    .local v1, "certSet":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 161
    .local v2, "it":Ljava/util/Iterator;
    new-instance v3, Lorg/spongycastle/jce/provider/X509CertParser;

    invoke-direct {v3}, Lorg/spongycastle/jce/provider/X509CertParser;-><init>()V

    .line 162
    .local v3, "parser":Lorg/spongycastle/jce/provider/X509CertParser;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 166
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 166
    invoke-virtual {v3, v5}, Lorg/spongycastle/jce/provider/X509CertParser;->engineInit(Ljava/io/InputStream;)V

    .line 169
    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/X509CertParser;->engineRead()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 170
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p2, v0}, Lorg/spongycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 182
    :cond_1
    return-object v1
.end method

.method private createCrossCertificatePairs(Ljava/util/List;Lorg/spongycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;
    .locals 11
    .param p1, "list"    # Ljava/util/List;
    .param p2, "xselector"    # Lorg/spongycastle/x509/X509CertPairStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 604
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 606
    .local v1, "certPairSet":Ljava/util/Set;
    const/4 v4, 0x0

    .line 607
    .local v4, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 615
    :try_start_0
    new-instance v6, Lorg/spongycastle/jce/provider/X509CertPairParser;

    invoke-direct {v6}, Lorg/spongycastle/jce/provider/X509CertPairParser;-><init>()V

    .line 616
    .local v6, "parser":Lorg/spongycastle/jce/provider/X509CertPairParser;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 617
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    check-cast v8, [B

    invoke-direct {v9, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 616
    invoke-virtual {v6, v9}, Lorg/spongycastle/jce/provider/X509CertPairParser;->engineInit(Ljava/io/InputStream;)V

    .line 618
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/X509CertPairParser;->engineRead()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/x509/X509CertificatePair;
    :try_end_0
    .catch Lorg/spongycastle/x509/util/StreamParsingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 635
    .end local v6    # "parser":Lorg/spongycastle/jce/provider/X509CertPairParser;
    .local v5, "pair":Lorg/spongycastle/x509/X509CertificatePair;
    :goto_1
    :try_start_1
    invoke-virtual {p2, v5}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 637
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 648
    .end local v5    # "pair":Lorg/spongycastle/x509/X509CertificatePair;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 620
    :catch_0
    move-exception v2

    .line 624
    .local v2, "e":Lorg/spongycastle/x509/util/StreamParsingException;
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v3, v0

    .line 625
    .local v3, "forward":[B
    add-int/lit8 v8, v4, 0x1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v0, v8

    check-cast v0, [B

    move-object v7, v0

    .line 626
    .local v7, "reverse":[B
    new-instance v5, Lorg/spongycastle/x509/X509CertificatePair;

    new-instance v8, Lorg/spongycastle/asn1/x509/CertificatePair;

    new-instance v9, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v9, v3}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 629
    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v9

    .line 628
    invoke-static {v9}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v9

    new-instance v10, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v10, v7}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 632
    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    .line 631
    invoke-static {v10}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/spongycastle/asn1/x509/CertificatePair;-><init>(Lorg/spongycastle/asn1/x509/Certificate;Lorg/spongycastle/asn1/x509/Certificate;)V

    invoke-direct {v5, v8}, Lorg/spongycastle/x509/X509CertificatePair;-><init>(Lorg/spongycastle/asn1/x509/CertificatePair;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 633
    .restart local v5    # "pair":Lorg/spongycastle/x509/X509CertificatePair;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 651
    .end local v2    # "e":Lorg/spongycastle/x509/util/StreamParsingException;
    .end local v3    # "forward":[B
    .end local v5    # "pair":Lorg/spongycastle/x509/X509CertificatePair;
    .end local v7    # "reverse":[B
    :cond_1
    return-object v1

    .line 644
    :catch_1
    move-exception v8

    goto :goto_2

    .line 640
    :catch_2
    move-exception v8

    goto :goto_2
.end method

.method private crossCertificatePairSubjectSearch(Lorg/spongycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "xselector"    # Lorg/spongycastle/x509/X509CertPairStoreSelector;
    .param p2, "attrs"    # [Ljava/lang/String;
    .param p3, "attrNames"    # [Ljava/lang/String;
    .param p4, "subjectAttributeNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v2, "list":Ljava/util/List;
    const/4 v3, 0x0

    .line 276
    .local v3, "subject":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->getForwardSelector()Lorg/spongycastle/x509/X509CertStoreSelector;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 278
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->getForwardSelector()Lorg/spongycastle/x509/X509CertStoreSelector;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getSubjectAsString(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/lang/String;

    move-result-object v3

    .line 280
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->getCertPair()Lorg/spongycastle/x509/X509CertificatePair;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 282
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->getCertPair()Lorg/spongycastle/x509/X509CertificatePair;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 284
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->getCertPair()Lorg/spongycastle/x509/X509CertificatePair;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 285
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    const-string v5, "RFC1779"

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    :cond_1
    const/4 v0, 0x0

    .line 289
    .local v0, "attrValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 291
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_2

    .line 293
    aget-object v4, p4, v1

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 295
    invoke-direct {p0, p3, v4, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "i":I
    :cond_2
    if-nez v3, :cond_3

    .line 301
    const-string v4, "*"

    invoke-direct {p0, p3, v4, p2}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 304
    :cond_3
    return-object v2
.end method

.method private getCertificateIssuer(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1115
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method private getFromCache(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "searchCriteria"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1074
    iget-object v1, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1075
    .local v0, "entry":Ljava/util/List;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1076
    .local v2, "now":J
    if-eqz v0, :cond_1

    .line 1079
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/sql/Date;->getTime()J

    move-result-wide v6

    sget-wide v8, Lorg/spongycastle/x509/util/LDAPStoreHelper;->lifeTime:J

    sub-long v8, v2, v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_0

    move-object v1, v4

    .line 1085
    :goto_0
    return-object v1

    .line 1083
    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 1085
    goto :goto_0
.end method

.method private getSubjectAsString(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/lang/String;
    .locals 5
    .param p1, "xselector"    # Lorg/spongycastle/x509/X509CertStoreSelector;

    .prologue
    .line 1100
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->getSubjectAsBytes()[B

    move-result-object v1

    .line 1101
    .local v1, "encSubject":[B
    if-eqz v1, :cond_0

    .line 1103
    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v2, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    const-string v3, "RFC1779"

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1110
    :goto_0
    return-object v2

    .line 1106
    .end local v1    # "encSubject":[B
    :catch_0
    move-exception v0

    .line 1108
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/spongycastle/util/StoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception processing name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/util/StoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1110
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "encSubject":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "dNAttributeName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x2c

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 116
    move-object v2, p1

    .line 117
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, "begin":I
    if-ne v0, v7, :cond_0

    .line 121
    const-string v4, ""

    move-object v3, v2

    .line 152
    .end local v2    # "temp":Ljava/lang/String;
    .local v3, "temp":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 123
    .end local v3    # "temp":Ljava/lang/String;
    .restart local v2    # "temp":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 125
    .local v1, "end":I
    if-ne v1, v7, :cond_1

    .line 127
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 129
    :cond_1
    :goto_1
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    .line 131
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v10, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 132
    if-ne v1, v7, :cond_1

    .line 134
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 138
    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 139
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_3

    .line 142
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    :cond_3
    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 146
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    :cond_4
    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 150
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_5
    move-object v3, v2

    .end local v2    # "temp":Ljava/lang/String;
    .restart local v3    # "temp":Ljava/lang/String;
    move-object v4, v2

    .line 152
    goto :goto_0
.end method

.method private search([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p1, "attributeNames"    # [Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;
    .param p3, "attrs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 490
    const/4 v5, 0x0

    .line 491
    .local v5, "filter":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 493
    const/4 v5, 0x0

    .line 508
    :goto_0
    const-string v6, ""

    .line 509
    .local v6, "filter2":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p3

    array-length v14, v0

    if-ge v8, v14, :cond_3

    .line 511
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, p3, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "=*)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 509
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 497
    .end local v6    # "filter2":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_0
    const-string v5, ""

    .line 498
    const-string v14, "**"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 500
    const-string p2, "*"

    .line 502
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v8, v14, :cond_2

    .line 504
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, p1, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 502
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 506
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 513
    .restart local v6    # "filter2":Ljava/lang/String;
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 515
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(&"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 516
    .local v7, "filter3":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 518
    move-object v7, v6

    .line 521
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->getFromCache(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 522
    .local v9, "list":Ljava/util/List;
    if-eqz v9, :cond_5

    move-object v10, v9

    .end local v9    # "list":Ljava/util/List;
    .local v10, "list":Ljava/util/List;
    move-object v11, v9

    .line 570
    .end local v10    # "list":Ljava/util/List;
    .local v11, "list":Ljava/lang/Object;
    :goto_3
    return-object v11

    .line 526
    .end local v11    # "list":Ljava/lang/Object;
    .restart local v9    # "list":Ljava/util/List;
    :cond_5
    const/4 v3, 0x0

    .line 527
    .local v3, "ctx":Ljavax/naming/directory/DirContext;
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "list":Ljava/util/List;
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .restart local v9    # "list":Ljava/util/List;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->connectLDAP()Ljavax/naming/directory/DirContext;

    move-result-object v3

    .line 533
    new-instance v2, Ljavax/naming/directory/SearchControls;

    invoke-direct {v2}, Ljavax/naming/directory/SearchControls;-><init>()V

    .line 534
    .local v2, "constraints":Ljavax/naming/directory/SearchControls;
    const/4 v14, 0x2

    invoke-virtual {v2, v14}, Ljavax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 535
    const-wide/16 v14, 0x0

    invoke-virtual {v2, v14, v15}, Ljavax/naming/directory/SearchControls;->setCountLimit(J)V

    .line 536
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljavax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v14}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getBaseDN()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14, v7, v2}, Ljavax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object v12

    .line 539
    .local v12, "results":Ljavax/naming/NamingEnumeration;
    :cond_6
    invoke-interface {v12}, Ljavax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 541
    invoke-interface {v12}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavax/naming/directory/SearchResult;

    .line 543
    .local v13, "sr":Ljavax/naming/directory/SearchResult;
    invoke-virtual {v13}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v14

    invoke-interface {v14}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v14

    invoke-interface {v14}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/naming/directory/Attribute;

    invoke-interface {v14}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v4

    .line 544
    .local v4, "enumeration":Ljavax/naming/NamingEnumeration;
    :goto_4
    invoke-interface {v4}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 546
    invoke-interface {v4}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 551
    .end local v2    # "constraints":Ljavax/naming/directory/SearchControls;
    .end local v4    # "enumeration":Ljavax/naming/NamingEnumeration;
    .end local v12    # "results":Ljavax/naming/NamingEnumeration;
    .end local v13    # "sr":Ljavax/naming/directory/SearchResult;
    :catch_0
    move-exception v14

    .line 561
    if-eqz v3, :cond_7

    .line 563
    :try_start_1
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_7
    :goto_5
    move-object v10, v9

    .end local v9    # "list":Ljava/util/List;
    .restart local v10    # "list":Ljava/util/List;
    move-object v11, v9

    .line 570
    .restart local v11    # "list":Ljava/lang/Object;
    goto :goto_3

    .line 549
    .end local v10    # "list":Ljava/util/List;
    .end local v11    # "list":Ljava/lang/Object;
    .restart local v2    # "constraints":Ljavax/naming/directory/SearchControls;
    .restart local v9    # "list":Ljava/util/List;
    .restart local v12    # "results":Ljavax/naming/NamingEnumeration;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->addToCache(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Ljavax/naming/NamingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 561
    if-eqz v3, :cond_7

    .line 563
    :try_start_3
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 566
    :catch_1
    move-exception v14

    goto :goto_5

    .line 559
    .end local v2    # "constraints":Ljavax/naming/directory/SearchControls;
    .end local v12    # "results":Ljavax/naming/NamingEnumeration;
    :catchall_0
    move-exception v14

    .line 561
    if-eqz v3, :cond_9

    .line 563
    :try_start_4
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 569
    :cond_9
    :goto_6
    throw v14

    .line 566
    :catch_2
    move-exception v14

    goto :goto_5

    :catch_3
    move-exception v15

    goto :goto_6
.end method

.method private splitString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1093
    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAACertificates(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 860
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAACertificateAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapAACertificateAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAACertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 864
    .local v5, "subjectAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 866
    .local v3, "list":Ljava/util/List;
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v4

    .line 867
    .local v4, "resultSet":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 869
    new-instance v2, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    .line 870
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    invoke-direct {p0, v2, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 872
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 875
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    :cond_0
    return-object v4
.end method

.method public getAttributeAuthorityRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CRLStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 764
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeAuthorityRevocationListAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 766
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeAuthorityRevocationListAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 765
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 768
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeAuthorityRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 767
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 770
    .local v3, "issuerAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 772
    .local v4, "list":Ljava/util/List;
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 773
    .local v5, "resultSet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 775
    new-instance v2, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 776
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 779
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 781
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    :cond_0
    return-object v5
.end method

.method public getAttributeCertificateAttributes(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 983
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateAttributeAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 985
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeCertificateAttributeAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 984
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 987
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateAttributeSubjectAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 986
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 988
    .local v5, "subjectAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 990
    .local v3, "list":Ljava/util/List;
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v4

    .line 991
    .local v4, "resultSet":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 993
    new-instance v2, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    .line 994
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    invoke-direct {p0, v2, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 996
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 999
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    :cond_0
    return-object v4
.end method

.method public getAttributeCertificateRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CRLStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 729
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 730
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateRevocationListAttribute()Ljava/lang/String;

    move-result-object v6

    .line 729
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 732
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeCertificateRevocationListAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 731
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 734
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeCertificateRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 733
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 736
    .local v3, "issuerAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 738
    .local v4, "list":Ljava/util/List;
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 739
    .local v5, "resultSet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 741
    new-instance v2, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 742
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 745
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 747
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    :cond_0
    return-object v5
.end method

.method public getAttributeDescriptorCertificates(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 892
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeDescriptorCertificateAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 893
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 894
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapAttributeDescriptorCertificateAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 893
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 895
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 896
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAttributeDescriptorCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 895
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 898
    .local v5, "subjectAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 900
    .local v3, "list":Ljava/util/List;
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v4

    .line 901
    .local v4, "resultSet":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 903
    new-instance v2, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;-><init>()V

    .line 904
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    invoke-direct {p0, v2, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->attrCertSubjectSerialSearch(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 906
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createAttributeCertificates(Ljava/util/List;Lorg/spongycastle/x509/X509AttributeCertStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 909
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    :cond_0
    return-object v4
.end method

.method public getAuthorityRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CRLStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 696
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAuthorityRevocationListAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 698
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapAuthorityRevocationListAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 697
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 700
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getAuthorityRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 699
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 702
    .local v3, "issuerAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 704
    .local v4, "list":Ljava/util/List;
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 705
    .local v5, "resultSet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 707
    new-instance v2, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 708
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 711
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 713
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    :cond_0
    return-object v5
.end method

.method public getCACertificates(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 926
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCACertificateAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 927
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapCACertificateAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 929
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCACertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 928
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 930
    .local v5, "subjectAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 932
    .local v3, "list":Ljava/util/List;
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v4

    .line 933
    .local v4, "resultSet":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 935
    new-instance v2, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 936
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509CertStoreSelector;
    invoke-direct {p0, v2, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 938
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 940
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :cond_0
    return-object v4
.end method

.method public getCertificateRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CRLStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 1012
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCertificateRevocationListAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1013
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 1014
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapCertificateRevocationListAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 1013
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 1016
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCertificateRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 1015
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1017
    .local v3, "issuerAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1019
    .local v4, "list":Ljava/util/List;
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 1020
    .local v5, "resultSet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1022
    new-instance v2, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 1023
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1026
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1028
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    :cond_0
    return-object v5
.end method

.method public getCrossCertificatePairs(Lorg/spongycastle/x509/X509CertPairStoreSelector;)Ljava/util/Collection;
    .locals 8
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CertPairStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 794
    iget-object v7, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v7}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCrossCertificateAttribute()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 795
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v7, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v7}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapCrossCertificateAttributeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v7, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 797
    invoke-virtual {v7}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCrossCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v7

    .line 796
    invoke-direct {p0, v7}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 798
    .local v6, "subjectAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->crossCertificatePairSubjectSearch(Lorg/spongycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 800
    .local v4, "list":Ljava/util/List;
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCrossCertificatePairs(Ljava/util/List;Lorg/spongycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 801
    .local v5, "resultSet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 803
    new-instance v2, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 804
    .local v2, "emptyCertselector":Lorg/spongycastle/x509/X509CertStoreSelector;
    new-instance v3, Lorg/spongycastle/x509/X509CertPairStoreSelector;

    invoke-direct {v3}, Lorg/spongycastle/x509/X509CertPairStoreSelector;-><init>()V

    .line 806
    .local v3, "emptySelector":Lorg/spongycastle/x509/X509CertPairStoreSelector;
    invoke-virtual {v3, v2}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->setForwardSelector(Lorg/spongycastle/x509/X509CertStoreSelector;)V

    .line 807
    invoke-virtual {v3, v2}, Lorg/spongycastle/x509/X509CertPairStoreSelector;->setReverseSelector(Lorg/spongycastle/x509/X509CertStoreSelector;)V

    .line 808
    invoke-direct {p0, v3, v1, v0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->crossCertificatePairSubjectSearch(Lorg/spongycastle/x509/X509CertPairStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 810
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCrossCertificatePairs(Ljava/util/List;Lorg/spongycastle/x509/X509CertPairStoreSelector;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 812
    .end local v2    # "emptyCertselector":Lorg/spongycastle/x509/X509CertStoreSelector;
    .end local v3    # "emptySelector":Lorg/spongycastle/x509/X509CertPairStoreSelector;
    :cond_0
    return-object v5
.end method

.method public getDeltaCertificateRevocationLists(Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CRLStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 953
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getDeltaRevocationListAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapDeltaRevocationListAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 956
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getDeltaRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 955
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 957
    .local v3, "issuerAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 959
    .local v4, "list":Ljava/util/List;
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v5

    .line 960
    .local v5, "resultSet":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 962
    new-instance v2, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 963
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    invoke-direct {p0, v2, v1, v0, v3}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->cRLIssuerSearch(Lorg/spongycastle/x509/X509CRLStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 966
    invoke-direct {p0, v4, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCRLs(Ljava/util/List;Lorg/spongycastle/x509/X509CRLStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 968
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509CRLStoreSelector;
    :cond_0
    return-object v5
.end method

.method public getUserCertificates(Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Collection;
    .locals 7
    .param p1, "selector"    # Lorg/spongycastle/x509/X509CertStoreSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/util/StoreException;
        }
    .end annotation

    .prologue
    .line 829
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getUserCertificateAttribute()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 830
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapUserCertificateAttributeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "attrNames":[Ljava/lang/String;
    iget-object v6, p0, Lorg/spongycastle/x509/util/LDAPStoreHelper;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 832
    invoke-virtual {v6}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getUserCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v6

    .line 831
    invoke-direct {p0, v6}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 834
    .local v5, "subjectAttributeNames":[Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 836
    .local v3, "list":Ljava/util/List;
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v4

    .line 837
    .local v4, "resultSet":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 839
    new-instance v2, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v2}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 840
    .local v2, "emptySelector":Lorg/spongycastle/x509/X509CertStoreSelector;
    invoke-direct {p0, v2, v1, v0, v5}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->certSubjectSerialSearch(Lorg/spongycastle/x509/X509CertStoreSelector;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 842
    invoke-direct {p0, v3, p1}, Lorg/spongycastle/x509/util/LDAPStoreHelper;->createCerts(Ljava/util/List;Lorg/spongycastle/x509/X509CertStoreSelector;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 845
    .end local v2    # "emptySelector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :cond_0
    return-object v4
.end method
