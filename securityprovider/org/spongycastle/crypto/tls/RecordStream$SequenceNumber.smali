.class Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;
.super Ljava/lang/Object;
.source "RecordStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/RecordStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequenceNumber"
.end annotation


# instance fields
.field private exhausted:Z

.field private value:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;->value:J

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;->exhausted:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/crypto/tls/RecordStream$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/crypto/tls/RecordStream$1;

    .prologue
    .line 413
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized nextValue(S)J
    .locals 6
    .param p1, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/tls/TlsFatalAlert;
        }
    .end annotation

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;->exhausted:Z

    if-eqz v2, :cond_0

    .line 422
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v2, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 424
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;->value:J

    .line 425
    .local v0, "result":J
    iget-wide v2, p0, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;->value:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;->value:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 427
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;->exhausted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :cond_1
    monitor-exit p0

    return-wide v0
.end method
