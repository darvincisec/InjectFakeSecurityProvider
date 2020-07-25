.class public Lorg/spongycastle/crypto/tls/TlsFatalAlert;
.super Lorg/spongycastle/crypto/tls/TlsException;
.source "TlsFatalAlert.java"


# instance fields
.field protected alertDescription:S


# direct methods
.method public constructor <init>(S)V
    .locals 1
    .param p1, "alertDescription"    # S

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    .line 11
    return-void
.end method

.method public constructor <init>(SLjava/lang/Throwable;)V
    .locals 1
    .param p1, "alertDescription"    # S
    .param p2, "alertCause"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/AlertDescription;->getText(S)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/crypto/tls/TlsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->alertDescription:S

    .line 18
    return-void
.end method


# virtual methods
.method public getAlertDescription()S
    .locals 1

    .prologue
    .line 22
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->alertDescription:S

    return v0
.end method
