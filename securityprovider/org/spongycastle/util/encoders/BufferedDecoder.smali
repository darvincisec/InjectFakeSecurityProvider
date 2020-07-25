.class public Lorg/spongycastle/util/encoders/BufferedDecoder;
.super Ljava/lang/Object;
.source "BufferedDecoder.java"


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field protected translator:Lorg/spongycastle/util/encoders/Translator;


# direct methods
.method public constructor <init>(Lorg/spongycastle/util/encoders/Translator;I)V
    .locals 2
    .param p1, "translator"    # Lorg/spongycastle/util/encoders/Translator;
    .param p2, "bufSize"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->translator:Lorg/spongycastle/util/encoders/Translator;

    .line 25
    invoke-interface {p1}, Lorg/spongycastle/util/encoders/Translator;->getEncodedBlockSize()I

    move-result v0

    rem-int v0, p2, v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer size not multiple of input block size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->buf:[B

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->bufOff:I

    .line 32
    return-void
.end method


# virtual methods
.method public processByte(B[BI)I
    .locals 7
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    const/4 v2, 0x0

    .line 39
    const/4 v6, 0x0

    .line 41
    .local v6, "resultLen":I
    iget-object v0, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->buf:[B

    iget v1, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->bufOff:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->bufOff:I

    aput-byte p1, v0, v1

    .line 43
    iget v0, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->translator:Lorg/spongycastle/util/encoders/Translator;

    iget-object v1, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->buf:[B

    iget-object v3, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length v3, v3

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/util/encoders/Translator;->decode([BII[BI)I

    move-result v6

    .line 46
    iput v2, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->bufOff:I

    .line 49
    :cond_0
    return v6
.end method

.method public processBytes([BII[BI)I
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    const/4 v2, 0x0

    .line 59
    if-gez p3, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    const/4 v7, 0x0

    .line 65
    .local v7, "resultLen":I
    iget-object v0, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->bufOff:I

    sub-int v6, v0, v1

    .line 67
    .local v6, "gapLen":I
    if-le p3, v6, :cond_1

    .line 69
    iget-object v0, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->buf:[B

    iget v1, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->bufOff:I

    invoke-static {p1, p2, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget-object v0, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->translator:Lorg/spongycastle/util/encoders/Translator;

    iget-object v1, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->buf:[B

    iget-object v4, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length v3, v4

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/util/encoders/Translator;->decode([BII[BI)I

    move-result v0

    add-int/2addr v7, v0

    .line 73
    iput v2, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->bufOff:I

    .line 75
    sub-int/2addr p3, v6

    .line 76
    add-int/2addr p2, v6

    .line 77
    add-int/2addr p5, v7

    .line 79
    iget-object v0, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->buf:[B

    array-length v0, v0

    rem-int v0, p3, v0

    sub-int v3, p3, v0

    .line 81
    .local v3, "chunkSize":I
    iget-object v0, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->translator:Lorg/spongycastle/util/encoders/Translator;

    move-object v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/util/encoders/Translator;->decode([BII[BI)I

    move-result v0

    add-int/2addr v7, v0

    .line 83
    sub-int/2addr p3, v3

    .line 84
    add-int/2addr p2, v3

    .line 87
    .end local v3    # "chunkSize":I
    :cond_1
    if-eqz p3, :cond_2

    .line 89
    iget-object v0, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->buf:[B

    iget v1, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget v0, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->bufOff:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/spongycastle/util/encoders/BufferedDecoder;->bufOff:I

    .line 94
    :cond_2
    return v7
.end method
