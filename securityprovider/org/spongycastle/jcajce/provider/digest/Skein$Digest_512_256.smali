.class public Lorg/spongycastle/jcajce/provider/digest/Skein$Digest_512_256;
.super Lorg/spongycastle/jcajce/provider/digest/Skein$DigestSkein512;
.source "Skein.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/Skein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest_512_256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/Skein$DigestSkein512;-><init>(I)V

    .line 124
    return-void
.end method
