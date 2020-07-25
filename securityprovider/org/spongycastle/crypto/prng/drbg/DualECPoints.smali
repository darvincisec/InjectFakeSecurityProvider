.class public Lorg/spongycastle/crypto/prng/drbg/DualECPoints;
.super Ljava/lang/Object;
.source "DualECPoints.java"


# instance fields
.field private final cofactor:I

.field private final p:Lorg/spongycastle/math/ec/ECPoint;

.field private final q:Lorg/spongycastle/math/ec/ECPoint;

.field private final securityStrength:I


# direct methods
.method public constructor <init>(ILorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;I)V
    .locals 2
    .param p1, "securityStrength"    # I
    .param p2, "p"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "q"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p4, "cofactor"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->equals(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "points need to be on the same curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput p1, p0, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->securityStrength:I

    .line 36
    iput-object p2, p0, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->p:Lorg/spongycastle/math/ec/ECPoint;

    .line 37
    iput-object p3, p0, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->q:Lorg/spongycastle/math/ec/ECPoint;

    .line 38
    iput p4, p0, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->cofactor:I

    .line 39
    return-void
.end method

.method private static log2(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "log":I
    :goto_0
    shr-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return v0
.end method


# virtual methods
.method public getCofactor()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->cofactor:I

    return v0
.end method

.method public getMaxOutlen()I
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->p:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->cofactor:I

    invoke-static {v1}, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->log2(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getP()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->p:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getQ()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->q:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getSecurityStrength()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->securityStrength:I

    return v0
.end method

.method public getSeedLen()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->p:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    return v0
.end method
