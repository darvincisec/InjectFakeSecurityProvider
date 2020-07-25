.class public Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
.super Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;
.source "ModularResultant.java"


# instance fields
.field modulus:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "rho"    # Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    .param p2, "res"    # Ljava/math/BigInteger;
    .param p3, "modulus"    # Ljava/math/BigInteger;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;)V

    .line 18
    iput-object p3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->modulus:Ljava/math/BigInteger;

    .line 19
    return-void
.end method

.method static combineRho(Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;)Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    .locals 8
    .param p0, "modRes1"    # Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    .param p1, "modRes2"    # Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    .prologue
    .line 32
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->modulus:Ljava/math/BigInteger;

    .line 33
    .local v1, "mod1":Ljava/math/BigInteger;
    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->modulus:Ljava/math/BigInteger;

    .line 34
    .local v2, "mod2":Ljava/math/BigInteger;
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 35
    .local v3, "prod":Ljava/math/BigInteger;
    invoke-static {v2, v1}, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->calculate(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;

    move-result-object v0

    .line 37
    .local v0, "er":Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->rho:Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    .line 38
    .local v4, "rho1":Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    iget-object v6, v0, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->x:Ljava/math/BigInteger;

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->mult(Ljava/math/BigInteger;)V

    .line 39
    iget-object v6, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->rho:Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    .line 40
    .local v5, "rho2":Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    iget-object v6, v0, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->y:Ljava/math/BigInteger;

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->mult(Ljava/math/BigInteger;)V

    .line 41
    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V

    .line 42
    invoke-virtual {v4, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->mod(Ljava/math/BigInteger;)V

    .line 44
    new-instance v6, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v6
.end method
