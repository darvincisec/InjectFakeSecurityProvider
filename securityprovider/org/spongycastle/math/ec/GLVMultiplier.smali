.class public Lorg/spongycastle/math/ec/GLVMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source "GLVMultiplier.java"


# instance fields
.field protected final curve:Lorg/spongycastle/math/ec/ECCurve;

.field protected final glvEndomorphism:Lorg/spongycastle/math/ec/endo/GLVEndomorphism;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVEndomorphism;)V
    .locals 2
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "glvEndomorphism"    # Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    .line 14
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need curve with known group order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/math/ec/GLVMultiplier;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 20
    iput-object p2, p0, Lorg/spongycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    .line 21
    return-void
.end method


# virtual methods
.method protected multiplyPositive(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 7
    .param p1, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 25
    iget-object v5, p0, Lorg/spongycastle/math/ec/GLVMultiplier;->curve:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECCurve;->equals(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 27
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 30
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    .line 31
    .local v3, "n":Ljava/math/BigInteger;
    iget-object v5, p0, Lorg/spongycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 32
    .local v1, "ab":[Ljava/math/BigInteger;
    const/4 v5, 0x0

    aget-object v0, v1, v5

    .local v0, "a":Ljava/math/BigInteger;
    const/4 v5, 0x1

    aget-object v2, v1, v5

    .line 34
    .local v2, "b":Ljava/math/BigInteger;
    iget-object v5, p0, Lorg/spongycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v5}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->getPointMap()Lorg/spongycastle/math/ec/ECPointMap;

    move-result-object v4

    .line 35
    .local v4, "pointMap":Lorg/spongycastle/math/ec/ECPointMap;
    iget-object v5, p0, Lorg/spongycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lorg/spongycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v5}, Lorg/spongycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 37
    invoke-static {p1, v0, v4, v2}, Lorg/spongycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPointMap;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 40
    :goto_0
    return-object v5

    :cond_1
    invoke-interface {v4, p1}, Lorg/spongycastle/math/ec/ECPointMap;->map(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-static {p1, v0, v5, v2}, Lorg/spongycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    goto :goto_0
.end method
