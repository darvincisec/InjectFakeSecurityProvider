.class public Lorg/spongycastle/crypto/engines/OldIESEngine;
.super Lorg/spongycastle/crypto/engines/IESEngine;
.source "OldIESEngine.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;Lorg/spongycastle/crypto/Mac;)V
    .locals 0
    .param p1, "agree"    # Lorg/spongycastle/crypto/BasicAgreement;
    .param p2, "kdf"    # Lorg/spongycastle/crypto/DerivationFunction;
    .param p3, "mac"    # Lorg/spongycastle/crypto/Mac;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/engines/IESEngine;-><init>(Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;Lorg/spongycastle/crypto/Mac;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;Lorg/spongycastle/crypto/Mac;Lorg/spongycastle/crypto/BufferedBlockCipher;)V
    .locals 0
    .param p1, "agree"    # Lorg/spongycastle/crypto/BasicAgreement;
    .param p2, "kdf"    # Lorg/spongycastle/crypto/DerivationFunction;
    .param p3, "mac"    # Lorg/spongycastle/crypto/Mac;
    .param p4, "cipher"    # Lorg/spongycastle/crypto/BufferedBlockCipher;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/IESEngine;-><init>(Lorg/spongycastle/crypto/BasicAgreement;Lorg/spongycastle/crypto/DerivationFunction;Lorg/spongycastle/crypto/Mac;Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected getLengthTag([B)[B
    .locals 3
    .param p1, "p2"    # [B

    .prologue
    .line 54
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 55
    .local v0, "L2":[B
    if-eqz p1, :cond_0

    .line 57
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 59
    :cond_0
    return-object v0
.end method
