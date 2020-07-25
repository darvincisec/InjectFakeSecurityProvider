.class public Lorg/spongycastle/crypto/engines/Salsa20Engine;
.super Ljava/lang/Object;
.source "Salsa20Engine.java"

# interfaces
.implements Lorg/spongycastle/crypto/SkippingStreamCipher;


# static fields
.field public static final DEFAULT_ROUNDS:I = 0x14

.field private static final STATE_SIZE:I = 0x10

.field private static final TAU_SIGMA:[I

.field protected static final sigma:[B

.field protected static final tau:[B


# instance fields
.field private cW0:I

.field private cW1:I

.field private cW2:I

.field protected engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field protected rounds:I

.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-string v0, "expand 16-byte kexpand 32-byte k"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BII)[I

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    .line 37
    const-string v0, "expand 32-byte k"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->sigma:[B

    .line 38
    const-string v0, "expand 16-byte k"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->tau:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;-><init>(I)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "rounds"    # I

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 47
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    .line 48
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    .line 49
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    .line 50
    iput-boolean v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    .line 71
    if-lez p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'rounds\' must be a positive, even number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    iput p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    .line 77
    return-void
.end method

.method private limitExceeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 515
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-nez v1, :cond_0

    .line 517
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_0

    .line 519
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 523
    :cond_0
    return v0
.end method

.method private limitExceeded(I)Z
    .locals 2
    .param p1, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 531
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 532
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ge v1, p1, :cond_0

    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ltz v1, :cond_0

    .line 534
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_0

    .line 536
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 540
    :cond_0
    return v0
.end method

.method private resetLimitCounter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 508
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 509
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    .line 510
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    .line 511
    return-void
.end method

.method protected static rotl(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 503
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static salsaCore(I[I[I)V
    .locals 21
    .param p0, "rounds"    # I
    .param p1, "input"    # [I
    .param p2, "x"    # [I

    .prologue
    .line 408
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 410
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 412
    :cond_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 414
    new-instance v19, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 416
    :cond_1
    rem-int/lit8 v19, p0, 0x2

    if-eqz v19, :cond_2

    .line 418
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Number of rounds must be even"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 421
    :cond_2
    const/16 v19, 0x0

    aget v3, p1, v19

    .line 422
    .local v3, "x00":I
    const/16 v19, 0x1

    aget v4, p1, v19

    .line 423
    .local v4, "x01":I
    const/16 v19, 0x2

    aget v5, p1, v19

    .line 424
    .local v5, "x02":I
    const/16 v19, 0x3

    aget v6, p1, v19

    .line 425
    .local v6, "x03":I
    const/16 v19, 0x4

    aget v7, p1, v19

    .line 426
    .local v7, "x04":I
    const/16 v19, 0x5

    aget v8, p1, v19

    .line 427
    .local v8, "x05":I
    const/16 v19, 0x6

    aget v9, p1, v19

    .line 428
    .local v9, "x06":I
    const/16 v19, 0x7

    aget v10, p1, v19

    .line 429
    .local v10, "x07":I
    const/16 v19, 0x8

    aget v11, p1, v19

    .line 430
    .local v11, "x08":I
    const/16 v19, 0x9

    aget v12, p1, v19

    .line 431
    .local v12, "x09":I
    const/16 v19, 0xa

    aget v13, p1, v19

    .line 432
    .local v13, "x10":I
    const/16 v19, 0xb

    aget v14, p1, v19

    .line 433
    .local v14, "x11":I
    const/16 v19, 0xc

    aget v15, p1, v19

    .line 434
    .local v15, "x12":I
    const/16 v19, 0xd

    aget v16, p1, v19

    .line 435
    .local v16, "x13":I
    const/16 v19, 0xe

    aget v17, p1, v19

    .line 436
    .local v17, "x14":I
    const/16 v19, 0xf

    aget v18, p1, v19

    .line 438
    .local v18, "x15":I
    move/from16 v2, p0

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_3

    .line 440
    add-int v19, v3, v15

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v7, v7, v19

    .line 441
    add-int v19, v7, v3

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v11, v11, v19

    .line 442
    add-int v19, v11, v7

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v15, v15, v19

    .line 443
    add-int v19, v15, v11

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v3, v3, v19

    .line 444
    add-int v19, v8, v4

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v12, v12, v19

    .line 445
    add-int v19, v12, v8

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v16, v16, v19

    .line 446
    add-int v19, v16, v12

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v4, v4, v19

    .line 447
    add-int v19, v4, v16

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v8, v8, v19

    .line 448
    add-int v19, v13, v9

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v17, v17, v19

    .line 449
    add-int v19, v17, v13

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v5, v5, v19

    .line 450
    add-int v19, v5, v17

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v9, v9, v19

    .line 451
    add-int v19, v9, v5

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v13, v13, v19

    .line 452
    add-int v19, v18, v14

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v6, v6, v19

    .line 453
    add-int v19, v6, v18

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v10, v10, v19

    .line 454
    add-int v19, v10, v6

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v14, v14, v19

    .line 455
    add-int v19, v14, v10

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v18, v18, v19

    .line 457
    add-int v19, v3, v6

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v4, v4, v19

    .line 458
    add-int v19, v4, v3

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v5, v5, v19

    .line 459
    add-int v19, v5, v4

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v6, v6, v19

    .line 460
    add-int v19, v6, v5

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v3, v3, v19

    .line 461
    add-int v19, v8, v7

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v9, v9, v19

    .line 462
    add-int v19, v9, v8

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v10, v10, v19

    .line 463
    add-int v19, v10, v9

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v7, v7, v19

    .line 464
    add-int v19, v7, v10

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v8, v8, v19

    .line 465
    add-int v19, v13, v12

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v14, v14, v19

    .line 466
    add-int v19, v14, v13

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v11, v11, v19

    .line 467
    add-int v19, v11, v14

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v12, v12, v19

    .line 468
    add-int v19, v12, v11

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v13, v13, v19

    .line 469
    add-int v19, v18, v17

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v15, v15, v19

    .line 470
    add-int v19, v15, v18

    const/16 v20, 0x9

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v16, v16, v19

    .line 471
    add-int v19, v16, v15

    const/16 v20, 0xd

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v17, v17, v19

    .line 472
    add-int v19, v17, v16

    const/16 v20, 0x12

    invoke-static/range {v19 .. v20}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v19

    xor-int v18, v18, v19

    .line 438
    add-int/lit8 v2, v2, -0x2

    goto/16 :goto_0

    .line 475
    :cond_3
    const/16 v19, 0x0

    const/16 v20, 0x0

    aget v20, p1, v20

    add-int v20, v20, v3

    aput v20, p2, v19

    .line 476
    const/16 v19, 0x1

    const/16 v20, 0x1

    aget v20, p1, v20

    add-int v20, v20, v4

    aput v20, p2, v19

    .line 477
    const/16 v19, 0x2

    const/16 v20, 0x2

    aget v20, p1, v20

    add-int v20, v20, v5

    aput v20, p2, v19

    .line 478
    const/16 v19, 0x3

    const/16 v20, 0x3

    aget v20, p1, v20

    add-int v20, v20, v6

    aput v20, p2, v19

    .line 479
    const/16 v19, 0x4

    const/16 v20, 0x4

    aget v20, p1, v20

    add-int v20, v20, v7

    aput v20, p2, v19

    .line 480
    const/16 v19, 0x5

    const/16 v20, 0x5

    aget v20, p1, v20

    add-int v20, v20, v8

    aput v20, p2, v19

    .line 481
    const/16 v19, 0x6

    const/16 v20, 0x6

    aget v20, p1, v20

    add-int v20, v20, v9

    aput v20, p2, v19

    .line 482
    const/16 v19, 0x7

    const/16 v20, 0x7

    aget v20, p1, v20

    add-int v20, v20, v10

    aput v20, p2, v19

    .line 483
    const/16 v19, 0x8

    const/16 v20, 0x8

    aget v20, p1, v20

    add-int v20, v20, v11

    aput v20, p2, v19

    .line 484
    const/16 v19, 0x9

    const/16 v20, 0x9

    aget v20, p1, v20

    add-int v20, v20, v12

    aput v20, p2, v19

    .line 485
    const/16 v19, 0xa

    const/16 v20, 0xa

    aget v20, p1, v20

    add-int v20, v20, v13

    aput v20, p2, v19

    .line 486
    const/16 v19, 0xb

    const/16 v20, 0xb

    aget v20, p1, v20

    add-int v20, v20, v14

    aput v20, p2, v19

    .line 487
    const/16 v19, 0xc

    const/16 v20, 0xc

    aget v20, p1, v20

    add-int v20, v20, v15

    aput v20, p2, v19

    .line 488
    const/16 v19, 0xd

    const/16 v20, 0xd

    aget v20, p1, v20

    add-int v20, v20, v16

    aput v20, p2, v19

    .line 489
    const/16 v19, 0xe

    const/16 v20, 0xe

    aget v20, p1, v20

    add-int v20, v20, v17

    aput v20, p2, v19

    .line 490
    const/16 v19, 0xf

    const/16 v20, 0xf

    aget v20, p1, v20

    add-int v20, v20, v18

    aput v20, p2, v19

    .line 491
    return-void
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-nez v2, :cond_0

    .line 193
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x9

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 195
    :cond_0
    return-void
.end method

.method protected advanceCounter(J)V
    .locals 9
    .param p1, "diff"    # J

    .prologue
    const/16 v7, 0x9

    const/16 v6, 0x8

    .line 171
    const/16 v3, 0x20

    ushr-long v4, p1, v3

    long-to-int v0, v4

    .line 172
    .local v0, "hi":I
    long-to-int v1, p1

    .line 174
    .local v1, "lo":I
    if-lez v0, :cond_0

    .line 176
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v4, v3, v7

    add-int/2addr v4, v0

    aput v4, v3, v7

    .line 179
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v2, v3, v6

    .line 181
    .local v2, "oldState":I
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v4, v3, v6

    add-int/2addr v4, v1

    aput v4, v3, v6

    .line 183
    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v3, v3, v6

    if-ge v3, v2, :cond_1

    .line 185
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v4, v3, v7

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v7

    .line 187
    :cond_1
    return-void
.end method

.method protected generateKeyStream([B)V
    .locals 3
    .param p1, "output"    # [B

    .prologue
    .line 397
    iget v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    .line 398
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToLittleEndian([I[BI)V

    .line 399
    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    const-string v0, "Salsa20"

    .line 143
    .local v0, "name":Ljava/lang/String;
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rounds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_0
    return-object v0
.end method

.method protected getCounter()J
    .locals 6

    .prologue
    .line 363
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getNonceSize()I
    .locals 1

    .prologue
    .line 137
    const/16 v0, 0x8

    return v0
.end method

.method public getPosition()J
    .locals 4

    .prologue
    .line 349
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getCounter()J

    move-result-wide v0

    const-wide/16 v2, 0x40

    mul-long/2addr v0, v2

    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 97
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v3, :cond_0

    .line 99
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Init parameters must include an IV"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, p2

    .line 102
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 104
    .local v1, "ivParams":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 105
    .local v0, "iv":[B
    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 107
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requires exactly "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getNonceSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes of IV"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_2
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    .line 112
    .local v2, "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    if-nez v2, :cond_4

    .line 114
    iget-boolean v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-nez v3, :cond_3

    .line 116
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " KeyParameter can not be null for first initialisation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    .line 130
    .end local v2    # "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->reset()V

    .line 132
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    .line 133
    return-void

    .line 121
    .restart local v2    # "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    :cond_4
    instance-of v3, v2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v3, :cond_5

    .line 123
    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local v2    # "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    goto :goto_0

    .line 127
    .restart local v2    # "keyParam":Lorg/spongycastle/crypto/CipherParameters;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Init parameters must contain a KeyParameter (or null for re-init)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected packTauOrSigma(I[II)V
    .locals 4
    .param p1, "keyLength"    # I
    .param p2, "state"    # [I
    .param p3, "stateOffset"    # I

    .prologue
    .line 28
    add-int/lit8 v1, p1, -0x10

    div-int/lit8 v0, v1, 0x4

    .line 29
    .local v0, "tsOff":I
    sget-object v1, Lorg/spongycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    aget v1, v1, v0

    aput v1, p2, p3

    .line 30
    add-int/lit8 v1, p3, 0x1

    sget-object v2, Lorg/spongycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, p2, v1

    .line 31
    add-int/lit8 v1, p3, 0x2

    sget-object v2, Lorg/spongycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    aput v2, p2, v1

    .line 32
    add-int/lit8 v1, p3, 0x3

    sget-object v2, Lorg/spongycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    add-int/lit8 v3, v0, 0x3

    aget v2, v2, v3

    aput v2, p2, v1

    .line 33
    return-void
.end method

.method public processBytes([BII[BI)I
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    .line 252
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-nez v1, :cond_0

    .line 254
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not initialised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_0
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 259
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_1
    add-int v1, p5, p3

    array-length v2, p4

    if-le v1, v2, :cond_2

    .line 264
    new-instance v1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 267
    :cond_2
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->limitExceeded(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    new-instance v1, Lorg/spongycastle/crypto/MaxBytesExceededException;

    const-string v2, "2^70 byte limit per IV would be exceeded; Change IV"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_5

    .line 274
    add-int v1, v0, p5

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 275
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 277
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_4

    .line 279
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    .line 280
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 272
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_5
    return p3
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 355
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->resetLimitCounter()V

    .line 356
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    .line 358
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 359
    return-void
.end method

.method protected resetCounter()V
    .locals 5

    .prologue
    .line 368
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v1, 0x8

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0x9

    const/4 v4, 0x0

    aput v4, v2, v3

    aput v4, v0, v1

    .line 369
    return-void
.end method

.method protected retreatCounter()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 234
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v0, v0, v3

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 241
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v3

    .line 243
    :cond_1
    return-void
.end method

.method protected retreatCounter(J)V
    .locals 11
    .param p1, "diff"    # J

    .prologue
    const/16 v7, 0x8

    const-wide v8, 0xffffffffL

    const/16 v6, 0x9

    .line 199
    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v0, v2

    .line 200
    .local v0, "hi":I
    long-to-int v1, p1

    .line 202
    .local v1, "lo":I
    if-eqz v0, :cond_0

    .line 204
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v2, v2, v6

    int-to-long v2, v2

    and-long/2addr v2, v8

    int-to-long v4, v0

    and-long/2addr v4, v8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 206
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v3, v2, v6

    sub-int/2addr v3, v0

    aput v3, v2, v6

    .line 214
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v2, v2, v7

    int-to-long v2, v2

    and-long/2addr v2, v8

    int-to-long v4, v1

    and-long/2addr v4, v8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 216
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v3, v2, v7

    sub-int/2addr v3, v1

    aput v3, v2, v7

    .line 230
    :goto_0
    return-void

    .line 210
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "attempt to reduce counter past zero."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v2, v2, v6

    if-eqz v2, :cond_3

    .line 222
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v3, v2, v6

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v6

    .line 223
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    aget v3, v2, v7

    sub-int/2addr v3, v1

    aput v3, v2, v7

    goto :goto_0

    .line 227
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "attempt to reduce counter past zero."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public returnByte(B)B
    .locals 3
    .param p1, "in"    # B

    .prologue
    .line 152
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->limitExceeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Lorg/spongycastle/crypto/MaxBytesExceededException;

    const-string v2, "2^70 byte limit per IV; Change IV"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v0, v1

    .line 158
    .local v0, "out":B
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 160
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_1

    .line 162
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    .line 163
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 166
    :cond_1
    return v0
.end method

.method public seekTo(J)J
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 342
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->reset()V

    .line 344
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected setKey([B[B)V
    .locals 7
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 373
    if-eqz p1, :cond_1

    .line 375
    array-length v1, p1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    array-length v1, p1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 377
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires 128 bit or 256 bit key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 380
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x10

    div-int/lit8 v0, v1, 0x4

    .line 381
    .local v0, "tsOff":I
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    sget-object v2, Lorg/spongycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    aget v2, v2, v0

    aput v2, v1, v5

    .line 382
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v2, 0x5

    sget-object v3, Lorg/spongycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 383
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v2, 0xa

    sget-object v3, Lorg/spongycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    add-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    aput v3, v1, v2

    .line 384
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v2, 0xf

    sget-object v3, Lorg/spongycastle/crypto/engines/Salsa20Engine;->TAU_SIGMA:[I

    add-int/lit8 v4, v0, 0x3

    aget v3, v3, v4

    aput v3, v1, v2

    .line 387
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v2, 0x1

    invoke-static {p1, v5, v1, v2, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 388
    array-length v1, p1

    add-int/lit8 v1, v1, -0x10

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xb

    invoke-static {p1, v1, v2, v3, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 392
    .end local v0    # "tsOff":I
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v2, 0x6

    const/4 v3, 0x2

    invoke-static {p2, v5, v1, v2, v3}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 393
    return-void
.end method

.method public skip(J)J
    .locals 13
    .param p1, "numberOfBytes"    # J

    .prologue
    const-wide/16 v10, 0x40

    .line 289
    const-wide/16 v8, 0x0

    cmp-long v5, p1, v8

    if-ltz v5, :cond_2

    .line 291
    move-wide v6, p1

    .line 293
    .local v6, "remaining":J
    cmp-long v5, v6, v10

    if-ltz v5, :cond_0

    .line 295
    div-long v0, v6, v10

    .line 297
    .local v0, "count":J
    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->advanceCounter(J)V

    .line 299
    mul-long v8, v0, v10

    sub-long/2addr v6, v8

    .line 302
    .end local v0    # "count":J
    :cond_0
    iget v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 304
    .local v4, "oldIndex":I
    iget v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    long-to-int v8, v6

    add-int/2addr v5, v8

    and-int/lit8 v5, v5, 0x3f

    iput v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 306
    iget v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-ge v5, v4, :cond_1

    .line 308
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->advanceCounter()V

    .line 335
    .end local v4    # "oldIndex":I
    :cond_1
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-virtual {p0, v5}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 337
    return-wide p1

    .line 313
    .end local v6    # "remaining":J
    :cond_2
    neg-long v6, p1

    .line 315
    .restart local v6    # "remaining":J
    cmp-long v5, v6, v10

    if-ltz v5, :cond_3

    .line 317
    div-long v0, v6, v10

    .line 319
    .restart local v0    # "count":J
    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->retreatCounter(J)V

    .line 321
    mul-long v8, v0, v10

    sub-long/2addr v6, v8

    .line 324
    .end local v0    # "count":J
    :cond_3
    const-wide/16 v2, 0x0

    .local v2, "i":J
    :goto_0
    cmp-long v5, v2, v6

    if-gez v5, :cond_1

    .line 326
    iget v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v5, :cond_4

    .line 328
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->retreatCounter()V

    .line 331
    :cond_4
    iget v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v5, v5, -0x1

    and-int/lit8 v5, v5, 0x3f

    iput v5, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 324
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_0
.end method
