.class Lorg/spongycastle/crypto/tls/TlsClientContextImpl;
.super Lorg/spongycastle/crypto/tls/AbstractTlsContext;
.source "TlsClientContextImpl.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsClientContext;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V
    .locals 0
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;
    .param p2, "securityParameters"    # Lorg/spongycastle/crypto/tls/SecurityParameters;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V

    .line 12
    return-void
.end method


# virtual methods
.method public isServer()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method
