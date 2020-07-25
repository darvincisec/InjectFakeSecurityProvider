.class public Lorg/spongycastle/crypto/tls/NewSessionTicket;
.super Ljava/lang/Object;
.source "NewSessionTicket.java"


# instance fields
.field protected ticket:[B

.field protected ticketLifetimeHint:J


# direct methods
.method public constructor <init>(J[B)V
    .locals 1
    .param p1, "ticketLifetimeHint"    # J
    .param p3, "ticket"    # [B

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lorg/spongycastle/crypto/tls/NewSessionTicket;->ticketLifetimeHint:J

    .line 15
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/NewSessionTicket;->ticket:[B

    .line 16
    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/NewSessionTicket;
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint32(Ljava/io/InputStream;)J

    move-result-wide v2

    .line 52
    .local v2, "ticketLifetimeHint":J
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 53
    .local v0, "ticket":[B
    new-instance v1, Lorg/spongycastle/crypto/tls/NewSessionTicket;

    invoke-direct {v1, v2, v3, v0}, Lorg/spongycastle/crypto/tls/NewSessionTicket;-><init>(J[B)V

    return-object v1
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-wide v0, p0, Lorg/spongycastle/crypto/tls/NewSessionTicket;->ticketLifetimeHint:J

    invoke-static {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint32(JLjava/io/OutputStream;)V

    .line 38
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/NewSessionTicket;->ticket:[B

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 39
    return-void
.end method

.method public getTicket()[B
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/NewSessionTicket;->ticket:[B

    return-object v0
.end method

.method public getTicketLifetimeHint()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lorg/spongycastle/crypto/tls/NewSessionTicket;->ticketLifetimeHint:J

    return-wide v0
.end method
