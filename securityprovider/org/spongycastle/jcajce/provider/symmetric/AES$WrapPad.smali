.class public Lorg/spongycastle/jcajce/provider/symmetric/AES$WrapPad;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrapPad"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lorg/spongycastle/crypto/engines/AESWrapPadEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/AESWrapPadEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/spongycastle/crypto/Wrapper;)V

    .line 250
    return-void
.end method
