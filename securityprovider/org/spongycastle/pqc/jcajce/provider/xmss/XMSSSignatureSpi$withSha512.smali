.class public Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi$withSha512;
.super Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;
.source "XMSSSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "withSha512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 191
    const-string v0, "SHA512withXMSS"

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;)V

    .line 192
    return-void
.end method
