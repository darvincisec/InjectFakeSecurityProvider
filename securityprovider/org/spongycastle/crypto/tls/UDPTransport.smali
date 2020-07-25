.class public Lorg/spongycastle/crypto/tls/UDPTransport;
.super Ljava/lang/Object;
.source "UDPTransport.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/DatagramTransport;


# static fields
.field protected static final MAX_IP_OVERHEAD:I = 0x54

.field protected static final MIN_IP_OVERHEAD:I = 0x14

.field protected static final UDP_OVERHEAD:I = 0x8


# instance fields
.field protected final receiveLimit:I

.field protected final sendLimit:I

.field protected final socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Ljava/net/DatagramSocket;I)V
    .locals 2
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .param p2, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'socket\' must be bound and connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/UDPTransport;->socket:Ljava/net/DatagramSocket;

    .line 29
    add-int/lit8 v0, p2, -0x14

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/spongycastle/crypto/tls/UDPTransport;->receiveLimit:I

    .line 30
    add-int/lit8 v0, p2, -0x54

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/spongycastle/crypto/tls/UDPTransport;->sendLimit:I

    .line 31
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
    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/UDPTransport;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 74
    return-void
.end method

.method public getReceiveLimit()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lorg/spongycastle/crypto/tls/UDPTransport;->receiveLimit:I

    return v0
.end method

.method public getSendLimit()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/spongycastle/crypto/tls/UDPTransport;->sendLimit:I

    return v0
.end method

.method public receive([BIII)I
    .locals 2
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
    .line 47
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/UDPTransport;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, p4}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 48
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 49
    .local v0, "packet":Ljava/net/DatagramPacket;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/UDPTransport;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 50
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    return v1
.end method

.method public send([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/UDPTransport;->getSendLimit()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 63
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 66
    :cond_0
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 67
    .local v0, "packet":Ljava/net/DatagramPacket;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/UDPTransport;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 68
    return-void
.end method
