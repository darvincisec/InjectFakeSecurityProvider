.class public Lorg/spongycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lorg/spongycastle/asn1/BERTags;


# instance fields
.field private final lazyEvaluate:Z

.field private final limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 29
    invoke-static {p1}, Lorg/spongycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .param p3, "lazyEvaluate"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 99
    iput p2, p0, Lorg/spongycastle/asn1/ASN1InputStream;->limit:I

    .line 100
    iput-boolean p3, p0, Lorg/spongycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 101
    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/spongycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "lazyEvaluate"    # Z

    .prologue
    .line 82
    invoke-static {p1}, Lorg/spongycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 83
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "input"    # [B

    .prologue
    .line 41
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 42
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "lazyEvaluate"    # Z

    .prologue
    .line 55
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 56
    return-void
.end method

.method static createPrimitiveDERObject(ILorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3
    .param p0, "tagNo"    # I
    .param p1, "defIn"    # Lorg/spongycastle/asn1/DefiniteLengthInputStream;
    .param p2, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    packed-switch p0, :pswitch_data_0

    .line 473
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :pswitch_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v0

    invoke-static {v0, p1}, Lorg/spongycastle/asn1/ASN1BitString;->fromInputStream(ILjava/io/InputStream;)Lorg/spongycastle/asn1/ASN1BitString;

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    .line 435
    :pswitch_2
    new-instance v0, Lorg/spongycastle/asn1/DERBMPString;

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->getBMPCharBuffer(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBMPString;-><init>([C)V

    goto :goto_0

    .line 437
    :pswitch_3
    invoke-static {p1, p2}, Lorg/spongycastle/asn1/ASN1InputStream;->getBuffer(Lorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Boolean;->fromOctetString([B)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v0

    goto :goto_0

    .line 439
    :pswitch_4
    invoke-static {p1, p2}, Lorg/spongycastle/asn1/ASN1InputStream;->getBuffer(Lorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Enumerated;->fromOctetString([B)Lorg/spongycastle/asn1/ASN1Enumerated;

    move-result-object v0

    goto :goto_0

    .line 441
    :pswitch_5
    new-instance v0, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    goto :goto_0

    .line 443
    :pswitch_6
    new-instance v0, Lorg/spongycastle/asn1/DERGeneralString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERGeneralString;-><init>([B)V

    goto :goto_0

    .line 445
    :pswitch_7
    new-instance v0, Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERIA5String;-><init>([B)V

    goto :goto_0

    .line 447
    :pswitch_8
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>([BZ)V

    goto :goto_0

    .line 449
    :pswitch_9
    sget-object v0, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    goto :goto_0

    .line 451
    :pswitch_a
    new-instance v0, Lorg/spongycastle/asn1/DERNumericString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERNumericString;-><init>([B)V

    goto :goto_0

    .line 453
    :pswitch_b
    invoke-static {p1, p2}, Lorg/spongycastle/asn1/ASN1InputStream;->getBuffer(Lorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    goto :goto_0

    .line 455
    :pswitch_c
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_0

    .line 457
    :pswitch_d
    new-instance v0, Lorg/spongycastle/asn1/DERPrintableString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERPrintableString;-><init>([B)V

    goto :goto_0

    .line 459
    :pswitch_e
    new-instance v0, Lorg/spongycastle/asn1/DERT61String;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERT61String;-><init>([B)V

    goto :goto_0

    .line 461
    :pswitch_f
    new-instance v0, Lorg/spongycastle/asn1/DERUniversalString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERUniversalString;-><init>([B)V

    goto/16 :goto_0

    .line 463
    :pswitch_10
    new-instance v0, Lorg/spongycastle/asn1/ASN1UTCTime;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1UTCTime;-><init>([B)V

    goto/16 :goto_0

    .line 465
    :pswitch_11
    new-instance v0, Lorg/spongycastle/asn1/DERUTF8String;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERUTF8String;-><init>([B)V

    goto/16 :goto_0

    .line 467
    :pswitch_12
    new-instance v0, Lorg/spongycastle/asn1/DERVisibleString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERVisibleString;-><init>([B)V

    goto/16 :goto_0

    .line 469
    :pswitch_13
    new-instance v0, Lorg/spongycastle/asn1/DERGraphicString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERGraphicString;-><init>([B)V

    goto/16 :goto_0

    .line 471
    :pswitch_14
    new-instance v0, Lorg/spongycastle/asn1/DERVideotexString;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERVideotexString;-><init>([B)V

    goto/16 :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_8
        :pswitch_1
        :pswitch_c
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_14
        :pswitch_7
        :pswitch_10
        :pswitch_5
        :pswitch_13
        :pswitch_12
        :pswitch_6
        :pswitch_f
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getBMPCharBuffer(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)[C
    .locals 8
    .param p0, "defIn"    # Lorg/spongycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v6

    div-int/lit8 v3, v6, 0x2

    .line 404
    .local v3, "len":I
    new-array v0, v3, [C

    .line 405
    .local v0, "buf":[C
    const/4 v4, 0x0

    .local v4, "totalRead":I
    move v5, v4

    .line 406
    .end local v4    # "totalRead":I
    .local v5, "totalRead":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 408
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v1

    .line 409
    .local v1, "ch1":I
    if-gez v1, :cond_1

    .line 421
    .end local v1    # "ch1":I
    :cond_0
    return-object v0

    .line 413
    .restart local v1    # "ch1":I
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->read()I

    move-result v2

    .line 414
    .local v2, "ch2":I
    if-ltz v2, :cond_0

    .line 418
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "totalRead":I
    .restart local v4    # "totalRead":I
    shl-int/lit8 v6, v1, 0x8

    and-int/lit16 v7, v2, 0xff

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v0, v5

    move v5, v4

    .line 419
    .end local v4    # "totalRead":I
    .restart local v5    # "totalRead":I
    goto :goto_0
.end method

.method private static getBuffer(Lorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)[B
    .locals 4
    .param p0, "defIn"    # Lorg/spongycastle/asn1/DefiniteLengthInputStream;
    .param p1, "tmpBuffers"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v1

    .line 381
    .local v1, "len":I
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->getRemaining()I

    move-result v2

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 383
    aget-object v0, p1, v1

    .line 385
    .local v0, "buf":[B
    if-nez v0, :cond_0

    .line 387
    new-array v0, v1, [B

    .end local v0    # "buf":[B
    aput-object v0, p1, v1

    .line 390
    .restart local v0    # "buf":[B
    :cond_0
    invoke-static {p0, v0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 396
    .end local v0    # "buf":[B
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method static readLength(Ljava/io/InputStream;I)I
    .locals 8
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 330
    .local v1, "length":I
    if-gez v1, :cond_0

    .line 332
    new-instance v5, Ljava/io/EOFException;

    const-string v6, "EOF found when length expected"

    invoke-direct {v5, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 335
    :cond_0
    const/16 v5, 0x80

    if-ne v1, v5, :cond_1

    .line 337
    const/4 v5, -0x1

    move v2, v1

    .line 374
    .end local v1    # "length":I
    .local v2, "length":I
    :goto_0
    return v5

    .line 340
    .end local v2    # "length":I
    .restart local v1    # "length":I
    :cond_1
    const/16 v5, 0x7f

    if-le v1, v5, :cond_6

    .line 342
    and-int/lit8 v4, v1, 0x7f

    .line 345
    .local v4, "size":I
    const/4 v5, 0x4

    if-le v4, v5, :cond_2

    .line 347
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DER length more than 4 bytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 350
    :cond_2
    const/4 v1, 0x0

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_4

    .line 353
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 355
    .local v3, "next":I
    if-gez v3, :cond_3

    .line 357
    new-instance v5, Ljava/io/EOFException;

    const-string v6, "EOF found reading length"

    invoke-direct {v5, v6}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 360
    :cond_3
    shl-int/lit8 v5, v1, 0x8

    add-int v1, v5, v3

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 363
    .end local v3    # "next":I
    :cond_4
    if-gez v1, :cond_5

    .line 365
    new-instance v5, Ljava/io/IOException;

    const-string v6, "corrupted stream - negative length found"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 368
    :cond_5
    if-lt v1, p1, :cond_6

    .line 370
    new-instance v5, Ljava/io/IOException;

    const-string v6, "corrupted stream - out of bounds length found"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0    # "i":I
    .end local v4    # "size":I
    :cond_6
    move v2, v1

    .end local v1    # "length":I
    .restart local v2    # "length":I
    move v5, v1

    .line 374
    goto :goto_0
.end method

.method static readTagNumber(Ljava/io/InputStream;I)I
    .locals 4
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    and-int/lit8 v1, p1, 0x1f

    .line 295
    .local v1, "tagNo":I
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_3

    .line 297
    const/4 v1, 0x0

    .line 299
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 303
    .local v0, "b":I
    and-int/lit8 v2, v0, 0x7f

    if-nez v2, :cond_0

    .line 305
    new-instance v2, Ljava/io/IOException;

    const-string v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_0
    :goto_0
    if-ltz v0, :cond_1

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    .line 310
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 311
    shl-int/lit8 v1, v1, 0x7

    .line 312
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    .line 315
    :cond_1
    if-gez v0, :cond_2

    .line 317
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF found inside tag value."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    :cond_2
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 323
    .end local v0    # "b":I
    :cond_3
    return v1
.end method


# virtual methods
.method buildDEREncodableVector(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;
    .locals 1
    .param p1, "dIn"    # Lorg/spongycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->buildEncodableVector()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    return-object v0
.end method

.method buildEncodableVector()Lorg/spongycastle/asn1/ASN1EncodableVector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 199
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .local v0, "o":Lorg/spongycastle/asn1/ASN1Primitive;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 204
    :cond_0
    return-object v1
.end method

.method protected buildObject(III)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 8
    .param p1, "tag"    # I
    .param p2, "tagNo"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    and-int/lit8 v5, p1, 0x20

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 142
    .local v2, "isConstructed":Z
    :goto_0
    new-instance v0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v0, p0, p3}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 144
    .local v0, "defIn":Lorg/spongycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v5, p1, 0x40

    if-eqz v5, :cond_1

    .line 146
    new-instance v5, Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v2, p2, v6}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    .line 190
    :goto_1
    return-object v5

    .line 140
    .end local v0    # "defIn":Lorg/spongycastle/asn1/DefiniteLengthInputStream;
    .end local v2    # "isConstructed":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 149
    .restart local v0    # "defIn":Lorg/spongycastle/asn1/DefiniteLengthInputStream;
    .restart local v2    # "isConstructed":Z
    :cond_1
    and-int/lit16 v5, p1, 0x80

    if-eqz v5, :cond_2

    .line 151
    new-instance v5, Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5, v2, p2}, Lorg/spongycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    goto :goto_1

    .line 154
    :cond_2
    if-eqz v2, :cond_5

    .line 157
    sparse-switch p2, :sswitch_data_0

    .line 186
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " encountered"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 163
    :sswitch_0
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v4

    .line 164
    .local v4, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v5

    new-array v3, v5, [Lorg/spongycastle/asn1/ASN1OctetString;

    .line 166
    .local v3, "strings":[Lorg/spongycastle/asn1/ASN1OctetString;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, v3

    if-eq v1, v5, :cond_3

    .line 168
    invoke-virtual {v4, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->get(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/ASN1OctetString;

    aput-object v5, v3, v1

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 171
    :cond_3
    new-instance v5, Lorg/spongycastle/asn1/BEROctetString;

    invoke-direct {v5, v3}, Lorg/spongycastle/asn1/BEROctetString;-><init>([Lorg/spongycastle/asn1/ASN1OctetString;)V

    goto :goto_1

    .line 173
    .end local v1    # "i":I
    .end local v3    # "strings":[Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v4    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :sswitch_1
    iget-boolean v5, p0, Lorg/spongycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v5, :cond_4

    .line 175
    new-instance v5, Lorg/spongycastle/asn1/LazyEncodedSequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/LazyEncodedSequence;-><init>([B)V

    goto :goto_1

    .line 179
    :cond_4
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/DERFactory;->createSequence(Lorg/spongycastle/asn1/ASN1EncodableVector;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v5

    goto :goto_1

    .line 182
    :sswitch_2
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/DERFactory;->createSet(Lorg/spongycastle/asn1/ASN1EncodableVector;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v5

    goto :goto_1

    .line 184
    :sswitch_3
    new-instance v5, Lorg/spongycastle/asn1/DERExternal;

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DERExternal;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    goto :goto_1

    .line 190
    :cond_5
    iget-object v5, p0, Lorg/spongycastle/asn1/ASN1InputStream;->tmpBuffers:[[B

    invoke-static {p2, v0, v5}, Lorg/spongycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILorg/spongycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    goto/16 :goto_1

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method getLimit()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/spongycastle/asn1/ASN1InputStream;->limit:I

    return v0
.end method

.method protected readFully([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p0, p1}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 121
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of object"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    return-void
.end method

.method protected readLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget v0, p0, Lorg/spongycastle/asn1/ASN1InputStream;->limit:I

    invoke-static {p0, v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public readObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 216
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1InputStream;->read()I

    move-result v5

    .line 217
    .local v5, "tag":I
    if-gtz v5, :cond_1

    .line 219
    if-nez v5, :cond_0

    .line 221
    new-instance v7, Ljava/io/IOException;

    const-string v8, "unexpected end-of-contents marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 224
    :cond_0
    const/4 v7, 0x0

    .line 278
    :goto_0
    return-object v7

    .line 230
    :cond_1
    invoke-static {p0, v5}, Lorg/spongycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v6

    .line 232
    .local v6, "tagNo":I
    and-int/lit8 v8, v5, 0x20

    if-eqz v8, :cond_2

    move v2, v7

    .line 237
    .local v2, "isConstructed":Z
    :goto_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1InputStream;->readLength()I

    move-result v3

    .line 239
    .local v3, "length":I
    if-gez v3, :cond_6

    .line 241
    if-nez v2, :cond_3

    .line 243
    new-instance v7, Ljava/io/IOException;

    const-string v8, "indefinite-length primitive encoding encountered"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 232
    .end local v2    # "isConstructed":Z
    .end local v3    # "length":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 246
    .restart local v2    # "isConstructed":Z
    .restart local v3    # "length":I
    :cond_3
    new-instance v1, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;

    iget v8, p0, Lorg/spongycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v1, p0, v8}, Lorg/spongycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 247
    .local v1, "indIn":Lorg/spongycastle/asn1/IndefiniteLengthInputStream;
    new-instance v4, Lorg/spongycastle/asn1/ASN1StreamParser;

    iget v8, p0, Lorg/spongycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v4, v1, v8}, Lorg/spongycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 249
    .local v4, "sp":Lorg/spongycastle/asn1/ASN1StreamParser;
    and-int/lit8 v8, v5, 0x40

    if-eqz v8, :cond_4

    .line 251
    new-instance v7, Lorg/spongycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v7, v6, v4}, Lorg/spongycastle/asn1/BERApplicationSpecificParser;-><init>(ILorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lorg/spongycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    goto :goto_0

    .line 254
    :cond_4
    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_5

    .line 256
    new-instance v8, Lorg/spongycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v8, v7, v6, v4}, Lorg/spongycastle/asn1/BERTaggedObjectParser;-><init>(ZILorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v8}, Lorg/spongycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    goto :goto_0

    .line 260
    :cond_5
    sparse-switch v6, :sswitch_data_0

    .line 271
    new-instance v7, Ljava/io/IOException;

    const-string v8, "unknown BER object encountered"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 263
    :sswitch_0
    new-instance v7, Lorg/spongycastle/asn1/BEROctetStringParser;

    invoke-direct {v7, v4}, Lorg/spongycastle/asn1/BEROctetStringParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lorg/spongycastle/asn1/BEROctetStringParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    goto :goto_0

    .line 265
    :sswitch_1
    new-instance v7, Lorg/spongycastle/asn1/BERSequenceParser;

    invoke-direct {v7, v4}, Lorg/spongycastle/asn1/BERSequenceParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lorg/spongycastle/asn1/BERSequenceParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    goto :goto_0

    .line 267
    :sswitch_2
    new-instance v7, Lorg/spongycastle/asn1/BERSetParser;

    invoke-direct {v7, v4}, Lorg/spongycastle/asn1/BERSetParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lorg/spongycastle/asn1/BERSetParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    goto :goto_0

    .line 269
    :sswitch_3
    new-instance v7, Lorg/spongycastle/asn1/DERExternalParser;

    invoke-direct {v7, v4}, Lorg/spongycastle/asn1/DERExternalParser;-><init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lorg/spongycastle/asn1/DERExternalParser;->getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v7

    goto :goto_0

    .line 278
    .end local v1    # "indIn":Lorg/spongycastle/asn1/IndefiniteLengthInputStream;
    .end local v4    # "sp":Lorg/spongycastle/asn1/ASN1StreamParser;
    :cond_6
    :try_start_0
    invoke-virtual {p0, v5, v6, v3}, Lorg/spongycastle/asn1/ASN1InputStream;->buildObject(III)Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lorg/spongycastle/asn1/ASN1Exception;

    const-string v8, "corrupted stream detected"

    invoke-direct {v7, v8, v0}, Lorg/spongycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 260
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method
