.class public Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;
.super Lorg/spongycastle/crypto/io/CipherIOException;
.source "InvalidCipherTextIOException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/io/CipherIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    return-void
.end method
