.class public Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXAttrCertPathBuilderSpi.java"


# instance fields
.field private certPathException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method

.method private build(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .locals 18
    .param p1, "attrCert"    # Lorg/spongycastle/x509/X509AttributeCertificate;
    .param p2, "tbvCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "pkixParams"    # Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;
    .param p4, "tbvPath"    # Ljava/util/List;

    .prologue
    .line 199
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 201
    const/4 v4, 0x0

    .line 331
    :cond_0
    :goto_0
    return-object v4

    .line 205
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 207
    const/4 v4, 0x0

    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    .line 212
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v15

    if-le v14, v15, :cond_3

    .line 214
    const/4 v4, 0x0

    goto :goto_0

    .line 218
    :cond_3
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const/4 v4, 0x0

    .line 226
    .local v4, "builderResult":Ljava/security/cert/CertPathBuilderResult;
    :try_start_0
    const-string v14, "X.509"

    const-string v15, "FAKE_SC"

    invoke-static {v14, v15}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 227
    .local v5, "cFact":Ljava/security/cert/CertificateFactory;
    const-string v14, "RFC3281"

    const-string v15, "FAKE_SC"

    invoke-static {v14, v15}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 239
    .local v13, "validator":Ljava/security/cert/CertPathValidator;
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v14

    .line 240
    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v15

    invoke-virtual {v15}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v15

    .line 239
    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->isIssuerTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v14

    if-eqz v14, :cond_5

    .line 246
    :try_start_2
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 257
    .local v6, "certPath":Ljava/security/cert/CertPath;
    :try_start_3
    move-object/from16 v0, p3

    invoke-virtual {v13, v6, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v11

    check-cast v11, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 267
    .local v11, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_start_4
    new-instance v14, Ljava/security/cert/PKIXCertPathBuilderResult;

    .line 268
    invoke-virtual {v11}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v15

    invoke-virtual {v11}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v16

    .line 269
    invoke-virtual {v11}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v6, v15, v0, v1}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    :try_end_4
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, v14

    .line 267
    goto :goto_0

    .line 229
    .end local v5    # "cFact":Ljava/security/cert/CertificateFactory;
    .end local v6    # "certPath":Ljava/security/cert/CertPath;
    .end local v11    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v13    # "validator":Ljava/security/cert/CertPathValidator;
    :catch_0
    move-exception v7

    .line 232
    .local v7, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Exception creating support classes."

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 248
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "cFact":Ljava/security/cert/CertificateFactory;
    .restart local v13    # "validator":Ljava/security/cert/CertPathValidator;
    :catch_1
    move-exception v7

    .line 250
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v14, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v15, "Certification path could not be constructed from certificate list."

    invoke-direct {v14, v15, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_5
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 322
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 324
    .local v7, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v14, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v15, "No valid certification path could be build."

    invoke-direct {v14, v15, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    .line 327
    .end local v7    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :cond_4
    if-nez v4, :cond_0

    .line 329
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 260
    .restart local v6    # "certPath":Ljava/security/cert/CertPath;
    :catch_3
    move-exception v7

    .line 262
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v14, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v15, "Certification path could not be validated."

    invoke-direct {v14, v15, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 274
    .end local v6    # "certPath":Ljava/security/cert/CertPath;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v12, "stores":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 280
    :try_start_7
    sget-object v14, Lorg/spongycastle/asn1/x509/Extension;->issuerAlternativeName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v15

    invoke-virtual {v15}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getNamedCertificateStoreMap()Ljava/util/Map;

    move-result-object v15

    invoke-static {v14, v15}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_7
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 288
    :try_start_8
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V
    :try_end_8
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_2

    .line 293
    .local v9, "issuers":Ljava/util/Collection;
    :try_start_9
    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v14

    invoke-virtual {v14}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {v0, v14, v12}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_9
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_5

    .line 301
    :try_start_a
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 303
    new-instance v14, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v15, "No issuer certificate for certificate in certification path found."

    invoke-direct {v14, v15}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 282
    .end local v9    # "issuers":Ljava/util/Collection;
    :catch_4
    move-exception v7

    .line 284
    .local v7, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v14, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v15, "No additional X.509 stores can be added from certificate locations."

    invoke-direct {v14, v15, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 295
    .end local v7    # "e":Ljava/security/cert/CertificateParsingException;
    .restart local v9    # "issuers":Ljava/util/Collection;
    :catch_5
    move-exception v7

    .line 297
    .local v7, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v14, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v15, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v14, v15, v7}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 306
    .end local v7    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :cond_6
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 308
    .local v10, "it":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    if-nez v4, :cond_4

    .line 310
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 313
    .local v8, "issuer":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    .line 314
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v15

    .line 313
    invoke-virtual {v14, v15}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->build(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_a
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v4

    .line 319
    goto :goto_1
.end method

.method protected static findCertificates(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 7
    .param p0, "certSelect"    # Lorg/spongycastle/x509/X509AttributeCertStoreSelector;
    .param p1, "certStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 339
    .local v1, "certs":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 341
    .local v3, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 343
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 345
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lorg/spongycastle/util/Store;

    if-eqz v5, :cond_0

    move-object v0, v4

    .line 347
    check-cast v0, Lorg/spongycastle/util/Store;

    .line 350
    .local v0, "certStore":Lorg/spongycastle/util/Store;
    :try_start_0
    invoke-interface {v0, p0}, Lorg/spongycastle/util/Store;->getMatches(Lorg/spongycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/spongycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v2

    .line 354
    .local v2, "e":Lorg/spongycastle/util/StoreException;
    new-instance v5, Lorg/spongycastle/jce/provider/AnnotatedException;

    const-string v6, "Problem while picking certificates from X.509 store."

    invoke-direct {v5, v6, v2}, Lorg/spongycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 359
    .end local v0    # "certStore":Lorg/spongycastle/util/Store;
    .end local v2    # "e":Lorg/spongycastle/util/StoreException;
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 22
    .param p1, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 60
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/cert/PKIXBuilderParameters;

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 64
    new-instance v19, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Parameters must be an instance of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-class v21, Ljava/security/cert/PKIXBuilderParameters;

    .line 66
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " or "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-class v21, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;

    .line 67
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 71
    :cond_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v17, "targetStores":Ljava/util/List;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/cert/PKIXBuilderParameters;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 76
    new-instance v12, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    move-object/from16 v19, p1

    check-cast v19, Ljava/security/cert/PKIXBuilderParameters;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    .line 78
    .local v12, "paramsPKIXBldr":Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v7, p1

    .line 80
    check-cast v7, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;

    .line 82
    .local v7, "extPKIX":Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {v7}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->addExcludedCerts(Ljava/util/Set;)Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .line 83
    invoke-virtual {v7}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->setMaxPathLength(I)Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .line 84
    invoke-virtual {v7}, Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v17

    .line 87
    .end local v7    # "extPKIX":Lorg/spongycastle/x509/ExtendedPKIXBuilderParameters;
    :cond_1
    invoke-virtual {v12}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v11

    .line 96
    .end local v12    # "paramsPKIXBldr":Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .local v11, "paramsPKIX":Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v3, "certPathList":Ljava/util/List;
    invoke-virtual {v11}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v4

    .line 102
    .local v4, "certSelect":Lorg/spongycastle/util/Selector;
    instance-of v0, v4, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 104
    new-instance v19, Ljava/security/cert/CertPathBuilderException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TargetConstraints must be an instance of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-class v21, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    .line 106
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 107
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " class."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v19

    .end local v3    # "certPathList":Ljava/util/List;
    .end local v4    # "certSelect":Lorg/spongycastle/util/Selector;
    .end local v11    # "paramsPKIX":Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;
    :cond_2
    move-object/from16 v11, p1

    .line 91
    check-cast v11, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;

    .restart local v11    # "paramsPKIX":Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;
    goto :goto_0

    .line 113
    .restart local v3    # "certPathList":Ljava/util/List;
    .restart local v4    # "certSelect":Lorg/spongycastle/util/Selector;
    :cond_3
    :try_start_0
    check-cast v4, Lorg/spongycastle/x509/X509AttributeCertStoreSelector;

    .end local v4    # "certSelect":Lorg/spongycastle/util/Selector;
    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->findCertificates(Lorg/spongycastle/x509/X509AttributeCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 120
    .local v18, "targets":Ljava/util/Collection;
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 122
    new-instance v19, Ljava/security/cert/CertPathBuilderException;

    const-string v20, "No attribute certificate found matching targetContraints."

    invoke-direct/range {v19 .. v20}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 115
    .end local v18    # "targets":Ljava/util/Collection;
    :catch_0
    move-exception v6

    .line 117
    .local v6, "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v19, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;

    const-string v20, "Error finding target attribute certificate."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 126
    .end local v6    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    .restart local v18    # "targets":Ljava/util/Collection;
    :cond_4
    const/4 v14, 0x0

    .line 129
    .local v14, "result":Ljava/security/cert/CertPathBuilderResult;
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 130
    .local v16, "targetIter":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    if-nez v14, :cond_9

    .line 132
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/x509/X509AttributeCertificate;

    .line 134
    .local v2, "cert":Lorg/spongycastle/x509/X509AttributeCertificate;
    new-instance v15, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v15}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    .line 135
    .local v15, "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    invoke-interface {v2}, Lorg/spongycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/spongycastle/x509/AttributeCertificateIssuer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v13

    .line 136
    .local v13, "principals":[Ljava/security/Principal;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 137
    .local v9, "issuers":Ljava/util/Set;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v13

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_7

    .line 141
    :try_start_1
    aget-object v19, v13, v8

    move-object/from16 v0, v19

    instance-of v0, v0, Ljavax/security/auth/x500/X500Principal;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 143
    aget-object v19, v13, v8

    check-cast v19, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {v19 .. v19}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSubject([B)V

    .line 145
    :cond_6
    new-instance v19, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v5

    .line 146
    .local v5, "certStoreSelector":Lorg/spongycastle/jcajce/PKIXCertStoreSelector;
    invoke-virtual {v11}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 147
    invoke-virtual {v11}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lorg/spongycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 137
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 149
    .end local v5    # "certStoreSelector":Lorg/spongycastle/jcajce/PKIXCertStoreSelector;
    :catch_1
    move-exception v6

    .line 151
    .restart local v6    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    new-instance v19, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;

    const-string v20, "Public key certificate for attribute certificate cannot be searched."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 155
    .end local v6    # "e":Lorg/spongycastle/jce/provider/AnnotatedException;
    :catch_2
    move-exception v6

    .line 157
    .local v6, "e":Ljava/io/IOException;
    new-instance v19, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;

    const-string v20, "cannot encode X500Principal."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 162
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 164
    new-instance v19, Ljava/security/cert/CertPathBuilderException;

    const-string v20, "Public key certificate for attribute certificate cannot be found."

    invoke-direct/range {v19 .. v20}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 167
    :cond_8
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 168
    .local v10, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    if-nez v14, :cond_5

    .line 170
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1, v11, v3}, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->build(Lorg/spongycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v14

    goto :goto_2

    .line 174
    .end local v2    # "cert":Lorg/spongycastle/x509/X509AttributeCertificate;
    .end local v8    # "i":I
    .end local v9    # "issuers":Ljava/util/Set;
    .end local v10    # "it":Ljava/util/Iterator;
    .end local v13    # "principals":[Ljava/security/Principal;
    .end local v15    # "selector":Lorg/spongycastle/x509/X509CertStoreSelector;
    :cond_9
    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 176
    new-instance v19, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;

    const-string v20, "Possible certificate chain could not be validated."

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lorg/spongycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 181
    :cond_a
    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    move-object/from16 v19, v0

    if-nez v19, :cond_b

    .line 183
    new-instance v19, Ljava/security/cert/CertPathBuilderException;

    const-string v20, "Unable to find certificate chain."

    invoke-direct/range {v19 .. v20}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 187
    :cond_b
    return-object v14
.end method
