.class public Lorg/spongycastle/crypto/params/DHKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "DHKeyParameters.java"


# instance fields
.field private params:Lorg/spongycastle/crypto/params/DHParameters;


# direct methods
.method protected constructor <init>(ZLorg/spongycastle/crypto/params/DHParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/params/DHParameters;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 15
    iput-object p2, p0, Lorg/spongycastle/crypto/params/DHKeyParameters;->params:Lorg/spongycastle/crypto/params/DHParameters;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 26
    instance-of v2, p1, Lorg/spongycastle/crypto/params/DHKeyParameters;

    if-nez v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 31
    check-cast v0, Lorg/spongycastle/crypto/params/DHKeyParameters;

    .line 33
    .local v0, "dhKey":Lorg/spongycastle/crypto/params/DHKeyParameters;
    iget-object v2, p0, Lorg/spongycastle/crypto/params/DHKeyParameters;->params:Lorg/spongycastle/crypto/params/DHParameters;

    if-nez v2, :cond_2

    .line 35
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 39
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/params/DHKeyParameters;->params:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getParameters()Lorg/spongycastle/crypto/params/DHParameters;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHKeyParameters;->params:Lorg/spongycastle/crypto/params/DHParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHKeyParameters;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 47
    .local v0, "code":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/params/DHKeyParameters;->params:Lorg/spongycastle/crypto/params/DHParameters;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lorg/spongycastle/crypto/params/DHKeyParameters;->params:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/DHParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 52
    :cond_0
    return v0

    .line 45
    .end local v0    # "code":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
