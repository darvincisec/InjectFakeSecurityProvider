.class public Lorg/spongycastle/crypto/tls/ByteQueueInputStream;
.super Ljava/io/InputStream;
.source "ByteQueueInputStream.java"


# instance fields
.field private buffer:Lorg/spongycastle/crypto/tls/ByteQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 12
    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    .line 13
    return-void
.end method


# virtual methods
.method public addBytes([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 17
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 18
    return-void
.end method

.method public available()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public peek([B)I
    .locals 4
    .param p1, "buf"    # [B

    .prologue
    const/4 v3, 0x0

    .line 22
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ByteQueue;->available()I

    move-result v1

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 23
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, p1, v3, v0, v3}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 24
    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->available()I

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, -0x1

    .line 33
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(II)[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 38
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 43
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ByteQueue;->available()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 44
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData([BIII)V

    .line 45
    return v0
.end method

.method public skip(J)J
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 50
    long-to-int v1, p1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ByteQueue;->available()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 51
    .local v0, "bytesToRemove":I
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/ByteQueueInputStream;->buffer:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(I)V

    .line 52
    int-to-long v2, v0

    return-wide v2
.end method
