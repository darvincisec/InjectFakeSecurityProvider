.class public Lorg/spongycastle/crypto/params/CCMParameters;
.super Lorg/spongycastle/crypto/params/AEADParameters;
.source "CCMParameters.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B[B)V
    .locals 0
    .param p1, "key"    # Lorg/spongycastle/crypto/params/KeyParameter;
    .param p2, "macSize"    # I
    .param p3, "nonce"    # [B
    .param p4, "associatedText"    # [B

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B[B)V

    .line 20
    return-void
.end method
