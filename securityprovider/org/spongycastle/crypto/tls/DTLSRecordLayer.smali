.class Lorg/spongycastle/crypto/tls/DTLSRecordLayer;
.super Ljava/lang/Object;
.source "DTLSRecordLayer.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/DatagramTransport;


# static fields
.field private static final MAX_FRAGMENT_LENGTH:I = 0x4000

.field private static final RECORD_HEADER_LENGTH:I = 0xd

.field private static final RETRANSMIT_TIMEOUT:J = 0x3a980L

.field private static final TCP_MSL:J = 0x1d4c0L


# instance fields
.field private volatile closed:Z

.field private final context:Lorg/spongycastle/crypto/tls/TlsContext;

.field private currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

.field private volatile failed:Z

.field private volatile inHandshake:Z

.field private final peer:Lorg/spongycastle/crypto/tls/TlsPeer;

.field private pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

.field private volatile plaintextLimit:I

.field private readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

.field private volatile readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private final recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field private retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

.field private retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

.field private retransmitExpiry:J

.field private final transport:Lorg/spongycastle/crypto/tls/DatagramTransport;

.field private writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

.field private volatile writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/DatagramTransport;Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsPeer;S)V
    .locals 4
    .param p1, "transport"    # Lorg/spongycastle/crypto/tls/DatagramTransport;
    .param p2, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p3, "peer"    # Lorg/spongycastle/crypto/tls/TlsPeer;
    .param p4, "contentType"    # S

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    .line 19
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    .line 20
    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->failed:Z

    .line 21
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 27
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    .line 28
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitExpiry:J

    .line 33
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/spongycastle/crypto/tls/DatagramTransport;

    .line 34
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 35
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->peer:Lorg/spongycastle/crypto/tls/TlsPeer;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    .line 39
    new-instance v0, Lorg/spongycastle/crypto/tls/DTLSEpoch;

    new-instance v1, Lorg/spongycastle/crypto/tls/TlsNullCipher;

    invoke-direct {v1, p2}, Lorg/spongycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;)V

    invoke-direct {v0, v3, v1}, Lorg/spongycastle/crypto/tls/DTLSEpoch;-><init>(ILorg/spongycastle/crypto/tls/TlsCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 40
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 41
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 44
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->setPlaintextLimit(I)V

    .line 45
    return-void
.end method

.method private closeTransport()V
    .locals 2

    .prologue
    .line 427
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    if-nez v0, :cond_1

    .line 438
    :try_start_0
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->failed:Z

    if-nez v0, :cond_0

    .line 440
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->warn(SLjava/lang/String;)V

    .line 442
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/spongycastle/crypto/tls/DatagramTransport;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/DatagramTransport;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    .line 451
    :cond_1
    return-void

    .line 444
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getMacSequenceNumber(IJ)J
    .locals 5
    .param p0, "epoch"    # I
    .param p1, "sequence_number"    # J

    .prologue
    .line 542
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    or-long/2addr v0, p1

    return-wide v0
.end method

.method private raiseAlert(SSLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "alertLevel"    # S
    .param p2, "alertDescription"    # S
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 456
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->peer:Lorg/spongycastle/crypto/tls/TlsPeer;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsPeer;->notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V

    .line 458
    new-array v0, v4, [B

    .line 459
    .local v0, "error":[B
    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 460
    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 462
    const/16 v1, 0x15

    invoke-direct {p0, v1, v0, v3, v4}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    .line 463
    return-void
.end method

.method private receiveRecord([BIII)I
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "waitMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xd

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 468
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ByteQueue;->available()I

    move-result v5

    if-lez v5, :cond_2

    .line 470
    const/4 v1, 0x0

    .line 471
    .local v1, "length":I
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ByteQueue;->available()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 473
    new-array v2, v8, [B

    .line 474
    .local v2, "lengthBytes":[B
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/16 v6, 0xb

    invoke-virtual {v5, v2, v7, v8, v6}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 475
    invoke-static {v2, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v1

    .line 478
    .end local v2    # "lengthBytes":[B
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ByteQueue;->available()I

    move-result v5

    add-int/lit8 v6, v1, 0xd

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 479
    .local v3, "received":I
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v5, p1, p2, v3, v7}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData([BIII)V

    .line 495
    .end local v1    # "length":I
    :cond_1
    :goto_0
    return v3

    .line 483
    .end local v3    # "received":I
    :cond_2
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/spongycastle/crypto/tls/DatagramTransport;

    invoke-interface {v5, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/DatagramTransport;->receive([BIII)I

    move-result v3

    .line 484
    .restart local v3    # "received":I
    if-lt v3, v6, :cond_1

    .line 486
    add-int/lit8 v5, p2, 0xb

    invoke-static {p1, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    .line 487
    .local v0, "fragmentLength":I
    add-int/lit8 v4, v0, 0xd

    .line 488
    .local v4, "recordLength":I
    if-le v3, v4, :cond_1

    .line 490
    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->recordQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    add-int v6, p2, v4

    sub-int v7, v3, v4

    invoke-virtual {v5, p1, v6, v7}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 491
    move v3, v4

    goto :goto_0
.end method

.method private sendRecord(S[BII)V
    .locals 14
    .param p1, "contentType"    # S
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v3, :cond_0

    .line 538
    :goto_0
    return-void

    .line 507
    :cond_0
    iget v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    move/from16 v0, p4

    if-le v0, v3, :cond_1

    .line 509
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 516
    :cond_1
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ge v0, v3, :cond_2

    const/16 v3, 0x17

    if-eq p1, v3, :cond_2

    .line 518
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 521
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v11

    .line 522
    .local v11, "recordEpoch":I
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->allocateSequenceNumber()J

    move-result-wide v12

    .line 524
    .local v12, "recordSequenceNumber":J
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v3

    .line 525
    invoke-static {v11, v12, v13}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getMacSequenceNumber(IJ)J

    move-result-wide v4

    move v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 524
    invoke-interface/range {v3 .. v9}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v2

    .line 529
    .local v2, "ciphertext":[B
    array-length v3, v2

    add-int/lit8 v3, v3, 0xd

    new-array v10, v3, [B

    .line 530
    .local v10, "record":[B
    const/4 v3, 0x0

    invoke-static {p1, v10, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 531
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/4 v4, 0x1

    invoke-static {v3, v10, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 532
    const/4 v3, 0x3

    invoke-static {v11, v10, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 533
    const/4 v3, 0x5

    invoke-static {v12, v13, v10, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint48(J[BI)V

    .line 534
    array-length v3, v2

    const/16 v4, 0xb

    invoke-static {v3, v10, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 535
    const/4 v3, 0x0

    const/16 v4, 0xd

    array-length v5, v2

    invoke-static {v2, v3, v10, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/spongycastle/crypto/tls/DatagramTransport;

    const/4 v4, 0x0

    array-length v5, v10

    invoke-interface {v3, v10, v4, v5}, Lorg/spongycastle/crypto/tls/DatagramTransport;->send([BII)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    if-nez v0, :cond_1

    .line 382
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-eqz v0, :cond_0

    .line 384
    const/16 v0, 0x5a

    const-string v1, "User canceled handshake"

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->warn(SLjava/lang/String;)V

    .line 386
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closeTransport()V

    .line 388
    :cond_1
    return-void
.end method

.method fail(S)V
    .locals 3
    .param p1, "alertDescription"    # S

    .prologue
    .line 392
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    if-nez v0, :cond_0

    .line 396
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->raiseAlert(SSLjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->failed:Z

    .line 405
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closeTransport()V

    .line 407
    :cond_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method failed()V
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closed:Z

    if-nez v0, :cond_0

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->failed:Z

    .line 415
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closeTransport()V

    .line 417
    :cond_0
    return-void
.end method

.method getReadEpoch()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v0

    return v0
.end method

.method getReadVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getReceiveLimit()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 125
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/spongycastle/crypto/tls/DatagramTransport;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/DatagramTransport;->getReceiveLimit()I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/tls/TlsCipher;->getPlaintextLimit(I)I

    move-result v1

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getSendLimit()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 132
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->transport:Lorg/spongycastle/crypto/tls/DatagramTransport;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/DatagramTransport;->getSendLimit()I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/tls/TlsCipher;->getPlaintextLimit(I)I

    move-result v1

    .line 131
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method handshakeSuccessful(Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;)V
    .locals 4
    .param p1, "retransmit"    # Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-ne v0, v1, :cond_1

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 97
    :cond_1
    if-eqz p1, :cond_2

    .line 99
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x3a980

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitExpiry:J

    .line 104
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    .line 105
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 107
    return-void
.end method

.method initPendingEpoch(Lorg/spongycastle/crypto/tls/TlsCipher;)V
    .locals 2
    .param p1, "pendingCipher"    # Lorg/spongycastle/crypto/tls/TlsCipher;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 86
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/crypto/tls/DTLSEpoch;-><init>(ILorg/spongycastle/crypto/tls/TlsCipher;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 87
    return-void
.end method

.method public receive([BIII)I
    .locals 25
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "waitMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v9, 0x0

    .line 142
    .local v9, "record":[B
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getReceiveLimit()I

    move-result v5

    move/from16 v0, p3

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v19, v5, 0xd

    .line 143
    .local v19, "receiveLimit":I
    if-eqz v9, :cond_1

    array-length v5, v9

    move/from16 v0, v19

    if-ge v5, v0, :cond_2

    .line 145
    :cond_1
    move/from16 v0, v19

    new-array v9, v0, [B

    .line 150
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-eqz v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitExpiry:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_3

    .line 152
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    .line 153
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 156
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p4

    invoke-direct {v0, v9, v5, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->receiveRecord([BIII)I

    move-result v20

    .line 157
    .local v20, "received":I
    if-gez v20, :cond_4

    .line 326
    .end local v20    # "received":I
    :goto_1
    return v20

    .line 161
    .restart local v20    # "received":I
    :cond_4
    const/16 v5, 0xd

    move/from16 v0, v20

    if-lt v0, v5, :cond_0

    .line 165
    const/16 v5, 0xb

    invoke-static {v9, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v16

    .line 166
    .local v16, "length":I
    add-int/lit8 v5, v16, 0xd

    move/from16 v0, v20

    if-ne v0, v5, :cond_0

    .line 171
    const/4 v5, 0x0

    invoke-static {v9, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v8

    .line 174
    .local v8, "type":S
    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 187
    :pswitch_1
    const/4 v5, 0x3

    invoke-static {v9, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v14

    .line 189
    .local v14, "epoch":I
    const/16 v21, 0x0

    .line 190
    .local v21, "recordEpoch":Lorg/spongycastle/crypto/tls/DTLSEpoch;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v5

    if-ne v14, v5, :cond_a

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    move-object/from16 v21, v0

    .line 200
    :cond_5
    :goto_2
    if-eqz v21, :cond_0

    .line 205
    const/4 v5, 0x5

    invoke-static {v9, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint48([BI)J

    move-result-wide v22

    .line 206
    .local v22, "seq":J
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getReplayWindow()Lorg/spongycastle/crypto/tls/DTLSReplayWindow;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->shouldDiscard(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 211
    const/4 v5, 0x1

    invoke-static {v9, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v24

    .line 212
    .local v24, "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 222
    :cond_6
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v5

    .line 223
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v6

    move-wide/from16 v0, v22

    invoke-static {v6, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->getMacSequenceNumber(IJ)J

    move-result-wide v6

    const/16 v10, 0xd

    add-int/lit8 v11, v20, -0xd

    .line 222
    invoke-interface/range {v5 .. v11}, Lorg/spongycastle/crypto/tls/TlsCipher;->decodeCiphertext(JS[BII)[B

    move-result-object v18

    .line 226
    .local v18, "plaintext":[B
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getReplayWindow()Lorg/spongycastle/crypto/tls/DTLSReplayWindow;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Lorg/spongycastle/crypto/tls/DTLSReplayWindow;->reportAuthenticated(J)V

    .line 228
    move-object/from16 v0, v18

    array-length v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    if-gt v5, v6, :cond_0

    .line 233
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v5, :cond_7

    .line 235
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 238
    :cond_7
    packed-switch v8, :pswitch_data_1

    .line 319
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-eqz v5, :cond_9

    .line 321
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    .line 322
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 325
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, v18

    array-length v6, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v5, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    goto/16 :goto_1

    .line 194
    .end local v18    # "plaintext":[B
    .end local v22    # "seq":J
    .end local v24    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_a
    const/16 v5, 0x16

    if-ne v8, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 195
    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/DTLSEpoch;->getEpoch()I

    move-result v5

    if-ne v14, v5, :cond_5

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    move-object/from16 v21, v0

    goto/16 :goto_2

    .line 242
    .restart local v18    # "plaintext":[B
    .restart local v22    # "seq":J
    .restart local v24    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :pswitch_2
    move-object/from16 v0, v18

    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 244
    const/4 v5, 0x0

    aget-byte v5, v18, v5

    int-to-short v12, v5

    .line 245
    .local v12, "alertLevel":S
    const/4 v5, 0x1

    aget-byte v5, v18, v5

    int-to-short v4, v5

    .line 247
    .local v4, "alertDescription":S
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->peer:Lorg/spongycastle/crypto/tls/TlsPeer;

    invoke-interface {v5, v12, v4}, Lorg/spongycastle/crypto/tls/TlsPeer;->notifyAlertReceived(SS)V

    .line 249
    const/4 v5, 0x2

    if-ne v12, v5, :cond_b

    .line 251
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->failed()V

    .line 252
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v4    # "alertDescription":S
    .end local v8    # "type":S
    .end local v12    # "alertLevel":S
    .end local v14    # "epoch":I
    .end local v16    # "length":I
    .end local v18    # "plaintext":[B
    .end local v20    # "received":I
    .end local v21    # "recordEpoch":Lorg/spongycastle/crypto/tls/DTLSEpoch;
    .end local v22    # "seq":J
    .end local v24    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :catch_0
    move-exception v13

    .line 331
    .local v13, "e":Ljava/io/IOException;
    throw v13

    .line 256
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v4    # "alertDescription":S
    .restart local v8    # "type":S
    .restart local v12    # "alertLevel":S
    .restart local v14    # "epoch":I
    .restart local v16    # "length":I
    .restart local v18    # "plaintext":[B
    .restart local v20    # "received":I
    .restart local v21    # "recordEpoch":Lorg/spongycastle/crypto/tls/DTLSEpoch;
    .restart local v22    # "seq":J
    .restart local v24    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_b
    if-nez v4, :cond_0

    .line 258
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->closeTransport()V

    goto/16 :goto_0

    .line 266
    .end local v4    # "alertDescription":S
    .end local v12    # "alertLevel":S
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-eqz v5, :cond_8

    goto/16 :goto_0

    .line 278
    :pswitch_4
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move-object/from16 v0, v18

    array-length v5, v0

    if-ge v15, v5, :cond_0

    .line 280
    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v17

    .line 281
    .local v17, "message":S
    const/4 v5, 0x1

    move/from16 v0, v17

    if-eq v0, v5, :cond_d

    .line 278
    :cond_c
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 286
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-eqz v5, :cond_c

    .line 288
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    goto :goto_4

    .line 296
    .end local v15    # "i":I
    .end local v17    # "message":S
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v5, :cond_8

    .line 298
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    if-eqz v5, :cond_0

    .line 300
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmit:Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    array-length v7, v0

    move-object/from16 v0, v18

    invoke-interface {v5, v14, v0, v6, v7}, Lorg/spongycastle/crypto/tls/DTLSHandshakeRetransmit;->receivedHandshakeRecord(I[BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 238
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method resetWriteEpoch()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    goto :goto_0
.end method

.method public send([BII)V
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 339
    const/16 v0, 0x17

    .line 341
    .local v0, "contentType":S
    iget-boolean v4, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-ne v4, v5, :cond_4

    .line 343
    :cond_0
    const/16 v0, 0x16

    .line 345
    invoke-static {p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v2

    .line 346
    .local v2, "handshakeType":S
    if-ne v2, v8, :cond_4

    .line 348
    const/4 v3, 0x0

    .line 349
    .local v3, "nextEpoch":Lorg/spongycastle/crypto/tls/DTLSEpoch;
    iget-boolean v4, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->inHandshake:Z

    if-eqz v4, :cond_2

    .line 351
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->pendingEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 358
    :cond_1
    :goto_0
    if-nez v3, :cond_3

    .line 361
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 353
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->retransmitEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    if-ne v4, v5, :cond_1

    .line 355
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->currentEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    goto :goto_0

    .line 367
    :cond_3
    new-array v1, v7, [B

    aput-byte v7, v1, v6

    .line 368
    .local v1, "data":[B
    array-length v4, v1

    invoke-direct {p0, v8, v1, v6, v4}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    .line 370
    iput-object v3, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeEpoch:Lorg/spongycastle/crypto/tls/DTLSEpoch;

    .line 374
    .end local v1    # "data":[B
    .end local v2    # "handshakeType":S
    .end local v3    # "nextEpoch":Lorg/spongycastle/crypto/tls/DTLSEpoch;
    :cond_4
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->sendRecord(S[BII)V

    .line 375
    return-void
.end method

.method setPlaintextLimit(I)V
    .locals 0
    .param p1, "plaintextLimit"    # I

    .prologue
    .line 49
    iput p1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->plaintextLimit:I

    .line 50
    return-void
.end method

.method setReadVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "readVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 65
    return-void
.end method

.method setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "writeVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 70
    return-void
.end method

.method warn(SLjava/lang/String;)V
    .locals 2
    .param p1, "alertDescription"    # S
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->raiseAlert(SSLjava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    return-void
.end method
