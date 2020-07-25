.class public Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;
.super Ljava/lang/Object;
.source "BigIntEuclidean.java"


# instance fields
.field public gcd:Ljava/math/BigInteger;

.field public x:Ljava/math/BigInteger;

.field public y:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static calculate(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;
    .locals 9
    .param p0, "a"    # Ljava/math/BigInteger;
    .param p1, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 26
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 27
    .local v6, "x":Ljava/math/BigInteger;
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 28
    .local v0, "lastx":Ljava/math/BigInteger;
    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 29
    .local v7, "y":Ljava/math/BigInteger;
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 30
    .local v1, "lasty":Ljava/math/BigInteger;
    :goto_0
    sget-object v8, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v3

    .line 33
    .local v3, "quotientAndRemainder":[Ljava/math/BigInteger;
    const/4 v8, 0x0

    aget-object v2, v3, v8

    .line 35
    .local v2, "quotient":Ljava/math/BigInteger;
    move-object v5, p0

    .line 36
    .local v5, "temp":Ljava/math/BigInteger;
    move-object p0, p1

    .line 37
    const/4 v8, 0x1

    aget-object p1, v3, v8

    .line 39
    move-object v5, v6

    .line 40
    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 41
    move-object v0, v5

    .line 43
    move-object v5, v7

    .line 44
    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 45
    move-object v1, v5

    .line 46
    goto :goto_0

    .line 48
    .end local v2    # "quotient":Ljava/math/BigInteger;
    .end local v3    # "quotientAndRemainder":[Ljava/math/BigInteger;
    .end local v5    # "temp":Ljava/math/BigInteger;
    :cond_0
    new-instance v4, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;

    invoke-direct {v4}, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;-><init>()V

    .line 49
    .local v4, "result":Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;
    iput-object v0, v4, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->x:Ljava/math/BigInteger;

    .line 50
    iput-object v1, v4, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->y:Ljava/math/BigInteger;

    .line 51
    iput-object p0, v4, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->gcd:Ljava/math/BigInteger;

    .line 52
    return-object v4
.end method
