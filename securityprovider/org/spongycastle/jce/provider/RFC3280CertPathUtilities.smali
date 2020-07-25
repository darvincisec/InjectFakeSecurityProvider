.class Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


# static fields
.field public static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field public static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field public static final BASIC_CONSTRAINTS:Ljava/lang/String;

.field public static final CERTIFICATE_POLICIES:Ljava/lang/String;

.field public static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field public static final CRL_NUMBER:Ljava/lang/String;

.field protected static final CRL_SIGN:I = 0x6

.field private static final CRL_UTIL:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

.field public static final DELTA_CRL_INDICATOR:Ljava/lang/String;

.field public static final FRESHEST_CRL:Ljava/lang/String;

.field public static final INHIBIT_ANY_POLICY:Ljava/lang/String;

.field public static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final KEY_CERT_SIGN:I = 0x5

.field public static final KEY_USAGE:Ljava/lang/String;

.field public static final NAME_CONSTRAINTS:Ljava/lang/String;

.field public static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field public static final POLICY_MAPPINGS:Ljava/lang/String;

.field public static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/PKIXCRLUtil;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CRL_UTIL:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    .line 390
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->certificatePolicies:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 392
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->policyMappings:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 394
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 396
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 398
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->freshestCRL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 400
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 402
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->policyConstraints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 404
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->basicConstraints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 406
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 408
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->subjectAlternativeName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 410
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->nameConstraints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 412
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 414
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->keyUsage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 416
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->cRLNumber:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 2324
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unspecified"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "removeFromCRL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "aACompromise"

    aput-object v2, v0, v1

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCRL(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V
    .locals 27
    .param p0, "dp"    # Lorg/spongycastle/asn1/x509/DistributionPoint;
    .param p1, "paramsPKIX"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "validDate"    # Ljava/util/Date;
    .param p4, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p5, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p6, "certStatus"    # Lorg/spongycastle/jce/provider/CertStatus;
    .param p7, "reasonMask"    # Lorg/spongycastle/jce/provider/ReasonsMask;
    .param p8, "certPathCerts"    # Ljava/util/List;
    .param p9, "helper"    # Lorg/spongycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1768
    new-instance v17, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1769
    .local v17, "currentDate":Ljava/util/Date;
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 1771
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "Validation time is in future."

    invoke-direct {v7, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1782
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Set;

    move-result-object v16

    .line 1783
    .local v16, "crls":Ljava/util/Set;
    const/16 v25, 0x0

    .line 1784
    .local v25, "validCrlFound":Z
    const/16 v24, 0x0

    .line 1785
    .local v24, "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1787
    .local v15, "crl_iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v7

    const/16 v8, 0xb

    if-ne v7, v8, :cond_a

    invoke-virtual/range {p7 .. p7}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v7

    if-nez v7, :cond_a

    .line 1791
    :try_start_0
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509CRL;

    .line 1794
    .local v6, "crl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p0

    invoke-static {v6, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lorg/spongycastle/asn1/x509/DistributionPoint;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v21

    .line 1802
    .local v21, "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    move-object/from16 v0, v21

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;->hasNewReasons(Lorg/spongycastle/jce/provider/ReasonsMask;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p1

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    .line 1808
    invoke-static/range {v6 .. v12}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lorg/spongycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v23

    .line 1811
    .local v23, "keys":Ljava/util/Set;
    move-object/from16 v0, v23

    invoke-static {v6, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v22

    .line 1813
    .local v22, "key":Ljava/security/PublicKey;
    const/16 v18, 0x0

    .line 1815
    .local v18, "deltaCRL":Ljava/security/cert/X509CRL;
    move-object/from16 v26, v17

    .line 1817
    .local v26, "validityDate":Ljava/util/Date;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1819
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v26

    .line 1822
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1825
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-static {v0, v6, v7, v8}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v19

    .line 1828
    .local v19, "deltaCRLs":Ljava/util/Set;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v18

    .line 1844
    .end local v19    # "deltaCRLs":Ljava/util/Set;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    .line 1851
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_4

    .line 1853
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "No valid CRL for current time found."

    invoke-direct {v7, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1910
    .end local v6    # "crl":Ljava/security/cert/X509CRL;
    .end local v18    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v21    # "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .end local v22    # "key":Ljava/security/PublicKey;
    .end local v23    # "keys":Ljava/util/Set;
    .end local v26    # "validityDate":Ljava/util/Date;
    :catch_0
    move-exception v20

    .line 1912
    .local v20, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    move-object/from16 v24, v20

    .line 1913
    goto/16 :goto_0

    .line 1857
    .end local v20    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v6    # "crl":Ljava/security/cert/X509CRL;
    .restart local v18    # "deltaCRL":Ljava/security/cert/X509CRL;
    .restart local v21    # "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .restart local v22    # "key":Ljava/security/PublicKey;
    .restart local v23    # "keys":Ljava/util/Set;
    .restart local v26    # "validityDate":Ljava/util/Date;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v6}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1860
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v6}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1863
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v6, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V

    .line 1866
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V

    .line 1869
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-static {v0, v6, v1, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 1872
    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_5

    .line 1874
    const/16 v7, 0xb

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Lorg/spongycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1878
    :cond_5
    move-object/from16 v0, p7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;->addReasons(Lorg/spongycastle/jce/provider/ReasonsMask;)V

    .line 1880
    invoke-virtual {v6}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v13

    .line 1881
    .local v13, "criticalExtensions":Ljava/util/Set;
    if-eqz v13, :cond_7

    .line 1883
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1884
    .end local v13    # "criticalExtensions":Ljava/util/Set;
    .local v14, "criticalExtensions":Ljava/util/Set;
    sget-object v7, Lorg/spongycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1885
    sget-object v7, Lorg/spongycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1887
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1889
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL contains unsupported critical extensions."

    invoke-direct {v7, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    move-object v13, v14

    .line 1893
    .end local v14    # "criticalExtensions":Ljava/util/Set;
    .restart local v13    # "criticalExtensions":Ljava/util/Set;
    :cond_7
    if-eqz v18, :cond_9

    .line 1895
    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v13

    .line 1896
    if-eqz v13, :cond_9

    .line 1898
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1899
    .end local v13    # "criticalExtensions":Ljava/util/Set;
    .restart local v14    # "criticalExtensions":Ljava/util/Set;
    sget-object v7, Lorg/spongycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1900
    sget-object v7, Lorg/spongycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1901
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1903
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "Delta CRL contains unsupported critical extension."

    invoke-direct {v7, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    move-object v13, v14

    .line 1908
    .end local v14    # "criticalExtensions":Ljava/util/Set;
    .restart local v13    # "criticalExtensions":Ljava/util/Set;
    :cond_9
    const/16 v25, 0x1

    goto/16 :goto_0

    .line 1915
    .end local v6    # "crl":Ljava/security/cert/X509CRL;
    .end local v13    # "criticalExtensions":Ljava/util/Set;
    .end local v18    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v21    # "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .end local v22    # "key":Ljava/security/PublicKey;
    .end local v23    # "keys":Ljava/util/Set;
    .end local v26    # "validityDate":Ljava/util/Date;
    :cond_a
    if-nez v25, :cond_b

    .line 1917
    throw v24

    .line 1919
    :cond_b
    return-void
.end method

.method protected static checkCRLs(Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V
    .locals 32
    .param p0, "paramsPKIX"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "validDate"    # Ljava/util/Date;
    .param p3, "sign"    # Ljava/security/cert/X509Certificate;
    .param p4, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p5, "certPathCerts"    # Ljava/util/List;
    .param p6, "helper"    # Lorg/spongycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1944
    const/16 v28, 0x0

    .line 1945
    .local v28, "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    const/16 v20, 0x0

    .line 1948
    .local v20, "crldp":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v20

    .line 1956
    new-instance v30, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V

    .line 1959
    .local v30, "paramsBldr":Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lorg/spongycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;

    move-result-object v24

    .line 1960
    .local v24, "extras":Ljava/util/List;
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1962
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/jcajce/PKIXCRLStore;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/spongycastle/jcajce/PKIXCRLStore;)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1965
    .end local v24    # "extras":Ljava/util/List;
    .end local v27    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v23

    .line 1967
    .local v23, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "No additional CRL locations could be decoded from CRL distribution point extension."

    move-object/from16 v0, v23

    invoke-direct {v2, v4, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1951
    .end local v23    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v30    # "paramsBldr":Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    :catch_1
    move-exception v23

    .line 1953
    .local v23, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "CRL distribution point extension could not be read."

    move-object/from16 v0, v23

    invoke-direct {v2, v4, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1970
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v24    # "extras":Ljava/util/List;
    .restart local v27    # "it":Ljava/util/Iterator;
    .restart local v30    # "paramsBldr":Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    :cond_0
    new-instance v8, Lorg/spongycastle/jce/provider/CertStatus;

    invoke-direct {v8}, Lorg/spongycastle/jce/provider/CertStatus;-><init>()V

    .line 1971
    .local v8, "certStatus":Lorg/spongycastle/jce/provider/CertStatus;
    new-instance v9, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-direct {v9}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>()V

    .line 1972
    .local v9, "reasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    .line 1974
    .local v3, "finalParams":Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    const/16 v31, 0x0

    .line 1976
    .local v31, "validCrlFound":Z
    if-eqz v20, :cond_1

    .line 1978
    const/16 v22, 0x0

    .line 1981
    .local v22, "dps":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/spongycastle/asn1/x509/DistributionPoint;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v22

    .line 1987
    if-eqz v22, :cond_1

    .line 1989
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_1
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v25

    if-ge v0, v2, :cond_1

    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_1

    invoke-virtual {v9}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1993
    :try_start_3
    aget-object v2, v22, v25

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v2 .. v11}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1994
    const/16 v31, 0x1

    .line 1989
    :goto_2
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 1983
    .end local v25    # "i":I
    :catch_2
    move-exception v23

    .line 1985
    .restart local v23    # "e":Ljava/lang/Exception;
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "Distribution points could not be read."

    move-object/from16 v0, v23

    invoke-direct {v2, v4, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1996
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v25    # "i":I
    :catch_3
    move-exception v23

    .line 1998
    .local v23, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    move-object/from16 v28, v23

    goto :goto_2

    .line 2010
    .end local v22    # "dps":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    .end local v23    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v25    # "i":I
    :cond_1
    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_2

    invoke-virtual {v9}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2019
    const/16 v26, 0x0

    .line 2022
    .local v26, "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :try_start_4
    new-instance v2, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-static/range {p1 .. p1}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 2023
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v26

    .line 2029
    :try_start_5
    new-instance v10, Lorg/spongycastle/asn1/x509/DistributionPoint;

    new-instance v2, Lorg/spongycastle/asn1/x509/DistributionPointName;

    const/4 v4, 0x0

    new-instance v5, Lorg/spongycastle/asn1/x509/GeneralNames;

    new-instance v6, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v7, 0x4

    move-object/from16 v0, v26

    invoke-direct {v6, v7, v0}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>(Lorg/spongycastle/asn1/x509/GeneralName;)V

    invoke-direct {v2, v4, v5}, Lorg/spongycastle/asn1/x509/DistributionPointName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v10, v2, v4, v5}, Lorg/spongycastle/asn1/x509/DistributionPoint;-><init>(Lorg/spongycastle/asn1/x509/DistributionPointName;Lorg/spongycastle/asn1/x509/ReasonFlags;Lorg/spongycastle/asn1/x509/GeneralNames;)V

    .line 2031
    .local v10, "dp":Lorg/spongycastle/asn1/x509/DistributionPoint;
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    .local v11, "paramsPKIXClone":Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    .line 2032
    invoke-static/range {v10 .. v19}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2034
    const/16 v31, 0x1

    .line 2042
    .end local v10    # "dp":Lorg/spongycastle/asn1/x509/DistributionPoint;
    .end local v11    # "paramsPKIXClone":Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .end local v26    # "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_2
    :goto_3
    if-nez v31, :cond_4

    .line 2044
    move-object/from16 v0, v28

    instance-of v2, v0, Lorg/spongycastle/jce/provider/AnnotatedException;

    if-eqz v2, :cond_3

    .line 2046
    throw v28

    .line 2025
    .restart local v26    # "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :catch_4
    move-exception v23

    .line 2027
    .local v23, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuer from certificate for CRL could not be reencoded."

    move-object/from16 v0, v23

    invoke-direct {v2, v4, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2036
    .end local v23    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v23

    .line 2038
    .local v23, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    move-object/from16 v28, v23

    goto :goto_3

    .line 2049
    .end local v23    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v26    # "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_3
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "No valid CRL found."

    move-object/from16 v0, v28

    invoke-direct {v2, v4, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2051
    :cond_4
    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-eq v2, v4, :cond_5

    .line 2053
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss Z"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2054
    .local v21, "df":Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate revocation after "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 2056
    .local v29, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", reason: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 2057
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2059
    .end local v21    # "df":Ljava/text/SimpleDateFormat;
    .end local v29    # "message":Ljava/lang/String;
    :cond_5
    invoke-virtual {v9}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_6

    .line 2061
    const/16 v2, 0xc

    invoke-virtual {v8, v2}, Lorg/spongycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 2063
    :cond_6
    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_7

    .line 2065
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "Certificate status could not be determined."

    invoke-direct {v2, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2067
    :cond_7
    return-void
.end method

.method protected static prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 34
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyNodes"    # [Ljava/util/List;
    .param p3, "validPolicyTree"    # Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 896
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v12

    .line 897
    .local v12, "certs":Ljava/util/List;
    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 898
    .local v11, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v23

    .line 900
    .local v23, "n":I
    sub-int v4, v23, p1

    .line 903
    .local v4, "i":I
    const/16 v29, 0x0

    .line 906
    .local v29, "pm":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v11, v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    .line 914
    move-object/from16 v10, p3

    .line 915
    .local v10, "_validPolicyTree":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    if-eqz v29, :cond_d

    .line 917
    move-object/from16 v22, v29

    .line 918
    .local v22, "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 919
    .local v20, "m_idp":Ljava/util/Map;
    new-instance v31, Ljava/util/HashSet;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashSet;-><init>()V

    .line 921
    .local v31, "s_idp":Ljava/util/Set;
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_1

    .line 923
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v21

    check-cast v21, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 924
    .local v21, "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    .line 925
    .local v8, "id_p":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v32

    .line 928
    .local v32, "sd_p":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 930
    new-instance v33, Ljava/util/HashSet;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashSet;-><init>()V

    .line 931
    .local v33, "tmp":Ljava/util/Set;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 932
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 921
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 909
    .end local v8    # "id_p":Ljava/lang/String;
    .end local v10    # "_validPolicyTree":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v17    # "j":I
    .end local v20    # "m_idp":Ljava/util/Map;
    .end local v21    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v22    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v31    # "s_idp":Ljava/util/Set;
    .end local v32    # "sd_p":Ljava/lang/String;
    .end local v33    # "tmp":Ljava/util/Set;
    :catch_0
    move-exception v14

    .line 911
    .local v14, "ex":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v3, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy mappings extension could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 937
    .end local v14    # "ex":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v8    # "id_p":Ljava/lang/String;
    .restart local v10    # "_validPolicyTree":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .restart local v17    # "j":I
    .restart local v20    # "m_idp":Ljava/util/Map;
    .restart local v21    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v22    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v31    # "s_idp":Ljava/util/Set;
    .restart local v32    # "sd_p":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/Set;

    .line 938
    .restart local v33    # "tmp":Ljava/util/Set;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 942
    .end local v8    # "id_p":Ljava/lang/String;
    .end local v21    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v32    # "sd_p":Ljava/lang/String;
    .end local v33    # "tmp":Ljava/util/Set;
    :cond_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 943
    .local v16, "it_idp":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 945
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 950
    .restart local v8    # "id_p":Ljava/lang/String;
    if-lez p4, :cond_9

    .line 952
    const/4 v15, 0x0

    .line 953
    .local v15, "idp_found":Z
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 954
    .local v27, "nodes_i":Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 956
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 957
    .local v24, "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 959
    const/4 v15, 0x1

    .line 960
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move-object/from16 v0, v24

    iput-object v3, v0, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 965
    .end local v24    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_4
    if-nez v15, :cond_2

    .line 967
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 968
    :cond_5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 970
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 971
    .restart local v24    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const-string v3, "2.5.29.32.0"

    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 973
    const/4 v7, 0x0

    .line 974
    .local v7, "pq":Ljava/util/Set;
    const/16 v30, 0x0

    .line 977
    .local v30, "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_1
    sget-object v3, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v11, v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v30

    .end local v30    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    check-cast v30, Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 985
    .restart local v30    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v13

    .line 986
    .local v13, "e":Ljava/util/Enumeration;
    :cond_6
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 988
    const/16 v28, 0x0

    .line 991
    .local v28, "pinfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    :try_start_2
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v28

    .line 998
    const-string v3, "2.5.29.32.0"

    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1003
    :try_start_3
    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 1015
    .end local v28    # "pinfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    :cond_7
    const/4 v9, 0x0

    .line 1016
    .local v9, "ci":Z
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1018
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    sget-object v5, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 1022
    :cond_8
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1023
    .local v6, "p_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const-string v3, "2.5.29.32.0"

    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1025
    new-instance v2, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-direct/range {v2 .. v9}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1027
    .local v2, "c_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 1028
    aget-object v3, p2, v4

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 980
    .end local v2    # "c_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "p_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "ci":Z
    .end local v13    # "e":Ljava/util/Enumeration;
    .end local v30    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v13

    .line 982
    .local v13, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v3, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Certificate policies extension could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v13, v0, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 993
    .local v13, "e":Ljava/util/Enumeration;
    .restart local v28    # "pinfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    .restart local v30    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v14

    .line 995
    .local v14, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Policy information could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 1005
    .end local v14    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v14

    .line 1008
    .local v14, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v3, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy qualifier info set could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 1039
    .end local v7    # "pq":Ljava/util/Set;
    .end local v13    # "e":Ljava/util/Enumeration;
    .end local v14    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v15    # "idp_found":Z
    .end local v24    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v27    # "nodes_i":Ljava/util/Iterator;
    .end local v28    # "pinfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    .end local v30    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_9
    if-gtz p4, :cond_2

    .line 1041
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 1042
    .restart local v27    # "nodes_i":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1044
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1045
    .restart local v24    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1047
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1048
    .restart local v6    # "p_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->removeChild(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 1049
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->remove()V

    .line 1050
    add-int/lit8 v18, v4, -0x1

    .local v18, "k":I
    :goto_3
    if-ltz v18, :cond_a

    .line 1052
    aget-object v26, p2, v18

    .line 1053
    .local v26, "nodes":Ljava/util/List;
    const/16 v19, 0x0

    .local v19, "l":I
    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_b

    .line 1055
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1056
    .local v25, "node2":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1058
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v10

    .line 1060
    if-nez v10, :cond_c

    .line 1050
    .end local v25    # "node2":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_b
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 1053
    .restart local v25    # "node2":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1072
    .end local v6    # "p_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "id_p":Ljava/lang/String;
    .end local v16    # "it_idp":Ljava/util/Iterator;
    .end local v17    # "j":I
    .end local v18    # "k":I
    .end local v19    # "l":I
    .end local v20    # "m_idp":Ljava/util/Map;
    .end local v22    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v24    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v25    # "node2":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v26    # "nodes":Ljava/util/List;
    .end local v27    # "nodes_i":Ljava/util/Iterator;
    .end local v31    # "s_idp":Ljava/util/Set;
    :cond_d
    return-object v10
.end method

.method protected static prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .locals 13
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1080
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1081
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1086
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    .line 1089
    .local v8, "pm":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v10, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v0, v10}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1097
    if-eqz v8, :cond_2

    .line 1099
    move-object v7, v8

    .line 1101
    .local v7, "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 1103
    const/4 v4, 0x0

    .line 1104
    .local v4, "issuerDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    const/4 v9, 0x0

    .line 1107
    .local v9, "subjectDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :try_start_1
    invoke-virtual {v7, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 1109
    .local v6, "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    .line 1110
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 1118
    const-string v10, "2.5.29.32.0"

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1121
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1092
    .end local v4    # "issuerDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "j":I
    .end local v6    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v7    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v9    # "subjectDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :catch_0
    move-exception v3

    .line 1094
    .local v3, "ex":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Policy mappings extension could not be decoded."

    invoke-direct {v10, v11, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1112
    .end local v3    # "ex":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v4    # "issuerDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local v5    # "j":I
    .restart local v7    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v9    # "subjectDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :catch_1
    move-exception v2

    .line 1114
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Policy mappings extension contents could not be decoded."

    invoke-direct {v10, v11, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1124
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_0
    const-string v10, "2.5.29.32.0"

    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1127
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "SubjectDomainPolicy is anyPolicy,"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1101
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1131
    .end local v4    # "issuerDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v5    # "j":I
    .end local v6    # "mapping":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v7    # "mappings":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v9    # "subjectDomainPolicy":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_2
    return-void
.end method

.method protected static prepareNextCertG(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 11
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1677
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1678
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1682
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v6, 0x0

    .line 1685
    .local v6, "nc":Lorg/spongycastle/asn1/x509/NameConstraints;
    :try_start_0
    sget-object v9, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v9}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v9

    invoke-static {v9}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 1687
    .local v7, "ncSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    if-eqz v7, :cond_0

    .line 1689
    invoke-static {v7}, Lorg/spongycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/NameConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1697
    :cond_0
    if-eqz v6, :cond_2

    .line 1703
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v8

    .line 1704
    .local v8, "permitted":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    if-eqz v8, :cond_1

    .line 1708
    :try_start_1
    invoke-virtual {p2, v8}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lorg/spongycastle/asn1/x509/GeneralSubtree;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1720
    :cond_1
    invoke-virtual {v6}, Lorg/spongycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v4

    .line 1721
    .local v4, "excluded":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    if-eqz v4, :cond_2

    .line 1723
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, v4

    if-eq v5, v9, :cond_2

    .line 1726
    :try_start_2
    aget-object v9, v4, v5

    invoke-virtual {p2, v9}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lorg/spongycastle/asn1/x509/GeneralSubtree;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1723
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1692
    .end local v4    # "excluded":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "i":I
    .end local v7    # "ncSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v8    # "permitted":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    :catch_0
    move-exception v2

    .line 1694
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Name constraints extension could not be decoded."

    invoke-direct {v9, v10, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1710
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "ncSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v8    # "permitted":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    :catch_1
    move-exception v3

    .line 1712
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v9, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v9, v10, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1728
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v4    # "excluded":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .restart local v5    # "i":I
    :catch_2
    move-exception v3

    .line 1730
    .restart local v3    # "ex":Ljava/lang/Exception;
    new-instance v9, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v9, v10, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 1735
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "excluded":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "i":I
    .end local v8    # "permitted":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    :cond_2
    return-void
.end method

.method protected static prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I

    .prologue
    .line 2260
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2261
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2265
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2270
    if-eqz p2, :cond_0

    .line 2272
    add-int/lit8 p2, p2, -0x1

    .line 2275
    .end local p2    # "explicitPolicy":I
    :cond_0
    return p2
.end method

.method protected static prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I

    .prologue
    .line 2283
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2284
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2288
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2293
    if-eqz p2, :cond_0

    .line 2295
    add-int/lit8 p2, p2, -0x1

    .line 2298
    .end local p2    # "policyMapping":I
    :cond_0
    return p2
.end method

.method protected static prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I

    .prologue
    .line 2306
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2307
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2311
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2316
    if-eqz p2, :cond_0

    .line 2318
    add-int/lit8 p2, p2, -0x1

    .line 2321
    .end local p2    # "inhibitAnyPolicy":I
    :cond_0
    return p2
.end method

.method protected static prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .locals 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1568
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1569
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1573
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 1576
    .local v4, "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1587
    if-eqz v4, :cond_1

    .line 1589
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 1591
    .local v5, "policyConstraints":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1596
    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 1597
    .local v2, "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-nez v7, :cond_0

    .line 1599
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 1600
    .local v6, "tmpInt":I
    if-ge v6, p2, :cond_1

    .line 1614
    .end local v2    # "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    .end local v6    # "tmpInt":I
    :goto_0
    return v6

    .line 1579
    :catch_0
    move-exception v3

    .line 1581
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1607
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "policyConstraints":Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 1609
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    :cond_1
    move v6, p2

    .line 1614
    goto :goto_0
.end method

.method protected static prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .locals 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1623
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1624
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1628
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 1631
    .local v4, "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1642
    if-eqz v4, :cond_1

    .line 1644
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 1646
    .local v5, "policyConstraints":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1650
    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 1651
    .local v2, "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 1653
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 1654
    .local v6, "tmpInt":I
    if-ge v6, p2, :cond_1

    .line 1668
    .end local v2    # "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    .end local v6    # "tmpInt":I
    :goto_0
    return v6

    .line 1634
    :catch_0
    move-exception v3

    .line 1636
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1661
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "policyConstraints":Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 1663
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    :cond_1
    move v6, p2

    .line 1668
    goto :goto_0
.end method

.method protected static prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2075
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2076
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2080
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 2083
    .local v4, "iap":Lorg/spongycastle/asn1/ASN1Integer;
    :try_start_0
    sget-object v5, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v1, v5}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2092
    if-eqz v4, :cond_0

    .line 2094
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 2096
    .local v0, "_inhibitAnyPolicy":I
    if-ge v0, p2, :cond_0

    .line 2101
    .end local v0    # "_inhibitAnyPolicy":I
    :goto_0
    return v0

    .line 2086
    :catch_0
    move-exception v3

    .line 2088
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v5, v6, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    move v0, p2

    .line 2101
    goto :goto_0
.end method

.method protected static prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2109
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2110
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2114
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .line 2117
    .local v0, "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_start_0
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2125
    if-eqz v0, :cond_0

    .line 2127
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2129
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Not a CA certificate"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2120
    :catch_0
    move-exception v3

    .line 2122
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2134
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2136
    :cond_1
    return-void
.end method

.method protected static prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .locals 5
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2144
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2145
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2149
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2151
    if-gtz p2, :cond_0

    .line 2153
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Max path length not greater than zero"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 2156
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 2158
    .end local p2    # "maxPathLength":I
    :cond_1
    return p2
.end method

.method protected static prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .locals 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2167
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 2168
    .local v4, "certs":Ljava/util/List;
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 2173
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2176
    .local v2, "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_start_0
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2184
    if-eqz v2, :cond_0

    .line 2186
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    .line 2188
    .local v0, "_pathLengthConstraint":Ljava/math/BigInteger;
    if-eqz v0, :cond_0

    .line 2190
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 2192
    .local v1, "_plc":I
    if-ge v1, p2, :cond_0

    .line 2198
    .end local v0    # "_pathLengthConstraint":Ljava/math/BigInteger;
    .end local v1    # "_plc":I
    :goto_0
    return v1

    .line 2179
    :catch_0
    move-exception v5

    .line 2181
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Basic constraints extension cannot be decoded."

    invoke-direct {v6, v7, v5, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    move v1, p2

    .line 2198
    goto :goto_0
.end method

.method protected static prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2206
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 2207
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2212
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 2214
    .local v0, "_usage":[Z
    if-eqz v0, :cond_0

    const/4 v3, 0x5

    aget-boolean v3, v0, v3

    if-nez v3, :cond_0

    .line 2216
    new-instance v3, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Issuer certificate keyusage extension is critical and does not permit key signing."

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 2220
    :cond_0
    return-void
.end method

.method protected static prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "criticalExtensions"    # Ljava/util/Set;
    .param p3, "pathCheckers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2229
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2230
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2236
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2237
    .local v3, "tmpIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2241
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v4, v0, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2243
    :catch_0
    move-exception v2

    .line 2245
    .local v2, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2248
    .end local v2    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2250
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate has unsupported critical extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2253
    :cond_1
    return-void
.end method

.method protected static processCRLA1i(Ljava/util/Date;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .locals 6
    .param p0, "currentDate"    # Ljava/util/Date;
    .param p1, "paramsPKIX"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 641
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 642
    .local v3, "set":Ljava/util/Set;
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 644
    const/4 v2, 0x0

    .line 647
    .local v2, "freshestCRL":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 648
    invoke-static {p2, v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 654
    if-nez v2, :cond_0

    .line 658
    :try_start_1
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    invoke-static {p3, v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 666
    :cond_0
    if-eqz v2, :cond_1

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v0, "crlStores":Ljava/util/List;
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 674
    :try_start_2
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lorg/spongycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 685
    :try_start_3
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v4

    invoke-static {p0, p3, v4, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 693
    .end local v0    # "crlStores":Ljava/util/List;
    .end local v2    # "freshestCRL":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :cond_1
    return-object v3

    .line 650
    .restart local v2    # "freshestCRL":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :catch_0
    move-exception v1

    .line 652
    .local v1, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v5, "Freshest CRL extension could not be decoded from certificate."

    invoke-direct {v4, v5, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 661
    .end local v1    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :catch_1
    move-exception v1

    .line 663
    .restart local v1    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v5, "Freshest CRL extension could not be decoded from CRL."

    invoke-direct {v4, v5, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 676
    .end local v1    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v0    # "crlStores":Ljava/util/List;
    :catch_2
    move-exception v1

    .line 678
    .restart local v1    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v5, "No new delta CRL locations could be added from Freshest CRL extension."

    invoke-direct {v4, v5, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 687
    .end local v1    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :catch_3
    move-exception v1

    .line 689
    .restart local v1    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v5, "Exception obtaining delta CRLs."

    invoke-direct {v4, v5, v1}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static processCRLA1ii(Ljava/util/Date;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)[Ljava/util/Set;
    .locals 10
    .param p0, "currentDate"    # Ljava/util/Date;
    .param p1, "paramsPKIX"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 703
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 704
    .local v2, "deltaSet":Ljava/util/Set;
    new-instance v1, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 705
    .local v1, "crlselect":Ljava/security/cert/X509CRLSelector;
    invoke-virtual {v1, p2}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 709
    :try_start_0
    invoke-static {p3}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    new-instance v6, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v6, v1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    invoke-virtual {v6, v9}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->setCompleteCRLEnabled(Z)Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v4

    .line 718
    .local v4, "extSelect":Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;
    move-object v5, p0

    .line 720
    .local v5, "validityDate":Ljava/util/Date;
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 722
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getDate()Ljava/util/Date;

    move-result-object v5

    .line 725
    :cond_0
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CRL_UTIL:Lorg/spongycastle/jce/provider/PKIXCRLUtil;

    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v4, v5, v7, v8}, Lorg/spongycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 727
    .local v0, "completeSet":Ljava/util/Set;
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 732
    :try_start_1
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v5, p3, v6, v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 739
    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/util/Set;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v2, v6, v9

    return-object v6

    .line 711
    .end local v0    # "completeSet":Ljava/util/Set;
    .end local v4    # "extSelect":Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;
    .end local v5    # "validityDate":Ljava/util/Date;
    :catch_0
    move-exception v3

    .line 713
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot extract issuer from CRL."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 734
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "completeSet":Ljava/util/Set;
    .restart local v4    # "extSelect":Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;
    .restart local v5    # "validityDate":Ljava/util/Date;
    :catch_1
    move-exception v3

    .line 736
    .local v3, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Exception obtaining delta CRLs."

    invoke-direct {v6, v7, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method protected static processCRLB1(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 10
    .param p0, "dp"    # Lorg/spongycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 291
    sget-object v7, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 292
    .local v2, "idp":Lorg/spongycastle/asn1/ASN1Primitive;
    const/4 v3, 0x0

    .line 293
    .local v3, "isIndirect":Z
    if-eqz v2, :cond_0

    .line 295
    invoke-static {v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 297
    const/4 v3, 0x1

    .line 304
    :cond_0
    :try_start_0
    invoke-static {p2}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x500/X500Name;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 311
    .local v4, "issuerBytes":[B
    const/4 v6, 0x0

    .line 312
    .local v6, "matchIssuer":Z
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 314
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 315
    .local v1, "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v7, v1

    if-ge v5, v7, :cond_2

    .line 317
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 321
    :try_start_1
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-interface {v7}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v7

    invoke-static {v7, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-eqz v7, :cond_1

    .line 323
    const/4 v6, 0x1

    .line 315
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v4    # "issuerBytes":[B
    .end local v5    # "j":I
    .end local v6    # "matchIssuer":Z
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception encoding CRL issuer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 326
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .restart local v4    # "issuerBytes":[B
    .restart local v5    # "j":I
    .restart local v6    # "matchIssuer":Z
    :catch_1
    move-exception v0

    .line 328
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v7, v8, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 333
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    if-eqz v6, :cond_3

    if-nez v3, :cond_3

    .line 335
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v7, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 337
    :cond_3
    if-nez v6, :cond_5

    .line 339
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v7, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 344
    .end local v1    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_4
    invoke-static {p2}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v7

    .line 345
    invoke-static {p1}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v8

    .line 344
    invoke-virtual {v7, v8}, Lorg/spongycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 347
    const/4 v6, 0x1

    .line 350
    :cond_5
    if-nez v6, :cond_6

    .line 352
    new-instance v7, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v8, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v7, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 354
    :cond_6
    return-void
.end method

.method protected static processCRLB2(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 13
    .param p0, "dp"    # Lorg/spongycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 107
    const/4 v5, 0x0

    .line 110
    .local v5, "idp":Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v10, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v10}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 119
    if-eqz v5, :cond_11

    .line 121
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 124
    invoke-static {v5}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    .line 125
    .local v2, "dpName":Lorg/spongycastle/asn1/x509/DistributionPointName;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v8, "names":Ljava/util/List;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-nez v10, :cond_0

    .line 129
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 130
    .local v4, "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    array-length v10, v4

    if-ge v6, v10, :cond_0

    .line 132
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 113
    .end local v2    # "dpName":Lorg/spongycastle/asn1/x509/DistributionPointName;
    .end local v4    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v6    # "j":I
    .end local v8    # "names":Ljava/util/List;
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "Issuing distribution point extension could not be decoded."

    invoke-direct {v10, v11, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 135
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "dpName":Lorg/spongycastle/asn1/x509/DistributionPointName;
    .restart local v8    # "names":Ljava/util/List;
    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-ne v10, v12, :cond_2

    .line 137
    new-instance v9, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 140
    .local v9, "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :try_start_1
    invoke-static {p2}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 141
    .local v3, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 143
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v9, v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 146
    .end local v3    # "e":Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "Could not read CRL issuer."

    invoke-direct {v10, v11, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 150
    .local v3, "e":Ljava/util/Enumeration;
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 151
    new-instance v10, Lorg/spongycastle/asn1/x509/GeneralName;

    new-instance v11, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v11, v9}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v11}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v9    # "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_2
    const/4 v7, 0x0

    .line 156
    .local v7, "matches":Z
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 158
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/spongycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    .line 159
    const/4 v4, 0x0

    .line 160
    .restart local v4    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-nez v10, :cond_3

    .line 162
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 164
    :cond_3
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-ne v10, v12, :cond_6

    .line 166
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 168
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 183
    :goto_2
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    array-length v10, v4

    if-ge v6, v10, :cond_6

    .line 185
    aget-object v10, v4, v6

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/GeneralName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-interface {v10}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 186
    .restart local v3    # "e":Ljava/util/Enumeration;
    new-instance v9, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 187
    .restart local v9    # "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :goto_4
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 189
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v9, v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_4

    .line 172
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v6    # "j":I
    .end local v9    # "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_4
    new-array v4, v12, [Lorg/spongycastle/asn1/x509/GeneralName;

    .line 175
    const/4 v10, 0x0

    :try_start_2
    new-instance v11, Lorg/spongycastle/asn1/x509/GeneralName;

    .line 176
    invoke-static {p1}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v12

    invoke-virtual {v12}, Lorg/spongycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v12

    .line 175
    invoke-static {v12}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    aput-object v11, v4, v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 178
    :catch_2
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "Could not read certificate issuer."

    invoke-direct {v10, v11, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 191
    .local v3, "e":Ljava/util/Enumeration;
    .restart local v6    # "j":I
    .restart local v9    # "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_5
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/DistributionPointName;->getName()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 192
    new-instance v10, Lorg/spongycastle/asn1/x509/GeneralName;

    new-instance v11, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v11, v9}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v11}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    aput-object v10, v4, v6

    .line 183
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 195
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v6    # "j":I
    .end local v9    # "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_6
    if-eqz v4, :cond_7

    .line 197
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_5
    array-length v10, v4

    if-ge v6, v10, :cond_7

    .line 199
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 201
    const/4 v7, 0x1

    .line 206
    .end local v6    # "j":I
    :cond_7
    if-nez v7, :cond_d

    .line 208
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v10, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 197
    .restart local v6    # "j":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 217
    .end local v4    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v6    # "j":I
    :cond_9
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v10

    if-nez v10, :cond_a

    .line 219
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v10, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 222
    :cond_a
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 223
    .restart local v4    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_6
    array-length v10, v4

    if-ge v6, v10, :cond_b

    .line 225
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 227
    const/4 v7, 0x1

    .line 231
    :cond_b
    if-nez v7, :cond_d

    .line 233
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v10, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 223
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 238
    .end local v2    # "dpName":Lorg/spongycastle/asn1/x509/DistributionPointName;
    .end local v4    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v6    # "j":I
    .end local v7    # "matches":Z
    .end local v8    # "names":Ljava/util/List;
    :cond_d
    const/4 v1, 0x0

    .line 241
    .local v1, "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_start_3
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Extension;

    move-object v10, v0

    sget-object v11, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v10, v11}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 249
    instance-of v10, p1, Ljava/security/cert/X509Certificate;

    if-eqz v10, :cond_10

    .line 252
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 254
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "CA Cert CRL only contains user certificates."

    invoke-direct {v10, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 244
    :catch_3
    move-exception v3

    .line 246
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "Basic constraints extension could not be decoded."

    invoke-direct {v10, v11, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 258
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_e
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v10

    if-nez v10, :cond_10

    .line 260
    :cond_f
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "End CRL only contains CA certificates."

    invoke-direct {v10, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 265
    :cond_10
    invoke-virtual {v5}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 267
    new-instance v10, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v11, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v10, v11}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 270
    .end local v1    # "bc":Lorg/spongycastle/asn1/x509/BasicConstraints;
    :cond_11
    return-void
.end method

.method protected static processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V
    .locals 8
    .param p0, "deltaCRL"    # Ljava/security/cert/X509CRL;
    .param p1, "completeCRL"    # Ljava/security/cert/X509CRL;
    .param p2, "pkixParams"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 761
    if-nez p0, :cond_1

    .line 859
    :cond_0
    return-void

    .line 765
    :cond_1
    const/4 v1, 0x0

    .line 768
    .local v1, "completeidp":Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p1, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 776
    invoke-virtual {p2}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 779
    invoke-static {p0}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-static {p1}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/spongycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 781
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {v6, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 771
    :catch_0
    move-exception v4

    .line 773
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension could not be decoded."

    invoke-direct {v6, v7, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 785
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    .line 788
    .local v3, "deltaidp":Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_1
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 797
    const/4 v5, 0x0

    .line 798
    .local v5, "match":Z
    if-nez v1, :cond_4

    .line 800
    if-nez v3, :cond_3

    .line 802
    const/4 v5, 0x1

    .line 812
    :cond_3
    :goto_0
    if-nez v5, :cond_5

    .line 814
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {v6, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 791
    .end local v5    # "match":Z
    :catch_1
    move-exception v4

    .line 793
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {v6, v7, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 807
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "match":Z
    :cond_4
    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 809
    const/4 v5, 0x1

    goto :goto_0

    .line 819
    :cond_5
    const/4 v0, 0x0

    .line 822
    .local v0, "completeKeyIdentifier":Lorg/spongycastle/asn1/ASN1Primitive;
    :try_start_2
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p1, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 831
    const/4 v2, 0x0

    .line 834
    .local v2, "deltaKeyIdentifier":Lorg/spongycastle/asn1/ASN1Primitive;
    :try_start_3
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p0, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 843
    if-nez v0, :cond_6

    .line 845
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL authority key identifier is null."

    invoke-direct {v6, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 825
    .end local v2    # "deltaKeyIdentifier":Lorg/spongycastle/asn1/ASN1Primitive;
    :catch_2
    move-exception v4

    .line 827
    .local v4, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {v6, v7, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 837
    .end local v4    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v2    # "deltaKeyIdentifier":Lorg/spongycastle/asn1/ASN1Primitive;
    :catch_3
    move-exception v4

    .line 839
    .restart local v4    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {v6, v7, v4}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 848
    .end local v4    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :cond_6
    if-nez v2, :cond_7

    .line 850
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Delta CRL authority key identifier is null."

    invoke-direct {v6, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 853
    :cond_7
    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 855
    new-instance v6, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v7, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {v6, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected static processCRLD(Ljava/security/cert/X509CRL;Lorg/spongycastle/asn1/x509/DistributionPoint;)Lorg/spongycastle/jce/provider/ReasonsMask;
    .locals 5
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "dp"    # Lorg/spongycastle/asn1/x509/DistributionPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v1, 0x0

    .line 364
    .local v1, "idp":Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 372
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 374
    new-instance v2, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    new-instance v3, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/jce/provider/ReasonsMask;->intersect(Lorg/spongycastle/jce/provider/ReasonsMask;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v2

    .line 382
    :goto_0
    return-object v2

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 377
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_2

    .line 379
    sget-object v2, Lorg/spongycastle/jce/provider/ReasonsMask;->allReasons:Lorg/spongycastle/jce/provider/ReasonsMask;

    goto :goto_0

    .line 382
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v2, Lorg/spongycastle/jce/provider/ReasonsMask;->allReasons:Lorg/spongycastle/jce/provider/ReasonsMask;

    move-object v3, v2

    .line 384
    :goto_1
    if-nez v1, :cond_4

    sget-object v2, Lorg/spongycastle/jce/provider/ReasonsMask;->allReasons:Lorg/spongycastle/jce/provider/ReasonsMask;

    :goto_2
    invoke-virtual {v3, v2}, Lorg/spongycastle/jce/provider/ReasonsMask;->intersect(Lorg/spongycastle/jce/provider/ReasonsMask;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v2

    goto :goto_0

    .line 382
    :cond_3
    new-instance v2, Lorg/spongycastle/jce/provider/ReasonsMask;

    .line 384
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    move-object v3, v2

    goto :goto_1

    :cond_4
    new-instance v2, Lorg/spongycastle/jce/provider/ReasonsMask;

    .line 386
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/spongycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V

    goto :goto_2
.end method

.method protected static processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lorg/spongycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .locals 23
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p4, "paramsPKIX"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .param p5, "certPathCerts"    # Ljava/util/List;
    .param p6, "helper"    # Lorg/spongycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 459
    new-instance v3, Ljava/security/cert/X509CertSelector;

    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 462
    .local v3, "certSelector":Ljava/security/cert/X509CertSelector;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v11

    .line 463
    .local v11, "issuerPrincipal":[B
    invoke-virtual {v3, v11}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    new-instance v21, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v15

    .line 477
    .local v15, "selector":Lorg/spongycastle/jcajce/PKIXCertStoreSelector;
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v15, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    .line 478
    .local v7, "coll":Ljava/util/Collection;
    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v15, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 485
    move-object/from16 v0, p2

    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 489
    .local v4, "cert_it":Ljava/util/Iterator;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v19, "validCerts":Ljava/util/List;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v20, "validKeys":Ljava/util/List;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 494
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/X509Certificate;

    .line 500
    .local v17, "signingCert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 502
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    .end local v4    # "cert_it":Ljava/util/Iterator;
    .end local v7    # "coll":Ljava/util/Collection;
    .end local v11    # "issuerPrincipal":[B
    .end local v15    # "selector":Lorg/spongycastle/jcajce/PKIXCertStoreSelector;
    .end local v17    # "signingCert":Ljava/security/cert/X509Certificate;
    .end local v19    # "validCerts":Ljava/util/List;
    .end local v20    # "validKeys":Ljava/util/List;
    :catch_0
    move-exception v8

    .line 467
    .local v8, "e":Ljava/io/IOException;
    new-instance v21, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v22, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 480
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v11    # "issuerPrincipal":[B
    .restart local v15    # "selector":Lorg/spongycastle/jcajce/PKIXCertStoreSelector;
    :catch_1
    move-exception v8

    .line 482
    .local v8, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v21, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v22, "Issuer certificate for CRL cannot be searched."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 508
    .end local v8    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v4    # "cert_it":Ljava/util/Iterator;
    .restart local v7    # "coll":Ljava/util/Collection;
    .restart local v17    # "signingCert":Ljava/security/cert/X509Certificate;
    .restart local v19    # "validCerts":Ljava/util/List;
    .restart local v20    # "validKeys":Ljava/util/List;
    :cond_0
    :try_start_2
    new-instance v2, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;

    invoke-direct {v2}, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;-><init>()V

    .line 509
    .local v2, "builder":Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;
    new-instance v18, Ljava/security/cert/X509CertSelector;

    invoke-direct/range {v18 .. v18}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 510
    .local v18, "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 512
    new-instance v21, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V

    new-instance v22, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    .line 513
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->setTargetConstraints(Lorg/spongycastle/jcajce/PKIXCertStoreSelector;)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v14

    .line 524
    .local v14, "paramsBuilder":Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 526
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    .line 533
    :goto_1
    new-instance v21, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v14}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v9

    .line 535
    .local v9, "extParams":Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;
    invoke-virtual {v2, v9}, Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;->engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 536
    .local v5, "certs":Ljava/util/List;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p6

    invoke-static {v5, v0, v1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILorg/spongycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 539
    .end local v2    # "builder":Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;
    .end local v5    # "certs":Ljava/util/List;
    .end local v9    # "extParams":Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local v14    # "paramsBuilder":Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v18    # "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    :catch_2
    move-exception v8

    .line 541
    .local v8, "e":Ljava/security/cert/CertPathBuilderException;
    new-instance v21, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v22, "CertPath for CRL signer failed to validate."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 530
    .end local v8    # "e":Ljava/security/cert/CertPathBuilderException;
    .restart local v2    # "builder":Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;
    .restart local v14    # "paramsBuilder":Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v18    # "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    :cond_1
    const/16 v21, 0x1

    :try_start_3
    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 543
    .end local v2    # "builder":Lorg/spongycastle/jce/provider/PKIXCertPathBuilderSpi;
    .end local v14    # "paramsBuilder":Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v18    # "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    :catch_3
    move-exception v8

    .line 545
    .local v8, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v21, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v22, "Public key of issuer certificate of CRL could not be retrieved."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v8}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 547
    .end local v8    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_4
    move-exception v8

    .line 549
    .local v8, "e":Ljava/lang/Exception;
    new-instance v21, Lorg/spongycastle/jce/provider/AnnotatedException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 553
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v17    # "signingCert":Ljava/security/cert/X509Certificate;
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 555
    .local v6, "checkKeys":Ljava/util/Set;
    const/4 v13, 0x0

    .line 556
    .local v13, "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_5

    .line 558
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/X509Certificate;

    .line 559
    .local v16, "signCert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v12

    .line 561
    .local v12, "keyusage":[Z
    if-eqz v12, :cond_4

    array-length v0, v12

    move/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    const/16 v21, 0x6

    aget-boolean v21, v12, v21

    if-nez v21, :cond_4

    .line 563
    :cond_3
    new-instance v13, Lorg/spongycastle/jce/provider/AnnotatedException;

    .end local v13    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    const-string v21, "Issuer certificate key usage extension does not permit CRL signing."

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 556
    .restart local v13    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 568
    :cond_4
    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 572
    .end local v12    # "keyusage":[Z
    .end local v16    # "signCert":Ljava/security/cert/X509Certificate;
    :cond_5
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_6

    if-nez v13, :cond_6

    .line 574
    new-instance v21, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v22, "Cannot find a valid issuer certificate."

    invoke-direct/range {v21 .. v22}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 576
    :cond_6
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_7

    if-eqz v13, :cond_7

    .line 578
    throw v13

    .line 581
    :cond_7
    return-object v6
.end method

.method protected static processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .locals 6
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "keys"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 589
    const/4 v3, 0x0

    .line 590
    .local v3, "lastException":Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 592
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 595
    .local v2, "key":Ljava/security/PublicKey;
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    return-object v2

    .line 598
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v0

    .line 602
    goto :goto_0

    .line 603
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "key":Ljava/security/PublicKey;
    :cond_0
    new-instance v4, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot verify CRL."

    invoke-direct {v4, v5, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .locals 6
    .param p0, "deltacrls"    # Ljava/util/Set;
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 611
    const/4 v3, 0x0

    .line 613
    .local v3, "lastException":Ljava/lang/Exception;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 615
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 618
    .local v0, "crl":Ljava/security/cert/X509CRL;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    :goto_1
    return-object v0

    .line 621
    .restart local v0    # "crl":Ljava/security/cert/X509CRL;
    :catch_0
    move-exception v1

    .line 623
    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v1

    .line 625
    goto :goto_0

    .line 627
    .end local v0    # "crl":Ljava/security/cert/X509CRL;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz v3, :cond_1

    .line 629
    new-instance v4, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot verify delta CRL."

    invoke-direct {v4, v5, v3}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 631
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V
    .locals 1
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "deltacrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lorg/spongycastle/jce/provider/CertStatus;
    .param p4, "pkixParams"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 869
    invoke-virtual {p4}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 871
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 873
    :cond_0
    return-void
.end method

.method protected static processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V
    .locals 2
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "completecrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lorg/spongycastle/jce/provider/CertStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 882
    invoke-virtual {p3}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 884
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 886
    :cond_0
    return-void
.end method

.method protected static processCertA(Ljava/security/cert/CertPath;Lorg/spongycastle/jcajce/PKIXExtendedParameters;ILjava/security/PublicKey;ZLorg/spongycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V
    .locals 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .param p2, "index"    # I
    .param p3, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p4, "verificationAlreadyPerformed"    # Z
    .param p5, "workingIssuerName"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p6, "sign"    # Ljava/security/cert/X509Certificate;
    .param p7, "helper"    # Lorg/spongycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1490
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1491
    .local v5, "certs":Ljava/util/List;
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1495
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-nez p4, :cond_0

    .line 1502
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    .line 1501
    invoke-static {v1, p3, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1515
    :cond_0
    :try_start_1
    invoke-static {p1, p0, p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v0

    .line 1514
    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1533
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1537
    :try_start_2
    invoke-static {p1, p0, p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v2

    move-object v0, p1

    move-object v3, p6

    move-object v4, p3

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V
    :try_end_2
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1554
    :cond_1
    invoke-static {v1}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v0, p5}, Lorg/spongycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1556
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IssuerName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not match SubjectName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") of signing certificate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1504
    :catch_0
    move-exception v8

    .line 1506
    .local v8, "e":Ljava/security/GeneralSecurityException;
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate certificate signature."

    invoke-direct {v0, v2, v8, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1517
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v8

    .line 1519
    .local v8, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v8, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1521
    .end local v8    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_2
    move-exception v8

    .line 1523
    .local v8, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v8, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1525
    .end local v8    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_3
    move-exception v8

    .line 1527
    .local v8, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate time of certificate."

    invoke-direct {v0, v2, v8, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1540
    .end local v8    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :catch_4
    move-exception v8

    .line 1542
    .restart local v8    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    move-object v7, v8

    .line 1543
    .local v7, "cause":Ljava/lang/Throwable;
    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1545
    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    .line 1547
    :cond_2
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v8}, Lorg/spongycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, p0, p2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1560
    .end local v7    # "cause":Ljava/lang/Throwable;
    .end local v8    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :cond_3
    return-void
.end method

.method protected static processCertBC(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 21
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1185
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v6

    .line 1186
    .local v6, "certs":Ljava/util/List;
    move/from16 v0, p1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 1187
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    .line 1189
    .local v17, "n":I
    sub-int v15, v17, p1

    .line 1193
    .local v15, "i":I
    invoke-static {v5}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v19

    if-eqz v19, :cond_0

    move/from16 v0, v17

    if-lt v15, v0, :cond_2

    .line 1195
    :cond_0
    invoke-static {v5}, Lorg/spongycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v18

    .line 1200
    .local v18, "principal":Lorg/spongycastle/asn1/x500/X500Name;
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1210
    .local v7, "dns":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 1211
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lorg/spongycastle/asn1/ASN1Sequence;)V
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1219
    const/4 v4, 0x0

    .line 1222
    .local v4, "altName":Lorg/spongycastle/asn1/x509/GeneralNames;
    :try_start_2
    sget-object v19, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 1230
    invoke-static {v7}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v19

    sget-object v20, Lorg/spongycastle/asn1/x500/style/BCStyle;->EmailAddress:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v19 .. v20}, Lorg/spongycastle/asn1/x500/X500Name;->getRDNs(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v12

    .line 1231
    .local v12, "emails":[Lorg/spongycastle/asn1/x500/RDN;
    const/4 v9, 0x0

    .local v9, "eI":I
    :goto_0
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v9, v0, :cond_1

    .line 1234
    aget-object v19, v12, v9

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/x500/RDN;->getFirst()Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/asn1/ASN1String;

    invoke-interface/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v10

    .line 1235
    .local v10, "email":Ljava/lang/String;
    new-instance v11, Lorg/spongycastle/asn1/x509/GeneralName;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v11, v0, v10}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 1238
    .local v11, "emailAsGeneralName":Lorg/spongycastle/asn1/x509/GeneralName;
    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lorg/spongycastle/asn1/x509/GeneralName;)V

    .line 1239
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lorg/spongycastle/asn1/x509/GeneralName;)V
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1231
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1202
    .end local v4    # "altName":Lorg/spongycastle/asn1/x509/GeneralNames;
    .end local v7    # "dns":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v9    # "eI":I
    .end local v10    # "email":Ljava/lang/String;
    .end local v11    # "emailAsGeneralName":Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v12    # "emails":[Lorg/spongycastle/asn1/x500/RDN;
    :catch_0
    move-exception v8

    .line 1204
    .local v8, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Exception extracting subject name when checking subtrees."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v8, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1213
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "dns":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v8

    .line 1215
    .local v8, "e":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v8, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1225
    .end local v8    # "e":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    .restart local v4    # "altName":Lorg/spongycastle/asn1/x509/GeneralNames;
    :catch_2
    move-exception v8

    .line 1227
    .local v8, "e":Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subject alternative name extension could not be decoded."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v8, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1241
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "eI":I
    .restart local v10    # "email":Ljava/lang/String;
    .restart local v11    # "emailAsGeneralName":Lorg/spongycastle/asn1/x509/GeneralName;
    .restart local v12    # "emails":[Lorg/spongycastle/asn1/x500/RDN;
    :catch_3
    move-exception v13

    .line 1243
    .local v13, "ex":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject alternative email failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v13, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1247
    .end local v10    # "email":Ljava/lang/String;
    .end local v11    # "emailAsGeneralName":Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v13    # "ex":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    :cond_1
    if-eqz v4, :cond_2

    .line 1249
    const/4 v14, 0x0

    .line 1252
    .local v14, "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    :try_start_4
    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/GeneralNames;->getNames()[Lorg/spongycastle/asn1/x509/GeneralName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v14

    .line 1259
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1264
    :try_start_5
    aget-object v19, v14, v16

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lorg/spongycastle/asn1/x509/GeneralName;)V

    .line 1265
    aget-object v19, v14, v16

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lorg/spongycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1259
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1254
    .end local v16    # "j":I
    :catch_4
    move-exception v8

    .line 1256
    .restart local v8    # "e":Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subject alternative name contents could not be decoded."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v8, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1267
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v16    # "j":I
    :catch_5
    move-exception v8

    .line 1269
    .local v8, "e":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject alternative name failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v8, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1275
    .end local v4    # "altName":Lorg/spongycastle/asn1/x509/GeneralNames;
    .end local v7    # "dns":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v8    # "e":Lorg/spongycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v9    # "eI":I
    .end local v12    # "emails":[Lorg/spongycastle/asn1/x500/RDN;
    .end local v14    # "genNames":[Lorg/spongycastle/asn1/x509/GeneralName;
    .end local v16    # "j":I
    .end local v18    # "principal":Lorg/spongycastle/asn1/x500/X500Name;
    :cond_2
    return-void
.end method

.method protected static processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 38
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "acceptablePolicies"    # Ljava/util/Set;
    .param p3, "validPolicyTree"    # Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1286
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v20

    .line 1287
    .local v20, "certs":Ljava/util/List;
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/X509Certificate;

    .line 1288
    .local v18, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v29

    .line 1290
    .local v29, "n":I
    sub-int v5, v29, p1

    .line 1295
    .local v5, "i":I
    const/16 v19, 0x0

    .line 1298
    .local v19, "certPolicies":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 1306
    if-eqz v19, :cond_11

    if-eqz p3, :cond_11

    .line 1311
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v23

    .line 1312
    .local v23, "e":Ljava/util/Enumeration;
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    .line 1314
    .local v35, "pols":Ljava/util/Set;
    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1316
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v33

    .line 1317
    .local v33, "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v33 .. v33}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v34

    .line 1319
    .local v34, "pOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1321
    const-string v4, "2.5.29.32.0"

    invoke-virtual/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1323
    const/16 v36, 0x0

    .line 1326
    .local v36, "pq":Ljava/util/Set;
    :try_start_1
    invoke-virtual/range {v33 .. v33}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v36

    .line 1334
    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-static {v5, v0, v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v28

    .line 1336
    .local v28, "match":Z
    if-nez v28, :cond_0

    .line 1338
    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-static {v5, v0, v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    goto :goto_0

    .line 1301
    .end local v23    # "e":Ljava/util/Enumeration;
    .end local v28    # "match":Z
    .end local v33    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    .end local v34    # "pOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v35    # "pols":Ljava/util/Set;
    .end local v36    # "pq":Ljava/util/Set;
    :catch_0
    move-exception v23

    .line 1303
    .local v23, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Could not read certificate policies extension from certificate."

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v10, v0, v1, v2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1328
    .local v23, "e":Ljava/util/Enumeration;
    .restart local v33    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    .restart local v34    # "pOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local v35    # "pols":Ljava/util/Set;
    .restart local v36    # "pq":Ljava/util/Set;
    :catch_1
    move-exception v24

    .line 1330
    .local v24, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Policy qualifier info set could not be build."

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v10, v0, v1, v2}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1343
    .end local v24    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v33    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    .end local v34    # "pOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v36    # "pq":Ljava/util/Set;
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "2.5.29.32.0"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1345
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1346
    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1369
    :goto_1
    if-gtz p5, :cond_3

    move/from16 v0, v29

    if-ge v5, v0, :cond_d

    invoke-static/range {v18 .. v18}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1371
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v23

    .line 1373
    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1375
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v33

    .line 1377
    .restart local v33    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    const-string v4, "2.5.29.32.0"

    invoke-virtual/range {v33 .. v33}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1379
    invoke-virtual/range {v33 .. v33}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lorg/spongycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v8

    .line 1380
    .local v8, "_apq":Ljava/util/Set;
    add-int/lit8 v4, v5, -0x1

    aget-object v14, p4, v4

    .line 1382
    .local v14, "_nodes":Ljava/util/List;
    const/16 v27, 0x0

    .local v27, "k":I
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_d

    .line 1384
    move/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1386
    .local v7, "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1387
    .local v15, "_policySetIter":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1389
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 1392
    .local v16, "_tmp":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object/from16 v9, v16

    .line 1394
    check-cast v9, Ljava/lang/String;

    .line 1405
    .end local v16    # "_tmp":Ljava/lang/Object;
    .local v9, "_policy":Ljava/lang/String;
    :goto_4
    const/4 v13, 0x0

    .line 1406
    .local v13, "_found":Z
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v12

    .line 1408
    .local v12, "_childrenIter":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1410
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1412
    .local v11, "_child":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1414
    const/4 v13, 0x1

    goto :goto_5

    .line 1350
    .end local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "_apq":Ljava/util/Set;
    .end local v9    # "_policy":Ljava/lang/String;
    .end local v11    # "_child":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "_childrenIter":Ljava/util/Iterator;
    .end local v13    # "_found":Z
    .end local v14    # "_nodes":Ljava/util/List;
    .end local v15    # "_policySetIter":Ljava/util/Iterator;
    .end local v27    # "k":I
    .end local v33    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    :cond_7
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 1351
    .local v25, "it":Ljava/util/Iterator;
    new-instance v37, Ljava/util/HashSet;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashSet;-><init>()V

    .line 1353
    .local v37, "t1":Ljava/util/Set;
    :cond_8
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1355
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    .line 1357
    .local v32, "o":Ljava/lang/Object;
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1359
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1362
    .end local v32    # "o":Ljava/lang/Object;
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1363
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1396
    .end local v25    # "it":Ljava/util/Iterator;
    .end local v37    # "t1":Ljava/util/Set;
    .restart local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .restart local v8    # "_apq":Ljava/util/Set;
    .restart local v14    # "_nodes":Ljava/util/List;
    .restart local v15    # "_policySetIter":Ljava/util/Iterator;
    .restart local v16    # "_tmp":Ljava/lang/Object;
    .restart local v27    # "k":I
    .restart local v33    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    :cond_a
    move-object/from16 v0, v16

    instance-of v4, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v4, :cond_5

    .line 1398
    check-cast v16, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v16    # "_tmp":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "_policy":Ljava/lang/String;
    goto :goto_4

    .line 1418
    .restart local v12    # "_childrenIter":Ljava/util/Iterator;
    .restart local v13    # "_found":Z
    :cond_b
    if-nez v13, :cond_5

    .line 1420
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1421
    .local v6, "_newChildExpectedPolicies":Ljava/util/Set;
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1423
    new-instance v3, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1425
    .local v3, "_newChild":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/spongycastle/jce/provider/PKIXPolicyNode;)V

    .line 1426
    aget-object v4, p4, v5

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1382
    .end local v3    # "_newChild":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "_newChildExpectedPolicies":Ljava/util/Set;
    .end local v9    # "_policy":Ljava/lang/String;
    .end local v12    # "_childrenIter":Ljava/util/Iterator;
    .end local v13    # "_found":Z
    :cond_c
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 1435
    .end local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "_apq":Ljava/util/Set;
    .end local v14    # "_nodes":Ljava/util/List;
    .end local v15    # "_policySetIter":Ljava/util/Iterator;
    .end local v27    # "k":I
    .end local v33    # "pInfo":Lorg/spongycastle/asn1/x509/PolicyInformation;
    :cond_d
    move-object/from16 v17, p3

    .line 1439
    .local v17, "_validPolicyTree":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v26, v5, -0x1

    .local v26, "j":I
    :goto_7
    if-ltz v26, :cond_10

    .line 1441
    aget-object v31, p4, v26

    .line 1443
    .local v31, "nodes":Ljava/util/List;
    const/16 v27, 0x0

    .restart local v27    # "k":I
    :goto_8
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_e

    .line 1445
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1446
    .local v30, "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v30 .. v30}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1448
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v17

    .line 1450
    if-nez v17, :cond_f

    .line 1439
    .end local v30    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_e
    add-int/lit8 v26, v26, -0x1

    goto :goto_7

    .line 1443
    .restart local v30    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_f
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 1461
    .end local v27    # "k":I
    .end local v30    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v31    # "nodes":Ljava/util/List;
    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v22

    .line 1463
    .local v22, "criticalExtensionOids":Ljava/util/Set;
    if-eqz v22, :cond_12

    .line 1465
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    .line 1467
    .local v21, "critical":Z
    aget-object v31, p4, v5

    .line 1468
    .restart local v31    # "nodes":Ljava/util/List;
    const/16 v26, 0x0

    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_12

    .line 1470
    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 1471
    .restart local v30    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    .line 1468
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 1476
    .end local v17    # "_validPolicyTree":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v21    # "critical":Z
    .end local v22    # "criticalExtensionOids":Ljava/util/Set;
    .end local v23    # "e":Ljava/util/Enumeration;
    .end local v26    # "j":I
    .end local v30    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v31    # "nodes":Ljava/util/List;
    .end local v35    # "pols":Ljava/util/Set;
    :cond_11
    const/16 v17, 0x0

    :cond_12
    return-object v17
.end method

.method protected static processCertE(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1156
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 1157
    .local v2, "certs":Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1161
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 1164
    .local v1, "certPolicies":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v0, v4}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1172
    if-nez v1, :cond_0

    .line 1174
    const/4 p2, 0x0

    .line 1176
    :cond_0
    return-object p2

    .line 1167
    :catch_0
    move-exception v3

    .line 1169
    .local v3, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Could not read certificate policies extension from certificate."

    invoke-direct {v4, v5, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static processCertF(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;I)V
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .param p3, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1143
    if-gtz p3, :cond_0

    if-nez p2, :cond_0

    .line 1145
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "No valid policy tree found when one expected."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1148
    :cond_0
    return-void
.end method

.method protected static wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .locals 1
    .param p0, "explicitPolicy"    # I
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 2345
    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2347
    add-int/lit8 p0, p0, -0x1

    .line 2349
    :cond_0
    return p0
.end method

.method protected static wrapupCertB(Ljava/security/cert/CertPath;II)I
    .locals 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2358
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2359
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2364
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 2367
    .local v4, "pc":Lorg/spongycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v8, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v8}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-static {v8}, Lorg/spongycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2374
    if-eqz v4, :cond_1

    .line 2376
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 2378
    .local v5, "policyConstraints":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2380
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 2381
    .local v2, "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 2386
    :pswitch_0
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v2, v8}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v8

    invoke-virtual {v8}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 2394
    .local v6, "tmpInt":I
    if-nez v6, :cond_0

    move p2, v7

    .line 2402
    .end local v2    # "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .end local v5    # "policyConstraints":Ljava/util/Enumeration;
    .end local v6    # "tmpInt":I
    .end local p2    # "explicitPolicy":I
    :cond_1
    return p2

    .line 2370
    .restart local p2    # "explicitPolicy":I
    :catch_0
    move-exception v3

    .line 2372
    .local v3, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v7, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints could not be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 2388
    .end local v3    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v2    # "constraint":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .restart local v5    # "policyConstraints":Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 2390
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy constraints requireExplicitPolicy field could not be decoded."

    invoke-direct {v7, v8, v3, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 2381
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected static wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "pathCheckers"    # Ljava/util/List;
    .param p3, "criticalExtensions"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2412
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 2413
    .local v1, "certs":Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 2415
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2416
    .local v3, "tmpIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2420
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v4, v0, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2422
    :catch_0
    move-exception v2

    .line 2424
    .local v2, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Additional certificate path checker failed."

    invoke-direct {v4, v5, v2, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2429
    .end local v2    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2431
    new-instance v4, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate has unsupported critical extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0, p1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2434
    :cond_1
    return-void
.end method

.method protected static wrapupCertG(Ljava/security/cert/CertPath;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .locals 21
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .param p2, "userInitialPolicySet"    # Ljava/util/Set;
    .param p3, "index"    # I
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "validPolicyTree"    # Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .param p6, "acceptablePolicies"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 2446
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v15

    .line 2455
    .local v15, "n":I
    if-nez p5, :cond_1

    .line 2457
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2459
    new-instance v18, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v19, "Explicit policy requested but none available."

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v18

    .line 2462
    :cond_0
    const/4 v12, 0x0

    .line 2610
    .local v12, "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :goto_0
    return-object v12

    .line 2464
    .end local v12    # "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    invoke-static/range {p2 .. p2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2467
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 2469
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2471
    new-instance v18, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v19, "Explicit policy requested but none available."

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v18

    .line 2476
    :cond_2
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2478
    .local v10, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_5

    .line 2480
    aget-object v8, p4, v13

    .line 2482
    .local v8, "_nodeDepth":Ljava/util/List;
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_4

    .line 2484
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2486
    .local v7, "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const-string v18, "2.5.29.32.0"

    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2488
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    .line 2489
    .local v6, "_iter":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2491
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2482
    .end local v6    # "_iter":Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2478
    .end local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2497
    .end local v8    # "_nodeDepth":Ljava/util/List;
    .end local v14    # "k":I
    :cond_5
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2498
    .local v11, "_vpnsIter":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2500
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2501
    .restart local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 2503
    .local v9, "_validPolicy":Ljava/lang/String;
    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    goto :goto_4

    .line 2510
    .end local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_validPolicy":Ljava/lang/String;
    :cond_7
    if-eqz p5, :cond_a

    .line 2512
    add-int/lit8 v13, v15, -0x1

    :goto_5
    if-ltz v13, :cond_a

    .line 2514
    aget-object v17, p4, v13

    .line 2516
    .local v17, "nodes":Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14    # "k":I
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_9

    .line 2518
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2519
    .local v16, "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_8

    .line 2521
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2516
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 2512
    .end local v16    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_9
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .line 2530
    .end local v10    # "_validPolicyNodeSet":Ljava/util/Set;
    .end local v11    # "_vpnsIter":Ljava/util/Iterator;
    .end local v13    # "j":I
    .end local v14    # "k":I
    .end local v17    # "nodes":Ljava/util/List;
    :cond_a
    move-object/from16 v12, p5

    .restart local v12    # "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_0

    .line 2547
    .end local v12    # "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_b
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2549
    .restart local v10    # "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_7
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_f

    .line 2551
    aget-object v8, p4, v13

    .line 2553
    .restart local v8    # "_nodeDepth":Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14    # "k":I
    :goto_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_e

    .line 2555
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2557
    .restart local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const-string v18, "2.5.29.32.0"

    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2559
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    .line 2560
    .restart local v6    # "_iter":Ljava/util/Iterator;
    :cond_c
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 2562
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2563
    .local v5, "_c_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    const-string v18, "2.5.29.32.0"

    invoke-virtual {v5}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 2565
    invoke-interface {v10, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2553
    .end local v5    # "_c_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "_iter":Ljava/util/Iterator;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 2549
    .end local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2575
    .end local v8    # "_nodeDepth":Ljava/util/List;
    .end local v14    # "k":I
    :cond_f
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2576
    .restart local v11    # "_vpnsIter":Ljava/util/Iterator;
    :cond_10
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 2578
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2579
    .restart local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 2581
    .restart local v9    # "_validPolicy":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 2583
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v0, v1, v7}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    goto :goto_a

    .line 2590
    .end local v7    # "_node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_validPolicy":Ljava/lang/String;
    :cond_11
    if-eqz p5, :cond_14

    .line 2592
    add-int/lit8 v13, v15, -0x1

    :goto_b
    if-ltz v13, :cond_14

    .line 2594
    aget-object v17, p4, v13

    .line 2596
    .restart local v17    # "nodes":Ljava/util/List;
    const/4 v14, 0x0

    .restart local v14    # "k":I
    :goto_c
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_13

    .line 2598
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    .line 2599
    .restart local v16    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v18

    if-nez v18, :cond_12

    .line 2601
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    .line 2596
    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 2592
    .end local v16    # "node":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    :cond_13
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    .line 2608
    .end local v14    # "k":I
    .end local v17    # "nodes":Ljava/util/List;
    :cond_14
    move-object/from16 v12, p5

    .restart local v12    # "intersection":Lorg/spongycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_0
.end method
