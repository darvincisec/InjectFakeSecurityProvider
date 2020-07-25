.class Lorg/spongycastle/pqc/crypto/newhope/ChaCha20;
.super Ljava/lang/Object;
.source "ChaCha20.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static process([B[B[BII)V
    .locals 6
    .param p0, "key"    # [B
    .param p1, "nonce"    # [B
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .prologue
    .line 11
    new-instance v0, Lorg/spongycastle/crypto/engines/ChaChaEngine;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/engines/ChaChaEngine;-><init>(I)V

    .line 12
    .local v0, "e":Lorg/spongycastle/crypto/engines/ChaChaEngine;
    const/4 v1, 0x1

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v3, p0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {v2, v3, p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p2

    move v5, p3

    .line 13
    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/ChaChaEngine;->processBytes([BII[BI)I

    .line 14
    return-void
.end method
