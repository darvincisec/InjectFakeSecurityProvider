.class public Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "CramerShoupKeyParameters.java"


# instance fields
.field private params:Lorg/spongycastle/crypto/params/CramerShoupParameters;


# direct methods
.method protected constructor <init>(ZLorg/spongycastle/crypto/params/CramerShoupParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/params/CramerShoupParameters;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 10
    iput-object p2, p0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/spongycastle/crypto/params/CramerShoupParameters;

    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 18
    instance-of v2, p1, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    if-nez v2, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 22
    check-cast v0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    .line 24
    .local v0, "csKey":Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;
    iget-object v2, p0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/spongycastle/crypto/params/CramerShoupParameters;

    if-nez v2, :cond_2

    .line 25
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 27
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/spongycastle/crypto/params/CramerShoupParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/spongycastle/crypto/params/CramerShoupParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 34
    .local v0, "code":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/spongycastle/crypto/params/CramerShoupParameters;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/spongycastle/crypto/params/CramerShoupParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 38
    :cond_0
    return v0

    .line 32
    .end local v0    # "code":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
