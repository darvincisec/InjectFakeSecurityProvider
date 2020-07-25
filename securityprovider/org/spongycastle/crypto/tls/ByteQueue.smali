.class public Lorg/spongycastle/crypto/tls/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x400


# instance fields
.field private available:I

.field private databuf:[B

.field private readOnlyBuf:Z

.field private skipped:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    .line 47
    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    .line 49
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->readOnlyBuf:Z

    .line 58
    if-nez p1, :cond_0

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    :goto_0
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    .line 59
    return-void

    .line 58
    :cond_0
    new-array v0, p1, [B

    goto :goto_0
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    .line 47
    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    .line 49
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->readOnlyBuf:Z

    .line 63
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    .line 64
    iput p2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    .line 65
    iput p3, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->readOnlyBuf:Z

    .line 67
    return-void
.end method

.method public static nextTwoPow(I)I
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 21
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 22
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 23
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 24
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 25
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 26
    add-int/lit8 v0, p0, 0x1

    return v0
.end method


# virtual methods
.method public addData([BII)V
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v6, 0x0

    .line 78
    iget-boolean v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->readOnlyBuf:Z

    if-eqz v2, :cond_0

    .line 80
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot add data to read-only buffer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_0
    iget v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    iget v3, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    array-length v3, v3

    if-le v2, v3, :cond_1

    .line 85
    iget v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    add-int/2addr v2, p3

    invoke-static {v2}, Lorg/spongycastle/crypto/tls/ByteQueue;->nextTwoPow(I)I

    move-result v0

    .line 86
    .local v0, "desiredSize":I
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    array-length v2, v2

    if-le v0, v2, :cond_2

    .line 88
    new-array v1, v0, [B

    .line 89
    .local v1, "tmp":[B
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v3, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    iget v4, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    invoke-static {v2, v3, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    .line 96
    .end local v1    # "tmp":[B
    :goto_0
    iput v6, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    .line 99
    .end local v0    # "desiredSize":I
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v3, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    iget v4, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    add-int/2addr v3, v4

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iget v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    .line 101
    return-void

    .line 94
    .restart local v0    # "desiredSize":I
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v3, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v5, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public available()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    return v0
.end method

.method public copyTo(Ljava/io/OutputStream;I)V
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    if-le p2, v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot copy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, only got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 125
    return-void
.end method

.method public read([BIII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "skip"    # I

    .prologue
    .line 137
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is too small for a read of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    sub-int/2addr v0, p4

    if-ge v0, p3, :cond_1

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not enough data to read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    add-int/2addr v1, p4

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    return-void
.end method

.method public readFrom(I)Ljava/io/ByteArrayInputStream;
    .locals 4
    .param p1, "length"    # I

    .prologue
    .line 156
    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    if-le p1, v1, :cond_0

    .line 158
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes, only got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    .line 163
    .local v0, "position":I
    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    sub-int/2addr v1, p1

    iput v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    .line 164
    iget v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    .line 166
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    invoke-direct {v1, v2, v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v1
.end method

.method public removeData(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 176
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    if-le p1, v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, only got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    .line 185
    iget v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    .line 186
    return-void
.end method

.method public removeData([BIII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "skip"    # I

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 199
    add-int v0, p4, p3

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(I)V

    .line 200
    return-void
.end method

.method public removeData(II)[B
    .locals 2
    .param p1, "len"    # I
    .param p2, "skip"    # I

    .prologue
    .line 204
    new-array v0, p1, [B

    .line 205
    .local v0, "buf":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData([BIII)V

    .line 206
    return-object v0
.end method

.method public shrink()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 211
    iget v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    if-nez v2, :cond_1

    .line 213
    sget-object v2, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    .line 214
    iput v5, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    invoke-static {v2}, Lorg/spongycastle/crypto/tls/ByteQueue;->nextTwoPow(I)I

    move-result v0

    .line 219
    .local v0, "desiredSize":I
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 221
    new-array v1, v0, [B

    .line 222
    .local v1, "tmp":[B
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    iget v3, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    iget v4, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->available:I

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->databuf:[B

    .line 224
    iput v5, p0, Lorg/spongycastle/crypto/tls/ByteQueue;->skipped:I

    goto :goto_0
.end method
