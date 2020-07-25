.class public Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi$withShake256;
.super Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;
.source "XMSSSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "withShake256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 200
    const-string v0, "SHAKE256withXMSS"

    new-instance v1, Lorg/spongycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;

    invoke-direct {v2}, Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/xmss/XMSSSigner;)V

    .line 201
    return-void
.end method
