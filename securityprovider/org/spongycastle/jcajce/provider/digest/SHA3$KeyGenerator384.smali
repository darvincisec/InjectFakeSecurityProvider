.class public Lorg/spongycastle/jcajce/provider/digest/SHA3$KeyGenerator384;
.super Lorg/spongycastle/jcajce/provider/digest/SHA3$KeyGeneratorSHA3;
.source "SHA3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/SHA3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGenerator384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 150
    const/16 v0, 0x180

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/SHA3$KeyGeneratorSHA3;-><init>(I)V

    .line 151
    return-void
.end method
