.class final Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;
.super Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source "ThreefishEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish256Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0xe

.field private static final ROTATION_0_1:I = 0x10

.field private static final ROTATION_1_0:I = 0x34

.field private static final ROTATION_1_1:I = 0x39

.field private static final ROTATION_2_0:I = 0x17

.field private static final ROTATION_2_1:I = 0x28

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x25

.field private static final ROTATION_4_0:I = 0x19

.field private static final ROTATION_4_1:I = 0x21

.field private static final ROTATION_5_0:I = 0x2e

.field private static final ROTATION_5_1:I = 0xc

.field private static final ROTATION_6_0:I = 0x3a

.field private static final ROTATION_6_1:I = 0x16

.field private static final ROTATION_7_0:I = 0x20

.field private static final ROTATION_7_1:I = 0x20


# direct methods
.method public constructor <init>([J[J)V
    .locals 0
    .param p1, "kw"    # [J
    .param p2, "t"    # [J

    .prologue
    .line 460
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    .line 461
    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 22
    .param p1, "block"    # [J
    .param p2, "state"    # [J

    .prologue
    .line 573
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    .line 574
    .local v13, "kw":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    move-object/from16 v16, v0

    .line 575
    .local v16, "t":[J
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v15

    .line 576
    .local v15, "mod5":[I
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v14

    .line 579
    .local v14, "mod3":[I
    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 581
    new-instance v17, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v17

    .line 583
    :cond_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 585
    new-instance v17, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v17

    .line 588
    :cond_1
    const/16 v17, 0x0

    aget-wide v2, p1, v17

    .line 589
    .local v2, "b0":J
    const/16 v17, 0x1

    aget-wide v4, p1, v17

    .line 590
    .local v4, "b1":J
    const/16 v17, 0x2

    aget-wide v6, p1, v17

    .line 591
    .local v6, "b2":J
    const/16 v17, 0x3

    aget-wide v8, p1, v17

    .line 593
    .local v8, "b3":J
    const/16 v10, 0x11

    .local v10, "d":I
    :goto_0
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v10, v0, :cond_2

    .line 595
    aget v12, v15, v10

    .line 596
    .local v12, "dm5":I
    aget v11, v14, v10

    .line 599
    .local v11, "dm3":I
    add-int/lit8 v17, v12, 0x1

    aget-wide v18, v13, v17

    sub-long v2, v2, v18

    .line 600
    add-int/lit8 v17, v12, 0x2

    aget-wide v18, v13, v17

    add-int/lit8 v17, v11, 0x1

    aget-wide v20, v16, v17

    add-long v18, v18, v20

    sub-long v4, v4, v18

    .line 601
    add-int/lit8 v17, v12, 0x3

    aget-wide v18, v13, v17

    add-int/lit8 v17, v11, 0x2

    aget-wide v20, v16, v17

    add-long v18, v18, v20

    sub-long v6, v6, v18

    .line 602
    add-int/lit8 v17, v12, 0x4

    aget-wide v18, v13, v17

    int-to-long v0, v10

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    sub-long v8, v8, v18

    .line 606
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 607
    sub-long/2addr v2, v8

    .line 608
    const/16 v17, 0x20

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 609
    sub-long/2addr v6, v4

    .line 611
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 612
    sub-long/2addr v2, v4

    .line 613
    const/16 v17, 0x16

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 614
    sub-long/2addr v6, v8

    .line 616
    const/16 v17, 0x2e

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 617
    sub-long/2addr v2, v8

    .line 618
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 619
    sub-long/2addr v6, v4

    .line 621
    const/16 v17, 0x19

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 622
    sub-long/2addr v2, v4

    .line 623
    const/16 v17, 0x21

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 624
    sub-long/2addr v6, v8

    .line 627
    aget-wide v18, v13, v12

    sub-long v2, v2, v18

    .line 628
    add-int/lit8 v17, v12, 0x1

    aget-wide v18, v13, v17

    aget-wide v20, v16, v11

    add-long v18, v18, v20

    sub-long v4, v4, v18

    .line 629
    add-int/lit8 v17, v12, 0x2

    aget-wide v18, v13, v17

    add-int/lit8 v17, v11, 0x1

    aget-wide v20, v16, v17

    add-long v18, v18, v20

    sub-long v6, v6, v18

    .line 630
    add-int/lit8 v17, v12, 0x3

    aget-wide v18, v13, v17

    int-to-long v0, v10

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    sub-long v8, v8, v18

    .line 633
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 634
    sub-long/2addr v2, v8

    .line 635
    const/16 v17, 0x25

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 636
    sub-long/2addr v6, v4

    .line 638
    const/16 v17, 0x17

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 639
    sub-long/2addr v2, v4

    .line 640
    const/16 v17, 0x28

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 641
    sub-long/2addr v6, v8

    .line 643
    const/16 v17, 0x34

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 644
    sub-long/2addr v2, v8

    .line 645
    const/16 v17, 0x39

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 646
    sub-long/2addr v6, v4

    .line 648
    const/16 v17, 0xe

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 649
    sub-long/2addr v2, v4

    .line 650
    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v8

    .line 651
    sub-long/2addr v6, v8

    .line 593
    add-int/lit8 v10, v10, -0x2

    goto/16 :goto_0

    .line 657
    .end local v11    # "dm3":I
    .end local v12    # "dm5":I
    :cond_2
    const/16 v17, 0x0

    aget-wide v18, v13, v17

    sub-long v2, v2, v18

    .line 658
    const/16 v17, 0x1

    aget-wide v18, v13, v17

    const/16 v17, 0x0

    aget-wide v20, v16, v17

    add-long v18, v18, v20

    sub-long v4, v4, v18

    .line 659
    const/16 v17, 0x2

    aget-wide v18, v13, v17

    const/16 v17, 0x1

    aget-wide v20, v16, v17

    add-long v18, v18, v20

    sub-long v6, v6, v18

    .line 660
    const/16 v17, 0x3

    aget-wide v18, v13, v17

    sub-long v8, v8, v18

    .line 665
    const/16 v17, 0x0

    aput-wide v2, p2, v17

    .line 666
    const/16 v17, 0x1

    aput-wide v4, p2, v17

    .line 667
    const/16 v17, 0x2

    aput-wide v6, p2, v17

    .line 668
    const/16 v17, 0x3

    aput-wide v8, p2, v17

    .line 669
    return-void
.end method

.method encryptBlock([J[J)V
    .locals 22
    .param p1, "block"    # [J
    .param p2, "out"    # [J

    .prologue
    .line 465
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->kw:[J

    .line 466
    .local v13, "kw":[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;->t:[J

    move-object/from16 v16, v0

    .line 467
    .local v16, "t":[J
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v15

    .line 468
    .local v15, "mod5":[I
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v14

    .line 471
    .local v14, "mod3":[I
    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 473
    new-instance v17, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v17

    .line 475
    :cond_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 477
    new-instance v17, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v17

    .line 483
    :cond_1
    const/16 v17, 0x0

    aget-wide v2, p1, v17

    .line 484
    .local v2, "b0":J
    const/16 v17, 0x1

    aget-wide v4, p1, v17

    .line 485
    .local v4, "b1":J
    const/16 v17, 0x2

    aget-wide v6, p1, v17

    .line 486
    .local v6, "b2":J
    const/16 v17, 0x3

    aget-wide v8, p1, v17

    .line 491
    .local v8, "b3":J
    const/16 v17, 0x0

    aget-wide v18, v13, v17

    add-long v2, v2, v18

    .line 492
    const/16 v17, 0x1

    aget-wide v18, v13, v17

    const/16 v17, 0x0

    aget-wide v20, v16, v17

    add-long v18, v18, v20

    add-long v4, v4, v18

    .line 493
    const/16 v17, 0x2

    aget-wide v18, v13, v17

    const/16 v17, 0x1

    aget-wide v20, v16, v17

    add-long v18, v18, v20

    add-long v6, v6, v18

    .line 494
    const/16 v17, 0x3

    aget-wide v18, v13, v17

    add-long v8, v8, v18

    .line 507
    const/4 v10, 0x1

    .local v10, "d":I
    :goto_0
    const/16 v17, 0x12

    move/from16 v0, v17

    if-ge v10, v0, :cond_2

    .line 509
    aget v12, v15, v10

    .line 510
    .local v12, "dm5":I
    aget v11, v14, v10

    .line 518
    .local v11, "dm3":I
    const/16 v17, 0xe

    add-long/2addr v2, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 519
    const/16 v17, 0x10

    add-long/2addr v6, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 521
    const/16 v17, 0x34

    add-long/2addr v2, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 522
    const/16 v17, 0x39

    add-long/2addr v6, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 524
    const/16 v17, 0x17

    add-long/2addr v2, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 525
    const/16 v17, 0x28

    add-long/2addr v6, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 527
    const/16 v17, 0x5

    add-long/2addr v2, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 528
    const/16 v17, 0x25

    add-long/2addr v6, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 533
    aget-wide v18, v13, v12

    add-long v2, v2, v18

    .line 534
    add-int/lit8 v17, v12, 0x1

    aget-wide v18, v13, v17

    aget-wide v20, v16, v11

    add-long v18, v18, v20

    add-long v4, v4, v18

    .line 535
    add-int/lit8 v17, v12, 0x2

    aget-wide v18, v13, v17

    add-int/lit8 v17, v11, 0x1

    aget-wide v20, v16, v17

    add-long v18, v18, v20

    add-long v6, v6, v18

    .line 536
    add-int/lit8 v17, v12, 0x3

    aget-wide v18, v13, v17

    int-to-long v0, v10

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    add-long v8, v8, v18

    .line 541
    const/16 v17, 0x19

    add-long/2addr v2, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 542
    const/16 v17, 0x21

    add-long/2addr v6, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 544
    const/16 v17, 0x2e

    add-long/2addr v2, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 545
    const/16 v17, 0xc

    add-long/2addr v6, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 547
    const/16 v17, 0x3a

    add-long/2addr v2, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 548
    const/16 v17, 0x16

    add-long/2addr v6, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 550
    const/16 v17, 0x20

    add-long/2addr v2, v8

    move/from16 v0, v17

    invoke-static {v8, v9, v0, v2, v3}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 551
    const/16 v17, 0x20

    add-long/2addr v6, v4

    move/from16 v0, v17

    invoke-static {v4, v5, v0, v6, v7}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 556
    add-int/lit8 v17, v12, 0x1

    aget-wide v18, v13, v17

    add-long v2, v2, v18

    .line 557
    add-int/lit8 v17, v12, 0x2

    aget-wide v18, v13, v17

    add-int/lit8 v17, v11, 0x1

    aget-wide v20, v16, v17

    add-long v18, v18, v20

    add-long v4, v4, v18

    .line 558
    add-int/lit8 v17, v12, 0x3

    aget-wide v18, v13, v17

    add-int/lit8 v17, v11, 0x2

    aget-wide v20, v16, v17

    add-long v18, v18, v20

    add-long v6, v6, v18

    .line 559
    add-int/lit8 v17, v12, 0x4

    aget-wide v18, v13, v17

    int-to-long v0, v10

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    add-long v8, v8, v18

    .line 507
    add-int/lit8 v10, v10, 0x2

    goto/16 :goto_0

    .line 565
    .end local v11    # "dm3":I
    .end local v12    # "dm5":I
    :cond_2
    const/16 v17, 0x0

    aput-wide v2, p2, v17

    .line 566
    const/16 v17, 0x1

    aput-wide v4, p2, v17

    .line 567
    const/16 v17, 0x2

    aput-wide v6, p2, v17

    .line 568
    const/16 v17, 0x3

    aput-wide v8, p2, v17

    .line 569
    return-void
.end method
