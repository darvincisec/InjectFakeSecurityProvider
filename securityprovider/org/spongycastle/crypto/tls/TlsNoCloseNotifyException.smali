.class public Lorg/spongycastle/crypto/tls/TlsNoCloseNotifyException;
.super Ljava/io/EOFException;
.source "TlsNoCloseNotifyException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "No close_notify alert received before connection closed"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method
