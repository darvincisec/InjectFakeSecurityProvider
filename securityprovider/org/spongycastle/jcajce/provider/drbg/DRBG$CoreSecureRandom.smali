.class Lorg/spongycastle/jcajce/provider/drbg/DRBG$CoreSecureRandom;
.super Ljava/security/SecureRandom;
.source "DRBG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/drbg/DRBG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoreSecureRandom"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->access$000()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/security/SecureRandomSpi;

    invoke-static {}, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->access$000()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/security/Provider;

    invoke-direct {p0, v0, v1}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V

    .line 70
    return-void
.end method
