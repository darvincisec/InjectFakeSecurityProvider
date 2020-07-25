.class public Lorg/spongycastle/jcajce/provider/digest/SHA512$DigestT;
.super Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;
.source "SHA512.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/SHA512;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigestT"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "bitLength"    # I

    .prologue
    .line 46
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA512tDigest;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 47
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-super {p0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/digest/SHA512$DigestT;

    .line 53
    .local v0, "d":Lorg/spongycastle/jcajce/provider/digest/SHA512$DigestT;
    new-instance v2, Lorg/spongycastle/crypto/digests/SHA512tDigest;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/digest/SHA512$DigestT;->digest:Lorg/spongycastle/crypto/Digest;

    check-cast v1, Lorg/spongycastle/crypto/digests/SHA512tDigest;

    invoke-direct {v2, v1}, Lorg/spongycastle/crypto/digests/SHA512tDigest;-><init>(Lorg/spongycastle/crypto/digests/SHA512tDigest;)V

    iput-object v2, v0, Lorg/spongycastle/jcajce/provider/digest/SHA512$DigestT;->digest:Lorg/spongycastle/crypto/Digest;

    .line 55
    return-object v0
.end method
