.class public Lorg/spongycastle/jce/provider/PKIXAttrCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXAttrCertPathValidatorSpi.java"


# instance fields
.field private final helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    .line 34
    new-instance v0, Lorg/spongycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/PKIXAttrCertPathValidatorSpi;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    .line 38
    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 18
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 68
    move-object/from16 v0, p2

    instance-of v5, v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    if-nez v5, :cond_0

    move-object/from16 v0, p2

    instance-of v5, v0, Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    if-nez v5, :cond_0

    .line 70
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Parameters must be a "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v17, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    .line 72
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v17, " instance."

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 74
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 75
    .local v7, "attrCertCheckers":Ljava/util/Set;
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 76
    .local v14, "prohibitedACAttrbiutes":Ljava/util/Set;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 77
    .local v12, "necessaryACAttributes":Ljava/util/Set;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 80
    .local v16, "trustedACIssuers":Ljava/util/Set;
    move-object/from16 v0, p2

    instance-of v5, v0, Ljava/security/cert/PKIXParameters;

    if-eqz v5, :cond_2

    .line 82
    new-instance v13, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v5, p2

    check-cast v5, Ljava/security/cert/PKIXParameters;

    invoke-direct {v13, v5}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 84
    .local v13, "paramsPKIXBldr":Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v0, p2

    instance-of v5, v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    if-eqz v5, :cond_1

    move-object/from16 v10, p2

    .line 86
    check-cast v10, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    .line 88
    .local v10, "extPKIX":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v10}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v5

    invoke-virtual {v13, v5}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->setUseDeltasEnabled(Z)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 89
    invoke-virtual {v10}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v5

    invoke-virtual {v13, v5}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 90
    invoke-virtual {v10}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getAttrCertCheckers()Ljava/util/Set;

    move-result-object v7

    .line 91
    invoke-virtual {v10}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getProhibitedACAttributes()Ljava/util/Set;

    move-result-object v14

    .line 92
    invoke-virtual {v10}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getNecessaryACAttributes()Ljava/util/Set;

    move-result-object v12

    .line 95
    .end local v10    # "extPKIX":Lorg/spongycastle/x509/ExtendedPKIXParameters;
    :cond_1
    invoke-virtual {v13}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v2

    .line 102
    .end local v13    # "paramsPKIXBldr":Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v2, "paramsPKIX":Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    :goto_0
    invoke-virtual {v2}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v8

    .line 103
    .local v8, "certSelect":Lorg/spongycastle/util/Selector;
    instance-of v5, v8, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    if-nez v5, :cond_3

    .line 105
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TargetConstraints must be an instance of "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v17, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    .line 107
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v17, " for "

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 108
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v17, " class."

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "paramsPKIX":Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .end local v8    # "certSelect":Lorg/spongycastle/util/Selector;
    :cond_2
    move-object/from16 v2, p2

    .line 99
    check-cast v2, Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    .restart local v2    # "paramsPKIX":Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    goto :goto_0

    .line 111
    .restart local v8    # "certSelect":Lorg/spongycastle/util/Selector;
    :cond_3
    check-cast v8, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    .line 112
    .end local v8    # "certSelect":Lorg/spongycastle/util/Selector;
    invoke-virtual {v8}, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v1

    .line 114
    .local v1, "attrCert":Lorg/spongycastle/x509/X509AttributeCertificate;
    invoke-static {v1, v2}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert1(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/CertPath;

    move-result-object v11

    .line 115
    .local v11, "holderCertPath":Ljava/security/cert/CertPath;
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert2(Ljava/security/cert/CertPath;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v15

    .line 117
    .local v15, "result":Ljava/security/cert/CertPathValidatorResult;
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 118
    .local v3, "issuerCert":Ljava/security/cert/X509Certificate;
    invoke-static {v3, v2}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert3(Ljava/security/cert/X509Certificate;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V

    .line 119
    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert4(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    .line 120
    invoke-static {v1, v2}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert5(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V

    .line 122
    move-object/from16 v0, p1

    invoke-static {v1, v0, v11, v2, v7}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert7(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;)V

    .line 123
    invoke-static {v1, v14, v12}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->additionalChecks(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/util/Set;Ljava/util/Set;)V

    .line 124
    const/4 v4, 0x0

    .line 127
    .local v4, "date":Ljava/util/Date;
    const/4 v5, 0x0

    const/4 v6, -0x1

    :try_start_0
    invoke-static {v2, v5, v6}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 134
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/jce/provider/PKIXAttrCertPathValidatorSpi;->helper:Lorg/spongycastle/jcajce/util/JcaJceHelper;

    invoke-static/range {v1 .. v6}, Lorg/spongycastle/jce/provider/RFC3281CertPathUtilities;->checkCRLs(Lorg/spongycastle/x509/X509AttributeCertificate;Lorg/spongycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    .line 135
    return-object v15

    .line 129
    :catch_0
    move-exception v9

    .line 131
    .local v9, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v5, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Could not get validity date from attribute certificate."

    invoke-direct {v5, v6, v9}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
