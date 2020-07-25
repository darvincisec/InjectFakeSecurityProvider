.class public final Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;
.super Ljava/lang/Object;
.source "KTSParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/spec/KTSParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private kdfAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private final keySizeInBits:I

.field private otherInfo:[B

.field private parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "keySizeInBits"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;-><init>(Ljava/lang/String;I[B)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 4
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "keySizeInBits"    # I
    .param p3, "otherInfo"    # [B

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;->algorithmName:Ljava/lang/String;

    .line 55
    iput p2, p0, Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;->keySizeInBits:I

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;->id_kdf_kdf3:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;->kdfAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 57
    if-nez p3, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;->otherInfo:[B

    .line 58
    return-void

    .line 57
    :cond_0
    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public build()Lorg/spongycastle/jcajce/spec/KTSParameterSpec;
    .locals 7

    .prologue
    .line 93
    new-instance v0, Lorg/spongycastle/jcajce/spec/KTSParameterSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;->algorithmName:Ljava/lang/String;

    iget v2, p0, Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;->keySizeInBits:I

    iget-object v3, p0, Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;->parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v4, p0, Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;->kdfAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v5, p0, Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;->otherInfo:[B

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/jcajce/spec/KTSParameterSpec;-><init>(Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[BLorg/spongycastle/jcajce/spec/KTSParameterSpec$1;)V

    return-object v0
.end method

.method public withKdfAlgorithm(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;
    .locals 0
    .param p1, "kdfAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;->kdfAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 83
    return-object p0
.end method

.method public withParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;
    .locals 0
    .param p1, "parameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/spongycastle/jcajce/spec/KTSParameterSpec$Builder;->parameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 70
    return-object p0
.end method
