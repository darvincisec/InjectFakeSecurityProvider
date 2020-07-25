.class public Lorg/spongycastle/crypto/ec/ECPair;
.super Ljava/lang/Object;
.source "ECPair.java"


# instance fields
.field private final x:Lorg/spongycastle/math/ec/ECPoint;

.field private final y:Lorg/spongycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 0
    .param p1, "x"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "y"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/spongycastle/crypto/ec/ECPair;->x:Lorg/spongycastle/math/ec/ECPoint;

    .line 13
    iput-object p2, p0, Lorg/spongycastle/crypto/ec/ECPair;->y:Lorg/spongycastle/math/ec/ECPoint;

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 33
    instance-of v0, p1, Lorg/spongycastle/crypto/ec/ECPair;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/spongycastle/crypto/ec/ECPair;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/ec/ECPair;->equals(Lorg/spongycastle/crypto/ec/ECPair;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Lorg/spongycastle/crypto/ec/ECPair;)Z
    .locals 2
    .param p1, "other"    # Lorg/spongycastle/crypto/ec/ECPair;

    .prologue
    .line 28
    invoke-virtual {p1}, Lorg/spongycastle/crypto/ec/ECPair;->getX()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/ec/ECPair;->getX()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/ec/ECPair;->getY()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/ec/ECPair;->getY()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lorg/spongycastle/crypto/ec/ECPair;->x:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getY()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lorg/spongycastle/crypto/ec/ECPair;->y:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lorg/spongycastle/crypto/ec/ECPair;->x:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/ec/ECPair;->y:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method
