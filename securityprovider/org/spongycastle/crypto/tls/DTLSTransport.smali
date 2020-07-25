.class public Lorg/spongycastle/crypto/tls/DTLSTransport;
.super Ljava/lang/Object;
.source "DTLSTransport.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/DatagramTransport;


# instance fields
.field private final recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V
    .locals 0
    .param p1, "recordLayer"    # Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->close()V

    .line 79
    return-void
.end method

.method public getReceiveLimit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getReceiveLimit()I

    move-result v0

    return v0
.end method

.method public getSendLimit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getSendLimit()I

    move-result v0

    return v0
.end method

.method public receive([BIII)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "waitMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x50

    .line 32
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->receive([BIII)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    return v2

    .line 34
    :catch_0
    move-exception v1

    .line 36
    .local v1, "fatalAlert":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 37
    throw v1

    .line 39
    .end local v1    # "fatalAlert":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    :catch_1
    move-exception v0

    .line 41
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 42
    throw v0

    .line 44
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 47
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v2
.end method

.method public send([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x50

    .line 56
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v2, p1, p2, p3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->send([BII)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    return-void

    .line 58
    :catch_0
    move-exception v1

    .line 60
    .local v1, "fatalAlert":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 61
    throw v1

    .line 63
    .end local v1    # "fatalAlert":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    :catch_1
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 66
    throw v0

    .line 68
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/spongycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    .line 71
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v2
.end method
