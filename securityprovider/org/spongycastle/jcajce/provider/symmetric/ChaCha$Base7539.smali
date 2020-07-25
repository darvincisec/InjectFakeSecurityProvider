.class public Lorg/spongycastle/jcajce/provider/symmetric/ChaCha$Base7539;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;
.source "ChaCha.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/ChaCha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base7539"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;-><init>()V

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lorg/spongycastle/crypto/StreamCipher;I)V

    .line 41
    return-void
.end method
