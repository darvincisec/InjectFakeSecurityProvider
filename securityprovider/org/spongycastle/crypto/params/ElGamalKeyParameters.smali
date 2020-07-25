.class public Lorg/spongycastle/crypto/params/ElGamalKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "ElGamalKeyParameters.java"


# instance fields
.field private params:Lorg/spongycastle/crypto/params/ElGamalParameters;


# direct methods
.method protected constructor <init>(ZLorg/spongycastle/crypto/params/ElGamalParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/params/ElGamalParameters;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 15
    iput-object p2, p0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/spongycastle/crypto/params/ElGamalParameters;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 31
    instance-of v2, p1, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    if-nez v2, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 36
    check-cast v0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    .line 38
    .local v0, "dhKey":Lorg/spongycastle/crypto/params/ElGamalKeyParameters;
    iget-object v2, p0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/spongycastle/crypto/params/ElGamalParameters;

    if-nez v2, :cond_2

    .line 40
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 44
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/params/ElGamalParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getParameters()Lorg/spongycastle/crypto/params/ElGamalParameters;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/spongycastle/crypto/params/ElGamalParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/spongycastle/crypto/params/ElGamalParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ElGamalParameters;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
