.class Lorg/spongycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;
.super Ljava/io/ByteArrayOutputStream;
.source "HeartbeatMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/HeartbeatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PayloadBuffer"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method toTruncatedByteArray(I)[B
    .locals 2
    .param p1, "payloadLength"    # I

    .prologue
    .line 103
    add-int/lit8 v0, p1, 0x10

    .line 104
    .local v0, "minimumCount":I
    iget v1, p0, Lorg/spongycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;->count:I

    if-ge v1, v0, :cond_0

    .line 106
    const/4 v1, 0x0

    .line 108
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/HeartbeatMessage$PayloadBuffer;->buf:[B

    invoke-static {v1, p1}, Lorg/spongycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    goto :goto_0
.end method
