.class public Lorg/spongycastle/x509/PKIXCertPathReviewer;
.super Lorg/spongycastle/x509/CertPathValidatorUtilities;
.source "PKIXCertPathReviewer.java"


# static fields
.field private static final AUTH_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DIST_POINTS:Ljava/lang/String;

.field private static final QC_STATEMENT:Ljava/lang/String;

.field private static final RESOURCE_NAME:Ljava/lang/String; = "org.spongycastle.x509.CertPathReviewerMessages"


# instance fields
.field protected certPath:Ljava/security/cert/CertPath;

.field protected certs:Ljava/util/List;

.field protected errors:[Ljava/util/List;

.field private initialized:Z

.field protected n:I

.field protected notifications:[Ljava/util/List;

.field protected pkixParams:Ljava/security/cert/PKIXParameters;

.field protected policyTree:Ljava/security/cert/PolicyNode;

.field protected subjectPublicKey:Ljava/security/PublicKey;

.field protected trustAnchor:Ljava/security/cert/TrustAnchor;

.field protected validDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->qCStatements:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    .line 87
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    .line 88
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/spongycastle/x509/CertPathValidatorUtilities;-><init>()V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 0
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/PKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-direct {p0}, Lorg/spongycastle/x509/CertPathValidatorUtilities;-><init>()V

    .line 181
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V

    .line 182
    return-void
.end method

.method private IPtoString([B)Ljava/lang/String;
    .locals 5
    .param p1, "ip"    # [B

    .prologue
    .line 1988
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2003
    .local v3, "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1990
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1992
    .local v1, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1994
    .local v0, "b":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p1

    if-eq v2, v4, :cond_0

    .line 1996
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1997
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1994
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2000
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private checkCriticalExtensions()V
    .locals 18

    .prologue
    .line 1822
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v12}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v10

    .line 1823
    .local v10, "pathCheckers":Ljava/util/List;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1829
    .local v2, "certIter":Ljava/util/Iterator;
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1831
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1834
    :catch_0
    move-exception v4

    .line 1836
    .local v4, "cpve":Ljava/security/cert/CertPathValidatorException;
    :try_start_1
    new-instance v9, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v12, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.certPathCheckerError"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 1837
    invoke-virtual {v4}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    const/4 v15, 0x2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-direct {v9, v12, v13, v14}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1838
    .local v9, "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v12, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v12, v9, v4}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v12
    :try_end_1
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1906
    .end local v4    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v9    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :catch_1
    move-exception v3

    .line 1908
    .local v3, "cpre":Lorg/spongycastle/x509/CertPathReviewerException;
    invoke-virtual {v3}, Lorg/spongycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/spongycastle/i18n/ErrorBundle;

    move-result-object v12

    invoke-virtual {v3}, Lorg/spongycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 1910
    .end local v3    # "cpre":Lorg/spongycastle/x509/CertPathReviewerException;
    :cond_0
    return-void

    .line 1845
    :cond_1
    const/4 v1, 0x0

    .line 1849
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v7, v12, -0x1

    .local v7, "index":I
    :goto_1
    if-ltz v7, :cond_0

    .line 1851
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1853
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v5

    .line 1854
    .local v5, "criticalExtensions":Ljava/util/Set;
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1849
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1859
    :cond_3
    sget-object v12, Lorg/spongycastle/x509/PKIXCertPathReviewer;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1860
    sget-object v12, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1861
    sget-object v12, Lorg/spongycastle/x509/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1862
    sget-object v12, Lorg/spongycastle/x509/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1863
    sget-object v12, Lorg/spongycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1864
    sget-object v12, Lorg/spongycastle/x509/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1865
    sget-object v12, Lorg/spongycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1866
    sget-object v12, Lorg/spongycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1867
    sget-object v12, Lorg/spongycastle/x509/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1868
    sget-object v12, Lorg/spongycastle/x509/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1871
    sget-object v12, Lorg/spongycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1873
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v7}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->processQcStatements(Ljava/security/cert/X509Certificate;I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1875
    sget-object v12, Lorg/spongycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1879
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 1880
    .local v11, "tmpIter":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v12

    if-eqz v12, :cond_5

    .line 1884
    :try_start_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v12, v1, v5}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1886
    :catch_2
    move-exception v6

    .line 1888
    .local v6, "e":Ljava/security/cert/CertPathValidatorException;
    :try_start_4
    new-instance v9, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v12, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.criticalExtensionError"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 1889
    invoke-virtual {v6}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v6, v14, v15

    const/4 v15, 0x2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-direct {v9, v12, v13, v14}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1890
    .restart local v9    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v12, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-virtual {v6}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v12, v9, v13, v14, v7}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v12

    .line 1893
    .end local v6    # "e":Ljava/security/cert/CertPathValidatorException;
    .end local v9    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_5
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1896
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1897
    .local v8, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1899
    new-instance v9, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v13, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v14, "CertPathReviewer.unknownCriticalExt"

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 1900
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    aput-object v17, v15, v16

    invoke-direct {v9, v13, v14, v15}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1901
    .restart local v9    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v7}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_4
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3
.end method

.method private checkNameConstraints()V
    .locals 30

    .prologue
    .line 383
    const/4 v8, 0x0

    .line 390
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    new-instance v19, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct/range {v19 .. v19}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    .line 400
    .local v19, "nameConstraintValidator":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v15, v24, -0x1

    .local v15, "index":I
    :goto_0
    if-lez v15, :cond_0

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    move/from16 v24, v0

    sub-int v14, v24, v15

    .line 408
    .local v14, "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v8, v0

    .line 412
    invoke-static {v8}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 414
    invoke-static {v8}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v23

    .line 415
    .local v23, "principal":Ljavax/security/auth/x500/X500Principal;
    new-instance v4, Lorg/spongycastle/asn1/ASN1InputStream;

    new-instance v24, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v23 .. v23}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 420
    .local v4, "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    :try_start_1
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v11

    check-cast v11, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 431
    .local v11, "dns":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lorg/spongycastle/asn1/ASN1Sequence;)V
    :try_end_2
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 442
    :try_start_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lorg/spongycastle/asn1/ASN1Sequence;)V
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 454
    :try_start_4
    sget-object v24, Lorg/spongycastle/x509/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v8, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_4
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 462
    .local v6, "altName":Lorg/spongycastle/asn1/ASN1Sequence;
    if-eqz v6, :cond_1

    .line 464
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1
    :try_start_5
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 466
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;
    :try_end_5
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v18

    .line 470
    .local v18, "name":Lorg/spongycastle/asn1/x509/GeneralName;
    :try_start_6
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lorg/spongycastle/asn1/x509/GeneralName;)V

    .line 471
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lorg/spongycastle/asn1/x509/GeneralName;)V
    :try_end_6
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_1

    .line 464
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 422
    .end local v6    # "altName":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v11    # "dns":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v16    # "j":I
    .end local v18    # "name":Lorg/spongycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v12

    .line 424
    .local v12, "e":Ljava/io/IOException;
    :try_start_7
    new-instance v17, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v24, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v25, "CertPathReviewer.ncSubjectNameError"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Lorg/spongycastle/i18n/filter/UntrustedInput;

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v28, v26, v27

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    .local v17, "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v24, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v12, v2, v15}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v24
    :try_end_7
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_1

    .line 610
    .end local v4    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v14    # "i":I
    .end local v15    # "index":I
    .end local v17    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v23    # "principal":Ljavax/security/auth/x500/X500Principal;
    :catch_1
    move-exception v9

    .line 612
    .local v9, "cpre":Lorg/spongycastle/x509/CertPathReviewerException;
    invoke-virtual {v9}, Lorg/spongycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/spongycastle/i18n/ErrorBundle;

    move-result-object v24

    invoke-virtual {v9}, Lorg/spongycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 615
    .end local v9    # "cpre":Lorg/spongycastle/x509/CertPathReviewerException;
    :cond_0
    return-void

    .line 433
    .restart local v4    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    .restart local v11    # "dns":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v14    # "i":I
    .restart local v15    # "index":I
    .restart local v23    # "principal":Ljavax/security/auth/x500/X500Principal;
    :catch_2
    move-exception v10

    .line 435
    .local v10, "cpve":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    :try_start_8
    new-instance v17, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v24, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v25, "CertPathReviewer.notPermittedDN"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 436
    invoke-virtual/range {v23 .. v23}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v28, v26, v27

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    .restart local v17    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v24, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v10, v2, v15}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v24

    .line 444
    .end local v10    # "cpve":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v17    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :catch_3
    move-exception v10

    .line 446
    .restart local v10    # "cpve":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v17, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v24, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v25, "CertPathReviewer.excludedDN"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 447
    invoke-virtual/range {v23 .. v23}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v28, v26, v27

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    .restart local v17    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v24, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v10, v2, v15}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v24

    .line 456
    .end local v10    # "cpve":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v17    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :catch_4
    move-exception v5

    .line 458
    .local v5, "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v17, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v24, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v25, "CertPathReviewer.subjAltNameExtError"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .restart local v17    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v24, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v5, v2, v15}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v24

    .line 473
    .end local v5    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v17    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v6    # "altName":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v16    # "j":I
    .restart local v18    # "name":Lorg/spongycastle/asn1/x509/GeneralName;
    :catch_5
    move-exception v10

    .line 475
    .restart local v10    # "cpve":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v17, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v24, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v25, "CertPathReviewer.notPermittedEmail"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    new-instance v28, Lorg/spongycastle/i18n/filter/UntrustedInput;

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v28, v26, v27

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    .restart local v17    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v24, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v10, v2, v15}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v24
    :try_end_8
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_1

    .line 574
    .end local v4    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v6    # "altName":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v10    # "cpve":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v11    # "dns":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v16    # "j":I
    .end local v17    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v18    # "name":Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v23    # "principal":Ljavax/security/auth/x500/X500Principal;
    :cond_1
    :try_start_9
    sget-object v24, Lorg/spongycastle/x509/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v8, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v21

    check-cast v21, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_9
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_1

    .line 582
    .local v21, "ncSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    if-eqz v21, :cond_3

    .line 584
    :try_start_a
    invoke-static/range {v21 .. v21}, Lorg/spongycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/NameConstraints;

    move-result-object v20

    .line 589
    .local v20, "nc":Lorg/spongycastle/asn1/x509/NameConstraints;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v22

    .line 590
    .local v22, "permitted":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    if-eqz v22, :cond_2

    .line 592
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lorg/spongycastle/asn1/x509/GeneralSubtree;)V

    .line 598
    :cond_2
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v13

    .line 599
    .local v13, "excluded":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    if-eqz v13, :cond_3

    .line 601
    const/4 v7, 0x0

    .local v7, "c":I
    :goto_2
    array-length v0, v13

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v7, v0, :cond_3

    .line 603
    aget-object v24, v13, v7

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lorg/spongycastle/asn1/x509/GeneralSubtree;)V

    .line 601
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 576
    .end local v7    # "c":I
    .end local v13    # "excluded":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .end local v20    # "nc":Lorg/spongycastle/asn1/x509/NameConstraints;
    .end local v21    # "ncSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v22    # "permitted":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    :catch_6
    move-exception v5

    .line 578
    .restart local v5    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v17, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v24, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v25, "CertPathReviewer.ncExtError"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .restart local v17    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v24, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v5, v2, v15}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v24
    :try_end_a
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_1

    .line 400
    .end local v5    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v17    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v21    # "ncSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_3
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_0
.end method

