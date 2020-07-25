.class public Lorg/spongycastle/jcajce/provider/digest/GOST3411$HashMac2012_512;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;
.source "GOST3411.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/GOST3411;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashMac2012_512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    new-instance v1, Lorg/spongycastle/crypto/digests/GOST3411_2012_512Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/GOST3411_2012_512Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/spongycastle/crypto/Mac;)V

    .line 106
    return-void
.end method
