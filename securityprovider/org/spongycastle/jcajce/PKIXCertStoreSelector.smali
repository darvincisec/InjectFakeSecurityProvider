.class public Lorg/spongycastle/jcajce/PKIXCertStoreSelector;
.super Ljava/lang/Object;
.source "PKIXCertStoreSelector.java"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/PKIXCertStoreSelector$SelectorClone;,
        Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/security/cert/Certificate;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/spongycastle/util/Selector",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final baseSelector:Ljava/security/cert/CertSelector;


# direct methods
.method private constructor <init>(Ljava/security/cert/CertSelector;)V
    .locals 0
    .param p1, "baseSelector"    # Ljava/security/cert/CertSelector;

    .prologue
    .line 52
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCertStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/spongycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/cert/CertSelector;Lorg/spongycastle/jcajce/PKIXCertStoreSelector$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/security/cert/CertSelector;
    .param p2, "x1"    # Lorg/spongycastle/jcajce/PKIXCertStoreSelector$1;

    .prologue
    .line 18
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCertStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;)V

    return-void
.end method

.method static synthetic access$100(Lorg/spongycastle/jcajce/PKIXCertStoreSelector;)Ljava/security/cert/CertSelector;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    .prologue
    .line 18
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    return-object v0
.end method

.method public static getCertificates(Lorg/spongycastle/jcajce/PKIXCertStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;
    .locals 1
    .param p0, "selector"    # Lorg/spongycastle/jcajce/PKIXCertStoreSelector;
    .param p1, "certStore"    # Ljava/security/cert/CertStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/spongycastle/jcajce/PKIXCertStoreSelector;",
            "Ljava/security/cert/CertStore;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$SelectorClone;

    invoke-direct {v0, p0}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$SelectorClone;-><init>(Lorg/spongycastle/jcajce/PKIXCertStoreSelector;)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 63
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCertStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    new-instance v0, Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    iget-object v1, p0, Lorg/spongycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    invoke-direct {v0, v1}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector;-><init>(Ljava/security/cert/CertSelector;)V

    return-object v0
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCertStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    check-cast p1, Ljava/security/cert/Certificate;

    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    return v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    .line 58
    .local p0, "this":Lorg/spongycastle/jcajce/PKIXCertStoreSelector;, "Lorg/spongycastle/jcajce/PKIXCertStoreSelector<TT;>;"
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXCertStoreSelector;->baseSelector:Ljava/security/cert/CertSelector;

    invoke-interface {v0, p1}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    return v0
.end method
