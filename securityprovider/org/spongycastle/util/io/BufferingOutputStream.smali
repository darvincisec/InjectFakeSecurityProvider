.class public Lorg/spongycastle/util/io/BufferingOutputStream;
.super Ljava/io/OutputStream;
.source "BufferingOutputStream.java"


# instance fields
.field private final buf:[B

.field private bufOff:I

.field private final other:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "other"    # Ljava/io/OutputStream;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->other:Ljava/io/OutputStream;

    .line 30
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "other"    # Ljava/io/OutputStream;
    .param p2, "bufferSize"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->other:Ljava/io/OutputStream;

    .line 42
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    .line 43
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
    .line 105
    invoke-virtual {p0}, Lorg/spongycastle/util/io/BufferingOutputStream;->flush()V

    .line 106
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->other:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 107
    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->other:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    iget v2, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 98
    iput v3, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    .line 99
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    invoke-static {v0, v3}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 100
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    iget v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 83
    iget v0, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lorg/spongycastle/util/io/BufferingOutputStream;->flush()V

    .line 87
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    sub-int/2addr v1, v2

    if-ge p3, v1, :cond_1

    .line 50
    iget-object v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    iget v2, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    sub-int v0, v1, v2

    .line 57
    .local v0, "gap":I
    iget-object v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    iget v2, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    .line 60
    invoke-virtual {p0}, Lorg/spongycastle/util/io/BufferingOutputStream;->flush()V

    .line 62
    add-int/2addr p2, v0

    .line 63
    sub-int/2addr p3, v0

    .line 64
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v1, v1

    if-lt p3, v1, :cond_2

    .line 66
    iget-object v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->other:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v2, v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 67
    iget-object v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v1, v1

    add-int/2addr p2, v1

    .line 68
    iget-object v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    array-length v1, v1

    sub-int/2addr p3, v1

    goto :goto_1

    .line 71
    :cond_2
    if-lez p3, :cond_0

    .line 73
    iget-object v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->buf:[B

    iget v2, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/spongycastle/util/io/BufferingOutputStream;->bufOff:I

    goto :goto_0
.end method
