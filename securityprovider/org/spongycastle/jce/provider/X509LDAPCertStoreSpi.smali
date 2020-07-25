.class public Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;
.super Ljava/security/cert/CertStoreSpi;
.source "X509LDAPCertStoreSpi.java"


# static fields
.field private static LDAP_PROVIDER:Ljava/lang/String; = null

.field private static REFERRALS_IGNORE:Ljava/lang/String; = null

.field private static final SEARCH_SECURITY_LEVEL:Ljava/lang/String; = "none"

.field private static final URL_CONTEXT_PREFIX:Ljava/lang/String; = "com.sun.jndi.url"


# instance fields
.field private params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "com.sun.jndi.ldap.LdapCtxFactory"

    sput-object v0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->LDAP_PROVIDER:Ljava/lang/String;

    .line 78
    const-string v0, "ignore"

    sput-object v0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->REFERRALS_IGNORE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/CertStoreParameters;)V
    .locals 3
    .param p1, "params"    # Ljava/security/cert/CertStoreParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    .line 60
    instance-of v0, p1, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": parameter must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    check-cast p1, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .end local p1    # "params":Ljava/security/cert/CertStoreParameters;
    iput-object p1, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 68
    return-void
.end method

.method private certSubjectSerialSearch(Ljava/security/cert/X509CertSelector;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .param p1, "xselector"    # Ljava/security/cert/X509CertSelector;
    .param p2, "attrs"    # [Ljava/lang/String;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "subjectAttributeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 235
    .local v3, "set":Ljava/util/Set;
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    move-result-object v5

    if-nez v5, :cond_0

    .line 236
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 237
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 239
    :cond_0
    const/4 v4, 0x0

    .line 240
    .local v4, "subject":Ljava/lang/String;
    const/4 v2, 0x0

    .line 241
    .local v2, "serial":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 243
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 244
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    const-string v6, "RFC1779"

    invoke-virtual {v5, v6}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    .line 246
    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    :goto_0
    invoke-direct {p0, v4, p4}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "attrValue":Ljava/lang/String;
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

    invoke-direct {p0, p3, v5, p2}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 262
    if-eqz v2, :cond_1

    iget-object v5, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 263
    invoke-virtual {v5}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 265
    move-object v0, v2

    .line 266
    iget-object v5, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v5}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getSearchForSerialNumberIn()Ljava/lang/String;

    move-result-object p3

    .line 267
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

    invoke-direct {p0, p3, v5, p2}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 280
    .end local v0    # "attrValue":Ljava/lang/String;
    .end local v2    # "serial":Ljava/lang/String;
    .end local v4    # "subject":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v3

    .line 250
    .restart local v2    # "serial":Ljava/lang/String;
    .restart local v4    # "subject":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    move-result-object v5

    if-eqz v5, :cond_3

    .line 252
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    .line 253
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    const-string v6, "RFC1779"

    invoke-virtual {v5, v6}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 257
    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->getSubjectAsString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 272
    .end local v2    # "serial":Ljava/lang/String;
    .end local v4    # "subject":Ljava/lang/String;
    :cond_4
    const-string v5, "*"

    invoke-direct {p0, p3, v5, p2}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 275
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertStoreException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception processing selector: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private connectLDAP()Ljavax/naming/directory/DirContext;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 93
    .local v1, "props":Ljava/util/Properties;
    const-string v2, "java.naming.factory.initial"

    sget-object v3, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->LDAP_PROVIDER:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    const-string v2, "java.naming.batchsize"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    const-string v2, "java.naming.provider.url"

    iget-object v3, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v3}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string v2, "java.naming.factory.url.pkgs"

    const-string v3, "com.sun.jndi.url"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    const-string v2, "java.naming.referral"

    sget-object v3, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->REFERRALS_IGNORE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    const-string v2, "java.naming.security.authentication"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    new-instance v0, Ljavax/naming/directory/InitialDirContext;

    invoke-direct {v0, v1}, Ljavax/naming/directory/InitialDirContext;-><init>(Ljava/util/Hashtable;)V

    .line 103
    .local v0, "ctx":Ljavax/naming/directory/DirContext;
    return-object v0
.end method

