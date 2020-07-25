.class public Lorg/spongycastle/jce/ECPointUtil;
.super Ljava/lang/Object;
.source "ECPointUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodePoint(Ljava/security/spec/EllipticCurve;[B)Ljava/security/spec/ECPoint;
    .locals 9
    .param p0, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p1, "encoded"    # [B

    .prologue
    const/4 v4, 0x0

    .line 29
    const/4 v0, 0x0

    .line 31
    .local v0, "c":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    instance-of v1, v1, Ljava/security/spec/ECFieldFp;

    if-eqz v1, :cond_0

    .line 33
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    .line 34
    .end local v0    # "c":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v1}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 52
    .restart local v0    # "c":Lorg/spongycastle/math/ec/ECCurve;
    :goto_0
    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    .line 54
    .local v8, "p":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    .line 38
    .end local v8    # "p":Lorg/spongycastle/math/ec/ECPoint;
    :cond_0
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v1}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object v7

    .line 40
    .local v7, "k":[I
    array-length v1, v7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 42
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    .line 43
    .end local v0    # "c":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v1}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v1

    const/4 v2, 0x2

    aget v2, v7, v2

    const/4 v3, 0x1

    aget v3, v7, v3

    aget v4, v7, v4

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    .restart local v0    # "c":Lorg/spongycastle/math/ec/ECCurve;
    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    .line 48
    .end local v0    # "c":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v1}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v1

    aget v2, v7, v4

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;)V

    .restart local v0    # "c":Lorg/spongycastle/math/ec/ECCurve;
    goto :goto_0
.end method
