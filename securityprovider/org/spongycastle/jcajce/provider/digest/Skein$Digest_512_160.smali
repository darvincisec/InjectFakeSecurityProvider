.class public Lorg/spongycastle/jcajce/provider/digest/Skein$Digest_512_160;
.super Lorg/spongycastle/jcajce/provider/digest/Skein$DigestSkein512;
.source "Skein.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/Skein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest_512_160"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0xa0

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/Skein$DigestSkein512;-><init>(I)V

    .line 106
    return-void
.end method
