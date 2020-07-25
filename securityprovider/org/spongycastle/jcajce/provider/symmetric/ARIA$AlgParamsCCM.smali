.class public Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "ARIA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/ARIA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamsCCM"
.end annotation


# instance fields
.field private ccmParams:Lorg/spongycastle/asn1/cms/CCMParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/spongycastle/asn1/cms/CCMParameters;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/CCMParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown format specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/spongycastle/asn1/cms/CCMParameters;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/CCMParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/symmetric/GcmSpecUtil;->isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/symmetric/GcmSpecUtil;->extractGcmParameters(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/spongycastle/asn1/cms/GCMParameters;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/CCMParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/CCMParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/spongycastle/asn1/cms/CCMParameters;

    .line 334
    .end local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :goto_0
    return-void

    .line 326
    .restart local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;

    if-eqz v0, :cond_1

    .line 328
    new-instance v1, Lorg/spongycastle/asn1/cms/CCMParameters;

    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    move-result-object v0

    check-cast p1, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;

    .end local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v0, v2}, Lorg/spongycastle/asn1/cms/CCMParameters;-><init>([BI)V

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/spongycastle/asn1/cms/CCMParameters;

    goto :goto_0

    .line 332
    .restart local p1    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlgorithmParameterSpec class not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit([B)V
    .locals 1
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {p1}, Lorg/spongycastle/asn1/cms/CCMParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/CCMParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/spongycastle/asn1/cms/CCMParameters;

    .line 340
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 2
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-virtual {p0, p2}, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown format specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/asn1/cms/CCMParameters;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/CCMParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/spongycastle/asn1/cms/CCMParameters;

    .line 351
    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    const-string v0, "CCM"

    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 378
    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/symmetric/GcmSpecUtil;->isGcmSpec(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    :cond_0
    invoke-static {}, Lorg/spongycastle/jcajce/provider/symmetric/GcmSpecUtil;->gcmSpecExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/spongycastle/asn1/cms/CCMParameters;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cms/CCMParameters;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/symmetric/GcmSpecUtil;->extractGcmSpec(Lorg/spongycastle/asn1/ASN1Primitive;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 392
    :goto_0
    return-object v0

    .line 384
    :cond_1
    new-instance v0, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/spongycastle/asn1/cms/CCMParameters;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cms/CCMParameters;->getNonce()[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/spongycastle/asn1/cms/CCMParameters;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/cms/CCMParameters;->getIcvLen()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    goto :goto_0

    .line 386
    :cond_2
    const-class v0, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;

    if-ne p1, v0, :cond_3

    .line 388
    new-instance v0, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/spongycastle/asn1/cms/CCMParameters;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cms/CCMParameters;->getNonce()[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/spongycastle/asn1/cms/CCMParameters;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/cms/CCMParameters;->getIcvLen()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    goto :goto_0

    .line 390
    :cond_3
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_4

    .line 392
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$AlgParamsCCM;->ccmParams:Lorg/spongycastle/asn1/cms/CCMParameters;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cms/CCMParameters;->getNonce()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    goto :goto_0

    .line 395
    :cond_4
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlgorithmParameterSpec not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
