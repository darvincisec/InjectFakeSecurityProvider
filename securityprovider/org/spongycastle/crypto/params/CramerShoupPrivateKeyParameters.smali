.class public Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;
.super Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;
.source "CramerShoupPrivateKeyParameters.java"


# instance fields
.field private pk:Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

.field private x1:Ljava/math/BigInteger;

.field private x2:Ljava/math/BigInteger;

.field private y1:Ljava/math/BigInteger;

.field private y2:Ljava/math/BigInteger;

.field private z:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/CramerShoupParameters;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "params"    # Lorg/spongycastle/crypto/params/CramerShoupParameters;
    .param p2, "x1"    # Ljava/math/BigInteger;
    .param p3, "x2"    # Ljava/math/BigInteger;
    .param p4, "y1"    # Ljava/math/BigInteger;
    .param p5, "y2"    # Ljava/math/BigInteger;
    .param p6, "z"    # Ljava/math/BigInteger;

    .prologue
    .line 11
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;-><init>(ZLorg/spongycastle/crypto/params/CramerShoupParameters;)V

    .line 13
    iput-object p2, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->x1:Ljava/math/BigInteger;

    .line 14
    iput-object p3, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->x2:Ljava/math/BigInteger;

    .line 15
    iput-object p4, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->y1:Ljava/math/BigInteger;

    .line 16
    iput-object p5, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->y2:Ljava/math/BigInteger;

    .line 17
    iput-object p6, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->z:Ljava/math/BigInteger;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 53
    instance-of v2, p1, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;

    if-nez v2, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 57
    check-cast v0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;

    .line 59
    .local v0, "other":Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX1()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->x1:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getX2()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->x2:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY1()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->y1:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getY2()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->y2:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->getZ()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->z:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, p1}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPk()Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->pk:Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    return-object v0
.end method

.method public getX1()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->x1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getX2()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->x2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY1()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->y1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY2()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->y2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getZ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->z:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->x1:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->x2:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->y1:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->y2:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->z:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-super {p0}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setPk(Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;)V
    .locals 0
    .param p1, "pk"    # Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/spongycastle/crypto/params/CramerShoupPrivateKeyParameters;->pk:Lorg/spongycastle/crypto/params/CramerShoupPublicKeyParameters;

    .line 42
    return-void
.end method