.method private getCACertificates(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;
    .locals 6
    .param p1, "xselector"    # Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 298
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v5}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCACertificateAttribute()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 299
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v4, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v4}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapCACertificateAttributeName()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "attrName":Ljava/lang/String;
    iget-object v4, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 301
    invoke-virtual {v4}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCACertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "subjectAttributeName":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v3}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->certSubjectSerialSearch(Ljava/security/cert/X509CertSelector;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 305
    .local v2, "set":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    const/4 v4, 0x0

    const-string v5, "*"

    invoke-direct {p0, v4, v5, v1}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 310
    :cond_0
    return-object v2
.end method

.method private getCrossCertificates(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;
    .locals 6
    .param p1, "xselector"    # Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 316
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v5}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCrossCertificateAttribute()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 317
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v4, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v4}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapCrossCertificateAttributeName()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "attrName":Ljava/lang/String;
    iget-object v4, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 319
    invoke-virtual {v4}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCrossCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "subjectAttributeName":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v3}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->certSubjectSerialSearch(Ljava/security/cert/X509CertSelector;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 323
    .local v2, "set":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    const/4 v4, 0x0

    const-string v5, "*"

    invoke-direct {p0, v4, v5, v1}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 328
    :cond_0
    return-object v2
.end method

.method private getEndCertificates(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;
    .locals 6
    .param p1, "xselector"    # Ljava/security/cert/X509CertSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 286
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v5}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getUserCertificateAttribute()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 287
    .local v1, "attrs":[Ljava/lang/String;
    iget-object v4, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v4}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapUserCertificateAttributeName()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "attrName":Ljava/lang/String;
    iget-object v4, p0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v4}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getUserCertificateSubjectAttributeName()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "subjectAttributeName":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0, v3}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->certSubjectSerialSearch(Ljava/security/cert/X509CertSelector;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 292
    .local v2, "set":Ljava/util/Set;
    return-object v2
.end method

.method private parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "subjectAttributeName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2c

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 108
    move-object v2, p1

    .line 109
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "begin":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 113
    .local v1, "end":I
    if-ne v1, v6, :cond_0

    .line 115
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 117
    :cond_0
    :goto_0
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    .line 119
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 120
    if-ne v1, v6, :cond_0

    .line 122
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 126
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 127
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    .line 130
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    :cond_2
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    :cond_3
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 140
    :cond_4
    return-object v2
.end method

.method private search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 17
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;
    .param p3, "attrs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 411
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, "filter":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 414
    const/4 v6, 0x0

    .line 416
    :cond_0
    const/4 v3, 0x0

    .line 417
    .local v3, "ctx":Ljavax/naming/directory/DirContext;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 421
    .local v11, "set":Ljava/util/Set;
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->connectLDAP()Ljavax/naming/directory/DirContext;

    move-result-object v3

    .line 423
    new-instance v2, Ljavax/naming/directory/SearchControls;

    invoke-direct {v2}, Ljavax/naming/directory/SearchControls;-><init>()V

    .line 424
    .local v2, "constraints":Ljavax/naming/directory/SearchControls;
    const/4 v14, 0x2

    invoke-virtual {v2, v14}, Ljavax/naming/directory/SearchControls;->setSearchScope(I)V

    .line 425
    const-wide/16 v14, 0x0

    invoke-virtual {v2, v14, v15}, Ljavax/naming/directory/SearchControls;->setCountLimit(J)V

    .line 426
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v14, v0

    if-ge v8, v14, :cond_5

    .line 428
    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/String;

    .line 429
    .local v13, "temp":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v15, p3, v8

    aput-object v15, v13, v14

    .line 430
    invoke-virtual {v2, v13}, Ljavax/naming/directory/SearchControls;->setReturningAttributes([Ljava/lang/String;)V

    .line 432
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(&("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v13, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "=*))"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 433
    .local v7, "filter2":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 435
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v13, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "=*)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 437
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v14}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getBaseDN()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14, v7, v2}, Ljavax/naming/directory/DirContext;->search(Ljava/lang/String;Ljava/lang/String;Ljavax/naming/directory/SearchControls;)Ljavax/naming/NamingEnumeration;

    move-result-object v10

    .line 439
    .local v10, "results":Ljavax/naming/NamingEnumeration;
    :cond_2
    invoke-interface {v10}, Ljavax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 441
    invoke-interface {v10}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/naming/directory/SearchResult;

    .line 446
    .local v12, "sr":Ljavax/naming/directory/SearchResult;
    invoke-virtual {v12}, Ljavax/naming/directory/SearchResult;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v14

    invoke-interface {v14}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v14

    invoke-interface {v14}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/naming/directory/Attribute;

    invoke-interface {v14}, Ljavax/naming/directory/Attribute;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object v5

    .line 447
    .local v5, "enumeration":Ljavax/naming/NamingEnumeration;
    :goto_1
    invoke-interface {v5}, Ljavax/naming/NamingEnumeration;->hasMore()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 449
    invoke-interface {v5}, Ljavax/naming/NamingEnumeration;->next()Ljava/lang/Object;

    move-result-object v9

    .line 450
    .local v9, "o":Ljava/lang/Object;
    invoke-interface {v11, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 455
    .end local v2    # "constraints":Ljavax/naming/directory/SearchControls;
    .end local v5    # "enumeration":Ljavax/naming/NamingEnumeration;
    .end local v7    # "filter2":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "o":Ljava/lang/Object;
    .end local v10    # "results":Ljavax/naming/NamingEnumeration;
    .end local v12    # "sr":Ljavax/naming/directory/SearchResult;
    .end local v13    # "temp":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 457
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v14, Ljava/security/cert/CertStoreException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error getting results from LDAP directory "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    .line 465
    if-eqz v3, :cond_3

    .line 467
    :try_start_2
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 473
    :cond_3
    :goto_2
    throw v14

    .line 426
    .restart local v2    # "constraints":Ljavax/naming/directory/SearchControls;
    .restart local v7    # "filter2":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v10    # "results":Ljavax/naming/NamingEnumeration;
    .restart local v13    # "temp":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 465
    .end local v7    # "filter2":Ljava/lang/String;
    .end local v10    # "results":Ljavax/naming/NamingEnumeration;
    .end local v13    # "temp":[Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_6

    .line 467
    :try_start_3
    invoke-interface {v3}, Ljavax/naming/directory/DirContext;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 474
    :cond_6
    :goto_3
    return-object v11

    .line 470
    :catch_1
    move-exception v14

    goto :goto_3

    .end local v2    # "constraints":Ljavax/naming/directory/SearchControls;
    .end local v8    # "i":I
    :catch_2
    move-exception v15

    goto :goto_2
.end method


# virtual methods
.method public engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 16
    .param p1, "selector"    # Ljava/security/cert/CRLSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 334
    const/4 v13, 0x1

    new-array v3, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v14}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCertificateRevocationListAttribute()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v13

    .line 335
    .local v3, "attrs":[Ljava/lang/String;
    move-object/from16 v0, p1

    instance-of v13, v0, Ljava/security/cert/X509CRLSelector;

    if-nez v13, :cond_0

    .line 337
    new-instance v13, Ljava/security/cert/CertStoreException;

    const-string v14, "selector is not a X509CRLSelector"

    invoke-direct {v13, v14}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    move-object/from16 v12, p1

    .line 339
    check-cast v12, Ljava/security/cert/X509CRLSelector;

    .line 341
    .local v12, "xselector":Ljava/security/cert/X509CRLSelector;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 343
    .local v6, "crlSet":Ljava/util/Set;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    invoke-virtual {v13}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getLdapCertificateRevocationListAttributeName()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "attrName":Ljava/lang/String;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 346
    .local v11, "set":Ljava/util/Set;
    invoke-virtual {v12}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 348
    invoke-virtual {v12}, Ljava/security/cert/X509CRLSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 349
    .local v9, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 351
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 352
    .local v10, "o":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 353
    .local v2, "attrValue":Ljava/lang/String;
    instance-of v13, v10, Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 356
    invoke-virtual {v13}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCertificateRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v8

    .line 357
    .local v8, "issuerAttributeName":Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .end local v10    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "*"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "*"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13, v3}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 361
    .end local v8    # "issuerAttributeName":Ljava/lang/String;
    .restart local v10    # "o":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->params:Lorg/spongycastle/jce/X509LDAPCertStoreParameters;

    .line 362
    invoke-virtual {v13}, Lorg/spongycastle/jce/X509LDAPCertStoreParameters;->getCertificateRevocationListIssuerAttributeName()Ljava/lang/String;

    move-result-object v8

    .line 363
    .restart local v8    # "issuerAttributeName":Ljava/lang/String;
    new-instance v13, Ljavax/security/auth/x500/X500Principal;

    check-cast v10, [B

    .end local v10    # "o":Ljava/lang/Object;
    check-cast v10, [B

    invoke-direct {v13, v10}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    const-string v14, "RFC1779"

    .line 364
    invoke-virtual {v13, v14}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 363
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->parseDN(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 371
    .end local v2    # "attrValue":Ljava/lang/String;
    .end local v8    # "issuerAttributeName":Ljava/lang/String;
    .end local v9    # "it":Ljava/util/Iterator;
    :cond_2
    const-string v13, "*"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13, v3}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 373
    :cond_3
    const/4 v13, 0x0

    const-string v14, "*"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v3}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->search(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 374
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 378
    .restart local v9    # "it":Ljava/util/Iterator;
    :try_start_0
    const-string v13, "X.509"

    const-string v14, "FAKE_SC"

    invoke-static {v13, v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 380
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 382
    new-instance v14, Ljava/io/ByteArrayInputStream;

    .line 383
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    check-cast v13, [B

    invoke-direct {v14, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 382
    invoke-virtual {v4, v14}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v5

    .line 384
    .local v5, "crl":Ljava/security/cert/CRL;
    invoke-virtual {v12, v5}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 386
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 390
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "crl":Ljava/security/cert/CRL;
    :catch_0
    move-exception v7

    .line 392
    .local v7, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/security/cert/CertStoreException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CRL cannot be constructed from LDAP result "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 396
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "cf":Ljava/security/cert/CertificateFactory;
    :cond_5
    return-object v6
.end method

.method public engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 16
    .param p1, "selector"    # Ljava/security/cert/CertSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 146
    move-object/from16 v0, p1

    instance-of v13, v0, Ljava/security/cert/X509CertSelector;

    if-nez v13, :cond_0

    .line 148
    new-instance v13, Ljava/security/cert/CertStoreException;

    const-string v14, "selector is not a X509CertSelector"

    invoke-direct {v13, v14}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    move-object/from16 v12, p1

    .line 150
    check-cast v12, Ljava/security/cert/X509CertSelector;

    .line 152
    .local v12, "xselector":Ljava/security/cert/X509CertSelector;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 154
    .local v5, "certSet":Ljava/util/Set;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->getEndCertificates(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;

    move-result-object v11

    .line 155
    .local v11, "set":Ljava/util/Set;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->getCACertificates(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 156
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/spongycastle/jce/provider/X509LDAPCertStoreSpi;->getCrossCertificates(Ljava/security/cert/X509CertSelector;)Ljava/util/Set;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 158
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 162
    .local v8, "it":Ljava/util/Iterator;
    :try_start_0
    const-string v13, "X.509"

    const-string v14, "FAKE_SC"

    invoke-static {v13, v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    .line 164
    .local v6, "cf":Ljava/security/cert/CertificateFactory;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 166
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    move-object v0, v13

    check-cast v0, [B

    move-object v2, v0

    .line 167
    .local v2, "bytes":[B
    if-eqz v2, :cond_1

    array-length v13, v2

    if-eqz v13, :cond_1

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v3, "bytesList":Ljava/util/List;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    :try_start_1
    new-instance v13, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v13, v2}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 179
    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v13

    .line 178
    invoke-static {v13}, Lorg/spongycastle/asn1/x509/CertificatePair;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificatePair;

    move-result-object v10

    .line 180
    .local v10, "pair":Lorg/spongycastle/asn1/x509/CertificatePair;
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 181
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/CertificatePair;->getForward()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 183
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/CertificatePair;->getForward()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v13

    invoke-virtual {v13}, Lorg/spongycastle/asn1/x509/Certificate;->getEncoded()[B

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_2
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/CertificatePair;->getReverse()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 187
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/CertificatePair;->getReverse()Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v13

    invoke-virtual {v13}, Lorg/spongycastle/asn1/x509/Certificate;->getEncoded()[B

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    .end local v10    # "pair":Lorg/spongycastle/asn1/x509/CertificatePair;
    :cond_3
    :goto_0
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "it2":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 200
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 201
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    check-cast v13, [B

    invoke-direct {v1, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    .local v1, "bIn":Ljava/io/ByteArrayInputStream;
    :try_start_3
    invoke-virtual {v6, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    .line 207
    .local v4, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v12, v4}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 209
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 212
    .end local v4    # "cert":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v13

    goto :goto_1

    .line 219
    .end local v1    # "bIn":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bytes":[B
    .end local v3    # "bytesList":Ljava/util/List;
    .end local v6    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v9    # "it2":Ljava/util/Iterator;
    :catch_1
    move-exception v7

    .line 221
    .local v7, "e":Ljava/lang/Exception;
    new-instance v13, Ljava/security/cert/CertStoreException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "certificate cannot be constructed from LDAP result: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/security/cert/CertStoreException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 225
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "cf":Ljava/security/cert/CertificateFactory;
    :cond_5
    return-object v5

    .line 194
    .restart local v2    # "bytes":[B
    .restart local v3    # "bytesList":Ljava/util/List;
    :catch_2
    move-exception v13

    goto :goto_0

    .line 190
    :catch_3
    move-exception v13

    goto :goto_0
.end method
