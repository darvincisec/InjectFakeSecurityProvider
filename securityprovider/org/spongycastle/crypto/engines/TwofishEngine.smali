.class public final Lorg/spongycastle/crypto/engines/TwofishEngine;
.super Ljava/lang/Object;
.source "TwofishEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final GF256_FDBK:I = 0x169

.field private static final GF256_FDBK_2:I = 0xb4

.field private static final GF256_FDBK_4:I = 0x5a

.field private static final INPUT_WHITEN:I = 0x0

.field private static final MAX_KEY_BITS:I = 0x100

.field private static final MAX_ROUNDS:I = 0x10

.field private static final OUTPUT_WHITEN:I = 0x4

.field private static final P:[[B

.field private static final P_00:I = 0x1

.field private static final P_01:I = 0x0

.field private static final P_02:I = 0x0

.field private static final P_03:I = 0x1

.field private static final P_04:I = 0x1

.field private static final P_10:I = 0x0

.field private static final P_11:I = 0x0

.field private static final P_12:I = 0x1

.field private static final P_13:I = 0x1

.field private static final P_14:I = 0x0

.field private static final P_20:I = 0x1

.field private static final P_21:I = 0x1

.field private static final P_22:I = 0x0

.field private static final P_23:I = 0x0

.field private static final P_24:I = 0x0

.field private static final P_30:I = 0x0

.field private static final P_31:I = 0x1

.field private static final P_32:I = 0x1

.field private static final P_33:I = 0x0

.field private static final P_34:I = 0x1

.field private static final ROUNDS:I = 0x10

.field private static final ROUND_SUBKEYS:I = 0x8

.field private static final RS_GF_FDBK:I = 0x14d

.field private static final SK_BUMP:I = 0x1010101

.field private static final SK_ROTL:I = 0x9

.field private static final SK_STEP:I = 0x2020202

.field private static final TOTAL_SUBKEYS:I = 0x28


# instance fields
.field private encrypting:Z

.field private gMDS0:[I

.field private gMDS1:[I

.field private gMDS2:[I

.field private gMDS3:[I

.field private gSBox:[I

.field private gSubKeys:[I

.field private k64Cnt:I

.field private workingKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        0x67t
        -0x4dt
        -0x18t
        0x4t
        -0x3t
        -0x5dt
        0x76t
        -0x66t
        -0x6et
        -0x80t
        0x78t
        -0x1ct
        -0x23t
        -0x2ft
        0x38t
        0xdt
        -0x3at
        0x35t
        -0x68t
        0x18t
        -0x9t
        -0x14t
        0x6ct
        0x43t
        0x75t
        0x37t
        0x26t
        -0x6t
        0x13t
        -0x6ct
        0x48t
        -0xet
        -0x30t
        -0x75t
        0x30t
        -0x7ct
        0x54t
        -0x21t
        0x23t
        0x19t
        0x5bt
        0x3dt
        0x59t
        -0xdt
        -0x52t
        -0x5et
        -0x7et
        0x63t
        0x1t
        -0x7dt
        0x2et
        -0x27t
        0x51t
        -0x65t
        0x7ct
        -0x5at
        -0x15t
        -0x5bt
        -0x42t
        0x16t
        0xct
        -0x1dt
        0x61t
        -0x40t
        -0x74t
        0x3at
        -0xbt
        0x73t
        0x2ct
        0x25t
        0xbt
        -0x45t
        0x4et
        -0x77t
        0x6bt
        0x53t
        0x6at
        -0x4ct
        -0xft
        -0x1ft
        -0x1at
        -0x43t
        0x45t
        -0x1et
        -0xct
        -0x4at
        0x66t
        -0x34t
        -0x6bt
        0x3t
        0x56t
        -0x2ct
        0x1ct
        0x1et
        -0x29t
        -0x5t
        -0x3dt
        -0x72t
        -0x4bt
        -0x17t
        -0x31t
        -0x41t
        -0x46t
        -0x16t
        0x77t
        0x39t
        -0x51t
        0x33t
        -0x37t
        0x62t
        0x71t
        -0x7ft
        0x79t
        0x9t
        -0x53t
        0x24t
        -0x33t
        -0x7t
        -0x28t
        -0x1bt
        -0x3bt
        -0x47t
        0x4dt
        0x44t
        0x8t
        -0x7at
        -0x19t
        -0x5ft
        0x1dt
        -0x56t
        -0x13t
        0x6t
        0x70t
        -0x4et
        -0x2et
        0x41t
        0x7bt
        -0x60t
        0x11t
        0x31t
        -0x3et
        0x27t
        -0x70t
        0x20t
        -0xat
        0x60t
        -0x1t
        -0x6at
        0x5ct
        -0x4ft
        -0x55t
        -0x62t
        -0x64t
        0x52t
        0x1bt
        0x5ft
        -0x6dt
        0xat
        -0x11t
        -0x6ft
        -0x7bt
        0x49t
        -0x12t
        0x2dt
        0x4ft
        -0x71t
        0x3bt
        0x47t
        -0x79t
        0x6dt
        0x46t
        -0x2at
        0x3et
        0x69t
        0x64t
        0x2at
        -0x32t
        -0x35t
        0x2ft
        -0x4t
        -0x69t
        0x5t
        0x7at
        -0x54t
        0x7ft
        -0x2bt
        0x1at
        0x4bt
        0xet
        -0x59t
        0x5at
        0x28t
        0x14t
        0x3ft
        0x29t
        -0x78t
        0x3ct
        0x4ct
        0x2t
        -0x48t
        -0x26t
        -0x50t
        0x17t
        0x55t
        0x1ft
        -0x76t
        0x7dt
        0x57t
        -0x39t
        -0x73t
        0x74t
        -0x49t
        -0x3ct
        -0x61t
        0x72t
        0x7et
        0x15t
        0x22t
        0x12t
        0x58t
        0x7t
        -0x67t
        0x34t
        0x6et
        0x50t
        -0x22t
        0x68t
        0x65t
        -0x44t
        -0x25t
        -0x8t
        -0x38t
        -0x58t
        0x2bt
        0x40t
        -0x24t
        -0x2t
        0x32t
        -0x5ct
        -0x36t
        0x10t
        0x21t
        -0x10t
        -0x2dt
        0x5dt
        0xft
        0x0t
        0x6ft
        -0x63t
        0x36t
        0x42t
        0x4at
        0x5et
        -0x3ft
        -0x20t
    .end array-data

    :array_1
    .array-data 1
        0x75t
        -0xdt
        -0x3at
        -0xct
        -0x25t
        0x7bt
        -0x5t
        -0x38t
        0x4at
        -0x2dt
        -0x1at
        0x6bt
        0x45t
        0x7dt
        -0x18t
        0x4bt
        -0x2at
        0x32t
        -0x28t
        -0x3t
        0x37t
        0x71t
        -0xft
        -0x1ft
        0x30t
        0xft
        -0x8t
        0x1bt
        -0x79t
        -0x6t
        0x6t
        0x3ft
        0x5et
        -0x46t
        -0x52t
        0x5bt
        -0x76t
        0x0t
        -0x44t
        -0x63t
        0x6dt
        -0x3ft
        -0x4ft
        0xet
        -0x80t
        0x5dt
        -0x2et
        -0x2bt
        -0x60t
        -0x7ct
        0x7t
        0x14t
        -0x4bt
        -0x70t
        0x2ct
        -0x5dt
        -0x4et
        0x73t
        0x4ct
        0x54t
        -0x6et
        0x74t
        0x36t
        0x51t
        0x38t
        -0x50t
        -0x43t
        0x5at
        -0x4t
        0x60t
        0x62t
        -0x6at
        0x6ct
        0x42t
        -0x9t
        0x10t
        0x7ct
        0x28t
        0x27t
        -0x74t
        0x13t
        -0x6bt
        -0x64t
        -0x39t
        0x24t
        0x46t
        0x3bt
        0x70t
        -0x36t
        -0x1dt
        -0x7bt
        -0x35t
        0x11t
        -0x30t
        -0x6dt
        -0x48t
        -0x5at
        -0x7dt
        0x20t
        -0x1t
        -0x61t
        0x77t
        -0x3dt
        -0x34t
        0x3t
        0x6ft
        0x8t
        -0x41t
        0x40t
        -0x19t
        0x2bt
        -0x1et
        0x79t
        0xct
        -0x56t
        -0x7et
        0x41t
        0x3at
        -0x16t
        -0x47t
        -0x1ct
        -0x66t
        -0x5ct
        -0x69t
        0x7et
        -0x26t
        0x7at
        0x17t
        0x66t
        -0x6ct
        -0x5ft
        0x1dt
        0x3dt
        -0x10t
        -0x22t
        -0x4dt
        0xbt
        0x72t
        -0x59t
        0x1ct
        -0x11t
        -0x2ft
        0x53t
        0x3et
        -0x71t
        0x33t
        0x26t
        0x5ft
        -0x14t
        0x76t
        0x2at
        0x49t
        -0x7ft
        -0x78t
        -0x12t
        0x21t
        -0x3ct
        0x1at
        -0x15t
        -0x27t
        -0x3bt
        0x39t
        -0x67t
        -0x33t
        -0x53t
        0x31t
        -0x75t
        0x1t
        0x18t
        0x23t
        -0x23t
        0x1ft
        0x4et
        0x2dt
        -0x7t
        0x48t
        0x4ft
        -0xet
        0x65t
        -0x72t
        0x78t
        0x5ct
        0x58t
        0x19t
        -0x73t
        -0x1bt
        -0x68t
        0x57t
        0x67t
        0x7ft
        0x5t
        0x64t
        -0x51t
        0x63t
        -0x4at
        -0x2t
        -0xbt
        -0x49t
        0x3ct
        -0x5bt
        -0x32t
        -0x17t
        0x68t
        0x44t
        -0x20t
        0x4dt
        0x43t
        0x69t
        0x29t
        0x2et
        -0x54t
        0x15t
        0x59t
        -0x58t
        0xat
        -0x62t
        0x6et
        0x47t
        -0x21t
        0x34t
        0x35t
        0x6at
        -0x31t
        -0x24t
        0x22t
        -0x37t
        -0x40t
        -0x65t
        -0x77t
        -0x2ct
        -0x13t
        -0x55t
        0x12t
        -0x5et
        0xdt
        0x52t
        -0x45t
        0x2t
        0x2ft
        -0x57t
        -0x29t
        0x61t
        0x1et
        -0x4ct
        0x50t
        0x4t
        -0xat
        -0x3et
        0x16t
        0x25t
        -0x7at
        0x56t
        0x55t
        0x9t
        -0x42t
        -0x6ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v6, 0x2

    const/16 v10, 0x100

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-boolean v8, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->encrypting:Z

    .line 209
    new-array v5, v10, [I

    iput-object v5, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    .line 210
    new-array v5, v10, [I

    iput-object v5, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    .line 211
    new-array v5, v10, [I

    iput-object v5, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    .line 212
    new-array v5, v10, [I

    iput-object v5, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    .line 221
    iput v8, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    .line 223
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 228
    new-array v2, v6, [I

    .line 229
    .local v2, "m1":[I
    new-array v3, v6, [I

    .line 230
    .local v3, "mX":[I
    new-array v4, v6, [I

    .line 233
    .local v4, "mY":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_0

    .line 235
    sget-object v5, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v5, v5, v8

    aget-byte v5, v5, v0

    and-int/lit16 v1, v5, 0xff

    .line 236
    .local v1, "j":I
    aput v1, v2, v8

    .line 237
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v8

    .line 238
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v8

    .line 240
    sget-object v5, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    aget-object v5, v5, v9

    aget-byte v5, v5, v0

    and-int/lit16 v1, v5, 0xff

    .line 241
    aput v1, v2, v9

    .line 242
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Mx_X(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v9

    .line 243
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Mx_Y(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v9

    .line 245
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    aget v6, v2, v9

    aget v7, v3, v9

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v4, v9

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v4, v9

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 248
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    aget v6, v4, v8

    aget v7, v4, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v3, v8

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v2, v8

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 251
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    aget v6, v3, v9

    aget v7, v4, v9

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v2, v9

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v4, v9

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 254
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    aget v6, v3, v8

    aget v7, v2, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    aget v7, v4, v8

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    aget v7, v3, v8

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v6, v7

    aput v6, v5, v0

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 257
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method private Bits32ToBytes(I[BI)V
    .locals 2
    .param p1, "in"    # I
    .param p2, "b"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 675
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 676
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 677
    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 678
    add-int/lit8 v0, p3, 0x3

    shr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 679
    return-void
.end method

.method private BytesTo32Bits([BI)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "p"    # I

    .prologue
    .line 667
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private F32(I[I)I
    .locals 14
    .param p1, "x"    # I
    .param p2, "k32"    # [I

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v0

    .line 526
    .local v0, "b0":I
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v1

    .line 527
    .local v1, "b1":I
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v2

    .line 528
    .local v2, "b2":I
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v3

    .line 529
    .local v3, "b3":I
    const/4 v9, 0x0

    aget v4, p2, v9

    .line 530
    .local v4, "k0":I
    const/4 v9, 0x1

    aget v5, p2, v9

    .line 531
    .local v5, "k1":I
    const/4 v9, 0x2

    aget v6, p2, v9

    .line 532
    .local v6, "k2":I
    const/4 v9, 0x3

    aget v7, p2, v9

    .line 534
    .local v7, "k3":I
    const/4 v8, 0x0

    .line 535
    .local v8, "result":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    and-int/lit8 v9, v9, 0x3

    packed-switch v9, :pswitch_data_0

    .line 561
    :goto_0
    return v8

    .line 538
    :pswitch_0
    iget-object v9, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v10, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x0

    aget-object v10, v10, v11

    aget-byte v10, v10, v0

    and-int/lit16 v10, v10, 0xff

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v11

    xor-int/2addr v10, v11

    aget v9, v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v11, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-byte v11, v11, v1

    and-int/lit16 v11, v11, 0xff

    .line 539
    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v11, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-byte v11, v11, v2

    and-int/lit16 v11, v11, 0xff

    .line 540
    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v11, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    aget-byte v11, v11, v3

    and-int/lit16 v11, v11, 0xff

    .line 541
    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int v8, v9, v10

    .line 542
    goto :goto_0

    .line 544
    :pswitch_1
    sget-object v9, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v0

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v10

    xor-int v0, v9, v10

    .line 545
    sget-object v9, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v1

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v10

    xor-int v1, v9, v10

    .line 546
    sget-object v9, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v10

    xor-int v2, v9, v10

    .line 547
    sget-object v9, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v3

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v10

    xor-int v3, v9, v10

    .line 549
    :pswitch_2
    sget-object v9, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v0

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v10

    xor-int v0, v9, v10

    .line 550
    sget-object v9, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x1

    aget-object v9, v9, v10

    aget-byte v9, v9, v1

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v10

    xor-int v1, v9, v10

    .line 551
    sget-object v9, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v2

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v10

    xor-int v2, v9, v10

    .line 552
    sget-object v9, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v10, 0x0

    aget-object v9, v9, v10

    aget-byte v9, v9, v3

    and-int/lit16 v9, v9, 0xff

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v10

    xor-int v3, v9, v10

    .line 554
    :pswitch_3
    iget-object v9, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    sget-object v10, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    aget-byte v11, v11, v0

    and-int/lit16 v11, v11, 0xff

    .line 555
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v11

    xor-int/2addr v10, v11

    aget v9, v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    sget-object v11, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x0

    aget-object v11, v11, v12

    sget-object v12, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aget-byte v12, v12, v1

    and-int/lit16 v12, v12, 0xff

    .line 556
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    sget-object v11, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aget-byte v12, v12, v2

    and-int/lit16 v12, v12, 0xff

    .line 557
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    sget-object v11, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aget-byte v12, v12, v3

    and-int/lit16 v12, v12, 0xff

    .line 558
    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v13

    xor-int/2addr v12, v13

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v12

    xor-int/2addr v11, v12

    aget v10, v10, v11

    xor-int v8, v9, v10

    goto/16 :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private Fe32_0(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 651
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v1, p1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private Fe32_3(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x200

    aget v1, v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0x201

    aget v1, v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private LFSR1(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 608
    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0xb4

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private LFSR2(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    const/4 v0, 0x0

    .line 614
    shr-int/lit8 v2, p1, 0x2

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0xb4

    :goto_0
    xor-int/2addr v1, v2

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    const/16 v0, 0x5a

    :cond_0
    xor-int/2addr v0, v1

    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private Mx_X(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v0

    xor-int/2addr v0, p1

    return v0
.end method

.method private Mx_Y(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->LFSR1(I)I

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->LFSR2(I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private RS_MDS_Encode(II)I
    .locals 3
    .param p1, "k0"    # I
    .param p2, "k1"    # I

    .prologue
    const/4 v2, 0x4

    .line 575
    move v1, p2

    .line 576
    .local v1, "r":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 578
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result v1

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    :cond_0
    xor-int/2addr v1, p1

    .line 581
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 583
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->RS_rem(I)I

    move-result v1

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 586
    :cond_1
    return v1
.end method

.method private RS_rem(I)I
    .locals 6
    .param p1, "x"    # I

    .prologue
    const/4 v3, 0x0

    .line 598
    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v0, v4, 0xff

    .line 599
    .local v0, "b":I
    shl-int/lit8 v5, v0, 0x1

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_1

    const/16 v4, 0x14d

    :goto_0
    xor-int/2addr v4, v5

    and-int/lit16 v1, v4, 0xff

    .line 601
    .local v1, "g2":I
    ushr-int/lit8 v4, v0, 0x1

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/16 v3, 0xa6

    :cond_0
    xor-int/2addr v3, v4

    xor-int v2, v3, v1

    .line 603
    .local v2, "g3":I
    shl-int/lit8 v3, p1, 0x8

    shl-int/lit8 v4, v2, 0x18

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v1, 0x10

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x8

    xor-int/2addr v3, v4

    xor-int/2addr v3, v0

    return v3

    .end local v1    # "g2":I
    .end local v2    # "g3":I
    :cond_1
    move v4, v3

    .line 599
    goto :goto_0
.end method

.method private b0(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 631
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private b1(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 636
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b2(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 641
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private b3(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 646
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private decryptBlock([BI[BI)V
    .locals 14
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [B
    .param p4, "dstIndex"    # I

    .prologue
    .line 490
    invoke-direct/range {p0 .. p2}, Lorg/spongycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    xor-int v9, v11, v12

    .line 491
    .local v9, "x2":I
    add-int/lit8 v11, p2, 0x4

    invoke-direct {p0, p1, v11}, Lorg/spongycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    xor-int v10, v11, v12

    .line 492
    .local v10, "x3":I
    add-int/lit8 v11, p2, 0x8

    invoke-direct {p0, p1, v11}, Lorg/spongycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    xor-int v7, v11, v12

    .line 493
    .local v7, "x0":I
    add-int/lit8 v11, p2, 0xc

    invoke-direct {p0, p1, v11}, Lorg/spongycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    xor-int v8, v11, v12

    .line 495
    .local v8, "x1":I
    const/16 v2, 0x27

    .line 497
    .local v2, "k":I
    const/4 v4, 0x0

    .local v4, "r":I
    move v3, v2

    .end local v2    # "k":I
    .local v3, "k":I
    :goto_0
    const/16 v11, 0x10

    if-ge v4, v11, :cond_0

    .line 499
    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v5

    .line 500
    .local v5, "t0":I
    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    .line 501
    .local v6, "t1":I
    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget v12, v12, v3

    add-int/2addr v11, v12

    xor-int/2addr v8, v11

    .line 502
    shl-int/lit8 v11, v7, 0x1

    ushr-int/lit8 v12, v7, 0x1f

    or-int/2addr v11, v12

    add-int v12, v5, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v3, v2, -0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget v13, v13, v2

    add-int/2addr v12, v13

    xor-int v7, v11, v12

    .line 503
    ushr-int/lit8 v11, v8, 0x1

    shl-int/lit8 v12, v8, 0x1f

    or-int v8, v11, v12

    .line 505
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v5

    .line 506
    invoke-direct {p0, v8}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    .line 507
    mul-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v2, v3, -0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget v12, v12, v3

    add-int/2addr v11, v12

    xor-int/2addr v10, v11

    .line 508
    shl-int/lit8 v11, v9, 0x1

    ushr-int/lit8 v12, v9, 0x1f

    or-int/2addr v11, v12

    add-int v12, v5, v6

    iget-object v13, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v3, v2, -0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget v13, v13, v2

    add-int/2addr v12, v13

    xor-int v9, v11, v12

    .line 509
    ushr-int/lit8 v11, v10, 0x1

    shl-int/lit8 v12, v10, 0x1f

    or-int v10, v11, v12

    .line 497
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 512
    .end local v5    # "t0":I
    .end local v6    # "t1":I
    :cond_0
    iget-object v11, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    xor-int/2addr v11, v7

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v11, v0, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 513
    iget-object v11, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    xor-int/2addr v11, v8

    add-int/lit8 v12, p4, 0x4

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 514
    iget-object v11, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    xor-int/2addr v11, v9

    add-int/lit8 v12, p4, 0x8

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 515
    iget-object v11, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    xor-int/2addr v11, v10

    add-int/lit8 v12, p4, 0xc

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 516
    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 14
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "dst"    # [B
    .param p4, "dstIndex"    # I

    .prologue
    .line 451
    invoke-direct/range {p0 .. p2}, Lorg/spongycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    xor-int v7, v11, v12

    .line 452
    .local v7, "x0":I
    add-int/lit8 v11, p2, 0x4

    invoke-direct {p0, p1, v11}, Lorg/spongycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    xor-int v8, v11, v12

    .line 453
    .local v8, "x1":I
    add-int/lit8 v11, p2, 0x8

    invoke-direct {p0, p1, v11}, Lorg/spongycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    xor-int v9, v11, v12

    .line 454
    .local v9, "x2":I
    add-int/lit8 v11, p2, 0xc

    invoke-direct {p0, p1, v11}, Lorg/spongycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v11

    iget-object v12, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    xor-int v10, v11, v12

    .line 456
    .local v10, "x3":I
    const/16 v2, 0x8

    .line 458
    .local v2, "k":I
    const/4 v4, 0x0

    .local v4, "r":I
    move v3, v2

    .end local v2    # "k":I
    .local v3, "k":I
    :goto_0
    const/16 v11, 0x10

    if-ge v4, v11, :cond_0

    .line 460
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v5

    .line 461
    .local v5, "t0":I
    invoke-direct {p0, v8}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    .line 462
    .local v6, "t1":I
    add-int v11, v5, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget v12, v12, v3

    add-int/2addr v11, v12

    xor-int/2addr v9, v11

    .line 463
    ushr-int/lit8 v11, v9, 0x1

    shl-int/lit8 v12, v9, 0x1f

    or-int v9, v11, v12

    .line 464
    shl-int/lit8 v11, v10, 0x1

    ushr-int/lit8 v12, v10, 0x1f

    or-int/2addr v11, v12

    mul-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget v13, v13, v2

    add-int/2addr v12, v13

    xor-int v10, v11, v12

    .line 466
    invoke-direct {p0, v9}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Fe32_0(I)I

    move-result v5

    .line 467
    invoke-direct {p0, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Fe32_3(I)I

    move-result v6

    .line 468
    add-int v11, v5, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget v12, v12, v3

    add-int/2addr v11, v12

    xor-int/2addr v7, v11

    .line 469
    ushr-int/lit8 v11, v7, 0x1

    shl-int/lit8 v12, v7, 0x1f

    or-int v7, v11, v12

    .line 470
    shl-int/lit8 v11, v8, 0x1

    ushr-int/lit8 v12, v8, 0x1f

    or-int/2addr v11, v12

    mul-int/lit8 v12, v6, 0x2

    add-int/2addr v12, v5

    iget-object v13, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget v13, v13, v2

    add-int/2addr v12, v13

    xor-int v8, v11, v12

    .line 458
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 473
    .end local v5    # "t0":I
    .end local v6    # "t1":I
    :cond_0
    iget-object v11, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x4

    aget v11, v11, v12

    xor-int/2addr v11, v9

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v11, v0, v1}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 474
    iget-object v11, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x5

    aget v11, v11, v12

    xor-int/2addr v11, v10

    add-int/lit8 v12, p4, 0x4

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 475
    iget-object v11, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x6

    aget v11, v11, v12

    xor-int/2addr v11, v7

    add-int/lit8 v12, p4, 0x8

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 476
    iget-object v11, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    const/4 v12, 0x7

    aget v11, v11, v12

    xor-int/2addr v11, v8

    add-int/lit8 v12, p4, 0xc

    move-object/from16 v0, p3

    invoke-direct {p0, v11, v0, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->Bits32ToBytes(I[BI)V

    .line 477
    return-void
.end method

.method private setKey([B)V
    .locals 25
    .param p1, "key"    # [B

    .prologue
    .line 341
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v14, v0, [I

    .line 342
    .local v14, "k32e":[I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v15, v0, [I

    .line 344
    .local v15, "k32o":[I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 345
    .local v18, "sBoxKeys":[I
    const/16 v19, 0x28

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 349
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Key size less than 64 bits"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 352
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 354
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Key size larger than 256 bits"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 363
    :cond_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_2

    .line 365
    mul-int/lit8 v16, v9, 0x8

    .line 367
    .local v16, "p":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v19

    aput v19, v14, v9

    .line 368
    add-int/lit8 v19, v16, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/engines/TwofishEngine;->BytesTo32Bits([BI)I

    move-result v19

    aput v19, v15, v9

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    sub-int v19, v19, v9

    aget v20, v14, v9

    aget v21, v15, v9

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/engines/TwofishEngine;->RS_MDS_Encode(II)I

    move-result v20

    aput v20, v18, v19

    .line 363
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 374
    .end local v16    # "p":I
    :cond_2
    const/4 v9, 0x0

    :goto_1
    const/16 v19, 0x14

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 376
    const v19, 0x2020202

    mul-int v17, v9, v19

    .line 377
    .local v17, "q":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v14}, Lorg/spongycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v3

    .line 378
    .local v3, "A":I
    const v19, 0x1010101

    add-int v19, v19, v17

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v15}, Lorg/spongycastle/crypto/engines/TwofishEngine;->F32(I[I)I

    move-result v4

    .line 379
    .local v4, "B":I
    shl-int/lit8 v19, v4, 0x8

    ushr-int/lit8 v20, v4, 0x18

    or-int v4, v19, v20

    .line 380
    add-int/2addr v3, v4

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    aput v3, v19, v20

    .line 382
    add-int/2addr v3, v4

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSubKeys:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    shl-int/lit8 v21, v3, 0x9

    ushr-int/lit8 v22, v3, 0x17

    or-int v21, v21, v22

    aput v21, v19, v20

    .line 374
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 389
    .end local v3    # "A":I
    .end local v4    # "B":I
    .end local v17    # "q":I
    :cond_3
    const/16 v19, 0x0

    aget v10, v18, v19

    .line 390
    .local v10, "k0":I
    const/16 v19, 0x1

    aget v11, v18, v19

    .line 391
    .local v11, "k1":I
    const/16 v19, 0x2

    aget v12, v18, v19

    .line 392
    .local v12, "k2":I
    const/16 v19, 0x3

    aget v13, v18, v19

    .line 394
    .local v13, "k3":I
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    .line 395
    const/4 v9, 0x0

    :goto_2
    const/16 v19, 0x100

    move/from16 v0, v19

    if-ge v9, v0, :cond_4

    .line 397
    move v8, v9

    .local v8, "b3":I
    move v7, v9

    .local v7, "b2":I
    move v6, v9

    .local v6, "b1":I
    move v5, v9

    .line 398
    .local v5, "b0":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x3

    packed-switch v19, :pswitch_data_0

    .line 395
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 401
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    move-object/from16 v21, v0

    sget-object v22, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x0

    aget-object v22, v22, v23

    aget-byte v22, v22, v5

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    move-object/from16 v21, v0

    sget-object v22, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x0

    aget-object v22, v22, v23

    aget-byte v22, v22, v6

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x200

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    move-object/from16 v21, v0

    sget-object v22, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x1

    aget-object v22, v22, v23

    aget-byte v22, v22, v7

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x201

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    move-object/from16 v21, v0

    sget-object v22, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x1

    aget-object v22, v22, v23

    aget-byte v22, v22, v8

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    goto/16 :goto_3

    .line 407
    :pswitch_1
    sget-object v19, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-byte v19, v19, v5

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v20

    xor-int v5, v19, v20

    .line 408
    sget-object v19, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-byte v19, v19, v6

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v20

    xor-int v6, v19, v20

    .line 409
    sget-object v19, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-byte v19, v19, v7

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v20

    xor-int v7, v19, v20

    .line 410
    sget-object v19, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-byte v19, v19, v8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v20

    xor-int v8, v19, v20

    .line 413
    :pswitch_2
    sget-object v19, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-byte v19, v19, v5

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v20

    xor-int v5, v19, v20

    .line 414
    sget-object v19, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x1

    aget-object v19, v19, v20

    aget-byte v19, v19, v6

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v20

    xor-int v6, v19, v20

    .line 415
    sget-object v19, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-byte v19, v19, v7

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v20

    xor-int v7, v19, v20

    .line 416
    sget-object v19, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v20, 0x0

    aget-object v19, v19, v20

    aget-byte v19, v19, v8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v20

    xor-int v8, v19, v20

    .line 419
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS0:[I

    move-object/from16 v21, v0

    sget-object v22, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x0

    aget-object v22, v22, v23

    sget-object v23, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v24, 0x0

    aget-object v23, v23, v24

    aget-byte v23, v23, v5

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    .line 420
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v24

    xor-int v23, v23, v24

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b0(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS1:[I

    move-object/from16 v21, v0

    sget-object v22, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x0

    aget-object v22, v22, v23

    sget-object v23, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v24, 0x1

    aget-object v23, v23, v24

    aget-byte v23, v23, v6

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    .line 422
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v24

    xor-int v23, v23, v24

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b1(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x200

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS2:[I

    move-object/from16 v21, v0

    sget-object v22, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x1

    aget-object v22, v22, v23

    sget-object v23, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v24, 0x0

    aget-object v23, v23, v24

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    .line 424
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v24

    xor-int v23, v23, v24

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b2(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gSBox:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x201

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/TwofishEngine;->gMDS3:[I

    move-object/from16 v21, v0

    sget-object v22, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v23, 0x1

    aget-object v22, v22, v23

    sget-object v23, Lorg/spongycastle/crypto/engines/TwofishEngine;->P:[[B

    const/16 v24, 0x1

    aget-object v23, v23, v24

    aget-byte v23, v23, v8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    .line 426
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v24

    xor-int v23, v23, v24

    aget-byte v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/spongycastle/crypto/engines/TwofishEngine;->b3(I)I

    move-result v23

    xor-int v22, v22, v23

    aget v21, v21, v22

    aput v21, v19, v20

    goto/16 :goto_3

    .line 435
    .end local v5    # "b0":I
    .end local v6    # "b1":I
    .end local v7    # "b2":I
    .end local v8    # "b3":I
    :cond_4
    return-void

    .line 398
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    const-string v0, "Twofish"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 332
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 271
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 273
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->encrypting:Z

    .line 274
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->workingKey:[B

    .line 275
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->workingKey:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->k64Cnt:I

    .line 276
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/TwofishEngine;->setKey([B)V

    .line 278
    return-void

    .line 281
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Twofish init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Twofish not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 302
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 307
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->encrypting:Z

    if-eqz v0, :cond_3

    .line 312
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/TwofishEngine;->encryptBlock([BI[BI)V

    .line 319
    :goto_0
    const/16 v0, 0x10

    return v0

    .line 316
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/TwofishEngine;->decryptBlock([BI[BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->workingKey:[B

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/TwofishEngine;->workingKey:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/TwofishEngine;->setKey([B)V

    .line 328
    :cond_0
    return-void
.end method
