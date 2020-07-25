.class public Lorg/spongycastle/crypto/tls/HeartbeatExtension;
.super Ljava/lang/Object;
.source "HeartbeatExtension.java"


# instance fields
.field protected mode:S


# direct methods
.method public constructor <init>(S)V
    .locals 2
    .param p1, "mode"    # S

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/HeartbeatMode;->isValid(S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'mode\' is not a valid HeartbeatMode value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/HeartbeatExtension;->mode:S

    .line 19
    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/HeartbeatExtension;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    .line 49
    .local v0, "mode":S
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/HeartbeatMode;->isValid(S)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 54
    :cond_0
    new-instance v1, Lorg/spongycastle/crypto/tls/HeartbeatExtension;

    invoke-direct {v1, v0}, Lorg/spongycastle/crypto/tls/HeartbeatExtension;-><init>(S)V

    return-object v1
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/HeartbeatExtension;->mode:S

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 36
    return-void
.end method

.method public getMode()S
    .locals 1

    .prologue
    .line 23
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/HeartbeatExtension;->mode:S

    return v0
.end method
