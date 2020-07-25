.class Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3281CertPathUtilities.java"


# static fields
.field private static final AUTHORITY_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field private static final NO_REV_AVAIL:Ljava/lang/String;

.field private static final TARGET_INFORMATION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->targetInformation:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    .line 58
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->noRevAvail:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 59
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->NO_REV_AVAIL:Ljava/lang/String;

    .line 61
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 64
    sget-object v0, Lorg/spongycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 65
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->AUTHORITY_INFO_ACCESS:Ljava/lang/String;

    .line 64
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static additionalChecks(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .param p0, "attrCert"    # Lorg/spongycastle/x509/X509AttributeCertificate;
    .param p1, "prohibitedACAttributes"    # Ljava/util/Set;
    .param p2, "necessaryACAttributes"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 303
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    .local v1, "oid":Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/spongycastle/x509/X509AttributeCertificate;->getAttributes(Ljava/lang/String;)[Lorg/spongycastle/x509/X509Attribute;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 308
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute certificate contains prohibited attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 313
    .end local v1    # "oid":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 314
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 317
    .restart local v1    # "oid":Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/spongycastle/x509/X509AttributeCertificate;->getAttributes(Ljava/lang/String;)[Lorg/spongycastle/x509/X509Attribute;

    move-result-object v2

    if-nez v2, :cond_2

    .line 319
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute certificate does not contain necessary attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    .end local v1    # "oid":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static checkCRL(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V
    .locals 22
    .param p0, "dp"    # Lorg/spongycastle/asn1/x509/DistributionPoint;
    .param p1, "attrCert"    # Lorg/spongycastle/x509/X509AttributeCertificate;
    .param p2, "paramsPKIX"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .param p3, "validDate"    # Ljava/util/Date;
    .param p4, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p5, "certStatus"    # Lorg/spongycastle/jce/provider/CertStatus;
    .param p6, "reasonMask"    # Lorg/spongycastle/jce/provider/ReasonsMask;
    .param p7, "certPathCerts"    # Ljava/util/List;
    .param p8, "helper"    # Lorg/spongycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 590
    sget-object v5, Lorg/spongycastle/asn1/x509/X509Extensions;->NoRevAvail:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/spongycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 717
    :cond_0
    return-void

    .line 594
    :cond_1
    new-instance v13, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v13, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 595
    .local v13, "currentDate":Ljava/util/Date;
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    .line 597
    new-instance v5, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v6, "Validation time is in future."

    invoke-direct {v5, v6}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 608
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v13, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Set;

    move-result-object v12

    .line 610
    .local v12, "crls":Ljava/util/Set;
    const/16 v21, 0x0

    .line 611
    .local v21, "validCrlFound":Z
    const/16 v20, 0x0

    .line 612
    .local v20, "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 614
    .local v11, "crl_iter":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 615
    invoke-virtual/range {p5 .. p5}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_7

    .line 616
    invoke-virtual/range {p6 .. p6}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v5

    if-nez v5, :cond_7

    .line 620
    :try_start_0
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    .line 624
    .local v4, "crl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lorg/spongycastle/asn1/x509/DistributionPoint;)Lorg/spongycastle/jce/provider/ReasonsMask;

    move-result-object v17

    .line 632
    .local v17, "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;->hasNewReasons(Lorg/spongycastle/jce/provider/ReasonsMask;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 638
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v4 .. v10}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lorg/spongycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v19

    .line 640
    .local v19, "keys":Ljava/util/Set;
    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v18

    .line 642
    .local v18, "key":Ljava/security/PublicKey;
    const/4 v14, 0x0

    .line 644
    .local v14, "deltaCRL":Ljava/security/cert/X509CRL;
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 647
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v6

    invoke-static {v13, v4, v5, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v15

    .line 650
    .local v15, "deltaCRLs":Ljava/util/Set;
    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v14

    .line 667
    .end local v15    # "deltaCRLs":Ljava/util/Set;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    .line 674
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/x509/X509AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v5

    .line 675
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    .line 677
    new-instance v5, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v6, "No valid CRL for current time found."

    invoke-direct {v5, v6}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 708
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v14    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v17    # "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .end local v18    # "key":Ljava/security/PublicKey;
    .end local v19    # "keys":Ljava/util/Set;
    :catch_0
    move-exception v16

    .line 710
    .local v16, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    move-object/from16 v20, v16

    .line 711
    goto :goto_0

    .line 682
    .end local v16    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v4    # "crl":Ljava/security/cert/X509CRL;
    .restart local v14    # "deltaCRL":Ljava/security/cert/X509CRL;
    .restart local v17    # "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .restart local v18    # "key":Ljava/security/PublicKey;
    .restart local v19    # "keys":Ljava/util/Set;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 685
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lorg/spongycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 688
    move-object/from16 v0, p2

    invoke-static {v14, v4, v0}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V

    .line 691
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    invoke-static {v0, v14, v1, v2, v3}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V

    .line 695
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-static {v0, v4, v1, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/spongycastle/jce/provider/CertStatus;)V

    .line 699
    invoke-virtual/range {p5 .. p5}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_6

    .line 701
    const/16 v5, 0xb

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Lorg/spongycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 705
    :cond_6
    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;->addReasons(Lorg/spongycastle/jce/provider/ReasonsMask;)V
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 713
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v14    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v17    # "interimReasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .end local v18    # "key":Ljava/security/PublicKey;
    .end local v19    # "keys":Ljava/util/Set;
    :cond_7
    if-nez v21, :cond_0

    .line 715
    throw v20
.end method

.method protected static checkCRLs(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V
    .locals 21
    .param p0, "attrCert"    # Lorg/spongycastle/x509/X509AttributeCertificate;
    .param p1, "paramsPKIX"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "validDate"    # Ljava/util/Date;
    .param p4, "certPathCerts"    # Ljava/util/List;
    .param p5, "helper"    # Lorg/spongycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 135
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->NO_REV_AVAIL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lorg/spongycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_6

    .line 137
    const/4 v12, 0x0

    .line 140
    .local v12, "crldp":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 140
    invoke-static {v2}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 150
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v11, "crlStores":Ljava/util/List;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v12, v2}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lorg/spongycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    new-instance v10, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V

    .line 165
    .local v10, "bldr":Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v11

    .line 167
    check-cast v2, Lorg/spongycastle/jcajce/PKIXCRLStore;

    invoke-virtual {v10, v2}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/spongycastle/jcajce/PKIXCRLStore;)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    goto :goto_0

    .line 143
    .end local v10    # "bldr":Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v11    # "crlStores":Ljava/util/List;
    .end local v17    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v14

    .line 145
    .local v14, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "CRL distribution point extension could not be read."

    invoke-direct {v2, v4, v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 156
    .end local v14    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v11    # "crlStores":Ljava/util/List;
    :catch_1
    move-exception v14

    .line 158
    .restart local v14    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v2, v4, v14}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 170
    .end local v14    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v10    # "bldr":Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v17    # "it":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v10}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object p1

    .line 172
    new-instance v6, Lorg/spongycastle/jce/provider/CertStatus;

    invoke-direct {v6}, Lorg/spongycastle/jce/provider/CertStatus;-><init>()V

    .line 173
    .local v6, "certStatus":Lorg/spongycastle/jce/provider/CertStatus;
    new-instance v7, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-direct {v7}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>()V

    .line 175
    .local v7, "reasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    const/16 v18, 0x0

    .line 176
    .local v18, "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    const/16 v20, 0x0

    .line 178
    .local v20, "validCrlFound":Z
    if-eqz v12, :cond_1

    .line 180
    const/4 v13, 0x0

    .line 183
    .local v13, "dps":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    :try_start_2
    invoke-virtual {v12}, Lorg/spongycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/spongycastle/asn1/x509/DistributionPoint;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v13

    .line 192
    const/4 v15, 0x0

    .line 194
    .local v15, "i":I
    :goto_1
    :try_start_3
    array-length v2, v13

    if-ge v15, v2, :cond_1

    .line 193
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_1

    .line 194
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    .line 199
    .local v3, "paramsPKIXClone":Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    aget-object v1, v13, v15

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v9}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->checkCRL(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V
    :try_end_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 202
    const/16 v20, 0x1

    .line 194
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 185
    .end local v3    # "paramsPKIXClone":Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .end local v15    # "i":I
    :catch_2
    move-exception v14

    .line 187
    .local v14, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Distribution points could not be read."

    invoke-direct {v2, v4, v14}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 205
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v15    # "i":I
    :catch_3
    move-exception v14

    .line 207
    .local v14, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v18, Lorg/spongycastle/jce/provider/AnnotatedException;

    .end local v18    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    const-string v2, "No valid CRL for distribution point found."

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v14}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .end local v13    # "dps":[Lorg/spongycastle/asn1/x509/DistributionPoint;
    .end local v14    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v15    # "i":I
    .restart local v18    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    :cond_1
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_2

    .line 219
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_2

    .line 228
    const/16 v16, 0x0

    .line 232
    .local v16, "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :try_start_4
    new-instance v4, Lorg/spongycastle/asn1/ASN1InputStream;

    .line 233
    invoke-interface/range {p0 .. p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v2

    .line 234
    invoke-virtual {v2}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 235
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v16

    .line 243
    :try_start_5
    new-instance v1, Lorg/spongycastle/asn1/x509/DistributionPoint;

    new-instance v2, Lorg/spongycastle/asn1/x509/DistributionPointName;

    const/4 v4, 0x0

    new-instance v5, Lorg/spongycastle/asn1/x509/GeneralNames;

    new-instance v8, Lorg/spongycastle/asn1/x509/GeneralName;

    const/4 v9, 0x4

    move-object/from16 v0, v16

    invoke-direct {v8, v9, v0}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v5, v8}, Lorg/spongycastle/asn1/x509/GeneralNames;-><init>(Lorg/spongycastle/asn1/x509/GeneralName;)V

    invoke-direct {v2, v4, v5}, Lorg/spongycastle/asn1/x509/DistributionPointName;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lorg/spongycastle/asn1/x509/DistributionPoint;-><init>(Lorg/spongycastle/asn1/x509/DistributionPointName;Lorg/spongycastle/asn1/x509/ReasonFlags;Lorg/spongycastle/asn1/x509/GeneralNames;)V

    .line 248
    .local v1, "dp":Lorg/spongycastle/asn1/x509/DistributionPoint;
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    .restart local v3    # "paramsPKIXClone":Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 249
    invoke-static/range {v1 .. v9}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->checkCRL(Lorg/spongycastle/asn1/x509/DistributionPoint;Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/spongycastle/jce/provider/CertStatus;Lorg/spongycastle/jce/provider/ReasonsMask;Ljava/util/List;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 251
    const/16 v20, 0x1

    .line 260
    .end local v1    # "dp":Lorg/spongycastle/asn1/x509/DistributionPoint;
    .end local v3    # "paramsPKIXClone":Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .end local v16    # "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_2
    :goto_2
    if-nez v20, :cond_3

    .line 262
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "No valid CRL found."

    move-object/from16 v0, v18

    invoke-direct {v2, v4, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 237
    .restart local v16    # "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :catch_4
    move-exception v14

    .line 239
    .local v14, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v2, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v2, v4, v14}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 253
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v14

    .line 255
    .local v14, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v18, Lorg/spongycastle/jce/provider/AnnotatedException;

    .end local v18    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    const-string v2, "No valid CRL for distribution point found."

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v14}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v18    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    goto :goto_2

    .line 265
    .end local v14    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v16    # "issuer":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_3
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-eq v2, v4, :cond_4

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute certificate revocation after "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 268
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 269
    .local v19, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", reason: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    .line 271
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 272
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    .end local v19    # "message":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Lorg/spongycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_5

    .line 275
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_5

    .line 277
    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Lorg/spongycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 279
    :cond_5
    invoke-virtual {v6}, Lorg/spongycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_8

    .line 281
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Attribute certificate status could not be determined."

    invoke-direct {v2, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    .end local v6    # "certStatus":Lorg/spongycastle/jce/provider/CertStatus;
    .end local v7    # "reasonsMask":Lorg/spongycastle/jce/provider/ReasonsMask;
    .end local v10    # "bldr":Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v11    # "crlStores":Ljava/util/List;
    .end local v12    # "crldp":Lorg/spongycastle/asn1/x509/CRLDistPoint;
    .end local v17    # "it":Ljava/util/Iterator;
    .end local v18    # "lastException":Lorg/spongycastle/jce/provider/AnnotatedException;
    .end local v20    # "validCrlFound":Z
    :cond_6
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lorg/spongycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_7

    sget-object v2, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->AUTHORITY_INFO_ACCESS:Ljava/lang/String;

    .line 289
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lorg/spongycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_8

    .line 291
    :cond_7
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "No rev avail extension is set, but also an AC revocation pointer."

    invoke-direct {v2, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_8
    return-void
.end method

.method protected static processAttrCert1(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/CertPath;
    .locals 12
    .param p0, "attrCert"    # Lorg/spongycastle/x509/X509AttributeCertificate;
    .param p1, "pkixParams"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 441
    const/4 v8, 0x0

    .line 443
    .local v8, "result":Ljava/security/cert/CertPathBuilderResult;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 444
    .local v2, "holderPKCs":Ljava/util/Set;
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 446
    new-instance v9, Ljava/security/cert/X509CertSelector;

    invoke-direct {v9}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 447
    .local v9, "selector":Ljava/security/cert/X509CertSelector;
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 448
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v7

    .line 449
    .local v7, "principals":[Ljava/security/Principal;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v7

    if-ge v3, v10, :cond_1

    .line 453
    :try_start_0
    aget-object v10, v7, v3

    instance-of v10, v10, Ljavax/security/auth/x500/X500Principal;

    if-eqz v10, :cond_0

    .line 455
    aget-object v10, v7, v3

    check-cast v10, Ljavax/security/auth/x500/X500Principal;

    .line 456
    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    .line 455
    invoke-virtual {v9, v10}, Ljava/security/cert/X509CertSelector;->setIssuer([B)V

    .line 458
    :cond_0
    new-instance v10, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v10, v9}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    .line 459
    invoke-virtual {v10}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v10

    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v10

    .line 458
    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 449
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 461
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Public key certificate for attribute certificate cannot be searched."

    invoke-direct {v10, v11, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 467
    .end local v1    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :catch_1
    move-exception v1

    .line 469
    .local v1, "e":Ljava/io/IOException;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Unable to encode X500 principal."

    invoke-direct {v10, v11, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 473
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 475
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "Public key certificate specified in base certificate ID for attribute certificate cannot be found."

    invoke-direct {v10, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 479
    .end local v3    # "i":I
    .end local v7    # "principals":[Ljava/security/Principal;
    .end local v9    # "selector":Ljava/security/cert/X509CertSelector;
    :cond_2
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 481
    new-instance v9, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v9}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 482
    .local v9, "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getHolder()Lorg/spongycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v7

    .line 483
    .restart local v7    # "principals":[Ljava/security/Principal;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v10, v7

    if-ge v3, v10, :cond_4

    .line 487
    :try_start_1
    aget-object v10, v7, v3

    instance-of v10, v10, Ljavax/security/auth/x500/X500Principal;

    if-eqz v10, :cond_3

    .line 489
    aget-object v10, v7, v3

    check-cast v10, Ljavax/security/auth/x500/X500Principal;

    .line 490
    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    .line 489
    invoke-virtual {v9, v10}, Lorg/spongycastle/x509/X509CertStoreSelector;->setIssuer([B)V

    .line 492
    :cond_3
    new-instance v10, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v10, v9}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    .line 493
    invoke-virtual {v10}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v10

    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v10

    .line 492
    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 495
    :catch_2
    move-exception v1

    .line 497
    .local v1, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Public key certificate for attribute certificate cannot be searched."

    invoke-direct {v10, v11, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 501
    .end local v1    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :catch_3
    move-exception v1

    .line 503
    .local v1, "e":Ljava/io/IOException;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Unable to encode X500 principal."

    invoke-direct {v10, v11, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 507
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 509
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "Public key certificate specified in entity name for attribute certificate cannot be found."

    invoke-direct {v10, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 514
    .end local v3    # "i":I
    .end local v7    # "principals":[Ljava/security/Principal;
    .end local v9    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :cond_5
    new-instance v6, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v6, p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V

    .line 516
    .local v6, "paramsBldr":Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    const/4 v5, 0x0

    .line 517
    .local v5, "lastException":Ljava/security/cert/CertPathValidatorException;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 519
    new-instance v9, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v9}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 520
    .restart local v9    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-virtual {v9, v10}, Lorg/spongycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 521
    new-instance v10, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v10, v9}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v10}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->setTargetConstraints(Lorg/spongycastle/jcajce/PKIXCertStoreSelector;)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 522
    const/4 v0, 0x0

    .line 525
    .local v0, "builder":Ljava/security/cert/CertPathBuilder;
    :try_start_2
    const-string v10, "PKIX"

    const-string v11, "FAKE_SC"

    invoke-static {v10, v11}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
    :try_end_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    .line 539
    :try_start_3
    new-instance v10, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v6}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v10}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v8

    goto :goto_2

    .line 527
    :catch_4
    move-exception v1

    .line 529
    .local v1, "e":Ljava/security/NoSuchProviderException;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Support class could not be created."

    invoke-direct {v10, v11, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 532
    .end local v1    # "e":Ljava/security/NoSuchProviderException;
    :catch_5
    move-exception v1

    .line 534
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v10, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Support class could not be created."

    invoke-direct {v10, v11, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 541
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_6
    move-exception v1

    .line 543
    .local v1, "e":Ljava/security/cert/CertPathBuilderException;
    new-instance v5, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    .end local v5    # "lastException":Ljava/security/cert/CertPathValidatorException;
    const-string v10, "Certification path for public key certificate of attribute certificate could not be build."

    invoke-direct {v5, v10, v1}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    .restart local v5    # "lastException":Ljava/security/cert/CertPathValidatorException;
    goto :goto_2

    .line 547
    .end local v1    # "e":Ljava/security/cert/CertPathBuilderException;
    :catch_7
    move-exception v1

    .line 550
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 553
    .end local v0    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .end local v9    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :cond_6
    if-eqz v5, :cond_7

    .line 555
    throw v5

    .line 557
    :cond_7
    invoke-interface {v8}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v10

    return-object v10
.end method

.method protected static processAttrCert2(Ljava/security/cert/CertPath;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 4
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "pkixParams"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 388
    const/4 v1, 0x0

    .line 391
    .local v1, "validator":Ljava/security/cert/CertPathValidator;
    :try_start_0
    const-string v2, "PKIX"

    const-string v3, "FAKE_SC"

    invoke-static {v2, v3}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 405
    :try_start_1
    invoke-virtual {v1, p0, p1}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    return-object v2

    .line 393
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Support class could not be created."

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 398
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_1
    move-exception v0

    .line 400
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Support class could not be created."

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 407
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 409
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v2, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Certification path for issuer certificate of attribute certificate could not be validated."

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 413
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_3
    move-exception v0

    .line 416
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static processAttrCert3(Ljava/security/cert/X509Certificate;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V
    .locals 2
    .param p0, "acIssuerCert"    # Ljava/security/cert/X509Certificate;
    .param p1, "pkixParams"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Attribute certificate issuer public key cannot be used to validate digital signatures."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 379
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Attribute certificate issuer is also a public key certificate issuer."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1
    return-void
.end method

.method protected static processAttrCert4(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .locals 6
    .param p0, "acIssuerCert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustedACIssuers"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 349
    move-object v2, p1

    .line 350
    .local v2, "set":Ljava/util/Set;
    const/4 v3, 0x0

    .line 351
    .local v3, "trusted":Z
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 353
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 354
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    const-string v5, "RFC2253"

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 355
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 356
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_2
    if-nez v3, :cond_3

    .line 363
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Attribute certificate issuer is not directly trusted."

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 366
    :cond_3
    return-void
.end method

.method protected static processAttrCert5(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V
    .locals 3
    .param p0, "attrCert"    # Lorg/spongycastle/x509/X509AttributeCertificate;
    .param p1, "pkixParams"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 331
    .line 332
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    move-result-object v1

    .line 331
    invoke-interface {p0, v1}, Lorg/spongycastle/x509/X509AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1

    .line 344
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Attribute certificate is not valid."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 339
    .end local v0    # "e":Ljava/security/cert/CertificateExpiredException;
    :catch_1
    move-exception v0

    .line 341
    .local v0, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Attribute certificate is not valid."

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static processAttrCert7(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;)V
    .locals 6
    .param p0, "attrCert"    # Lorg/spongycastle/x509/X509AttributeCertificate;
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "holderCertPath"    # Ljava/security/cert/CertPath;
    .param p3, "pkixParams"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .param p4, "attrCertCheckers"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-interface {p0}, Lorg/spongycastle/x509/X509AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    .line 80
    .local v2, "set":Ljava/util/Set;
    sget-object v3, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    :try_start_0
    sget-object v3, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    .line 85
    invoke-static {p0, v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 84
    invoke-static {v3}, Lorg/spongycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TargetInformation;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :cond_0
    sget-object v3, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 100
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/x509/PKIXAttrCertChecker;

    invoke-virtual {v3, p0, p1, p2, v2}, Lorg/spongycastle/x509/PKIXAttrCertChecker;->check(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Ljava/util/Collection;)V

    goto :goto_0

    .line 87
    .end local v1    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v3, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Target information extension could not be read."

    invoke-direct {v3, v4, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 92
    .end local v0    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Target information extension could not be read."

    invoke-direct {v3, v4, v0}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 105
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attribute certificate contains unsupported critical extensions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_2
    return-void
.end method
