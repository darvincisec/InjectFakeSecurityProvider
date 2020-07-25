.class public Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;
.super Ljava/lang/Object;
.source "GLVTypeBEndomorphism.java"

# interfaces
.implements Lorg/spongycastle/math/ec/endo/GLVEndomorphism;


# instance fields
.field protected final curve:Lorg/spongycastle/math/ec/ECCurve;

.field protected final parameters:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

.field protected final pointMap:Lorg/spongycastle/math/ec/ECPointMap;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)V
    .locals 2
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "parameters"    # Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 19
    iput-object p2, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    .line 20
    new-instance v0, Lorg/spongycastle/math/ec/ScaleXPointMap;

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->getBeta()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/ScaleXPointMap;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->pointMap:Lorg/spongycastle/math/ec/ECPointMap;

    .line 21
    return-void
.end method


# virtual methods
.method protected calculateB(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 4
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "t"    # I

    .prologue
    .line 48
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_2

    const/4 v2, 0x1

    .line 49
    .local v2, "negative":Z
    :goto_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 50
    .local v0, "b":Ljava/math/BigInteger;
    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    .line 51
    .local v1, "extra":Z
    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 52
    if-eqz v1, :cond_0

    .line 54
    sget-object v3, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 56
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    .end local v0    # "b":Ljava/math/BigInteger;
    :cond_1
    return-object v0

    .line 48
    .end local v1    # "extra":Z
    .end local v2    # "negative":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 8
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 25
    iget-object v6, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->getBits()I

    move-result v4

    .line 26
    .local v4, "bits":I
    iget-object v6, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->getG1()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v4}, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->calculateB(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 27
    .local v2, "b1":Ljava/math/BigInteger;
    iget-object v6, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->getG2()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v4}, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->calculateB(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 29
    .local v3, "b2":Ljava/math/BigInteger;
    iget-object v5, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    .line 30
    .local v5, "p":Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->getV1A()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->getV2A()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 31
    .local v0, "a":Ljava/math/BigInteger;
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->getV1B()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->getV2B()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    .line 33
    .local v1, "b":Ljava/math/BigInteger;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/math/BigInteger;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    return-object v6
.end method

.method public getPointMap()Lorg/spongycastle/math/ec/ECPointMap;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBEndomorphism;->pointMap:Lorg/spongycastle/math/ec/ECPointMap;

    return-object v0
.end method

.method public hasEfficientPointMap()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
