.class public Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
.super Ljava/lang/Object;
.source "PKIXExtendedBuilderParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final baseParameters:Lorg/spongycastle/jcajce/PKIXExtendedParameters;

.field private excludedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private maxPathLength:I


# direct methods
.method public constructor <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .locals 1
    .param p1, "baseParameters"    # Ljava/security/cert/PKIXBuilderParameters;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    .line 31
    new-instance v0, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v0, p1}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    .line 32
    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/jcajce/PKIXExtendedParameters;)V
    .locals 1
    .param p1, "baseParameters"    # Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    .line 37
    iput-object p1, p0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    .line 38
    return-void
.end method

.method static synthetic access$100(Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Lorg/spongycastle/jcajce/PKIXExtendedParameters;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lorg/spongycastle/jcajce/PKIXExtendedParameters;

    return-object v0
.end method

.method static synthetic access$200(Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .prologue
    .line 22
    iget v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    return v0
.end method


# virtual methods
.method public addExcludedCerts(Ljava/util/Set;)Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "excludedCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 52
    return-object p0
.end method

.method public build()Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters;-><init>(Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$1;)V

    return-object v0
.end method

.method public setMaxPathLength(I)Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .locals 2
    .param p1, "maxPathLength"    # I

    .prologue
    .line 77
    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    .line 79
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The maximum path length parameter can not be less than -1."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput p1, p0, Lorg/spongycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    .line 84
    return-object p0
.end method
