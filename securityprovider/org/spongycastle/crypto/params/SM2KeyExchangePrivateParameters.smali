.class public Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;
.super Ljava/lang/Object;
.source "SM2KeyExchangePrivateParameters.java"

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private final ephemeralPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

.field private final ephemeralPublicPoint:Lorg/spongycastle/math/ec/ECPoint;

.field private final initiator:Z

.field private final staticPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

.field private final staticPublicPoint:Lorg/spongycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(ZLorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 3
    .param p1, "initiator"    # Z
    .param p2, "staticPrivateKey"    # Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .param p3, "ephemeralPrivateKey"    # Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p2, :cond_0

    .line 25
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "staticPrivateKey cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_0
    if-nez p3, :cond_1

    .line 29
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ephemeralPrivateKey cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32
    :cond_1
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 33
    .local v0, "parameters":Lorg/spongycastle/crypto/params/ECDomainParameters;
    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Static and ephemeral private keys have different domain parameters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_2
    iput-boolean p1, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->initiator:Z

    .line 39
    iput-object p2, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->staticPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 40
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->staticPublicPoint:Lorg/spongycastle/math/ec/ECPoint;

    .line 41
    iput-object p3, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->ephemeralPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 42
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {p3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->ephemeralPublicPoint:Lorg/spongycastle/math/ec/ECPoint;

    .line 43
    return-void
.end method


# virtual methods
.method public getEphemeralPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->ephemeralPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method

.method public getEphemeralPublicPoint()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->ephemeralPublicPoint:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getStaticPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->staticPrivateKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    return-object v0
.end method

.method public getStaticPublicPoint()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->staticPublicPoint:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public isInitiator()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->initiator:Z

    return v0
.end method
