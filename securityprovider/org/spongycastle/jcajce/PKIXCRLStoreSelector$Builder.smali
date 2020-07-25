.class public Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;
.super Ljava/lang/Object;
.source "PKIXCRLStoreSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final baseSelector:Ljava/security/cert/CRLSelector;

.field private completeCRLEnabled:Z

.field private deltaCRLIndicator:Z

.field private issuingDistributionPoint:[B

.field private issuingDistributionPointEnabled:Z

.field private maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/cert/CRLSelector;)V
    .locals 2
    .param p1, "crlSelector"    # Ljava/security/cert/CRLSelector;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    .line 36
    iput-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    .line 37
    iput-object v1, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 38
    iput-object v1, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    .line 39
    iput-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    .line 48
    invoke-interface {p1}, Ljava/security/cert/CRLSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRLSelector;

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->baseSelector:Ljava/security/cert/CRLSelector;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/security/cert/CRLSelector;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->baseSelector:Ljava/security/cert/CRLSelector;

    return-object v0
.end method

.method static synthetic access$200(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .prologue
    .line 31
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    return v0
.end method

.method static synthetic access$300(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .prologue
    .line 31
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .prologue
    .line 31
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    return-object v0
.end method

.method static synthetic access$600(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;

    .prologue
    .line 31
    iget-boolean v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    return v0
.end method


# virtual methods
.method public build()Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/spongycastle/jcajce/PKIXCRLStoreSelector",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector;-><init>(Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$1;)V

    return-object v0
.end method

.method public setCompleteCRLEnabled(Z)Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .locals 0
    .param p1, "completeCRLEnabled"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    .line 65
    return-object p0
.end method

.method public setDeltaCRLIndicatorEnabled(Z)Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .locals 0
    .param p1, "deltaCRLIndicator"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    .line 82
    return-object p0
.end method

.method public setIssuingDistributionPoint([B)V
    .locals 1
    .param p1, "issuingDistributionPoint"    # [B

    .prologue
    .line 132
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    .line 133
    return-void
.end method

.method public setIssuingDistributionPointEnabled(Z)V
    .locals 0
    .param p1, "issuingDistributionPointEnabled"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    .line 110
    return-void
.end method

.method public setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "maxBaseCRLNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/spongycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    .line 98
    return-void
.end method
