.class public Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$MQVwithSHA512CKDF;
.super Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.source "KeyAgreementSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MQVwithSHA512CKDF"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 493
    const-string v0, "ECMQVwithSHA512CKDF"

    new-instance v1, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;

    invoke-direct {v1}, Lorg/spongycastle/crypto/agreement/ECMQVBasicAgreement;-><init>()V

    new-instance v2, Lorg/spongycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA512()Lorg/spongycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;)V

    .line 494
    return-void
.end method
