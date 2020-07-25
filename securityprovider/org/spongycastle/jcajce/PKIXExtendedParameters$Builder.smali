.class public Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
.super Ljava/lang/Object;
.source "PKIXExtendedParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/PKIXExtendedParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final baseParameters:Ljava/security/cert/PKIXParameters;

.field private final date:Ljava/util/Date;

.field private extraCRLStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/spongycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private extraCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/spongycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private namedCRLStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/spongycastle/asn1/x509/GeneralName;",
            "Lorg/spongycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private namedCertificateStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/spongycastle/asn1/x509/GeneralName;",
            "Lorg/spongycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private revocationEnabled:Z

.field private targetConstraints:Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

.field private trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private useDeltas:Z

.field private validityModel:I


# direct methods
.method public constructor <init>(Ljava/security/cert/PKIXParameters;)V
    .locals 4
    .param p1, "baseParameters"    # Ljava/security/cert/PKIXParameters;

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    .line 61
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    .line 63
    iput v3, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 64
    iput-boolean v3, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 69
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/PKIXParameters;

    iput-object v2, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    .line 70
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v1

    .line 71
    .local v1, "constraints":Ljava/security/cert/CertSelector;
    if-eqz v1, :cond_0

    .line 73
    new-instance v2, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v2, v1}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v2}, Lorg/spongycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    .line 75
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 76
    .local v0, "checkDate":Ljava/util/Date;
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Date;

    .end local v0    # "checkDate":Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :cond_1
    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    .line 77
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    .line 78
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V
    .locals 2
    .param p1, "baseParameters"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    .line 63
    iput v1, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 64
    iput-boolean v1, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 83
    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->access$000(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    .line 84
    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->access$100(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    .line 85
    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->access$200(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->access$300(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->access$400(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->access$500(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->access$600(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    .line 90
    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->access$700(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 91
    invoke-static {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->access$800(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 92
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    .line 93
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    .line 94
    return-void
.end method

.method static synthetic access$1000(Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/security/cert/PKIXParameters;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->baseParameters:Ljava/security/cert/PKIXParameters;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->date:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;)Lorg/spongycastle/jcajce/PKIXCertStoreSelector;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    .line 52
    iget v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    return v0
.end method

.method static synthetic access$2000(Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public addCRLStore(Lorg/spongycastle/jcajce/PKIXCRLStore;)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1
    .param p1, "store"    # Lorg/spongycastle/jcajce/PKIXCRLStore;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->extraCRLStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-object p0
.end method

.method public addCertificateStore(Lorg/spongycastle/jcajce/PKIXCertStore;)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1
    .param p1, "store"    # Lorg/spongycastle/jcajce/PKIXCertStore;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->extraCertStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-object p0
.end method

.method public addNamedCRLStore(Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/jcajce/PKIXCRLStore;)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1
    .param p1, "issuerAltName"    # Lorg/spongycastle/asn1/x509/GeneralName;
    .param p2, "store"    # Lorg/spongycastle/jcajce/PKIXCRLStore;

    .prologue
    .line 119
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->namedCRLStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-object p0
.end method

.method public addNamedCertificateStore(Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/jcajce/PKIXCertStore;)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1
    .param p1, "issuerAltName"    # Lorg/spongycastle/asn1/x509/GeneralName;
    .param p2, "store"    # Lorg/spongycastle/jcajce/PKIXCertStore;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->namedCertificateStoreMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-object p0
.end method

.method public build()Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters;-><init>(Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;Lorg/spongycastle/jcajce/PKIXExtendedParameters$1;)V

    return-object v0
.end method

.method public setRevocationEnabled(Z)V
    .locals 0
    .param p1, "revocationEnabled"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->revocationEnabled:Z

    .line 189
    return-void
.end method

.method public setTargetConstraints(Lorg/spongycastle/jcajce/PKIXCertStoreSelector;)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0
    .param p1, "selector"    # Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    .prologue
    .line 126
    iput-object p1, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->targetConstraints:Lorg/spongycastle/jcajce/PKIXCertStoreSelector;

    .line 128
    return-object p0
.end method

.method public setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 1
    .param p1, "trustAnchor"    # Ljava/security/cert/TrustAnchor;

    .prologue
    .line 163
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    .line 165
    return-object p0
.end method

.method public setTrustAnchors(Ljava/util/Set;)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    iput-object p1, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->trustAnchors:Ljava/util/Set;

    .line 178
    return-object p0
.end method

.method public setUseDeltasEnabled(Z)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0
    .param p1, "useDeltas"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->useDeltas:Z

    .line 140
    return-object p0
.end method

.method public setValidityModel(I)Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;
    .locals 0
    .param p1, "validityModel"    # I

    .prologue
    .line 150
    iput p1, p0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->validityModel:I

    .line 152
    return-object p0
.end method
