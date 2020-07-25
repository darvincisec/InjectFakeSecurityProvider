.class public Lorg/spongycastle/crypto/engines/ARIAWrapEngine;
.super Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;
.source "ARIAWrapEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lorg/spongycastle/crypto/engines/ARIAEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "useReverseDirection"    # Z

    .prologue
    .line 27
    new-instance v0, Lorg/spongycastle/crypto/engines/ARIAEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/ARIAEngine;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/spongycastle/crypto/BlockCipher;Z)V

    .line 28
    return-void
.end method
