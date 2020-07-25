.class Lorg/spongycastle/crypto/tls/RecordStream$1;
.super Lorg/spongycastle/util/io/SimpleOutputStream;
.source "RecordStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/RecordStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/crypto/tls/RecordStream;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/RecordStream;)V
    .locals 0
    .param p1, "this$0"    # Lorg/spongycastle/crypto/tls/RecordStream;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream$1;->this$0:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-direct {p0}, Lorg/spongycastle/util/io/SimpleOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream$1;->this$0:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->access$100(Lorg/spongycastle/crypto/tls/RecordStream;)Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->update([BII)V

    .line 35
    return-void
.end method
