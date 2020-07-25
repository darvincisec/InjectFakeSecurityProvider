.class public Lorg/spongycastle/crypto/ec/ECElGamalDecryptor;
.super Ljava/lang/Object;
.source "ECElGamalDecryptor.java"

# interfaces
.implements Lorg/spongycastle/crypto/ec/ECDecryptor;


# instance fields
.field private key:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decrypt(Lorg/spongycastle/crypto/ec/ECPair;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 3
    .param p1, "pair"    # Lorg/spongycastle/crypto/ec/ECPair;

    .prologue
    .line 39
    iget-object v1, p0, Lorg/spongycastle/crypto/ec/ECElGamalDecryptor;->key:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ECElGamalDecryptor not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/ec/ECPair;->getX()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/ec/ECElGamalDecryptor;->key:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 46
    .local v0, "tmp":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/ec/ECPair;->getY()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECPoint;->subtract(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 23
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ECPrivateKeyParameters are required for decryption."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    check-cast p1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/ec/ECElGamalDecryptor;->key:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 29
    return-void
.end method
