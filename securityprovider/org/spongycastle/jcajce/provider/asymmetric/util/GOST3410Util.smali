.class public Lorg/spongycastle/jcajce/provider/asymmetric/util/GOST3410Util;
.super Ljava/lang/Object;
.source "GOST3410Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 8
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 41
    instance-of v2, p0, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 43
    check-cast v0, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;

    .line 44
    .local v0, "k":Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;
    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;->getParameters()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->getPublicKeyParameters()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v1

    .line 46
    .local v1, "p":Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
    new-instance v2, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Lorg/spongycastle/crypto/params/GOST3410Parameters;

    .line 47
    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/spongycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/GOST3410Parameters;)V

    .line 46
    return-object v2

    .line 50
    .end local v0    # "k":Lorg/spongycastle/jce/interfaces/GOST3410PrivateKey;
    .end local v1    # "p":Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
    :cond_0
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "can\'t identify GOST3410 private key."

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 8
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 25
    instance-of v2, p0, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 27
    check-cast v0, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;

    .line 28
    .local v0, "k":Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;
    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;->getParameters()Lorg/spongycastle/jce/interfaces/GOST3410Params;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/jce/interfaces/GOST3410Params;->getPublicKeyParameters()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v1

    .line 30
    .local v1, "p":Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
    new-instance v2, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;

    invoke-interface {v0}, Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Lorg/spongycastle/crypto/params/GOST3410Parameters;

    .line 31
    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/spongycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/GOST3410Parameters;)V

    .line 30
    return-object v2

    .line 34
    .end local v0    # "k":Lorg/spongycastle/jce/interfaces/GOST3410PublicKey;
    .end local v1    # "p":Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
    :cond_0
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t identify GOST3410 public key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
