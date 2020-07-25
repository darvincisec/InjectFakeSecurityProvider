.class Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;
.super Ljava/security/cert/X509CRLSelector;
.source "PKIXCRLStoreSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectorClone"
.end annotation


# instance fields
.field private final selector:Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;


# direct methods
.method constructor <init>(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;)V
    .locals 2
    .param p1, "selector"    # Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 328
    iput-object p1, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;

    .line 330
    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->access$700(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/X509CRLSelector;

    if-eqz v1, :cond_0

    .line 332
    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->access$700(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLSelector;

    .line 334
    .local v0, "baseSelector":Ljava/security/cert/X509CRLSelector;
    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 335
    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setDateAndTime(Ljava/util/Date;)V

    .line 336
    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setIssuers(Ljava/util/Collection;)V

    .line 337
    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 338
    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    .line 340
    .end local v0    # "baseSelector":Ljava/security/cert/X509CRLSelector;
    :cond_0
    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/CRL;)Z
    .locals 1
    .param p1, "crl"    # Ljava/security/cert/CRL;

    .prologue
    .line 344
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    goto :goto_0
.end method
