.class public Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi$withSha3_512;
.super Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;
.source "SignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "withSha3_512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x200

    .line 150
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA3Digest;

    invoke-direct {v0, v4}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    new-instance v1, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;

    new-instance v2, Lorg/spongycastle/crypto/digests/SHA3Digest;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    new-instance v3, Lorg/spongycastle/crypto/digests/SHA3Digest;

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;-><init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;)V

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/jcajce/provider/sphincs/SignatureSpi;-><init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/sphincs/SPHINCS256Signer;)V

    .line 151
    return-void
.end method
