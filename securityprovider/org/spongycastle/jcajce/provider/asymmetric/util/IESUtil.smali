.class public Lorg/spongycastle/jcajce/provider/asymmetric/util/IESUtil;
.super Ljava/lang/Object;
.source "IESUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessParameterSpec(Lorg/spongycastle/crypto/BufferedBlockCipher;[B)Lorg/spongycastle/jce/spec/IESParameterSpec;
    .locals 9
    .param p0, "iesBlockCipher"    # Lorg/spongycastle/crypto/BufferedBlockCipher;
    .param p1, "nonce"    # [B

    .prologue
    const/16 v8, 0x100

    const/16 v7, 0x50

    const/16 v3, 0x40

    const/16 v5, 0x80

    const/4 v1, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 13
    new-instance v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    invoke-direct {v0, v1, v1, v5}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BI)V

    .line 35
    :goto_0
    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v6

    .line 19
    .local v6, "underlyingCipher":Lorg/spongycastle/crypto/BlockCipher;
    invoke-interface {v6}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-interface {v6}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RC2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    invoke-interface {v6}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RC5-32"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 22
    invoke-interface {v6}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RC5-64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    :cond_1
    new-instance v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    move-object v2, v1

    move v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    goto :goto_0

    .line 26
    :cond_2
    invoke-interface {v6}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SKIPJACK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    new-instance v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    move-object v2, v1

    move v3, v7

    move v4, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    goto :goto_0

    .line 30
    :cond_3
    invoke-interface {v6}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GOST28147"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    new-instance v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    move-object v2, v1

    move v3, v8

    move v4, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    goto :goto_0

    .line 35
    :cond_4
    new-instance v0, Lorg/spongycastle/jce/spec/IESParameterSpec;

    move-object v2, v1

    move v3, v5

    move v4, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    goto :goto_0
.end method
