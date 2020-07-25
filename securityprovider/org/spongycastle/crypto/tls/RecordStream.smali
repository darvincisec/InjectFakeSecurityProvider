.class Lorg/spongycastle/crypto/tls/RecordStream;
.super Ljava/lang/Object;
.source "RecordStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;
    }
.end annotation


# static fields
.field private static DEFAULT_PLAINTEXT_LIMIT:I = 0x0

.field static final TLS_HEADER_LENGTH_OFFSET:I = 0x3

.field static final TLS_HEADER_SIZE:I = 0x5

.field static final TLS_HEADER_TYPE_OFFSET:I = 0x0

.field static final TLS_HEADER_VERSION_OFFSET:I = 0x1


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private ciphertextLimit:I

.field private compressedLimit:I

.field private handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

.field private handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

.field private handshakeHashUpdater:Lorg/spongycastle/util/io/SimpleOutputStream;

.field private input:Ljava/io/InputStream;

.field private output:Ljava/io/OutputStream;

.field private pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private plaintextLimit:I

.field private readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private readSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

.field private readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private restrictReadVersion:Z

.field private writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private writeSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

.field private writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x4000

    sput v0, Lorg/spongycastle/crypto/tls/RecordStream;->DEFAULT_PLAINTEXT_LIMIT:I

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsProtocol;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "handler"    # Lorg/spongycastle/crypto/tls/TlsProtocol;
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "output"    # Ljava/io/OutputStream;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 25
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 26
    new-instance v0, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;-><init>(Lorg/spongycastle/crypto/tls/RecordStream$1;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    new-instance v0, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;-><init>(Lorg/spongycastle/crypto/tls/RecordStream$1;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    .line 27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 29
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 30
    new-instance v0, Lorg/spongycastle/crypto/tls/RecordStream$1;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/tls/RecordStream$1;-><init>(Lorg/spongycastle/crypto/tls/RecordStream;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHashUpdater:Lorg/spongycastle/util/io/SimpleOutputStream;

    .line 38
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    .line 45
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    .line 46
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    .line 47
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    .line 48
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsNullCompression;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 49
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 50
    return-void
.end method

.method static synthetic access$100(Lorg/spongycastle/crypto/tls/RecordStream;)Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/crypto/tls/RecordStream;

    .prologue
    .line 13
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method private static checkLength(IIS)V
    .locals 1
    .param p0, "length"    # I
    .param p1, "limit"    # I
    .param p2, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    if-le p0, p1, :cond_0

    .line 409
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 411
    :cond_0
    return-void
.end method

.method private static checkType(SS)V
    .locals 1
    .param p0, "type"    # S
    .param p1, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    packed-switch p0, :pswitch_data_0

    .line 400
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 402
    :pswitch_0
    return-void

    .line 391
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getBufferContents()[B
    .locals 2

    .prologue
    .line 383
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 384
    .local v0, "contents":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 385
    return-object v0
.end method


# virtual methods
.method checkRecordHeader([B)V
    .locals 6
    .param p1, "recordHeader"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2f

    const/4 v4, 0x1

    .line 145
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v1

    .line 151
    .local v1, "type":S
    const/16 v3, 0xa

    invoke-static {v1, v3}, Lorg/spongycastle/crypto/tls/RecordStream;->checkType(SS)V

    .line 153
    iget-boolean v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    if-nez v3, :cond_0

    .line 155
    invoke-static {p1, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersionRaw([BI)I

    move-result v2

    .line 156
    .local v2, "version":I
    and-int/lit16 v3, v2, -0x100

    const/16 v4, 0x300

    if-eq v3, v4, :cond_1

    .line 158
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v3, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 163
    .end local v2    # "version":I
    :cond_0
    invoke-static {p1, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    .line 164
    .local v2, "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v3, :cond_2

    .line 174
    .end local v2    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_1
    const/4 v3, 0x3

    invoke-static {p1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    .line 176
    .local v0, "length":I
    iget v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    const/16 v4, 0x16

    invoke-static {v0, v3, v4}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 177
    return-void

    .line 168
    .end local v0    # "length":I
    .restart local v2    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v2, v3}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v3, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3
.end method

.method decodeAndVerify(SLjava/io/InputStream;I)[B
    .locals 9
    .param p1, "type"    # S
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 229
    invoke-static {p3, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v5

    .line 231
    .local v5, "buf":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;->nextValue(S)J

    move-result-wide v2

    .line 232
    .local v2, "seqNo":J
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    array-length v7, v5

    move v4, p1

    invoke-interface/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/TlsCipher;->decodeCiphertext(JS[BII)[B

    move-result-object v8

    .line 234
    .local v8, "decoded":[B
    array-length v1, v8

    iget v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    const/16 v7, 0x16

    invoke-static {v1, v4, v7}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 240
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v1, v4}, Lorg/spongycastle/crypto/tls/TlsCompression;->decompress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 241
    .local v0, "cOut":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-eq v0, v1, :cond_0

    .line 243
    array-length v1, v8

    invoke-virtual {v0, v8, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 244
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 245
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v8

    .line 253
    :cond_0
    array-length v1, v8

    iget v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    const/16 v6, 0x1e

    invoke-static {v1, v4, v6}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 259
    array-length v1, v8

    const/4 v4, 0x1

    if-ge v1, v4, :cond_1

    const/16 v1, 0x17

    if-eq p1, v1, :cond_1

    .line 261
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2f

    invoke-direct {v1, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 264
    :cond_1
    return-object v8
.end method

.method finaliseHandshake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-eq v0, v1, :cond_1

    .line 137
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 139
    :cond_1
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 140
    iput-object v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 141
    return-void
.end method

.method flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 379
    return-void
.end method

.method getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    return-object v0
.end method

.method getHandshakeHashUpdater()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHashUpdater:Lorg/spongycastle/util/io/SimpleOutputStream;

    return-object v0
.end method

.method getPlaintextLimit()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    return v0
.end method

.method getReadVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method init(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 1
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 54
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/tls/TlsNullCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 56
    new-instance v0, Lorg/spongycastle/crypto/tls/DeferredHash;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DeferredHash;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    .line 59
    sget v0, Lorg/spongycastle/crypto/tls/RecordStream;->DEFAULT_PLAINTEXT_LIMIT:I

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->setPlaintextLimit(I)V

    .line 60
    return-void
.end method

.method notifyHelloComplete()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->notifyPRFDetermined()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 337
    return-void
.end method

.method prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 352
    .local v0, "result":Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->stopTracking()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handshakeHash:Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    .line 353
    return-object v0
.end method

.method readRecord()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 182
    const/4 v7, 0x5

    iget-object v8, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-static {v7, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->readAllOrNothing(ILjava/io/InputStream;)[B

    move-result-object v2

    .line 183
    .local v2, "recordHeader":[B
    if-nez v2, :cond_0

    .line 223
    :goto_0
    return v5

    .line 188
    :cond_0
    invoke-static {v2, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v3

    .line 194
    .local v3, "type":S
    const/16 v7, 0xa

    invoke-static {v3, v7}, Lorg/spongycastle/crypto/tls/RecordStream;->checkType(SS)V

    .line 196
    iget-boolean v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    if-nez v7, :cond_1

    .line 198
    invoke-static {v2, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersionRaw([BI)I

    move-result v4

    .line 199
    .local v4, "version":I
    and-int/lit16 v7, v4, -0x100

    const/16 v8, 0x300

    if-eq v7, v8, :cond_2

    .line 201
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 206
    .end local v4    # "version":I
    :cond_1
    invoke-static {v2, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v4

    .line 207
    .local v4, "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v7, :cond_3

    .line 209
    iput-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 217
    .end local v4    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_2
    const/4 v7, 0x3

    invoke-static {v2, v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16([BI)I

    move-result v0

    .line 219
    .local v0, "length":I
    iget v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    const/16 v8, 0x16

    invoke-static {v0, v7, v8}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 221
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {p0, v3, v7, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->decodeAndVerify(SLjava/io/InputStream;I)[B

    move-result-object v1

    .line 222
    .local v1, "plaintext":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocol;

    array-length v8, v1

    invoke-virtual {v7, v3, v1, v5, v8}, Lorg/spongycastle/crypto/tls/TlsProtocol;->processRecord(S[BII)V

    move v5, v6

    .line 223
    goto :goto_0

    .line 211
    .end local v0    # "length":I
    .end local v1    # "plaintext":[B
    .restart local v4    # "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    :cond_3
    iget-object v7, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v4, v7}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 213
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v5, v9}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5
.end method

.method receivedReadCipherSpec()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-nez v0, :cond_1

    .line 124
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 126
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 127
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 128
    new-instance v0, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;-><init>(Lorg/spongycastle/crypto/tls/RecordStream$1;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    .line 129
    return-void
.end method

.method safeClose()V
    .locals 1

    .prologue
    .line 360
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 368
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    :goto_1
    return-void

    .line 370
    :catch_0
    move-exception v0

    goto :goto_1

    .line 362
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method sentWriteCipherSpec()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    if-nez v0, :cond_1

    .line 112
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 114
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 115
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 116
    new-instance v0, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;-><init>(Lorg/spongycastle/crypto/tls/RecordStream$1;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    .line 117
    return-void
.end method

.method setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V
    .locals 0
    .param p1, "tlsCompression"    # Lorg/spongycastle/crypto/tls/TlsCompression;
    .param p2, "tlsCipher"    # Lorg/spongycastle/crypto/tls/TlsCipher;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 104
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->pendingCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 105
    return-void
.end method

.method setPlaintextLimit(I)V
    .locals 1
    .param p1, "plaintextLimit"    # I

    .prologue
    .line 69
    iput p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    .line 70
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    .line 71
    iget v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->compressedLimit:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    .line 72
    return-void
.end method

.method setReadVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "readVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 82
    return-void
.end method

.method setRestrictReadVersion(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->restrictReadVersion:Z

    .line 99
    return-void
.end method

.method setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "writeVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 87
    return-void
.end method

.method writeRecord(S[BII)V
    .locals 10
    .param p1, "type"    # S
    .param p2, "plaintext"    # [B
    .param p3, "plaintextOffset"    # I
    .param p4, "plaintextLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    if-nez v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 280
    :cond_0
    const/16 v1, 0x50

    invoke-static {p1, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->checkType(SS)V

    .line 285
    iget v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->plaintextLimit:I

    const/16 v4, 0x50

    invoke-static {p4, v1, v4}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 291
    const/4 v1, 0x1

    if-ge p4, v1, :cond_1

    const/16 v1, 0x17

    if-eq p1, v1, :cond_1

    .line 293
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x50

    invoke-direct {v1, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 296
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v1, v4}, Lorg/spongycastle/crypto/tls/TlsCompression;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 298
    .local v0, "cOut":Ljava/io/OutputStream;
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeSeqNo:Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;

    const/16 v4, 0x50

    invoke-virtual {v1, v4}, Lorg/spongycastle/crypto/tls/RecordStream$SequenceNumber;->nextValue(S)J

    move-result-wide v2

    .line 301
    .local v2, "seqNo":J
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-ne v0, v1, :cond_2

    .line 303
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v8

    .line 323
    .local v8, "ciphertext":[B
    :goto_1
    array-length v1, v8

    iget v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->ciphertextLimit:I

    const/16 v6, 0x50

    invoke-static {v1, v4, v6}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 325
    array-length v1, v8

    add-int/lit8 v1, v1, 0x5

    new-array v9, v1, [B

    .line 326
    .local v9, "record":[B
    const/4 v1, 0x0

    invoke-static {p1, v9, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 327
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/4 v4, 0x1

    invoke-static {v1, v9, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 328
    array-length v1, v8

    const/4 v4, 0x3

    invoke-static {v1, v9, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 329
    const/4 v1, 0x0

    const/4 v4, 0x5

    array-length v6, v8

    invoke-static {v8, v1, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write([B)V

    .line 331
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 307
    .end local v8    # "ciphertext":[B
    .end local v9    # "record":[B
    :cond_2
    invoke-virtual {v0, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 308
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 309
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v5

    .line 315
    .local v5, "compressed":[B
    array-length v1, v5

    add-int/lit16 v4, p4, 0x400

    const/16 v6, 0x50

    invoke-static {v1, v4, v6}, Lorg/spongycastle/crypto/tls/RecordStream;->checkLength(IIS)V

    .line 317
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    const/4 v6, 0x0

    array-length v7, v5

    move v4, p1

    invoke-interface/range {v1 .. v7}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(JS[BII)[B

    move-result-object v8

    .restart local v8    # "ciphertext":[B
    goto :goto_1
.end method
