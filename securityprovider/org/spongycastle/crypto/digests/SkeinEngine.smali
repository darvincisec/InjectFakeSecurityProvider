.class public Lorg/spongycastle/crypto/digests/SkeinEngine;
.super Ljava/lang/Object;
.source "SkeinEngine.java"

# interfaces
.implements Lorg/spongycastle/util/Memoable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;,
        Lorg/spongycastle/crypto/digests/SkeinEngine$UbiTweak;,
        Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;,
        Lorg/spongycastle/crypto/digests/SkeinEngine$Configuration;
    }
.end annotation


# static fields
.field private static final INITIAL_STATES:Ljava/util/Hashtable;

.field private static final PARAM_TYPE_CONFIG:I = 0x4

.field private static final PARAM_TYPE_KEY:I = 0x0

.field private static final PARAM_TYPE_MESSAGE:I = 0x30

.field private static final PARAM_TYPE_OUTPUT:I = 0x3f

.field public static final SKEIN_1024:I = 0x400

.field public static final SKEIN_256:I = 0x100

.field public static final SKEIN_512:I = 0x200


# instance fields
.field chain:[J

.field private initialState:[J

.field private key:[B

.field private final outputSizeBytes:I

.field private postMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

.field private preMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

.field private final singleByte:[B

.field final threefish:Lorg/spongycastle/crypto/engines/ThreefishEngine;

.field private final ubi:Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x80

    const/4 v5, 0x4

    const/16 v4, 0x100

    const/16 v3, 0x8

    const/16 v2, 0x200

    .line 137
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/digests/SkeinEngine;->INITIAL_STATES:Ljava/util/Hashtable;

    .line 142
    new-array v0, v5, [J

    fill-array-data v0, :array_0

    invoke-static {v4, v6, v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->initialState(II[J)V

    .line 148
    const/16 v0, 0xa0

    new-array v1, v5, [J

    fill-array-data v1, :array_1

    invoke-static {v4, v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->initialState(II[J)V

    .line 154
    const/16 v0, 0xe0

    new-array v1, v5, [J

    fill-array-data v1, :array_2

    invoke-static {v4, v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->initialState(II[J)V

    .line 160
    new-array v0, v5, [J

    fill-array-data v0, :array_3

    invoke-static {v4, v4, v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->initialState(II[J)V

    .line 166
    new-array v0, v3, [J

    fill-array-data v0, :array_4

    invoke-static {v2, v6, v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->initialState(II[J)V

    .line 176
    const/16 v0, 0xa0

    new-array v1, v3, [J

    fill-array-data v1, :array_5

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->initialState(II[J)V

    .line 186
    const/16 v0, 0xe0

    new-array v1, v3, [J

    fill-array-data v1, :array_6

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->initialState(II[J)V

    .line 196
    const/16 v0, 0x180

    new-array v1, v3, [J

    fill-array-data v1, :array_7

    invoke-static {v2, v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->initialState(II[J)V

    .line 206
    new-array v0, v3, [J

    fill-array-data v0, :array_8

    invoke-static {v2, v2, v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->initialState(II[J)V

    .line 215
    return-void

    .line 142
    nop

    :array_0
    .array-data 8
        -0x1eeee6f969b28da0L    # -3.755924499506369E159
        -0x77c2555883727ee4L
        0x10080df491960f7aL    # 1.936733715973684E-231
        -0x3308221a4ba43e3eL    # -6.136391494407059E62
    .end array-data

    .line 148
    :array_1
    .array-data 8
        0x1420231472825e98L    # 9.586866583092151E-212
        0x2ac4e9a25a77e590L
        -0x2b85a7a977c729c2L    # -9.003636605138722E98
        0x2dd2e4968586ab7dL    # 5.935815605536115E-88
    .end array-data

    .line 154
    :array_2
    .array-data 8
        -0x39f67573651a15f5L    # -2.5294787191403843E29
        -0x7892a979f73ae6e4L    # -6.778977455371991E-273
        -0x66347728280ac77cL    # -2.02502573808248E-184
        0x384bddb1aeddb5deL    # 1.6378158369262575E-37
    .end array-data

    .line 160
    :array_3
    .array-data 8
        -0x362579f2fb74bb7L
        0x2fca66479fa7d833L    # 1.781178079886423E-78
        -0x4cc43c7699a97bf1L    # -6.749009640937583E-62
        0x6a54e920fde8da69L    # 1.6390221063977923E204
    .end array-data

    .line 166
    :array_4
    .array-data 8
        -0x5743840c904060aeL
        0x1e9872cebd1af0aaL
        0x309b1790b32190d3L    # 1.4974177594959565E-74
        -0x430447abc06b7fa4L    # -6.155084337311389E-15
        0xda61bcd6e31b11bL
        0x1a18ebead46a32e3L    # 5.86513116755826E-183
        -0x5d33a4e7317b557eL    # -4.650660861511907E-141
        0x6982ab289d46982dL    # 1.7862350882471686E200
    .end array-data

    .line 176
    :array_5
    .array-data 8
        0x28b81a2ae013bd91L
        -0x3d0ee9974a420871L    # -3.0060709910104894E14
        0x1760d8f3f6a56f12L    # 4.507623037519005E-196
        0x4fb747588239904fL    # 1.0529252523548142E76
        0x21ede07f7eaf5056L    # 2.990806367775679E-145
        -0x26f76dd19c128f48L    # -7.93106429127717E120
        -0x471389001334ad06L    # -1.7131653979910983E-34
        0x1a47bb8a3f27a6eL    # 9.55815287055376E-301
    .end array-data

    .line 186
    :array_6
    .array-data 8
        -0x332f9e9db7988ddcL    # -1.0528918985767222E62
        -0x3459a30c56dcc611L    # -2.741707220167551E56
        -0x73329629ad00b49cL
        0x398aed7b3ab890b4L    # 1.6595452726835055E-31
        0xf59d1b1457d2bd0L
        0x6776fe6575d4eb3dL    # 2.5612195686199393E190
        -0x660438f1668bec17L
        -0x61d303301e3be109L    # -2.516887647587867E-163
    .end array-data

    .line 196
    :array_7
    .array-data 8
        -0x5c093940c58a10a1L
        -0x4f010633027b055cL    # -1.0957295332530228E-72
        -0x62882299c288f302L
        -0x2867340c4b970226L    # -9.541398731956652E113
        0x1bc4a6668a0e4465L    # 6.522778463246742E-175
        0x7ed7d434e5807407L    # 1.02131623536852E303
        0x548fc1acd4ec44d6L    # 2.170610083874673E99
        0x266e17546aa18ff8L    # 1.422493577730732E-123
    .end array-data

    .line 206
    :array_8
    .array-data 8
        0x4903adff749c51ceL    # 5.485893890549328E43
        0xd95de399746df03L
        -0x702e6cbed8386432L
        -0x65daa9d600cad34fL
        0x5db62599df6ca7b0L    # 2.7006635905297533E143
        -0x1541c6b3562a3c0cL    # -1.5161650890352393E206
        -0x66eeed38e58a4addL    # -6.13114337881356E-188
        -0x51e75bf499f033cdL    # -1.238671206473047E-86
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "blockSizeBits"    # I
    .param p2, "outputSizeBits"    # I

    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->singleByte:[B

    .line 518
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    .line 520
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Output size must be a multiple of 8 bits. :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_0
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->outputSizeBytes:I

    .line 525
    new-instance v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->threefish:Lorg/spongycastle/crypto/engines/ThreefishEngine;

    .line 526
    new-instance v0, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->threefish:Lorg/spongycastle/crypto/engines/ThreefishEngine;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->getBlockSize()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;-><init>(Lorg/spongycastle/crypto/digests/SkeinEngine;I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubi:Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;

    .line 527
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SkeinEngine;)V
    .locals 2
    .param p1, "engine"    # Lorg/spongycastle/crypto/digests/SkeinEngine;

    .prologue
    .line 534
    invoke-virtual {p1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getOutputSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;-><init>(II)V

    .line 535
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->copyIn(Lorg/spongycastle/crypto/digests/SkeinEngine;)V

    .line 536
    return-void
.end method

.method private checkInitialised()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubi:Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;

    if-nez v0, :cond_0

    .line 738
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Skein engine is not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 740
    :cond_0
    return-void
.end method

.method private static clone([Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;)[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;
    .locals 4
    .param p0, "data"    # [Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;
    .param p1, "existing"    # [Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    .prologue
    const/4 v3, 0x0

    .line 550
    if-nez p0, :cond_0

    .line 552
    const/4 v1, 0x0

    move-object v0, p1

    .line 559
    .end local p1    # "existing":[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;
    .local v0, "existing":[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;
    :goto_0
    return-object v1

    .line 554
    .end local v0    # "existing":[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;
    .restart local p1    # "existing":[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;
    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    array-length v2, p0

    if-eq v1, v2, :cond_2

    .line 556
    :cond_1
    array-length v1, p0

    new-array p1, v1, [Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    .line 558
    :cond_2
    array-length v1, p1

    invoke-static {p0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    .end local p1    # "existing":[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;
    .restart local v0    # "existing":[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;
    move-object v1, p1

    .line 559
    goto :goto_0
.end method

.method private copyIn(Lorg/spongycastle/crypto/digests/SkeinEngine;)V
    .locals 2
    .param p1, "engine"    # Lorg/spongycastle/crypto/digests/SkeinEngine;

    .prologue
    .line 540
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubi:Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;

    iget-object v1, p1, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubi:Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->reset(Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;)V

    .line 541
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SkeinEngine;->chain:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->chain:[J

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->clone([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->chain:[J

    .line 542
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SkeinEngine;->initialState:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->initialState:[J

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->clone([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->initialState:[J

    .line 543
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SkeinEngine;->key:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->key:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->clone([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->key:[B

    .line 544
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SkeinEngine;->preMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->preMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->clone([Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;)[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->preMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    .line 545
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SkeinEngine;->postMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->postMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->clone([Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;)[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->postMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    .line 546
    return-void
.end method

.method private createInitialState()V
    .locals 8

    .prologue
    .line 673
    sget-object v3, Lorg/spongycastle/crypto/digests/SkeinEngine;->INITIAL_STATES:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v4

    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getOutputSize()I

    move-result v5

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/digests/SkeinEngine;->variantIdentifier(II)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    move-object v2, v3

    check-cast v2, [J

    .line 674
    .local v2, "precalc":[J
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->key:[B

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 677
    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([J)[J

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->chain:[J

    .line 695
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->preMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    if-eqz v3, :cond_2

    .line 697
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->preMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 699
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->preMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    aget-object v1, v3, v0

    .line 700
    .local v1, "param":Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;->getType()I

    move-result v3

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;->getValue()[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubiComplete(I[B)V

    .line 697
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 682
    .end local v0    # "i":I
    .end local v1    # "param":Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [J

    iput-object v3, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->chain:[J

    .line 685
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->key:[B

    if-eqz v3, :cond_1

    .line 687
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->key:[B

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubiComplete(I[B)V

    .line 691
    :cond_1
    const/4 v3, 0x4

    new-instance v4, Lorg/spongycastle/crypto/digests/SkeinEngine$Configuration;

    iget v5, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->outputSizeBytes:I

    mul-int/lit8 v5, v5, 0x8

    int-to-long v6, v5

    invoke-direct {v4, v6, v7}, Lorg/spongycastle/crypto/digests/SkeinEngine$Configuration;-><init>(J)V

    invoke-virtual {v4}, Lorg/spongycastle/crypto/digests/SkeinEngine$Configuration;->getBytes()[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubiComplete(I[B)V

    goto :goto_0

    .line 703
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->chain:[J

    invoke-static {v3}, Lorg/spongycastle/util/Arrays;->clone([J)[J

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->initialState:[J

    .line 704
    return-void
.end method

.method private initParams(Ljava/util/Hashtable;)V
    .locals 7
    .param p1, "parameters"    # Ljava/util/Hashtable;

    .prologue
    .line 617
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 618
    .local v0, "keys":Ljava/util/Enumeration;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 619
    .local v2, "pre":Ljava/util/Vector;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 621
    .local v1, "post":Ljava/util/Vector;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 623
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 624
    .local v3, "type":Ljava/lang/Integer;
    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v4, v5

    check-cast v4, [B

    .line 626
    .local v4, "value":[B
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    .line 628
    iput-object v4, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->key:[B

    goto :goto_0

    .line 630
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x30

    if-ge v5, v6, :cond_1

    .line 632
    new-instance v5, Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6, v4}, Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;-><init>(I[B)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 636
    :cond_1
    new-instance v5, Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6, v4}, Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;-><init>(I[B)V

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 639
    .end local v3    # "type":Ljava/lang/Integer;
    .end local v4    # "value":[B
    :cond_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    iput-object v5, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->preMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    .line 640
    iget-object v5, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->preMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 641
    iget-object v5, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->preMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    invoke-static {v5}, Lorg/spongycastle/crypto/digests/SkeinEngine;->sort([Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;)V

    .line 643
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    iput-object v5, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->postMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    .line 644
    iget-object v5, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->postMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 645
    iget-object v5, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->postMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    invoke-static {v5}, Lorg/spongycastle/crypto/digests/SkeinEngine;->sort([Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;)V

    .line 646
    return-void
.end method

.method private static initialState(II[J)V
    .locals 3
    .param p0, "blockSize"    # I
    .param p1, "outputSize"    # I
    .param p2, "state"    # [J

    .prologue
    .line 219
    sget-object v0, Lorg/spongycastle/crypto/digests/SkeinEngine;->INITIAL_STATES:Ljava/util/Hashtable;

    div-int/lit8 v1, p0, 0x8

    div-int/lit8 v2, p1, 0x8

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/digests/SkeinEngine;->variantIdentifier(II)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method private output(J[BII)V
    .locals 11
    .param p1, "outputSequence"    # J
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .param p5, "outputBytes"    # I

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 791
    new-array v0, v9, [B

    .line 792
    .local v0, "currentBytes":[B
    invoke-static {p1, p2, v0, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->wordToBytes(J[BI)V

    .line 796
    iget-object v5, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->chain:[J

    array-length v5, v5

    new-array v2, v5, [J

    .line 797
    .local v2, "outputWords":[J
    const/16 v5, 0x3f

    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubiInit(I)V

    .line 798
    iget-object v5, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubi:Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;

    array-length v6, v0

    invoke-virtual {v5, v0, v8, v6, v2}, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->update([BII[J)V

    .line 799
    iget-object v5, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubi:Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;

    invoke-virtual {v5, v2}, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->doFinal([J)V

    .line 801
    add-int/lit8 v5, p5, 0x8

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v4, v5, 0x8

    .line 802
    .local v4, "wordsRequired":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 804
    mul-int/lit8 v5, v1, 0x8

    sub-int v5, p5, v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 805
    .local v3, "toWrite":I
    if-ne v3, v9, :cond_0

    .line 807
    aget-wide v6, v2, v1

    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v5, p4

    invoke-static {v6, v7, p3, v5}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->wordToBytes(J[BI)V

    .line 802
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 811
    :cond_0
    aget-wide v6, v2, v1

    invoke-static {v6, v7, v0, v8}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->wordToBytes(J[BI)V

    .line 812
    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v5, p4

    invoke-static {v0, v8, p3, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 815
    .end local v3    # "toWrite":I
    :cond_1
    return-void
.end method

.method private static sort([Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;)V
    .locals 5
    .param p0, "params"    # [Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    .prologue
    .line 650
    if-nez p0, :cond_1

    .line 666
    :cond_0
    return-void

    .line 655
    :cond_1
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 657
    aget-object v2, p0, v1

    .line 658
    .local v2, "param":Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;
    move v0, v1

    .line 659
    .local v0, "hole":I
    :goto_1
    if-lez v0, :cond_2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;->getType()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;->getType()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 661
    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    aput-object v3, p0, v0

    .line 662
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 664
    :cond_2
    aput-object v2, p0, v0

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private ubiComplete(I[B)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "value"    # [B

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubiInit(I)V

    .line 720
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubi:Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;

    const/4 v1, 0x0

    array-length v2, p2

    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->chain:[J

    invoke-virtual {v0, p2, v1, v2, v3}, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->update([BII[J)V

    .line 721
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubiFinal()V

    .line 722
    return-void
.end method

.method private ubiFinal()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubi:Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->chain:[J

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->doFinal([J)V

    .line 732
    return-void
.end method

.method private ubiInit(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 726
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubi:Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->reset(I)V

    .line 727
    return-void
.end method

.method private static variantIdentifier(II)Ljava/lang/Integer;
    .locals 2
    .param p0, "blockSizeBytes"    # I
    .param p1, "outputSizeBytes"    # I

    .prologue
    .line 224
    new-instance v0, Ljava/lang/Integer;

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .prologue
    .line 564
    new-instance v0, Lorg/spongycastle/crypto/digests/SkeinEngine;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;-><init>(Lorg/spongycastle/crypto/digests/SkeinEngine;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 10
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 756
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->checkInitialised()V

    .line 757
    array-length v1, p1

    iget v2, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->outputSizeBytes:I

    add-int/2addr v2, p2

    if-ge v1, v2, :cond_0

    .line 759
    new-instance v1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v2, "Output buffer is too short to hold output"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 763
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubiFinal()V

    .line 766
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->postMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    if-eqz v1, :cond_1

    .line 768
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->postMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    array-length v1, v1

    if-ge v8, v1, :cond_1

    .line 770
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->postMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    aget-object v9, v1, v8

    .line 771
    .local v9, "param":Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;
    invoke-virtual {v9}, Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;->getType()I

    move-result v1

    invoke-virtual {v9}, Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;->getValue()[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubiComplete(I[B)V

    .line 768
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 776
    .end local v8    # "i":I
    .end local v9    # "param":Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v0

    .line 777
    .local v0, "blockSize":I
    iget v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->outputSizeBytes:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int v7, v1, v0

    .line 778
    .local v7, "blocksRequired":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    if-ge v8, v7, :cond_2

    .line 780
    iget v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->outputSizeBytes:I

    mul-int v2, v8, v0

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 781
    .local v6, "toWrite":I
    int-to-long v2, v8

    mul-int v1, v8, v0

    add-int v5, p2, v1

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/digests/SkeinEngine;->output(J[BII)V

    .line 778
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 784
    .end local v6    # "toWrite":I
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->reset()V

    .line 786
    iget v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->outputSizeBytes:I

    return v1
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->threefish:Lorg/spongycastle/crypto/engines/ThreefishEngine;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputSize()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->outputSizeBytes:I

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/params/SkeinParameters;)V
    .locals 3
    .param p1, "params"    # Lorg/spongycastle/crypto/params/SkeinParameters;

    .prologue
    const/4 v1, 0x0

    .line 595
    iput-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->chain:[J

    .line 596
    iput-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->key:[B

    .line 597
    iput-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->preMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    .line 598
    iput-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->postMessageParameters:[Lorg/spongycastle/crypto/digests/SkeinEngine$Parameter;

    .line 600
    if-eqz p1, :cond_1

    .line 602
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/SkeinParameters;->getKey()[B

    move-result-object v0

    .line 603
    .local v0, "key":[B
    array-length v1, v0

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 605
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Skein key must be at least 128 bits."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 607
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/SkeinParameters;->getParameters()Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->initParams(Ljava/util/Hashtable;)V

    .line 609
    .end local v0    # "key":[B
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->createInitialState()V

    .line 612
    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubiInit(I)V

    .line 613
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 712
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->initialState:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->chain:[J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->chain:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 714
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubiInit(I)V

    .line 715
    return-void
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 3
    .param p1, "other"    # Lorg/spongycastle/util/Memoable;

    .prologue
    .line 569
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/SkeinEngine;

    .line 570
    .local v0, "s":Lorg/spongycastle/crypto/digests/SkeinEngine;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v1

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->getBlockSize()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->outputSizeBytes:I

    iget v2, v0, Lorg/spongycastle/crypto/digests/SkeinEngine;->outputSizeBytes:I

    if-eq v1, v2, :cond_1

    .line 572
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incompatible parameters in provided SkeinEngine."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    :cond_1
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->copyIn(Lorg/spongycastle/crypto/digests/SkeinEngine;)V

    .line 575
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "in"    # B

    .prologue
    const/4 v2, 0x0

    .line 744
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->singleByte:[B

    aput-byte p1, v0, v2

    .line 745
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine;->update([BII)V

    .line 746
    return-void
.end method

.method public update([BII)V
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 750
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/SkeinEngine;->checkInitialised()V

    .line 751
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->ubi:Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SkeinEngine;->chain:[J

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/spongycastle/crypto/digests/SkeinEngine$UBI;->update([BII[J)V

    .line 752
    return-void
.end method
