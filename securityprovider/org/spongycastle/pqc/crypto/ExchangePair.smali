.class public Lorg/spongycastle/pqc/crypto/ExchangePair;
.super Ljava/lang/Object;
.source "ExchangePair.java"


# instance fields
.field private final publicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field private final shared:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;[B)V
    .locals 1
    .param p1, "publicKey"    # Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .param p2, "shared"    # [B

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ExchangePair;->publicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    .line 23
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ExchangePair;->shared:[B

    .line 24
    return-void
.end method


# virtual methods
.method public getPublicKey()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ExchangePair;->publicKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    return-object v0
.end method

.method public getSharedValue()[B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ExchangePair;->shared:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