.method private checkPathLength()V
    .locals 15

    .prologue
    .line 623
    iget v7, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    .line 624
    .local v7, "maxPathLength":I
    const/4 v9, 0x0

    .line 626
    .local v9, "totalPathLength":I
    const/4 v4, 0x0

    .line 629
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    iget-object v10, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    .local v6, "index":I
    :goto_0
    if-lez v6, :cond_3

    .line 631
    iget v10, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    sub-int v5, v10, v6

    .line 633
    .local v5, "i":I
    iget-object v10, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 637
    .restart local v4    # "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v4}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 639
    if-gtz v7, :cond_0

    .line 641
    new-instance v8, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v10, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v11, "CertPathReviewer.pathLengthExtended"

    invoke-direct {v8, v10, v11}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .local v8, "msg":Lorg/spongycastle/i18n/ErrorBundle;
    invoke-virtual {p0, v8}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V

    .line 644
    .end local v8    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_0
    add-int/lit8 v7, v7, -0x1

    .line 645
    add-int/lit8 v9, v9, 0x1

    .line 653
    :cond_1
    :try_start_0
    sget-object v10, Lorg/spongycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v4, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 663
    .local v3, "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    :goto_1
    if-eqz v3, :cond_2

    .line 665
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    .line 667
    .local v0, "_pathLengthConstraint":Ljava/math/BigInteger;
    if-eqz v0, :cond_2

    .line 669
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 671
    .local v1, "_plc":I
    if-ge v1, v7, :cond_2

    .line 673
    move v7, v1

    .line 629
    .end local v0    # "_pathLengthConstraint":Ljava/math/BigInteger;
    .end local v1    # "_plc":I
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 656
    .end local v3    # "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    :catch_0
    move-exception v2

    .line 658
    .local v2, "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v8, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v10, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v11, "CertPathReviewer.processLengthConstError"

    invoke-direct {v8, v10, v11}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .restart local v8    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    invoke-virtual {p0, v8, v6}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 660
    const/4 v3, 0x0

    .restart local v3    # "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    goto :goto_1

    .line 680
    .end local v2    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v3    # "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    .end local v5    # "i":I
    .end local v8    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_3
    new-instance v8, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v10, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v11, "CertPathReviewer.totalPathLength"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 681
    invoke-static {v9}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v8, v10, v11, v12}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    .restart local v8    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    invoke-virtual {p0, v8}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;)V

    .line 684
    return-void
.end method

