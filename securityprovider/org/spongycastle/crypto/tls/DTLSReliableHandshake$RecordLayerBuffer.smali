.class Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;
.super Ljava/io/ByteArrayOutputStream;
.source "DTLSReliableHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecordLayerBuffer"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 428
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 429
    return-void
.end method


# virtual methods
.method sendToRecordLayer(Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V
    .locals 3
    .param p1, "recordLayer"    # Lorg/spongycastle/crypto/tls/DTLSRecordLayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;->count:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->send([BII)V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;->buf:[B

    .line 435
    return-void
.end method
