.class public Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;
.super Ljava/lang/Object;
.source "TlsSRPLoginParameters.java"


# instance fields
.field protected group:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

.field protected salt:[B

.field protected verifier:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/SRP6GroupParameters;Ljava/math/BigInteger;[B)V
    .locals 0
    .param p1, "group"    # Lorg/spongycastle/crypto/params/SRP6GroupParameters;
    .param p2, "verifier"    # Ljava/math/BigInteger;
    .param p3, "salt"    # [B

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->group:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    .line 16
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->verifier:Ljava/math/BigInteger;

    .line 17
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->salt:[B

    .line 18
    return-void
.end method


# virtual methods
.method public getGroup()Lorg/spongycastle/crypto/params/SRP6GroupParameters;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->group:Lorg/spongycastle/crypto/params/SRP6GroupParameters;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->salt:[B

    return-object v0
.end method

.method public getVerifier()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsSRPLoginParameters;->verifier:Ljava/math/BigInteger;

    return-object v0
.end method
