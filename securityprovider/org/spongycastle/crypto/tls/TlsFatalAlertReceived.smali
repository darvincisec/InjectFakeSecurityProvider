.class public Lorg/spongycastle/crypto/tls/TlsFatalAlertReceived;
.super Lorg/spongycastle/crypto/tls/TlsException;
.source "TlsFatalAlertReceived.java"


# instance fields
.field protected alertDescription:S


# direct methods
.method public constructor <init>(S)V
    .locals 2
    .param p1, "alertDescription"    # S

    .prologue
    .line 10
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/AlertDescription;->getText(S)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/tls/TlsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsFatalAlertReceived;->alertDescription:S

    .line 13
    return-void
.end method


# virtual methods
.method public getAlertDescription()S
    .locals 1

    .prologue
    .line 17
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/TlsFatalAlertReceived;->alertDescription:S

    return v0
.end method
