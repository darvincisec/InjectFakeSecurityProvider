.class public Lorg/spongycastle/crypto/tls/BasicTlsPSKIdentity;
.super Ljava/lang/Object;
.source "BasicTlsPSKIdentity.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsPSKIdentity;


# instance fields
.field protected identity:[B

.field protected psk:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "psk"    # [B

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/BasicTlsPSKIdentity;->identity:[B

    .line 21
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/BasicTlsPSKIdentity;->psk:[B

    .line 22
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1
    .param p1, "identity"    # [B
    .param p2, "psk"    # [B

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/BasicTlsPSKIdentity;->identity:[B

    .line 15
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/BasicTlsPSKIdentity;->psk:[B

    .line 16
    return-void
.end method


# virtual methods
.method public getPSK()[B
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/BasicTlsPSKIdentity;->psk:[B

    return-object v0
.end method

.method public getPSKIdentity()[B
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/BasicTlsPSKIdentity;->identity:[B

    return-object v0
.end method

.method public notifyIdentityHint([B)V
    .locals 0
    .param p1, "psk_identity_hint"    # [B

    .prologue
    .line 30
    return-void
.end method

.method public skipIdentityHint()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method
