.class public Lorg/spongycastle/crypto/DataLengthException;
.super Lorg/spongycastle/crypto/RuntimeCryptoException;
.source "DataLengthException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/spongycastle/crypto/RuntimeCryptoException;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/RuntimeCryptoException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
