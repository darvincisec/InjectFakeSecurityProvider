.class public Lorg/spongycastle/crypto/tls/HeartbeatMessage;
.super Ljava/lang/Object;
.source "HeartbeatMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;
    }
.end annotation


# instance fields
.field protected paddingLength:I

.field protected payload:[B

.field protected type:S


# direct methods
.method public constructor <init>(S[BI)V
    .locals 2
    .param p1, "type"    # S
    .param p2, "payload"    # [B
    .param p3, "paddingLength"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/HeartbeatMessageType;->isValid(S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'type\' is not a valid HeartbeatMessageType value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_2

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'payload\' must have length < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_2
    const/16 v0, 0x10

    if-ge p3, v0, :cond_3

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'paddingLength\' must be at least 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_3
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/HeartbeatMessage;->type:S

    .line 33
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/HeartbeatMessage;->payload:[B

    .line 34
    iput p3, p0, Lorg/spongycastle/crypto/tls/HeartbeatMessage;->paddingLength:I

    .line 35
    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/HeartbeatMessage;
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v4

    .line 68
    .local v4, "type":S
    invoke-static {v4}, Lorg/spongycastle/crypto/tls/HeartbeatMessageType;->isValid(S)Z

    move-result v5

    if-nez v5, :cond_0

    .line 70
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v6, 0x2f

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 73
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v3

    .line 75
    .local v3, "payload_length":I
    new-instance v0, Lorg/spongycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;-><init>()V

    .line 76
    .local v0, "buf":Lorg/spongycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;
    invoke-static {p0, v0}, Lorg/spongycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 78
    invoke-virtual {v0, v3}, Lorg/spongycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;->toTruncatedByteArray(I)[B

    move-result-object v2

    .line 79
    .local v2, "payload":[B
    if-nez v2, :cond_1

    .line 85
    const/4 v5, 0x0

    .line 93
    :goto_0
    return-object v5

    .line 88
    :cond_1
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;->size()I

    move-result v5

    array-length v6, v2

    sub-int v1, v5, v6

    .line 93
    .local v1, "padding_length":I
    new-instance v5, Lorg/spongycastle/crypto/tls/HeartbeatMessage;

    invoke-direct {v5, v4, v2, v1}, Lorg/spongycastle/crypto/tls/HeartbeatMessage;-><init>(S[BI)V

    goto :goto_0
.end method


# virtual methods
.method public encode(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-short v1, p0, Lorg/spongycastle/crypto/tls/HeartbeatMessage;->type:S

    invoke-static {v1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 48
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/HeartbeatMessage;->payload:[B

    array-length v1, v1

    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 49
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/HeartbeatMessage;->payload:[B

    array-length v1, v1

    invoke-static {v1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 50
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/HeartbeatMessage;->payload:[B

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 52
    iget v1, p0, Lorg/spongycastle/crypto/tls/HeartbeatMessage;->paddingLength:I

    new-array v0, v1, [B

    .line 53
    .local v0, "padding":[B
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsContext;->getNonceRandomGenerator()Lorg/spongycastle/crypto/prng/RandomGenerator;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/prng/RandomGenerator;->nextBytes([B)V

    .line 54
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 55
    return-void
.end method
