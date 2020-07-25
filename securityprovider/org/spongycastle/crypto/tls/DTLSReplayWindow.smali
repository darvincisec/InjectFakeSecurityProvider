.class Lorg/spongycastle/crypto/tls/DTLSReplayWindow;
.super Ljava/lang/Object;
.source "DTLSReplayWindow.java"


# static fields
.field private static final VALID_SEQ_MASK:J = 0xffffffffffffL

.field private static final WINDOW_SIZE:J = 0x40L


# instance fields
.field private bitmap:J

.field private latestConfirmedSeq:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    return-void
.end method


# virtual methods
.method reportAuthenticated(J)V
    .locals 9
    .param p1, "seq"    # J

    .prologue
    const-wide/16 v4, 0x40

    const-wide/16 v6, 0x1

    .line 54
    const-wide v2, 0xffffffffffffL

    and-long/2addr v2, p1

    cmp-long v2, v2, p1

    if-eqz v2, :cond_0

    .line 56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'seq\' out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_0
    iget-wide v2, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    .line 61
    iget-wide v2, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long v0, v2, p1

    .line 62
    .local v0, "diff":J
    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 64
    iget-wide v2, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    long-to-int v4, v0

    shl-long v4, v6, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 69
    .end local v0    # "diff":J
    :cond_2
    iget-wide v2, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long v0, p1, v2

    .line 70
    .restart local v0    # "diff":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_3

    .line 72
    iput-wide v6, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    .line 79
    :goto_1
    iput-wide p1, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    goto :goto_0

    .line 76
    :cond_3
    iget-wide v2, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    long-to-int v4, v0

    shl-long/2addr v2, v4

    iput-wide v2, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    .line 77
    iget-wide v2, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    or-long/2addr v2, v6

    iput-wide v2, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    goto :goto_1
.end method

.method reset()V
    .locals 2

    .prologue
    .line 88
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    .line 90
    return-void
.end method

.method shouldDiscard(J)Z
    .locals 9
    .param p1, "seq"    # J

    .prologue
    const/4 v2, 0x1

    .line 26
    const-wide v4, 0xffffffffffffL

    and-long/2addr v4, p1

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v2

    .line 31
    :cond_1
    iget-wide v4, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    cmp-long v3, p1, v4

    if-gtz v3, :cond_2

    .line 33
    iget-wide v4, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->latestConfirmedSeq:J

    sub-long v0, v4, p1

    .line 34
    .local v0, "diff":J
    const-wide/16 v4, 0x40

    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 38
    iget-wide v4, p0, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->bitmap:J

    const-wide/16 v6, 0x1

    long-to-int v3, v0

    shl-long/2addr v6, v3

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 44
    .end local v0    # "diff":J
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
