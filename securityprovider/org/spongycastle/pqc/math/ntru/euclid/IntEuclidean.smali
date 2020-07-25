.class public Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;
.super Ljava/lang/Object;
.source "IntEuclidean.java"


# instance fields
.field public gcd:I

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static calculate(II)Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;
    .locals 8
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 24
    const/4 v5, 0x0

    .line 25
    .local v5, "x":I
    const/4 v0, 0x1

    .line 26
    .local v0, "lastx":I
    const/4 v6, 0x1

    .line 27
    .local v6, "y":I
    const/4 v1, 0x0

    .line 28
    .local v1, "lasty":I
    :goto_0
    if-eqz p1, :cond_0

    .line 30
    div-int v2, p0, p1

    .line 32
    .local v2, "quotient":I
    move v4, p0

    .line 33
    .local v4, "temp":I
    move p0, p1

    .line 34
    rem-int p1, v4, p1

    .line 36
    move v4, v5

    .line 37
    mul-int v7, v2, v5

    sub-int v5, v0, v7

    .line 38
    move v0, v4

    .line 40
    move v4, v6

    .line 41
    mul-int v7, v2, v6

    sub-int v6, v1, v7

    .line 42
    move v1, v4

    .line 43
    goto :goto_0

    .line 45
    .end local v2    # "quotient":I
    .end local v4    # "temp":I
    :cond_0
    new-instance v3, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;

    invoke-direct {v3}, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;-><init>()V

    .line 46
    .local v3, "result":Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;
    iput v0, v3, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;->x:I

    .line 47
    iput v1, v3, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;->y:I

    .line 48
    iput p0, v3, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;->gcd:I

    .line 49
    return-object v3
.end method
