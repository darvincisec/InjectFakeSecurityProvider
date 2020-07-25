.class public Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624$KeyGen256;
.super Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624$KeyGen;
.source "DSTU7624.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 371
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624$KeyGen;-><init>(I)V

    .line 372
    return-void
.end method
