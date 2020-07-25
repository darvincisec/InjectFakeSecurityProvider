.class public Lorg/spongycastle/jcajce/provider/digest/DSTU7564$HashMac384;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;
.source "DSTU7564.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/DSTU7564;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashMac384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lorg/spongycastle/crypto/macs/DSTU7564Mac;

    const/16 v1, 0x180

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/macs/DSTU7564Mac;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/spongycastle/crypto/Mac;)V

    .line 79
    return-void
.end method
