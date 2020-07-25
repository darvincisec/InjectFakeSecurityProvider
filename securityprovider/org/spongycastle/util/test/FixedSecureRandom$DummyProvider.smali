.class Lorg/spongycastle/util/test/FixedSecureRandom$DummyProvider;
.super Ljava/security/Provider;
.source "FixedSecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/util/test/FixedSecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyProvider"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 332
    const-string v0, "BCFIPS_FIXED_RNG"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v1, "BCFIPS Fixed Secure Random Provider"

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 333
    return-void
.end method
