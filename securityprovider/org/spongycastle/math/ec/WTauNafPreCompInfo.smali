.class public Lorg/spongycastle/math/ec/WTauNafPreCompInfo;
.super Ljava/lang/Object;
.source "WTauNafPreCompInfo.java"

# interfaces
.implements Lorg/spongycastle/math/ec/PreCompInfo;


# instance fields
.field protected preComp:[Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;

    return-void
.end method


# virtual methods
.method public getPreComp()[Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;

    return-object v0
.end method

.method public setPreComp([Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;)V
    .locals 0
    .param p1, "preComp"    # [Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;

    .prologue
    .line 22
    iput-object p1, p0, Lorg/spongycastle/math/ec/WTauNafPreCompInfo;->preComp:[Lorg/spongycastle/math/ec/ECPoint$AbstractF2m;

    .line 23
    return-void
.end method
