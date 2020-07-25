.class public Lorg/spongycastle/crypto/MaxBytesExceededException;
.super Lorg/spongycastle/crypto/RuntimeCryptoException;
.source "MaxBytesExceededException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/spongycastle/crypto/RuntimeCryptoException;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/RuntimeCryptoException;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method
