.class public Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;
.super Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;
.source "CramerShoupPublicKeyParameters.java"


# instance fields
.field private c:Ljava/math/BigInteger;

.field private d:Ljava/math/BigInteger;

.field private h:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/CramerShoupParameters;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "params"    # Lorg/spongycastle/crypto/params/CramerShoupParameters;
    .param p2, "c"    # Ljava/math/BigInteger;
    .param p3, "d"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;-><init>(ZLorg/spongycastle/crypto/params/CramerShoupParameters;)V

    .line 12
    iput-object p2, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->c:Ljava/math/BigInteger;

    .line 13
    iput-object p3, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->d:Ljava/math/BigInteger;

    .line 14
    iput-object p4, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->h:Ljava/math/BigInteger;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 34
    instance-of v2, p1, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    if-nez v2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 38
    check-cast v0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    .line 40
    .local v0, "other":Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getC()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->c:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->d:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->getH()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->h:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getC()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->c:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->d:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;->h:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-super {p0}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
