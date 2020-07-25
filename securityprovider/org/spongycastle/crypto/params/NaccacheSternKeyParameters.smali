.class public Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "NaccacheSternKeyParameters.java"


# instance fields
.field private g:Ljava/math/BigInteger;

.field lowerSigmaBound:I

.field private n:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0
    .param p1, "privateKey"    # Z
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "lowerSigmaBound"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 24
    iput-object p2, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->g:Ljava/math/BigInteger;

    .line 25
    iput-object p3, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->n:Ljava/math/BigInteger;

    .line 26
    iput p4, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->lowerSigmaBound:I

    .line 27
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getLowerSigmaBound()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->lowerSigmaBound:I

    return v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method
