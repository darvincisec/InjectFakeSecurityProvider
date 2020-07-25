.class public final Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA512;
.super Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;
.source "TLSKDF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TLS12withSHA512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 165
    const-string v0, "TLS12withSHA512KDF"

    new-instance v1, Lorg/spongycastle/crypto/macs/HMac;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/Mac;)V

    .line 166
    return-void
.end method
