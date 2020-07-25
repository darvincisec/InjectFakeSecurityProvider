.class public Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624$CCM128;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "DSTU7624.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/DSTU7624;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CCM128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 222
    new-instance v0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;

    new-instance v1, Lorg/spongycastle/crypto/engines/DSTU7624Engine;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/engines/DSTU7624Engine;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/modes/KCCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/spongycastle/crypto/modes/AEADBlockCipher;)V

    .line 223
    return-void
.end method
