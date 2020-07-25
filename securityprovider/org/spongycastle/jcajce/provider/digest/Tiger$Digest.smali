.class public Lorg/spongycastle/jcajce/provider/digest/Tiger$Digest;
.super Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;
.source "Tiger.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/Tiger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/spongycastle/crypto/digests/TigerDigest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/TigerDigest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 26
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
    .line 31
    invoke-super {p0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/digest/Tiger$Digest;

    .line 32
    .local v0, "d":Lorg/spongycastle/jcajce/provider/digest/Tiger$Digest;
    new-instance v2, Lorg/spongycastle/crypto/digests/TigerDigest;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/digest/Tiger$Digest;->digest:Lorg/spongycastle/crypto/Digest;

    check-cast v1, Lorg/spongycastle/crypto/digests/TigerDigest;

    invoke-direct {v2, v1}, Lorg/spongycastle/crypto/digests/TigerDigest;-><init>(Lorg/spongycastle/crypto/digests/TigerDigest;)V

    iput-object v2, v0, Lorg/spongycastle/jcajce/provider/digest/Tiger$Digest;->digest:Lorg/spongycastle/crypto/Digest;

    .line 34
    return-object v0
.end method
