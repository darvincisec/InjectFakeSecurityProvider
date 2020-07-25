.class public Lorg/spongycastle/jcajce/provider/digest/SM3$Digest;
.super Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;
.source "SM3.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/SM3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lorg/spongycastle/crypto/digests/SM3Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SM3Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 19
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
    .line 24
    invoke-super {p0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/digest/SM3$Digest;

    .line 25
    .local v0, "d":Lorg/spongycastle/jcajce/provider/digest/SM3$Digest;
    new-instance v2, Lorg/spongycastle/crypto/digests/SM3Digest;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/digest/SM3$Digest;->digest:Lorg/spongycastle/crypto/Digest;

    check-cast v1, Lorg/spongycastle/crypto/digests/SM3Digest;

    invoke-direct {v2, v1}, Lorg/spongycastle/crypto/digests/SM3Digest;-><init>(Lorg/spongycastle/crypto/digests/SM3Digest;)V

    iput-object v2, v0, Lorg/spongycastle/jcajce/provider/digest/SM3$Digest;->digest:Lorg/spongycastle/crypto/Digest;

    .line 27
    return-object v0
.end method
