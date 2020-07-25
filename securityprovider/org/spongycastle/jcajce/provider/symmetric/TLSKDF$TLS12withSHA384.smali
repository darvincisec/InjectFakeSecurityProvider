.class public final Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA384;
.super Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;
.source "TLSKDF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TLS12withSHA384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 156
    const-string v0, "TLS12withSHA384KDF"

    new-instance v1, Lorg/spongycastle/crypto/macs/HMac;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/Mac;)V

    .line 157
    return-void
.end method