.method private checkPolicy()V
    .locals 74

    .prologue
    .line 1104
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v73

    .line 1114
    .local v73, "userInitialPolicySet":Ljava/util/Set;
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [Ljava/util/ArrayList;

    move-object/from16 v64, v0

    .line 1115
    .local v64, "policyNodes":[Ljava/util/List;
    const/16 v48, 0x0

    .local v48, "j":I
    :goto_0
    move-object/from16 v0, v64

    array-length v5, v0

    move/from16 v0, v48

    if-ge v0, v5, :cond_0

    .line 1117
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v64, v48

    .line 1115
    add-int/lit8 v48, v48, 0x1

    goto :goto_0

    .line 1120
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1122
    .local v7, "policySet":Ljava/util/Set;
    const-string v5, "2.5.29.32.0"

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1124
    new-instance v4, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const-string v10, "2.5.29.32.0"

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1127
    .local v4, "validPolicyTree":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const/4 v5, 0x0

    aget-object v5, v64, v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1134
    const/16 v39, 0x0

    .line 1144
    .local v39, "explicitPolicy":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1146
    const/16 v43, 0x0

    .line 1156
    .local v43, "inhibitAnyPolicy":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1158
    const/16 v63, 0x0

    .line 1165
    .local v63, "policyMapping":I
    :goto_3
    const/16 v29, 0x0

    .line 1171
    .local v29, "acceptablePolicies":Ljava/util/Set;
    const/16 v31, 0x0

    .line 1177
    .local v31, "cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v42, v5, -0x1

    .local v42, "index":I
    :goto_4
    if-ltz v42, :cond_26

    .line 1180
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    sub-int v10, v5, v42

    .line 1183
    .local v10, "i":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move/from16 v0, v42

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object/from16 v31, v0
    :try_end_0
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    :try_start_1
    sget-object v5, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-static {v0, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v32

    check-cast v32, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1198
    .local v32, "certPolicies":Lorg/spongycastle/asn1/ASN1Sequence;
    if-eqz v32, :cond_15

    if-eqz v4, :cond_15

    .line 1203
    :try_start_2
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v38

    .line 1204
    .local v38, "e":Ljava/util/Enumeration;
    new-instance v65, Ljava/util/HashSet;

    invoke-direct/range {v65 .. v65}, Ljava/util/HashSet;-><init>()V

    .line 1206
    .local v65, "pols":Ljava/util/Set;
    :cond_1
    :goto_5
    invoke-interface/range {v38 .. v38}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1208
    invoke-interface/range {v38 .. v38}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v58

    .line 1209
    .local v58, "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v59

    .line 1211
    .local v59, "pOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual/range {v59 .. v59}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v65

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1213
    const-string v5, "2.5.29.32.0"

    invoke-virtual/range {v59 .. v59}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 1218
    :try_start_3
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getQualifierSet(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v66

    .line 1226
    .local v66, "pq":Ljava/util/Set;
    :try_start_4
    move-object/from16 v0, v64

    move-object/from16 v1, v59

    move-object/from16 v2, v66

    invoke-static {v10, v0, v1, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->processCertD1i(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v53

    .line 1228
    .local v53, "match":Z
    if-nez v53, :cond_1

    .line 1230
    move-object/from16 v0, v64

    move-object/from16 v1, v59

    move-object/from16 v2, v66

    invoke-static {v10, v0, v1, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->processCertD1ii(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V
    :try_end_4
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 1810
    .end local v10    # "i":I
    .end local v32    # "certPolicies":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v38    # "e":Ljava/util/Enumeration;
    .end local v42    # "index":I
    .end local v53    # "match":Z
    .end local v58    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    .end local v59    # "pOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v65    # "pols":Ljava/util/Set;
    .end local v66    # "pq":Ljava/util/Set;
    :catch_0
    move-exception v34

    .line 1812
    .local v34, "cpre":Lorg/spongycastle/x509/CertPathReviewerException;
    invoke-virtual/range {v34 .. v34}, Lorg/spongycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/spongycastle/i18n/ErrorBundle;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Lorg/spongycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 1813
    const/4 v4, 0x0

    .line 1815
    .end local v34    # "cpre":Lorg/spongycastle/x509/CertPathReviewerException;
    :goto_6
    return-void

    .line 1138
    .end local v29    # "acceptablePolicies":Ljava/util/Set;
    .end local v31    # "cert":Ljava/security/cert/X509Certificate;
    .end local v39    # "explicitPolicy":I
    .end local v43    # "inhibitAnyPolicy":I
    .end local v63    # "policyMapping":I
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v39, v5, 0x1

    .restart local v39    # "explicitPolicy":I
    goto/16 :goto_1

    .line 1150
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v43, v5, 0x1

    .restart local v43    # "inhibitAnyPolicy":I
    goto/16 :goto_2

    .line 1162
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v63, v5, 0x1

    .restart local v63    # "policyMapping":I
    goto/16 :goto_3

    .line 1193
    .restart local v10    # "i":I
    .restart local v29    # "acceptablePolicies":Ljava/util/Set;
    .restart local v31    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v42    # "index":I
    :catch_1
    move-exception v30

    .line 1195
    .local v30, "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    :try_start_5
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.policyExtError"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    .local v54, "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v0, v54

    move-object/from16 v1, v30

    move/from16 v2, v42

    invoke-direct {v5, v0, v1, v6, v2}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1220
    .end local v30    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v32    # "certPolicies":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v38    # "e":Ljava/util/Enumeration;
    .restart local v58    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    .restart local v59    # "pOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local v65    # "pols":Ljava/util/Set;
    :catch_2
    move-exception v35

    .line 1222
    .local v35, "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.policyQualifierError"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    .restart local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v0, v54

    move-object/from16 v1, v35

    move/from16 v2, v42

    invoke-direct {v5, v0, v1, v6, v2}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1235
    .end local v35    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v58    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    .end local v59    # "pOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_5
    if-eqz v29, :cond_6

    const-string v5, "2.5.29.32.0"

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1237
    :cond_6
    move-object/from16 v29, v65

    .line 1259
    :goto_7
    if-gtz v43, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    if-ge v10, v5, :cond_11

    invoke-static/range {v31 .. v31}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1261
    :cond_7
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v38

    .line 1263
    :cond_8
    invoke-interface/range {v38 .. v38}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1265
    invoke-interface/range {v38 .. v38}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v58

    .line 1267
    .restart local v58    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    const-string v5, "2.5.29.32.0"

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v5

    if-eqz v5, :cond_8

    .line 1272
    :try_start_6
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getQualifierSet(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_6
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v13

    .line 1279
    .local v13, "_apq":Ljava/util/Set;
    add-int/lit8 v5, v10, -0x1

    :try_start_7
    aget-object v23, v64, v5

    .line 1281
    .local v23, "_nodes":Ljava/util/List;
    const/16 v49, 0x0

    .local v49, "k":I
    :goto_8
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v49

    if-ge v0, v5, :cond_11

    .line 1283
    move-object/from16 v0, v23

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1285
    .local v12, "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v12}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 1286
    .local v24, "_policySetIter":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1288
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    .line 1291
    .local v25, "_tmp":Ljava/lang/Object;
    move-object/from16 v0, v25

    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 1293
    move-object/from16 v0, v25

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    .line 1304
    .end local v25    # "_tmp":Ljava/lang/Object;
    .local v14, "_policy":Ljava/lang/String;
    :goto_a
    const/16 v19, 0x0

    .line 1306
    .local v19, "_found":Z
    invoke-virtual {v12}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v18

    .line 1308
    .local v18, "_childrenIter":Ljava/util/Iterator;
    :cond_a
    :goto_b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1310
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1312
    .local v17, "_child":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1314
    const/16 v19, 0x1

    goto :goto_b

    .line 1241
    .end local v12    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v13    # "_apq":Ljava/util/Set;
    .end local v14    # "_policy":Ljava/lang/String;
    .end local v17    # "_child":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v18    # "_childrenIter":Ljava/util/Iterator;
    .end local v19    # "_found":Z
    .end local v23    # "_nodes":Ljava/util/List;
    .end local v24    # "_policySetIter":Ljava/util/Iterator;
    .end local v49    # "k":I
    .end local v58    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    :cond_b
    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v46

    .line 1242
    .local v46, "it":Ljava/util/Iterator;
    new-instance v70, Ljava/util/HashSet;

    invoke-direct/range {v70 .. v70}, Ljava/util/HashSet;-><init>()V

    .line 1244
    .local v70, "t1":Ljava/util/Set;
    :cond_c
    :goto_c
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1246
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    .line 1248
    .local v57, "o":Ljava/lang/Object;
    move-object/from16 v0, v65

    move-object/from16 v1, v57

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1250
    move-object/from16 v0, v70

    move-object/from16 v1, v57

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1254
    .end local v57    # "o":Ljava/lang/Object;
    :cond_d
    move-object/from16 v29, v70

    goto/16 :goto_7

    .line 1274
    .end local v46    # "it":Ljava/util/Iterator;
    .end local v70    # "t1":Ljava/util/Set;
    .restart local v58    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    :catch_3
    move-exception v35

    .line 1276
    .restart local v35    # "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.policyQualifierError"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    .restart local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v0, v54

    move-object/from16 v1, v35

    move/from16 v2, v42

    invoke-direct {v5, v0, v1, v6, v2}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1295
    .end local v35    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v12    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .restart local v13    # "_apq":Ljava/util/Set;
    .restart local v23    # "_nodes":Ljava/util/List;
    .restart local v24    # "_policySetIter":Ljava/util/Iterator;
    .restart local v25    # "_tmp":Ljava/lang/Object;
    .restart local v49    # "k":I
    :cond_e
    move-object/from16 v0, v25

    instance-of v5, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v5, :cond_9

    .line 1297
    check-cast v25, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v25    # "_tmp":Ljava/lang/Object;
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "_policy":Ljava/lang/String;
    goto :goto_a

    .line 1318
    .restart local v18    # "_childrenIter":Ljava/util/Iterator;
    .restart local v19    # "_found":Z
    :cond_f
    if-nez v19, :cond_9

    .line 1320
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1321
    .local v11, "_newChildExpectedPolicies":Ljava/util/Set;
    invoke-interface {v11, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1323
    new-instance v8, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1327
    .local v8, "_newChild":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v12, v8}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 1328
    aget-object v5, v64, v10

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 1281
    .end local v8    # "_newChild":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "_newChildExpectedPolicies":Ljava/util/Set;
    .end local v14    # "_policy":Ljava/lang/String;
    .end local v18    # "_childrenIter":Ljava/util/Iterator;
    .end local v19    # "_found":Z
    :cond_10
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_8

    .line 1340
    .end local v12    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v13    # "_apq":Ljava/util/Set;
    .end local v23    # "_nodes":Ljava/util/List;
    .end local v24    # "_policySetIter":Ljava/util/Iterator;
    .end local v49    # "k":I
    .end local v58    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    :cond_11
    add-int/lit8 v48, v10, -0x1

    :goto_d
    if-ltz v48, :cond_14

    .line 1342
    aget-object v56, v64, v48

    .line 1344
    .local v56, "nodes":Ljava/util/List;
    const/16 v49, 0x0

    .restart local v49    # "k":I
    :goto_e
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v49

    if-ge v0, v5, :cond_12

    .line 1346
    move-object/from16 v0, v56

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1347
    .local v55, "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v55 .. v55}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v5

    if-nez v5, :cond_13

    .line 1349
    move-object/from16 v0, v64

    move-object/from16 v1, v55

    invoke-static {v4, v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v4

    .line 1351
    if-nez v4, :cond_13

    .line 1340
    .end local v55    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_12
    add-int/lit8 v48, v48, -0x1

    goto :goto_d

    .line 1344
    .restart local v55    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_13
    add-int/lit8 v49, v49, 0x1

    goto :goto_e

    .line 1362
    .end local v49    # "k":I
    .end local v55    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v56    # "nodes":Ljava/util/List;
    :cond_14
    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v37

    .line 1364
    .local v37, "criticalExtensionOids":Ljava/util/Set;
    if-eqz v37, :cond_15

    .line 1366
    sget-object v5, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v36

    .line 1368
    .local v36, "critical":Z
    aget-object v56, v64, v10

    .line 1369
    .restart local v56    # "nodes":Ljava/util/List;
    const/16 v48, 0x0

    :goto_f
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v48

    if-ge v0, v5, :cond_15

    .line 1371
    move-object/from16 v0, v56

    move/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1372
    .restart local v55    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v55

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    .line 1369
    add-int/lit8 v48, v48, 0x1

    goto :goto_f

    .line 1380
    .end local v36    # "critical":Z
    .end local v37    # "criticalExtensionOids":Ljava/util/Set;
    .end local v38    # "e":Ljava/util/Enumeration;
    .end local v55    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v56    # "nodes":Ljava/util/List;
    .end local v65    # "pols":Ljava/util/Set;
    :cond_15
    if-nez v32, :cond_16

    .line 1382
    const/4 v4, 0x0

    .line 1387
    :cond_16
    if-gtz v39, :cond_17

    if-nez v4, :cond_17

    .line 1389
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.noValidPolicyTree"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    .restart local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v54

    invoke-direct {v5, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v5

    .line 1397
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_17
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I
    :try_end_7
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_0

    if-eq v10, v5, :cond_25

    .line 1405
    :try_start_8
    sget-object v5, Lorg/spongycastle/x509/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-static {v0, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_8
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v61

    .line 1413
    .local v61, "pm":Lorg/spongycastle/asn1/ASN1Primitive;
    if-eqz v61, :cond_1a

    .line 1415
    :try_start_9
    move-object/from16 v0, v61

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v52, v0

    .line 1416
    .local v52, "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    const/16 v48, 0x0

    :goto_10
    invoke-virtual/range {v52 .. v52}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    move/from16 v0, v48

    if-ge v0, v5, :cond_1a

    .line 1418
    move-object/from16 v0, v52

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v51

    check-cast v51, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 1419
    .local v51, "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v45

    check-cast v45, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 1420
    .local v45, "ip_id":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    const/4 v5, 0x1

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v69

    check-cast v69, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 1421
    .local v69, "sp_id":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    const-string v5, "2.5.29.32.0"

    invoke-virtual/range {v45 .. v45}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1423
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.invalidPolicyMapping"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    .restart local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v0, v54

    move/from16 v1, v42

    invoke-direct {v5, v0, v6, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1407
    .end local v45    # "ip_id":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v51    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v52    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v61    # "pm":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v69    # "sp_id":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :catch_4
    move-exception v30

    .line 1409
    .restart local v30    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.policyMapExtError"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    .restart local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v0, v54

    move-object/from16 v1, v30

    move/from16 v2, v42

    invoke-direct {v5, v0, v1, v6, v2}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1426
    .end local v30    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v45    # "ip_id":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local v51    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v52    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v61    # "pm":Lorg/spongycastle/asn1/ASN1Primitive;
    .restart local v69    # "sp_id":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_18
    const-string v5, "2.5.29.32.0"

    invoke-virtual/range {v69 .. v69}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1428
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.invalidPolicyMapping"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    .restart local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v0, v54

    move/from16 v1, v42

    invoke-direct {v5, v0, v6, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1416
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_19
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_10

    .line 1436
    .end local v45    # "ip_id":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v51    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v52    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v69    # "sp_id":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_1a
    if-eqz v61, :cond_1f

    .line 1438
    move-object/from16 v0, v61

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v52, v0

    .line 1439
    .restart local v52    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    new-instance v50, Ljava/util/HashMap;

    invoke-direct/range {v50 .. v50}, Ljava/util/HashMap;-><init>()V

    .line 1440
    .local v50, "m_idp":Ljava/util/Map;
    new-instance v67, Ljava/util/HashSet;

    invoke-direct/range {v67 .. v67}, Ljava/util/HashSet;-><init>()V

    .line 1442
    .local v67, "s_idp":Ljava/util/Set;
    const/16 v48, 0x0

    :goto_11
    invoke-virtual/range {v52 .. v52}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    move/from16 v0, v48

    if-ge v0, v5, :cond_1c

    .line 1444
    move-object/from16 v0, v52

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v51

    check-cast v51, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 1445
    .restart local v51    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v41

    .line 1446
    .local v41, "id_p":Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v68

    .line 1449
    .local v68, "sd_p":Ljava/lang/String;
    move-object/from16 v0, v50

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 1451
    new-instance v71, Ljava/util/HashSet;

    invoke-direct/range {v71 .. v71}, Ljava/util/HashSet;-><init>()V

    .line 1452
    .local v71, "tmp":Ljava/util/Set;
    move-object/from16 v0, v71

    move-object/from16 v1, v68

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1453
    move-object/from16 v0, v50

    move-object/from16 v1, v41

    move-object/from16 v2, v71

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    move-object/from16 v0, v67

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1442
    :goto_12
    add-int/lit8 v48, v48, 0x1

    goto :goto_11

    .line 1458
    .end local v71    # "tmp":Ljava/util/Set;
    :cond_1b
    move-object/from16 v0, v50

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Ljava/util/Set;

    .line 1459
    .restart local v71    # "tmp":Ljava/util/Set;
    move-object/from16 v0, v71

    move-object/from16 v1, v68

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1463
    .end local v41    # "id_p":Ljava/lang/String;
    .end local v51    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v68    # "sd_p":Ljava/lang/String;
    .end local v71    # "tmp":Ljava/util/Set;
    :cond_1c
    invoke-interface/range {v67 .. v67}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .line 1464
    .local v47, "it_idp":Ljava/util/Iterator;
    :cond_1d
    :goto_13
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1466
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;
    :try_end_9
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1471
    .restart local v41    # "id_p":Ljava/lang/String;
    if-lez v63, :cond_1e

    .line 1475
    :try_start_a
    move-object/from16 v0, v64

    move-object/from16 v1, v41

    move-object/from16 v2, v50

    move-object/from16 v3, v31

    invoke-static {v10, v0, v1, v2, v3}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    :try_end_a
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_13

    .line 1477
    :catch_5
    move-exception v30

    .line 1480
    .restart local v30    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    :try_start_b
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.policyExtError"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    .restart local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v0, v54

    move-object/from16 v1, v30

    move/from16 v2, v42

    invoke-direct {v5, v0, v1, v6, v2}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1483
    .end local v30    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :catch_6
    move-exception v35

    .line 1486
    .restart local v35    # "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.policyQualifierError"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    .restart local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v0, v54

    move-object/from16 v1, v35

    move/from16 v2, v42

    invoke-direct {v5, v0, v1, v6, v2}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1494
    .end local v35    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_1e
    if-gtz v63, :cond_1d

    .line 1496
    move-object/from16 v0, v64

    move-object/from16 v1, v41

    invoke-static {v10, v0, v1, v4}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v4

    goto :goto_13

    .line 1506
    .end local v41    # "id_p":Ljava/lang/String;
    .end local v47    # "it_idp":Ljava/util/Iterator;
    .end local v50    # "m_idp":Ljava/util/Map;
    .end local v52    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v67    # "s_idp":Ljava/util/Set;
    :cond_1f
    invoke-static/range {v31 .. v31}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    :try_end_b
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_0

    move-result v5

    if-nez v5, :cond_22

    .line 1510
    if-eqz v39, :cond_20

    .line 1512
    add-int/lit8 v39, v39, -0x1

    .line 1516
    :cond_20
    if-eqz v63, :cond_21

    .line 1518
    add-int/lit8 v63, v63, -0x1

    .line 1522
    :cond_21
    if-eqz v43, :cond_22

    .line 1524
    add-int/lit8 v43, v43, -0x1

    .line 1535
    :cond_22
    :try_start_c
    sget-object v5, Lorg/spongycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-static {v0, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v60

    check-cast v60, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 1536
    .local v60, "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    if-eqz v60, :cond_24

    .line 1538
    invoke-virtual/range {v60 .. v60}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v62

    .line 1540
    .local v62, "policyConstraints":Ljava/util/Enumeration;
    :cond_23
    :goto_14
    invoke-interface/range {v62 .. v62}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1542
    invoke-interface/range {v62 .. v62}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 1545
    .local v33, "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual/range {v33 .. v33}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_14

    .line 1548
    :pswitch_0
    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-static {v0, v5}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v72

    .line 1549
    .local v72, "tmpInt":I
    move/from16 v0, v72

    move/from16 v1, v39

    if-ge v0, v1, :cond_23

    .line 1551
    move/from16 v39, v72

    goto :goto_14

    .line 1555
    .end local v72    # "tmpInt":I
    :pswitch_1
    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-static {v0, v5}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I
    :try_end_c
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_c} :catch_7
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_0

    move-result v72

    .line 1556
    .restart local v72    # "tmpInt":I
    move/from16 v0, v72

    move/from16 v1, v63

    if-ge v0, v1, :cond_23

    .line 1558
    move/from16 v63, v72

    goto :goto_14

    .line 1565
    .end local v33    # "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .end local v60    # "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v62    # "policyConstraints":Ljava/util/Enumeration;
    .end local v72    # "tmpInt":I
    :catch_7
    move-exception v30

    .line 1567
    .restart local v30    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    :try_start_d
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.policyConstExtError"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    .restart local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v0, v54

    move/from16 v1, v42

    invoke-direct {v5, v0, v6, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v5
    :try_end_d
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_d .. :try_end_d} :catch_0

    .line 1577
    .end local v30    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v60    # "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_24
    :try_start_e
    sget-object v5, Lorg/spongycastle/x509/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-static {v0, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v40

    check-cast v40, Lorg/spongycastle/asn1/ASN1Integer;

    .line 1579
    .local v40, "iap":Lorg/spongycastle/asn1/ASN1Integer;
    if-eqz v40, :cond_25

    .line 1581
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I
    :try_end_e
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_e .. :try_end_e} :catch_8
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_e .. :try_end_e} :catch_0

    move-result v20

    .line 1583
    .local v20, "_inhibitAnyPolicy":I
    move/from16 v0, v20

    move/from16 v1, v43

    if-ge v0, v1, :cond_25

    .line 1585
    move/from16 v43, v20

    .line 1177
    .end local v20    # "_inhibitAnyPolicy":I
    .end local v40    # "iap":Lorg/spongycastle/asn1/ASN1Integer;
    .end local v60    # "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v61    # "pm":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_25
    add-int/lit8 v42, v42, -0x1

    goto/16 :goto_4

    .line 1589
    .restart local v60    # "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v61    # "pm":Lorg/spongycastle/asn1/ASN1Primitive;
    :catch_8
    move-exception v30

    .line 1591
    .restart local v30    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    :try_start_f
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.policyInhibitExtError"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    .restart local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v0, v54

    move/from16 v1, v42

    invoke-direct {v5, v0, v6, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1606
    .end local v10    # "i":I
    .end local v30    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v32    # "certPolicies":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v60    # "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v61    # "pm":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_26
    invoke-static/range {v31 .. v31}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    :try_end_f
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_f .. :try_end_f} :catch_0

    move-result v5

    if-nez v5, :cond_27

    if-lez v39, :cond_27

    .line 1608
    add-int/lit8 v39, v39, -0x1

    .line 1617
    :cond_27
    :try_start_10
    sget-object v5, Lorg/spongycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-static {v0, v5}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v60

    check-cast v60, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 1618
    .restart local v60    # "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    if-eqz v60, :cond_29

    .line 1620
    invoke-virtual/range {v60 .. v60}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v62

    .line 1622
    .restart local v62    # "policyConstraints":Ljava/util/Enumeration;
    :cond_28
    :goto_15
    invoke-interface/range {v62 .. v62}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1624
    invoke-interface/range {v62 .. v62}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 1625
    .restart local v33    # "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual/range {v33 .. v33}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_15

    .line 1628
    :pswitch_2
    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-static {v0, v5}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I
    :try_end_10
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_10 .. :try_end_10} :catch_0

    move-result v72

    .line 1629
    .restart local v72    # "tmpInt":I
    if-nez v72, :cond_28

    .line 1631
    const/16 v39, 0x0

    goto :goto_15

    .line 1638
    .end local v33    # "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .end local v60    # "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v62    # "policyConstraints":Ljava/util/Enumeration;
    .end local v72    # "tmpInt":I
    :catch_9
    move-exception v38

    .line 1640
    .local v38, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :try_start_11
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.policyConstExtError"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    .restart local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v0, v54

    move/from16 v1, v42

    invoke-direct {v5, v0, v6, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1654
    .end local v38    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v60    # "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_29
    if-nez v4, :cond_2b

    .line 1656
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1658
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.explicitPolicy"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    .restart local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v0, v54

    move/from16 v1, v42

    invoke-direct {v5, v0, v6, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1661
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_2a
    const/16 v44, 0x0

    .line 1802
    .local v44, "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :goto_16
    if-gtz v39, :cond_3f

    if-nez v44, :cond_3f

    .line 1804
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.invalidPolicy"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    .restart local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v54

    invoke-direct {v5, v0}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v5

    .line 1663
    .end local v44    # "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_2b
    invoke-static/range {v73 .. v73}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1665
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1667
    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1669
    new-instance v54, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.explicitPolicy"

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    .restart local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v0, v54

    move/from16 v1, v42

    invoke-direct {v5, v0, v6, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1674
    .end local v54    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_2c
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 1676
    .local v27, "_validPolicyNodeSet":Ljava/util/Set;
    const/16 v48, 0x0

    :goto_17
    move-object/from16 v0, v64

    array-length v5, v0

    move/from16 v0, v48

    if-ge v0, v5, :cond_2f

    .line 1678
    aget-object v22, v64, v48

    .line 1680
    .local v22, "_nodeDepth":Ljava/util/List;
    const/16 v49, 0x0

    .restart local v49    # "k":I
    :goto_18
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v49

    if-ge v0, v5, :cond_2e

    .line 1682
    move-object/from16 v0, v22

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1684
    .restart local v12    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const-string v5, "2.5.29.32.0"

    invoke-virtual {v12}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1686
    invoke-virtual {v12}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v21

    .line 1687
    .local v21, "_iter":Ljava/util/Iterator;
    :goto_19
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1689
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1680
    .end local v21    # "_iter":Ljava/util/Iterator;
    :cond_2d
    add-int/lit8 v49, v49, 0x1

    goto :goto_18

    .line 1676
    .end local v12    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_2e
    add-int/lit8 v48, v48, 0x1

    goto :goto_17

    .line 1695
    .end local v22    # "_nodeDepth":Ljava/util/List;
    .end local v49    # "k":I
    :cond_2f
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .line 1696
    .local v28, "_vpnsIter":Ljava/util/Iterator;
    :cond_30
    :goto_1a
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1698
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1699
    .restart local v12    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v12}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v26

    .line 1701
    .local v26, "_validPolicy":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_1a

    .line 1706
    .end local v12    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v26    # "_validPolicy":Ljava/lang/String;
    :cond_31
    if-eqz v4, :cond_34

    .line 1708
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v48, v5, -0x1

    :goto_1b
    if-ltz v48, :cond_34

    .line 1710
    aget-object v56, v64, v48

    .line 1712
    .restart local v56    # "nodes":Ljava/util/List;
    const/16 v49, 0x0

    .restart local v49    # "k":I
    :goto_1c
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v49

    if-ge v0, v5, :cond_33

    .line 1714
    move-object/from16 v0, v56

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1715
    .restart local v55    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v55 .. v55}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v5

    if-nez v5, :cond_32

    .line 1717
    move-object/from16 v0, v64

    move-object/from16 v1, v55

    invoke-static {v4, v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v4

    .line 1712
    :cond_32
    add-int/lit8 v49, v49, 0x1

    goto :goto_1c

    .line 1708
    .end local v55    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_33
    add-int/lit8 v48, v48, -0x1

    goto :goto_1b

    .line 1725
    .end local v27    # "_validPolicyNodeSet":Ljava/util/Set;
    .end local v28    # "_vpnsIter":Ljava/util/Iterator;
    .end local v49    # "k":I
    .end local v56    # "nodes":Ljava/util/List;
    :cond_34
    move-object/from16 v44, v4

    .restart local v44    # "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_16

    .line 1739
    .end local v44    # "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_35
    new-instance v27, Ljava/util/HashSet;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashSet;-><init>()V

    .line 1741
    .restart local v27    # "_validPolicyNodeSet":Ljava/util/Set;
    const/16 v48, 0x0

    :goto_1d
    move-object/from16 v0, v64

    array-length v5, v0

    move/from16 v0, v48

    if-ge v0, v5, :cond_39

    .line 1743
    aget-object v22, v64, v48

    .line 1745
    .restart local v22    # "_nodeDepth":Ljava/util/List;
    const/16 v49, 0x0

    .restart local v49    # "k":I
    :goto_1e
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v49

    if-ge v0, v5, :cond_38

    .line 1747
    move-object/from16 v0, v22

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1749
    .restart local v12    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const-string v5, "2.5.29.32.0"

    invoke-virtual {v12}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1751
    invoke-virtual {v12}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v21

    .line 1752
    .restart local v21    # "_iter":Ljava/util/Iterator;
    :cond_36
    :goto_1f
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1754
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1755
    .local v16, "_c_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const-string v5, "2.5.29.32.0"

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 1757
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 1745
    .end local v16    # "_c_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v21    # "_iter":Ljava/util/Iterator;
    :cond_37
    add-int/lit8 v49, v49, 0x1

    goto :goto_1e

    .line 1741
    .end local v12    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_38
    add-int/lit8 v48, v48, 0x1

    goto :goto_1d

    .line 1767
    .end local v22    # "_nodeDepth":Ljava/util/List;
    .end local v49    # "k":I
    :cond_39
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .line 1768
    .restart local v28    # "_vpnsIter":Ljava/util/Iterator;
    :cond_3a
    :goto_20
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1770
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1771
    .restart local v12    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v12}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v26

    .line 1773
    .restart local v26    # "_validPolicy":Ljava/lang/String;
    move-object/from16 v0, v73

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 1775
    move-object/from16 v0, v64

    invoke-static {v4, v0, v12}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v4

    goto :goto_20

    .line 1782
    .end local v12    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v26    # "_validPolicy":Ljava/lang/String;
    :cond_3b
    if-eqz v4, :cond_3e

    .line 1784
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v48, v5, -0x1

    :goto_21
    if-ltz v48, :cond_3e

    .line 1786
    aget-object v56, v64, v48

    .line 1788
    .restart local v56    # "nodes":Ljava/util/List;
    const/16 v49, 0x0

    .restart local v49    # "k":I
    :goto_22
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v49

    if-ge v0, v5, :cond_3d

    .line 1790
    move-object/from16 v0, v56

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1791
    .restart local v55    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v55 .. v55}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v5

    if-nez v5, :cond_3c

    .line 1793
    move-object/from16 v0, v64

    move-object/from16 v1, v55

    invoke-static {v4, v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :try_end_11
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_11 .. :try_end_11} :catch_0

    move-result-object v4

    .line 1788
    :cond_3c
    add-int/lit8 v49, v49, 0x1

    goto :goto_22

    .line 1784
    .end local v55    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_3d
    add-int/lit8 v48, v48, -0x1

    goto :goto_21

    .line 1799
    .end local v49    # "k":I
    .end local v56    # "nodes":Ljava/util/List;
    :cond_3e
    move-object/from16 v44, v4

    .restart local v44    # "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_16

    .line 1808
    .end local v27    # "_validPolicyNodeSet":Ljava/util/Set;
    .end local v28    # "_vpnsIter":Ljava/util/Iterator;
    :cond_3f
    move-object/from16 v4, v44

    goto/16 :goto_6

    .line 1545
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1625
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private checkSignatures()V
    .locals 46

    .prologue
    .line 696
    const/16 v33, 0x0

    .line 697
    .local v33, "trust":Ljava/security/cert/TrustAnchor;
    const/16 v35, 0x0

    .line 701
    .local v35, "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.certPathValidDate"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v43, 0x0

    new-instance v44, Lorg/spongycastle/i18n/filter/TrustedInput;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    move-object/from16 v45, v0

    invoke-direct/range {v44 .. v45}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v44, v5, v43

    const/16 v43, 0x1

    new-instance v44, Lorg/spongycastle/i18n/filter/TrustedInput;

    new-instance v45, Ljava/util/Date;

    invoke-direct/range {v45 .. v45}, Ljava/util/Date;-><init>()V

    invoke-direct/range {v44 .. v45}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v44, v5, v43

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    .local v29, "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;)V

    .line 709
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 710
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v34

    .line 711
    .local v34, "trustColl":Ljava/util/Collection;
    invoke-interface/range {v34 .. v34}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 714
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.conflictingTrustAnchors"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v43, 0x0

    .line 716
    invoke-interface/range {v34 .. v34}, Ljava/util/Collection;->size()I

    move-result v44

    invoke-static/range {v44 .. v44}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v5, v43

    const/16 v43, 0x1

    new-instance v44, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 717
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v44, v5, v43

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V
    :try_end_0
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 768
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v34    # "trustColl":Ljava/util/Collection;
    :goto_0
    if-eqz v33, :cond_0

    .line 771
    invoke-virtual/range {v33 .. v33}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 774
    .local v6, "sign":Ljava/security/cert/X509Certificate;
    if-eqz v6, :cond_7

    .line 776
    :try_start_1
    invoke-static {v6}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v35

    .line 791
    :goto_1
    if-eqz v6, :cond_0

    .line 793
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v28

    .line 794
    .local v28, "ku":[Z
    if-eqz v28, :cond_0

    const/4 v2, 0x5

    aget-boolean v2, v28, v2

    if-nez v2, :cond_0

    .line 796
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.trustKeyUsage"

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;)V

    .line 804
    .end local v6    # "sign":Ljava/security/cert/X509Certificate;
    .end local v28    # "ku":[Z
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_0
    const/4 v7, 0x0

    .line 805
    .local v7, "workingPublicKey":Ljava/security/PublicKey;
    move-object/from16 v40, v35

    .line 807
    .local v40, "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    const/4 v6, 0x0

    .line 809
    .restart local v6    # "sign":Ljava/security/cert/X509Certificate;
    const/16 v39, 0x0

    .line 810
    .local v39, "workingAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    const/16 v41, 0x0

    .line 811
    .local v41, "workingPublicKeyAlgorithm":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    const/16 v42, 0x0

    .line 813
    .local v42, "workingPublicKeyParameters":Lorg/spongycastle/asn1/ASN1Encodable;
    if-eqz v33, :cond_1

    .line 815
    invoke-virtual/range {v33 .. v33}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 817
    if-eqz v6, :cond_8

    .line 819
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 828
    :goto_2
    :try_start_2
    invoke-static {v7}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v39

    .line 829
    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v41

    .line 830
    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v42

    .line 843
    :cond_1
    :goto_3
    const/4 v4, 0x0

    .line 846
    .restart local v4    # "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    .local v10, "index":I
    :goto_4
    if-ltz v10, :cond_14

    .line 851
    move-object/from16 v0, p0

    iget v2, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    sub-int v26, v2, v10

    .line 859
    .local v26, "i":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 862
    .restart local v4    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_9

    .line 866
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 867
    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v2

    .line 866
    invoke-static {v4, v7, v2}, Lorg/spongycastle/x509/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_5

    .line 920
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-virtual {v4, v2}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_4 .. :try_end_4} :catch_8

    .line 936
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 939
    const/16 v21, 0x0

    .line 942
    .local v21, "crlDistPoints":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_start_5
    sget-object v2, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    invoke-static {v4, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v22

    .line 943
    .local v22, "crl_dp":Lorg/spongycastle/asn1/ASN1Primitive;
    if-eqz v22, :cond_2

    .line 945
    invoke-static/range {v22 .. v22}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_9

    move-result-object v21

    .line 955
    .end local v22    # "crl_dp":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_2
    :goto_7
    const/4 v15, 0x0

    .line 958
    .local v15, "authInfoAcc":Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;
    :try_start_6
    sget-object v2, Lorg/spongycastle/x509/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    invoke-static {v4, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v16

    .line 959
    .local v16, "auth_info_acc":Lorg/spongycastle/asn1/ASN1Primitive;
    if-eqz v16, :cond_3

    .line 961
    invoke-static/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;
    :try_end_6
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_a

    move-result-object v15

    .line 970
    .end local v16    # "auth_info_acc":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_3
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getCRLDistUrls(Lorg/spongycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;

    move-result-object v8

    .line 971
    .local v8, "crlDistPointUrls":Ljava/util/Vector;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getOCSPUrls(Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;

    move-result-object v9

    .line 976
    .local v9, "ocspUrls":Ljava/util/Vector;
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .line 977
    .local v38, "urlIt":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 979
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.crlDistPoint"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v43, 0x0

    new-instance v44, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;

    .line 980
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    aput-object v44, v5, v43

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 981
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto :goto_9

    .line 720
    .end local v6    # "sign":Ljava/security/cert/X509Certificate;
    .end local v7    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v8    # "crlDistPointUrls":Ljava/util/Vector;
    .end local v9    # "ocspUrls":Ljava/util/Vector;
    .end local v10    # "index":I
    .end local v15    # "authInfoAcc":Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;
    .end local v21    # "crlDistPoints":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    .end local v26    # "i":I
    .end local v38    # "urlIt":Ljava/util/Iterator;
    .end local v39    # "workingAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v40    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .end local v41    # "workingPublicKeyAlgorithm":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v42    # "workingPublicKeyParameters":Lorg/spongycastle/asn1/ASN1Encodable;
    .restart local v34    # "trustColl":Ljava/util/Collection;
    :cond_4
    :try_start_7
    invoke-interface/range {v34 .. v34}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 722
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noTrustAnchorFound"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v43, 0x0

    new-instance v44, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 724
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v44, v5, v43

    const/16 v43, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object/from16 v44, v0

    .line 725
    invoke-virtual/range {v44 .. v44}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Ljava/util/Set;->size()I

    move-result v44

    invoke-static/range {v44 .. v44}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    aput-object v44, v5, v43

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V
    :try_end_7
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 756
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v34    # "trustColl":Ljava/util/Collection;
    :catch_0
    move-exception v20

    .line 758
    .local v20, "cpre":Lorg/spongycastle/x509/CertPathReviewerException;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/spongycastle/i18n/ErrorBundle;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V

    goto/16 :goto_0

    .line 731
    .end local v20    # "cpre":Lorg/spongycastle/x509/CertPathReviewerException;
    .restart local v4    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v34    # "trustColl":Ljava/util/Collection;
    :cond_5
    :try_start_8
    invoke-interface/range {v34 .. v34}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/security/cert/TrustAnchor;

    move-object/from16 v33, v0

    .line 732
    invoke-virtual/range {v33 .. v33}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 734
    invoke-virtual/range {v33 .. v33}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_8
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v37

    .line 742
    .local v37, "trustPublicKey":Ljava/security/PublicKey;
    :goto_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 743
    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v2

    .line 742
    move-object/from16 v0, v37

    invoke-static {v4, v0, v2}, Lorg/spongycastle/x509/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/security/SignatureException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 745
    :catch_1
    move-exception v23

    .line 747
    .local v23, "e":Ljava/security/SignatureException;
    :try_start_a
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.trustButInvalidCert"

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V
    :try_end_a
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    .line 760
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v23    # "e":Ljava/security/SignatureException;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v34    # "trustColl":Ljava/util/Collection;
    .end local v37    # "trustPublicKey":Ljava/security/PublicKey;
    :catch_2
    move-exception v32

    .line 762
    .local v32, "t":Ljava/lang/Throwable;
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.unknown"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v43, 0x0

    new-instance v44, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 764
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v44, v5, v43

    const/16 v43, 0x1

    new-instance v44, Lorg/spongycastle/i18n/filter/UntrustedInput;

    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v44, v5, v43

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V

    goto/16 :goto_0

    .line 738
    .end local v32    # "t":Ljava/lang/Throwable;
    .restart local v4    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v34    # "trustColl":Ljava/util/Collection;
    :cond_6
    :try_start_b
    invoke-virtual/range {v33 .. v33}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_b
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    move-result-object v37

    .restart local v37    # "trustPublicKey":Ljava/security/PublicKey;
    goto :goto_a

    .line 780
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v34    # "trustColl":Ljava/util/Collection;
    .end local v37    # "trustPublicKey":Ljava/security/PublicKey;
    .restart local v6    # "sign":Ljava/security/cert/X509Certificate;
    :cond_7
    :try_start_c
    new-instance v36, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {v33 .. v33}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-direct {v0, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_3

    .end local v35    # "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    .local v36, "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    move-object/from16 v35, v36

    .end local v36    # "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    .restart local v35    # "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    goto/16 :goto_1

    .line 783
    :catch_3
    move-exception v24

    .line 785
    .local v24, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.trustDNInvalid"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v43, 0x0

    new-instance v44, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 786
    invoke-virtual/range {v33 .. v33}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v44, v5, v43

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V

    goto/16 :goto_1

    .line 823
    .end local v24    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v7    # "workingPublicKey":Ljava/security/PublicKey;
    .restart local v39    # "workingAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v40    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .restart local v41    # "workingPublicKeyAlgorithm":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local v42    # "workingPublicKeyParameters":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_8
    invoke-virtual/range {v33 .. v33}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    goto/16 :goto_2

    .line 832
    :catch_4
    move-exception v24

    .line 834
    .local v24, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.trustPubKeyError"

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;)V

    .line 836
    const/16 v39, 0x0

    goto/16 :goto_3

    .line 869
    .end local v24    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v4    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v10    # "index":I
    .restart local v26    # "i":I
    :catch_5
    move-exception v24

    .line 871
    .local v24, "ex":Ljava/security/GeneralSecurityException;
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.signatureNotVerified"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v43, 0x0

    .line 872
    invoke-virtual/range {v24 .. v24}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v44

    aput-object v44, v5, v43

    const/16 v43, 0x1

    aput-object v24, v5, v43

    const/16 v43, 0x2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    aput-object v44, v5, v43

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_5

    .line 876
    .end local v24    # "ex":Ljava/security/GeneralSecurityException;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_9
    invoke-static {v4}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 880
    :try_start_d
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 881
    invoke-virtual {v3}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v3

    .line 880
    invoke-static {v4, v2, v3}, Lorg/spongycastle/x509/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 882
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_d
    .catch Ljava/security/GeneralSecurityException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_5

    .line 885
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :catch_6
    move-exception v24

    .line 887
    .restart local v24    # "ex":Ljava/security/GeneralSecurityException;
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.signatureNotVerified"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v43, 0x0

    .line 888
    invoke-virtual/range {v24 .. v24}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v44

    aput-object v44, v5, v43

    const/16 v43, 0x1

    aput-object v24, v5, v43

    const/16 v43, 0x2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v44

    aput-object v44, v5, v43

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 889
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_5

    .line 894
    .end local v24    # "ex":Ljava/security/GeneralSecurityException;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_a
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.NoIssuerPublicKey"

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    sget-object v2, Lorg/spongycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v14

    .line 897
    .local v14, "akiBytes":[B
    if-eqz v14, :cond_b

    .line 900
    invoke-static {v14}, Lorg/spongycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    .line 899
    invoke-static {v2}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v13

    .line 901
    .local v13, "aki":Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v13}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v27

    .line 902
    .local v27, "issuerNames":Lorg/spongycastle/asn1/x509/GeneralNames;
    if-eqz v27, :cond_b

    .line 904
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v30, v2, v3

    .line 905
    .local v30, "name":Lorg/spongycastle/asn1/x509/GeneralName;
    invoke-virtual {v13}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v31

    .line 906
    .local v31, "serial":Ljava/math/BigInteger;
    if-eqz v31, :cond_b

    .line 908
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/4 v2, 0x0

    new-instance v3, Lorg/spongycastle/i18n/LocaleString;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v43, "missingIssuer"

    move-object/from16 v0, v43

    invoke-direct {v3, v5, v0}, Lorg/spongycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v25, v2

    const/4 v2, 0x1

    const-string v3, " \""

    aput-object v3, v25, v2

    const/4 v2, 0x2

    aput-object v30, v25, v2

    const/4 v2, 0x3

    const-string v3, "\" "

    aput-object v3, v25, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/spongycastle/i18n/LocaleString;

    const-string v5, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v43, "missingSerial"

    move-object/from16 v0, v43

    invoke-direct {v3, v5, v0}, Lorg/spongycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v25, v2

    const/4 v2, 0x5

    const-string v3, " "

    aput-object v3, v25, v2

    const/4 v2, 0x6

    aput-object v31, v25, v2

    .line 910
    .local v25, "extraArgs":[Ljava/lang/Object;
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/spongycastle/i18n/ErrorBundle;->setExtraArguments([Ljava/lang/Object;)V

    .line 914
    .end local v13    # "aki":Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    .end local v25    # "extraArgs":[Ljava/lang/Object;
    .end local v27    # "issuerNames":Lorg/spongycastle/asn1/x509/GeneralNames;
    .end local v30    # "name":Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v31    # "serial":Ljava/math/BigInteger;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_5

    .line 922
    .end local v14    # "akiBytes":[B
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :catch_7
    move-exception v19

    .line 924
    .local v19, "cnve":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.certificateNotYetValid"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v43, 0x0

    new-instance v44, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 925
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v44, v5, v43

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 926
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_6

    .line 928
    .end local v19    # "cnve":Ljava/security/cert/CertificateNotYetValidException;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :catch_8
    move-exception v18

    .line 930
    .local v18, "cee":Ljava/security/cert/CertificateExpiredException;
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.certificateExpired"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v43, 0x0

    new-instance v44, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 931
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v44, v5, v43

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 932
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_6

    .line 948
    .end local v18    # "cee":Ljava/security/cert/CertificateExpiredException;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v21    # "crlDistPoints":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :catch_9
    move-exception v12

    .line 950
    .local v12, "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.crlDistPtExtError"

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_7

    .line 964
    .end local v12    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v15    # "authInfoAcc":Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;
    :catch_a
    move-exception v12

    .line 966
    .restart local v12    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.crlAuthInfoAccError"

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_8

    .line 985
    .end local v12    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v8    # "crlDistPointUrls":Ljava/util/Vector;
    .restart local v9    # "ocspUrls":Ljava/util/Vector;
    .restart local v38    # "urlIt":Ljava/util/Iterator;
    :cond_c
    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .line 986
    :goto_b
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 988
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.ocspLocation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v43, 0x0

    new-instance v44, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;

    .line 989
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    aput-object v44, v5, v43

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 990
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto :goto_b

    .line 997
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_d
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    :try_end_e
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_e .. :try_end_e} :catch_b

    .line 1006
    .end local v8    # "crlDistPointUrls":Ljava/util/Vector;
    .end local v9    # "ocspUrls":Ljava/util/Vector;
    .end local v15    # "authInfoAcc":Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;
    .end local v21    # "crlDistPoints":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    .end local v38    # "urlIt":Ljava/util/Iterator;
    :cond_e
    :goto_c
    if-eqz v40, :cond_f

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1008
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.certWrongIssuer"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v43, 0x0

    .line 1009
    invoke-virtual/range {v40 .. v40}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v44

    aput-object v44, v5, v43

    const/16 v43, 0x1

    .line 1010
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v44

    aput-object v44, v5, v43

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3, v5}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 1017
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    move/from16 v0, v26

    if-eq v0, v2, :cond_12

    .line 1020
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 1022
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noCACert"

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 1031
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_10
    :try_start_f
    sget-object v2, Lorg/spongycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v4, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;

    move-result-object v17

    .line 1033
    .local v17, "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    if-eqz v17, :cond_13

    .line 1035
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1037
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noCACert"

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_f
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_f .. :try_end_f} :catch_c

    .line 1055
    .end local v17    # "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_11
    :goto_d
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v11

    .line 1057
    .local v11, "_usage":[Z
    if-eqz v11, :cond_12

    const/4 v2, 0x5

    aget-boolean v2, v11, v2

    if-nez v2, :cond_12

    .line 1059
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noCertSign"

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 1066
    .end local v11    # "_usage":[Z
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_12
    move-object v6, v4

    .line 1070
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v40

    .line 1076
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-static {v2, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v7

    .line 1077
    invoke-static {v7}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v39

    .line 1078
    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v41

    .line 1079
    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;
    :try_end_10
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_10 .. :try_end_10} :catch_d

    move-result-object v42

    .line 846
    :goto_e
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_4

    .line 999
    .restart local v8    # "crlDistPointUrls":Ljava/util/Vector;
    .restart local v9    # "ocspUrls":Ljava/util/Vector;
    .restart local v15    # "authInfoAcc":Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;
    .restart local v21    # "crlDistPoints":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    .restart local v38    # "urlIt":Ljava/util/Iterator;
    :catch_b
    move-exception v20

    .line 1001
    .restart local v20    # "cpre":Lorg/spongycastle/x509/CertPathReviewerException;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/spongycastle/i18n/ErrorBundle;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_c

    .line 1043
    .end local v8    # "crlDistPointUrls":Ljava/util/Vector;
    .end local v9    # "ocspUrls":Ljava/util/Vector;
    .end local v15    # "authInfoAcc":Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;
    .end local v20    # "cpre":Lorg/spongycastle/x509/CertPathReviewerException;
    .end local v21    # "crlDistPoints":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    .end local v38    # "urlIt":Ljava/util/Iterator;
    .restart local v17    # "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    :cond_13
    :try_start_11
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noBasicConstraints"

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_11
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_d

    .line 1047
    .end local v17    # "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :catch_c
    move-exception v12

    .line 1049
    .restart local v12    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.errorProcesingBC"

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto :goto_d

    .line 1081
    .end local v12    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :catch_d
    move-exception v24

    .line 1083
    .local v24, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v29, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.pubKeyError"

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 1085
    const/16 v39, 0x0

    .line 1086
    const/16 v41, 0x0

    .line 1087
    const/16 v42, 0x0

    goto :goto_e

    .line 1092
    .end local v24    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v26    # "i":I
    .end local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_14
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 1093
    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    .line 1094
    return-void

    .line 750
    .end local v6    # "sign":Ljava/security/cert/X509Certificate;
    .end local v7    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v10    # "index":I
    .end local v39    # "workingAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v40    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .end local v41    # "workingPublicKeyAlgorithm":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v42    # "workingPublicKeyParameters":Lorg/spongycastle/asn1/ASN1Encodable;
    .restart local v29    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v34    # "trustColl":Ljava/util/Collection;
    .restart local v37    # "trustPublicKey":Ljava/security/PublicKey;
    :catch_e
    move-exception v2

    goto/16 :goto_0
.end method

.method private getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 12
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2448
    const/4 v4, 0x0

    .line 2451
    .local v4, "result":Ljava/security/cert/X509CRL;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2453
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2455
    :cond_0
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 2456
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2458
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2459
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 2460
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_2

    .line 2462
    const-string v6, "X.509"

    const-string v7, "SC"

    invoke-static {v6, v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 2463
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v4

    .end local v4    # "result":Ljava/security/cert/X509CRL;
    check-cast v4, Ljava/security/cert/X509CRL;

    .line 2479
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "result":Ljava/security/cert/X509CRL;
    :cond_1
    return-object v4

    .line 2467
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    :cond_2
    new-instance v6, Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2471
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "result":Ljava/security/cert/X509CRL;
    .end local v5    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 2473
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v6, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.loadCrlDistPointError"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Lorg/spongycastle/i18n/filter/UntrustedInput;

    invoke-direct {v9, p1}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v8, v10

    .line 2476
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    aput-object v2, v8, v9

    const/4 v9, 0x3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v3, v6, v7, v8}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2477
    .local v3, "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v6, v3}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v6
.end method

.method private processQcStatements(Ljava/security/cert/X509Certificate;I)Z
    .locals 18
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "index"    # I

    .prologue
    .line 1918
    const/4 v9, 0x0

    .line 1920
    .local v9, "unknownStatement":Z
    :try_start_0
    sget-object v12, Lorg/spongycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 1921
    .local v7, "qcSt":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    if-ge v4, v12, :cond_5

    .line 1923
    invoke-virtual {v7, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/qualified/QCStatement;

    move-result-object v8

    .line 1924
    .local v8, "stmt":Lorg/spongycastle/asn1/x509/qualified/QCStatement;
    sget-object v12, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcCompliance:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1927
    new-instance v6, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v12, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.QcEuCompliance"

    invoke-direct {v6, v12, v13}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    .local v6, "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 1921
    .end local v6    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1930
    :cond_1
    sget-object v12, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->id_qcs_pkixQCSyntax_v1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1934
    sget-object v12, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcSSCD:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1937
    new-instance v6, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v12, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.QcSSCD"

    invoke-direct {v6, v12, v13}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    .restart local v6    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1974
    .end local v4    # "j":I
    .end local v6    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v7    # "qcSt":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v8    # "stmt":Lorg/spongycastle/asn1/x509/qualified/QCStatement;
    :catch_0
    move-exception v2

    .line 1976
    .local v2, "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v6, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v12, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.QcStatementExtError"

    invoke-direct {v6, v12, v13}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    .restart local v6    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 1980
    const/4 v12, 0x0

    .end local v2    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v6    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :goto_2
    return v12

    .line 1940
    .restart local v4    # "j":I
    .restart local v7    # "qcSt":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v8    # "stmt":Lorg/spongycastle/asn1/x509/qualified/QCStatement;
    :cond_2
    :try_start_1
    sget-object v12, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_LimiteValue:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1943
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->getStatementInfo()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;

    move-result-object v5

    .line 1944
    .local v5, "limit":Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v3

    .line 1945
    .local v3, "currency":Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->getAmount()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v12

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->getExponent()Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v10, v12, v14

    .line 1947
    .local v10, "value":D
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v12

    invoke-virtual {v12}, Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;->isAlphabetic()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1949
    new-instance v6, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v12, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.QcLimitValueAlpha"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 1950
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getAlphabetic()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Lorg/spongycastle/i18n/filter/TrustedInput;

    new-instance v17, Ljava/lang/Double;

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v11}, Ljava/lang/Double;-><init>(D)V

    invoke-direct/range {v16 .. v17}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object v5, v14, v15

    invoke-direct {v6, v12, v13, v14}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1961
    .restart local v6    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_1

    .line 1956
    .end local v6    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_3
    new-instance v6, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v12, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.QcLimitValueNum"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 1957
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getNumeric()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Lorg/spongycastle/i18n/filter/TrustedInput;

    new-instance v17, Ljava/lang/Double;

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v11}, Ljava/lang/Double;-><init>(D)V

    invoke-direct/range {v16 .. v17}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object v5, v14, v15

    invoke-direct {v6, v12, v13, v14}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .restart local v6    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    goto :goto_3

    .line 1965
    .end local v3    # "currency":Lorg/spongycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    .end local v5    # "limit":Lorg/spongycastle/asn1/x509/qualified/MonetaryValue;
    .end local v6    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v10    # "value":D
    :cond_4
    new-instance v6, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v12, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.QcUnknownStatement"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 1966
    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    new-instance v16, Lorg/spongycastle/i18n/filter/UntrustedInput;

    move-object/from16 v0, v16

    invoke-direct {v0, v8}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v16, v14, v15

    invoke-direct {v6, v12, v13, v14}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1967
    .restart local v6    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1968
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 1972
    .end local v6    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v8    # "stmt":Lorg/spongycastle/asn1/x509/qualified/QCStatement;
    :cond_5
    if-nez v9, :cond_6

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method protected addError(Lorg/spongycastle/i18n/ErrorBundle;)V
    .locals 2
    .param p1, "msg"    # Lorg/spongycastle/i18n/ErrorBundle;

    .prologue
    .line 333
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    return-void
.end method

.method protected addError(Lorg/spongycastle/i18n/ErrorBundle;I)V
    .locals 2
    .param p1, "msg"    # Lorg/spongycastle/i18n/ErrorBundle;
    .param p2, "index"    # I

    .prologue
    .line 338
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    if-lt p2, v0, :cond_1

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 342
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method protected addNotification(Lorg/spongycastle/i18n/ErrorBundle;)V
    .locals 2
    .param p1, "msg"    # Lorg/spongycastle/i18n/ErrorBundle;

    .prologue
    .line 319
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    return-void
.end method

.method protected addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V
    .locals 2
    .param p1, "msg"    # Lorg/spongycastle/i18n/ErrorBundle;
    .param p2, "index"    # I

    .prologue
    .line 324
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    if-lt p2, v0, :cond_1

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 328
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    return-void
.end method

.method protected checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V
    .locals 38
    .param p1, "paramsPKIX"    # Ljava/security/cert/PKIXParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "validDate"    # Ljava/util/Date;
    .param p4, "sign"    # Ljava/security/cert/X509Certificate;
    .param p5, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p6, "crlDistPointUrls"    # Ljava/util/Vector;
    .param p7, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .prologue
    .line 2030
    new-instance v14, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v14}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 2034
    .local v14, "crlselect":Lorg/spongycastle/x509/X509CRLStoreSelector;
    :try_start_0
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2042
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 2047
    :try_start_1
    sget-object v32, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CRL_UTIL:Lorg/spongycastle/x509/PKIXCRLUtil;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lorg/spongycastle/x509/PKIXCRLUtil;->findCRLs(Lorg/spongycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v11

    .line 2048
    .local v11, "crl_coll":Ljava/util/Collection;
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 2050
    .local v13, "crl_iter":Ljava/util/Iterator;
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v32

    if-eqz v32, :cond_0

    .line 2053
    sget-object v32, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CRL_UTIL:Lorg/spongycastle/x509/PKIXCRLUtil;

    new-instance v33, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct/range {v33 .. v33}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/x509/PKIXCRLUtil;->findCRLs(Lorg/spongycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v11

    .line 2054
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 2055
    .local v19, "it":Ljava/util/Iterator;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 2056
    .local v24, "nonMatchingCrlNames":Ljava/util/List;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_4

    .line 2058
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/security/cert/X509CRL;

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2070
    .end local v11    # "crl_coll":Ljava/util/Collection;
    .end local v13    # "crl_iter":Ljava/util/Iterator;
    .end local v19    # "it":Ljava/util/Iterator;
    .end local v24    # "nonMatchingCrlNames":Ljava/util/List;
    :catch_0
    move-exception v4

    .line 2072
    .local v4, "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.crlExtractionError"

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    .line 2073
    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x2

    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2074
    .local v23, "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addError(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 2075
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 2077
    .end local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v13    # "crl_iter":Ljava/util/Iterator;
    :cond_0
    :goto_1
    const/16 v31, 0x0

    .line 2078
    .local v31, "validCrlFound":Z
    const/4 v10, 0x0

    .line 2079
    .local v10, "crl":Ljava/security/cert/X509CRL;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_2

    .line 2081
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "crl":Ljava/security/cert/X509CRL;
    check-cast v10, Ljava/security/cert/X509CRL;

    .line 2083
    .restart local v10    # "crl":Ljava/security/cert/X509CRL;
    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v32

    if-eqz v32, :cond_1

    .line 2084
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v32

    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 2086
    :cond_1
    const/16 v31, 0x1

    .line 2087
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.localValidCRL"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2089
    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    const/16 v35, 0x1

    new-instance v36, Lorg/spongycastle/i18n/filter/TrustedInput;

    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2090
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 2104
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_2
    if-nez v31, :cond_8

    .line 2106
    const/16 v26, 0x0

    .line 2107
    .local v26, "onlineCRL":Ljava/security/cert/X509CRL;
    invoke-virtual/range {p6 .. p6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .line 2108
    .local v30, "urlIt":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 2112
    :try_start_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 2113
    .local v21, "location":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v26

    .line 2114
    if-eqz v26, :cond_3

    .line 2117
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v32

    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_6

    .line 2119
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.onlineCRLWrongCA"

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 2121
    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    const/16 v35, 0x1

    new-instance v36, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 2122
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    const/16 v35, 0x2

    new-instance v36, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2124
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_2
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 2152
    .end local v21    # "location":Ljava/lang/String;
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :catch_1
    move-exception v9

    .line 2154
    .local v9, "cpre":Lorg/spongycastle/x509/CertPathReviewerException;
    invoke-virtual {v9}, Lorg/spongycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/spongycastle/i18n/ErrorBundle;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_3

    .line 2036
    .end local v9    # "cpre":Lorg/spongycastle/x509/CertPathReviewerException;
    .end local v10    # "crl":Ljava/security/cert/X509CRL;
    .end local v13    # "crl_iter":Ljava/util/Iterator;
    .end local v26    # "onlineCRL":Ljava/security/cert/X509CRL;
    .end local v30    # "urlIt":Ljava/util/Iterator;
    .end local v31    # "validCrlFound":Z
    :catch_2
    move-exception v16

    .line 2038
    .local v16, "e":Ljava/io/IOException;
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.crlIssuerException"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v32

    .line 2060
    .end local v16    # "e":Ljava/io/IOException;
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v11    # "crl_coll":Ljava/util/Collection;
    .restart local v13    # "crl_iter":Ljava/util/Iterator;
    .restart local v19    # "it":Ljava/util/Iterator;
    .restart local v24    # "nonMatchingCrlNames":Ljava/util/List;
    :cond_4
    :try_start_3
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v25

    .line 2061
    .local v25, "numbOfCrls":I
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.noCrlInCertstore"

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Lorg/spongycastle/i18n/filter/UntrustedInput;

    .line 2063
    invoke-virtual {v14}, Lorg/spongycastle/x509/X509CRLStoreSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    const/16 v35, 0x1

    new-instance v36, Lorg/spongycastle/i18n/filter/UntrustedInput;

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/spongycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    const/16 v35, 0x2

    .line 2065
    invoke-static/range {v25 .. v25}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2066
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 2095
    .end local v11    # "crl_coll":Ljava/util/Collection;
    .end local v19    # "it":Ljava/util/Iterator;
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v24    # "nonMatchingCrlNames":Ljava/util/List;
    .end local v25    # "numbOfCrls":I
    .restart local v10    # "crl":Ljava/security/cert/X509CRL;
    .restart local v31    # "validCrlFound":Z
    :cond_5
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.localInvalidCRL"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2097
    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    const/16 v35, 0x1

    new-instance v36, Lorg/spongycastle/i18n/filter/TrustedInput;

    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2098
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_2

    .line 2128
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v21    # "location":Ljava/lang/String;
    .restart local v26    # "onlineCRL":Ljava/security/cert/X509CRL;
    .restart local v30    # "urlIt":Ljava/util/Iterator;
    :cond_6
    :try_start_4
    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v32

    if-eqz v32, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object/from16 v32, v0

    .line 2129
    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v32

    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 2131
    :cond_7
    const/16 v31, 0x1

    .line 2132
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.onlineValidCRL"

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2134
    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    const/16 v35, 0x1

    new-instance v36, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2135
    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    const/16 v35, 0x2

    new-instance v36, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2137
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_4
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2138
    move-object/from16 v10, v26

    .line 2161
    .end local v21    # "location":Ljava/lang/String;
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v26    # "onlineCRL":Ljava/security/cert/X509CRL;
    .end local v30    # "urlIt":Ljava/util/Iterator;
    :cond_8
    if-eqz v10, :cond_19

    .line 2163
    if-eqz p4, :cond_b

    .line 2165
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v20

    .line 2167
    .local v20, "keyusage":[Z
    if-eqz v20, :cond_b

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_9

    const/16 v32, 0x6

    aget-boolean v32, v20, v32

    if-nez v32, :cond_b

    .line 2170
    :cond_9
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.noCrlSigningPermited"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v32

    .line 2143
    .end local v20    # "keyusage":[Z
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v21    # "location":Ljava/lang/String;
    .restart local v26    # "onlineCRL":Ljava/security/cert/X509CRL;
    .restart local v30    # "urlIt":Ljava/util/Iterator;
    :cond_a
    :try_start_5
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.onlineInvalidCRL"

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2145
    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    const/16 v35, 0x1

    new-instance v36, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2146
    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    const/16 v35, 0x2

    new-instance v36, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/spongycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2148
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V
    :try_end_5
    .catch Lorg/spongycastle/x509/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 2175
    .end local v21    # "location":Ljava/lang/String;
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v26    # "onlineCRL":Ljava/security/cert/X509CRL;
    .end local v30    # "urlIt":Ljava/util/Iterator;
    :cond_b
    if-eqz p5, :cond_e

    .line 2179
    :try_start_6
    const-string v32, "SC"

    move-object/from16 v0, p5

    move-object/from16 v1, v32

    invoke-virtual {v10, v0, v1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2193
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v12

    .line 2194
    .local v12, "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-eqz v12, :cond_13

    .line 2196
    const/16 v28, 0x0

    .line 2198
    .local v28, "reason":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v32

    if-eqz v32, :cond_c

    .line 2203
    :try_start_7
    sget-object v32, Lorg/spongycastle/asn1/x509/Extension;->reasonCode:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v12, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/spongycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Enumerated;
    :try_end_7
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v29

    .line 2210
    .local v29, "reasonCode":Lorg/spongycastle/asn1/ASN1Enumerated;
    if-eqz v29, :cond_c

    .line 2212
    sget-object v32, Lorg/spongycastle/x509/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/math/BigInteger;->intValue()I

    move-result v33

    aget-object v28, v32, v33

    .line 2216
    .end local v29    # "reasonCode":Lorg/spongycastle/asn1/ASN1Enumerated;
    :cond_c
    if-nez v28, :cond_d

    .line 2218
    sget-object v32, Lorg/spongycastle/x509/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    const/16 v33, 0x7

    aget-object v28, v32, v33

    .line 2222
    :cond_d
    new-instance v22, Lorg/spongycastle/i18n/LocaleString;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    .local v22, "ls":Lorg/spongycastle/i18n/LocaleString;
    invoke-virtual {v12}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v32

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v32

    if-nez v32, :cond_f

    .line 2226
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.certRevoked"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2227
    invoke-virtual {v12}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    const/16 v35, 0x1

    aput-object v22, v34, v35

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2228
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v32

    .line 2181
    .end local v12    # "crl_entry":Ljava/security/cert/X509CRLEntry;
    .end local v22    # "ls":Lorg/spongycastle/i18n/LocaleString;
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v28    # "reason":Ljava/lang/String;
    :catch_3
    move-exception v16

    .line 2183
    .local v16, "e":Ljava/lang/Exception;
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.crlVerifyFailed"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v32

    .line 2189
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_e
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.crlNoIssuerPublicKey"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v32

    .line 2205
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v12    # "crl_entry":Ljava/security/cert/X509CRLEntry;
    .restart local v28    # "reason":Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 2207
    .restart local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.crlReasonExtError"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v32

    .line 2232
    .end local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v22    # "ls":Lorg/spongycastle/i18n/LocaleString;
    :cond_f
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.revokedAfterValidation"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2233
    invoke-virtual {v12}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    const/16 v35, 0x1

    aput-object v22, v34, v35

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2234
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 2246
    .end local v22    # "ls":Lorg/spongycastle/i18n/LocaleString;
    .end local v28    # "reason":Ljava/lang/String;
    :goto_4
    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v32

    if-eqz v32, :cond_10

    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 2248
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.crlUpdateAvailable"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Lorg/spongycastle/i18n/filter/TrustedInput;

    .line 2249
    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Lorg/spongycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v36, v34, v35

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2250
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    .line 2259
    :cond_10
    :try_start_8
    sget-object v32, Lorg/spongycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-static {v10, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_8
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_5

    move-result-object v18

    .line 2269
    .local v18, "idp":Lorg/spongycastle/asn1/ASN1Primitive;
    :try_start_9
    sget-object v32, Lorg/spongycastle/x509/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-static {v10, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_9
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v15

    .line 2277
    .local v15, "dci":Lorg/spongycastle/asn1/ASN1Primitive;
    if-eqz v15, :cond_15

    .line 2279
    new-instance v7, Lorg/spongycastle/x509/X509CRLStoreSelector;

    invoke-direct {v7}, Lorg/spongycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 2283
    .local v7, "baseSelect":Lorg/spongycastle/x509/X509CRLStoreSelector;
    :try_start_a
    invoke-static {v10}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 2291
    check-cast v15, Lorg/spongycastle/asn1/ASN1Integer;

    .end local v15    # "dci":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual {v15}, Lorg/spongycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 2294
    :try_start_b
    sget-object v32, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CRL_NUMBER:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-static {v10, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v32

    check-cast v32, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v32

    const-wide/16 v34, 0x1

    invoke-static/range {v34 .. v35}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Lorg/spongycastle/x509/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V
    :try_end_b
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_b .. :try_end_b} :catch_8

    .line 2302
    const/16 v17, 0x0

    .line 2306
    .local v17, "foundBase":Z
    :try_start_c
    sget-object v32, Lorg/spongycastle/x509/PKIXCertPathReviewer;->CRL_UTIL:Lorg/spongycastle/x509/PKIXCRLUtil;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1}, Lorg/spongycastle/x509/PKIXCRLUtil;->findCRLs(Lorg/spongycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_c
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_c} :catch_9

    move-result-object v19

    .line 2313
    .restart local v19    # "it":Ljava/util/Iterator;
    :cond_11
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_12

    .line 2315
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509CRL;

    .line 2320
    .local v5, "base":Ljava/security/cert/X509CRL;
    :try_start_d
    sget-object v32, Lorg/spongycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-static {v5, v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_d
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_d .. :try_end_d} :catch_a

    move-result-object v6

    .line 2328
    .local v6, "baseIdp":Lorg/spongycastle/asn1/ASN1Primitive;
    if-nez v18, :cond_14

    .line 2330
    if-nez v6, :cond_11

    .line 2332
    const/16 v17, 0x1

    .line 2346
    .end local v5    # "base":Ljava/security/cert/X509CRL;
    .end local v6    # "baseIdp":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_12
    :goto_5
    if-nez v17, :cond_15

    .line 2348
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.noBaseCRL"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v32

    .line 2239
    .end local v7    # "baseSelect":Lorg/spongycastle/x509/X509CRLStoreSelector;
    .end local v17    # "foundBase":Z
    .end local v18    # "idp":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v19    # "it":Ljava/util/Iterator;
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_13
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.notRevoked"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/spongycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_4

    .line 2261
    :catch_5
    move-exception v4

    .line 2263
    .restart local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.distrPtExtError"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v32

    .line 2271
    .end local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v18    # "idp":Lorg/spongycastle/asn1/ASN1Primitive;
    :catch_6
    move-exception v4

    .line 2273
    .restart local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.deltaCrlExtError"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v32

    .line 2285
    .end local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v7    # "baseSelect":Lorg/spongycastle/x509/X509CRLStoreSelector;
    .restart local v15    # "dci":Lorg/spongycastle/asn1/ASN1Primitive;
    :catch_7
    move-exception v16

    .line 2287
    .local v16, "e":Ljava/io/IOException;
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.crlIssuerException"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v32

    .line 2296
    .end local v15    # "dci":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v16    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v4

    .line 2298
    .restart local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.crlNbrExtError"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v32

    .line 2308
    .end local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v17    # "foundBase":Z
    :catch_9
    move-exception v4

    .line 2310
    .restart local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.crlExtractionError"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v32

    .line 2322
    .end local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v5    # "base":Ljava/security/cert/X509CRL;
    .restart local v19    # "it":Ljava/util/Iterator;
    :catch_a
    move-exception v4

    .line 2324
    .restart local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.distrPtExtError"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v32

    .line 2338
    .end local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v6    # "baseIdp":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_14
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 2340
    const/16 v17, 0x1

    .line 2341
    goto/16 :goto_5

    .line 2353
    .end local v5    # "base":Ljava/security/cert/X509CRL;
    .end local v6    # "baseIdp":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v7    # "baseSelect":Lorg/spongycastle/x509/X509CRLStoreSelector;
    .end local v17    # "foundBase":Z
    .end local v19    # "it":Ljava/util/Iterator;
    :cond_15
    if-eqz v18, :cond_19

    .line 2355
    invoke-static/range {v18 .. v18}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v27

    .line 2356
    .local v27, "p":Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    const/4 v8, 0x0

    .line 2359
    .local v8, "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_start_e
    sget-object v32, Lorg/spongycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_e
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_e .. :try_end_e} :catch_b

    move-result-object v8

    .line 2367
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v32

    if-eqz v32, :cond_16

    if-eqz v8, :cond_16

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v32

    if-eqz v32, :cond_16

    .line 2369
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.crlOnlyUserCert"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v32

    .line 2361
    :catch_b
    move-exception v4

    .line 2363
    .restart local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.crlBCExtError"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v32

    .line 2373
    .end local v4    # "ae":Lorg/spongycastle/jce/provider/AnnotatedException;
    :cond_16
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v32

    if-eqz v32, :cond_18

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v32

    if-nez v32, :cond_18

    .line 2375
    :cond_17
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.crlOnlyCaCert"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v32

    .line 2379
    :cond_18
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v32

    if-eqz v32, :cond_19

    .line 2381
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.crlOnlyAttrCert"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v32

    .line 2387
    .end local v8    # "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    .end local v12    # "crl_entry":Ljava/security/cert/X509CRLEntry;
    .end local v18    # "idp":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .end local v27    # "p":Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :cond_19
    if-nez v31, :cond_1a

    .line 2389
    new-instance v23, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v32, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v33, "CertPathReviewer.noValidCrlFound"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    .restart local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v32, Lorg/spongycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v32

    .line 2393
    .end local v23    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    :cond_1a
    return-void
.end method

.method protected checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    .locals 8
    .param p1, "paramsPKIX"    # Ljava/security/cert/PKIXParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "validDate"    # Ljava/util/Date;
    .param p4, "sign"    # Ljava/security/cert/X509Certificate;
    .param p5, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p6, "crlDistPointUrls"    # Ljava/util/Vector;
    .param p7, "ocspUrls"    # Ljava/util/Vector;
    .param p8, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .prologue
    .line 2016
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V

    .line 2017
    return-void
.end method

.method protected doChecks()V
    .locals 3

    .prologue
    .line 347
    iget-boolean v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->initialized:Z

    if-nez v1, :cond_0

    .line 349
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Object not initialized. Call init() first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    if-nez v1, :cond_2

    .line 354
    iget v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    .line 355
    iget v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    .line 357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 359
    iget-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 360
    iget-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->checkSignatures()V

    .line 367
    invoke-direct {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->checkNameConstraints()V

    .line 370
    invoke-direct {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->checkPathLength()V

    .line 373
    invoke-direct {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->checkPolicy()V

    .line 376
    invoke-direct {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->checkCriticalExtensions()V

    .line 379
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method protected getCRLDistUrls(Lorg/spongycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;
    .locals 9
    .param p1, "crlDistPoints"    # Lorg/spongycastle/asn1/x509/CRLDistPoint;

    .prologue
    .line 2397
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 2399
    .local v6, "urls":Ljava/util/Vector;
    if-eqz p1, :cond_2

    .line 2401
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/spongycastle/asn1/x509/DistributionPoint;

    move-result-object v0

    .line 2402
    .local v0, "distPoints":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v0

    if-ge v3, v7, :cond_2

    .line 2404
    aget-object v7, v0, v3

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v1

    .line 2405
    .local v1, "dp_name":Lorg/spongycastle/asn1/x509/DistributionPointName;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-nez v7, :cond_1

    .line 2407
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 2408
    .local v2, "generalNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_1

    .line 2410
    aget-object v7, v2, v4

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_0

    .line 2412
    aget-object v7, v2, v4

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v5

    .line 2413
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2408
    .end local v5    # "url":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2402
    .end local v2    # "generalNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2419
    .end local v0    # "distPoints":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    .end local v1    # "dp_name":Lorg/spongycastle/asn1/x509/DistributionPointName;
    .end local v3    # "i":I
    :cond_2
    return-object v6
.end method

.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getCertPathSize()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    return v0
.end method

.method public getErrors(I)Ljava/util/List;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 233
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 234
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getErrors()[Ljava/util/List;
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 221
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    return-object v0
.end method

.method public getNotifications(I)Ljava/util/List;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 260
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 261
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNotifications()[Ljava/util/List;
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 248
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    return-object v0
.end method

.method protected getOCSPUrls(Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;
    .locals 7
    .param p1, "authInfoAccess"    # Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;

    .prologue
    .line 2424
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 2426
    .local v4, "urls":Ljava/util/Vector;
    if-eqz p1, :cond_1

    .line 2428
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AuthorityInformationAccess;->getAccessDescriptions()[Lorg/spongycastle/asn1/x509/AccessDescription;

    move-result-object v0

    .line 2429
    .local v0, "ads":[Lorg/spongycastle/asn1/x509/AccessDescription;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 2431
    aget-object v5, v0, v1

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/AccessDescription;->getAccessMethod()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    sget-object v6, Lorg/spongycastle/asn1/x509/AccessDescription;->id_ad_ocsp:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2433
    aget-object v5, v0, v1

    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/AccessDescription;->getAccessLocation()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 2434
    .local v2, "name":Lorg/spongycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 2436
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v3

    .line 2437
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2429
    .end local v2    # "name":Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2443
    .end local v0    # "ads":[Lorg/spongycastle/asn1/x509/AccessDescription;
    .end local v1    # "i":I
    :cond_1
    return-object v4
.end method

.method public getPolicyTree()Ljava/security/cert/PolicyNode;
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 272
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 283
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getTrustAnchor()Ljava/security/cert/TrustAnchor;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 294
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return-object v0
.end method

.method protected getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;
    .locals 14
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "trustanchors"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .prologue
    .line 2484
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2485
    .local v11, "trustColl":Ljava/util/Collection;
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2487
    .local v6, "it":Ljava/util/Iterator;
    new-instance v3, Ljava/security/cert/X509CertSelector;

    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 2491
    .local v3, "certSelectX509":Ljava/security/cert/X509CertSelector;
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/security/cert/X509CertSelector;->setSubject([B)V

    .line 2492
    sget-object v12, Lorg/spongycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    .line 2494
    .local v5, "ext":[B
    if-eqz v5, :cond_0

    .line 2496
    invoke-static {v5}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/asn1/ASN1OctetString;

    .line 2497
    .local v9, "oct":Lorg/spongycastle/asn1/ASN1OctetString;
    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    .line 2499
    .local v0, "authID":Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 2500
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v7

    .line 2501
    .local v7, "keyID":[B
    if-eqz v7, :cond_0

    .line 2503
    new-instance v12, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v12, v7}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v12}, Lorg/spongycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2513
    .end local v0    # "authID":Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    .end local v7    # "keyID":[B
    .end local v9    # "oct":Lorg/spongycastle/asn1/ASN1OctetString;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2515
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/TrustAnchor;

    .line 2516
    .local v10, "trust":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v10}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 2518
    invoke-virtual {v10}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2520
    invoke-interface {v11, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2507
    .end local v5    # "ext":[B
    .end local v10    # "trust":Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v4

    .line 2509
    .local v4, "ex":Ljava/io/IOException;
    new-instance v8, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v12, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.trustAnchorIssuerError"

    invoke-direct {v8, v12, v13}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    .local v8, "msg":Lorg/spongycastle/i18n/ErrorBundle;
    new-instance v12, Lorg/spongycastle/x509/CertPathReviewerException;

    invoke-direct {v12, v8}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v12

    .line 2523
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v8    # "msg":Lorg/spongycastle/i18n/ErrorBundle;
    .restart local v5    # "ext":[B
    .restart local v10    # "trust":Ljava/security/cert/TrustAnchor;
    :cond_1
    invoke-virtual {v10}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v10}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 2525
    invoke-static {p1}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 2526
    .local v2, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v10}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 2527
    .local v1, "caName":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v2, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2529
    invoke-interface {v11, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2533
    .end local v1    # "caName":Ljavax/security/auth/x500/X500Principal;
    .end local v2    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v10    # "trust":Ljava/security/cert/TrustAnchor;
    :cond_2
    return-object v11
.end method

.method public init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 4
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/PKIXParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-boolean v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->initialized:Z

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object is already initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->initialized:Z

    .line 133
    if-nez p1, :cond_1

    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certPath was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    .line 139
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    .line 140
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->n:I

    .line 141
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    new-instance v0, Lorg/spongycastle/x509/CertPathReviewerException;

    new-instance v1, Lorg/spongycastle/i18n/ErrorBundle;

    const-string v2, "org.spongycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.emptyCertPath"

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/CertPathReviewerException;-><init>(Lorg/spongycastle/i18n/ErrorBundle;)V

    throw v0

    .line 147
    :cond_2
    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXParameters;

    iput-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 155
    iget-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-static {v0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    .line 165
    iput-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    .line 166
    iput-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    .line 167
    iput-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 168
    iput-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    .line 169
    iput-object v1, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    .line 170
    return-void
.end method

.method public isValidCertPath()Z
    .locals 3

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/spongycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 305
    const/4 v1, 0x1

    .line 306
    .local v1, "valid":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 308
    iget-object v2, p0, Lorg/spongycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 310
    const/4 v1, 0x0

    .line 314
    :cond_0
    return v1

    .line 306
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
