.class public Lorg/spongycastle/crypto/engines/DESEngine;
.super Ljava/lang/Object;
.source "DESEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x8

.field private static final SP1:[I

.field private static final SP2:[I

.field private static final SP3:[I

.field private static final SP4:[I

.field private static final SP5:[I

.field private static final SP6:[I

.field private static final SP7:[I

.field private static final SP8:[I

.field private static final bigbyte:[I

.field private static final bytebit:[S

.field private static final pc1:[B

.field private static final pc2:[B

.field private static final totrot:[B


# instance fields
.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 107
    const/16 v0, 0x8

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/DESEngine;->bytebit:[S

    .line 112
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/engines/DESEngine;->bigbyte:[I

    .line 126
    const/16 v0, 0x38

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/crypto/engines/DESEngine;->pc1:[B

    .line 134
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/spongycastle/crypto/engines/DESEngine;->totrot:[B

    .line 140
    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/spongycastle/crypto/engines/DESEngine;->pc2:[B

    .line 148
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/spongycastle/crypto/engines/DESEngine;->SP1:[I

    .line 167
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lorg/spongycastle/crypto/engines/DESEngine;->SP2:[I

    .line 186
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lorg/spongycastle/crypto/engines/DESEngine;->SP3:[I

    .line 205
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lorg/spongycastle/crypto/engines/DESEngine;->SP4:[I

    .line 224
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    sput-object v0, Lorg/spongycastle/crypto/engines/DESEngine;->SP5:[I

    .line 243
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/spongycastle/crypto/engines/DESEngine;->SP6:[I

    .line 262
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    sput-object v0, Lorg/spongycastle/crypto/engines/DESEngine;->SP7:[I

    .line 281
    new-array v0, v1, [I

    fill-array-data v0, :array_c

    sput-object v0, Lorg/spongycastle/crypto/engines/DESEngine;->SP8:[I

    return-void

    .line 107
    :array_0
    .array-data 2
        0x80s
        0x40s
        0x20s
        0x10s
        0x8s
        0x4s
        0x2s
        0x1s
    .end array-data

    .line 112
    :array_1
    .array-data 4
        0x800000
        0x400000
        0x200000
        0x100000
        0x80000
        0x40000
        0x20000
        0x10000
        0x8000
        0x4000
        0x2000
        0x1000
        0x800
        0x400
        0x200
        0x100
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data

    .line 126
    :array_2
    .array-data 1
        0x38t
        0x30t
        0x28t
        0x20t
        0x18t
        0x10t
        0x8t
        0x0t
        0x39t
        0x31t
        0x29t
        0x21t
        0x19t
        0x11t
        0x9t
        0x1t
        0x3at
        0x32t
        0x2at
        0x22t
        0x1at
        0x12t
        0xat
        0x2t
        0x3bt
        0x33t
        0x2bt
        0x23t
        0x3et
        0x36t
        0x2et
        0x26t
        0x1et
        0x16t
        0xet
        0x6t
        0x3dt
        0x35t
        0x2dt
        0x25t
        0x1dt
        0x15t
        0xdt
        0x5t
        0x3ct
        0x34t
        0x2ct
        0x24t
        0x1ct
        0x14t
        0xct
        0x4t
        0x1bt
        0x13t
        0xbt
        0x3t
    .end array-data

    .line 134
    :array_3
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x6t
        0x8t
        0xat
        0xct
        0xet
        0xft
        0x11t
        0x13t
        0x15t
        0x17t
        0x19t
        0x1bt
        0x1ct
    .end array-data

    .line 140
    :array_4
    .array-data 1
        0xdt
        0x10t
        0xat
        0x17t
        0x0t
        0x4t
        0x2t
        0x1bt
        0xet
        0x5t
        0x14t
        0x9t
        0x16t
        0x12t
        0xbt
        0x3t
        0x19t
        0x7t
        0xft
        0x6t
        0x1at
        0x13t
        0xct
        0x1t
        0x28t
        0x33t
        0x1et
        0x24t
        0x2et
        0x36t
        0x1dt
        0x27t
        0x32t
        0x2ct
        0x20t
        0x2ft
        0x2bt
        0x30t
        0x26t
        0x37t
        0x21t
        0x34t
        0x2dt
        0x29t
        0x31t
        0x23t
        0x1ct
        0x1ft
    .end array-data

    .line 148
    :array_5
    .array-data 4
        0x1010400
        0x0
        0x10000
        0x1010404
        0x1010004
        0x10404
        0x4
        0x10000
        0x400
        0x1010400
        0x1010404
        0x400
        0x1000404
        0x1010004
        0x1000000
        0x4
        0x404
        0x1000400
        0x1000400
        0x10400
        0x10400
        0x1010000
        0x1010000
        0x1000404
        0x10004
        0x1000004
        0x1000004
        0x10004
        0x0
        0x404
        0x10404
        0x1000000
        0x10000
        0x1010404
        0x4
        0x1010000
        0x1010400
        0x1000000
        0x1000000
        0x400
        0x1010004
        0x10000
        0x10400
        0x1000004
        0x400
        0x4
        0x1000404
        0x10404
        0x1010404
        0x10004
        0x1010000
        0x1000404
        0x1000004
        0x404
        0x10404
        0x1010400
        0x404
        0x1000400
        0x1000400
        0x0
        0x10004
        0x10400
        0x0
        0x1010004
    .end array-data

    .line 167
    :array_6
    .array-data 4
        -0x7fef7fe0
        -0x7fff8000
        0x8000
        0x108020
        0x100000
        0x20
        -0x7fefffe0
        -0x7fff7fe0
        -0x7fffffe0
        -0x7fef7fe0
        -0x7fef8000
        -0x80000000
        -0x7fff8000
        0x100000
        0x20
        -0x7fefffe0
        0x108000
        0x100020
        -0x7fff7fe0
        0x0
        -0x80000000
        0x8000
        0x108020
        -0x7ff00000
        0x100020
        -0x7fffffe0
        0x0
        0x108000
        0x8020
        -0x7fef8000
        -0x7ff00000
        0x8020
        0x0
        0x108020
        -0x7fefffe0
        0x100000
        -0x7fff7fe0
        -0x7ff00000
        -0x7fef8000
        0x8000
        -0x7ff00000
        -0x7fff8000
        0x20
        -0x7fef7fe0
        0x108020
        0x20
        0x8000
        -0x80000000
        0x8020
        -0x7fef8000
        0x100000
        -0x7fffffe0
        0x100020
        -0x7fff7fe0
        -0x7fffffe0
        0x100020
        0x108000
        0x0
        -0x7fff8000
        0x8020
        -0x80000000
        -0x7fefffe0
        -0x7fef7fe0
        0x108000
    .end array-data

    .line 186
    :array_7
    .array-data 4
        0x208
        0x8020200
        0x0
        0x8020008
        0x8000200
        0x0
        0x20208
        0x8000200
        0x20008
        0x8000008
        0x8000008
        0x20000
        0x8020208
        0x20008
        0x8020000
        0x208
        0x8000000
        0x8
        0x8020200
        0x200
        0x20200
        0x8020000
        0x8020008
        0x20208
        0x8000208
        0x20200
        0x20000
        0x8000208
        0x8
        0x8020208
        0x200
        0x8000000
        0x8020200
        0x8000000
        0x20008
        0x208
        0x20000
        0x8020200
        0x8000200
        0x0
        0x200
        0x20008
        0x8020208
        0x8000200
        0x8000008
        0x200
        0x0
        0x8020008
        0x8000208
        0x20000
        0x8000000
        0x8020208
        0x8
        0x20208
        0x20200
        0x8000008
        0x8020000
        0x8000208
        0x208
        0x8020000
        0x20208
        0x8
        0x8020008
        0x20200
    .end array-data

    .line 205
    :array_8
    .array-data 4
        0x802001
        0x2081
        0x2081
        0x80
        0x802080
        0x800081
        0x800001
        0x2001
        0x0
        0x802000
        0x802000
        0x802081
        0x81
        0x0
        0x800080
        0x800001
        0x1
        0x2000
        0x800000
        0x802001
        0x80
        0x800000
        0x2001
        0x2080
        0x800081
        0x1
        0x2080
        0x800080
        0x2000
        0x802080
        0x802081
        0x81
        0x800080
        0x800001
        0x802000
        0x802081
        0x81
        0x0
        0x0
        0x802000
        0x2080
        0x800080
        0x800081
        0x1
        0x802001
        0x2081
        0x2081
        0x80
        0x802081
        0x81
        0x1
        0x2000
        0x800001
        0x2001
        0x802080
        0x800081
        0x2001
        0x2080
        0x800000
        0x802001
        0x80
        0x800000
        0x2000
        0x802080
    .end array-data

    .line 224
    :array_9
    .array-data 4
        0x100
        0x2080100
        0x2080000
        0x42000100    # 32.000977f
        0x80000
        0x100
        0x40000000    # 2.0f
        0x2080000
        0x40080100
        0x80000
        0x2000100
        0x40080100
        0x42000100    # 32.000977f
        0x42080000    # 34.0f
        0x80100
        0x40000000    # 2.0f
        0x2000000
        0x40080000    # 2.125f
        0x40080000    # 2.125f
        0x0
        0x40000100    # 2.000061f
        0x42080100    # 34.000977f
        0x42080100    # 34.000977f
        0x2000100
        0x42080000    # 34.0f
        0x40000100    # 2.000061f
        0x0
        0x42000000    # 32.0f
        0x2080100
        0x2000000
        0x42000000    # 32.0f
        0x80100
        0x80000
        0x42000100    # 32.000977f
        0x100
        0x2000000
        0x40000000    # 2.0f
        0x2080000
        0x42000100    # 32.000977f
        0x40080100
        0x2000100
        0x40000000    # 2.0f
        0x42080000    # 34.0f
        0x2080100
        0x40080100
        0x100
        0x2000000
        0x42080000    # 34.0f
        0x42080100    # 34.000977f
        0x80100
        0x42000000    # 32.0f
        0x42080100    # 34.000977f
        0x2080000
        0x0
        0x40080000    # 2.125f
        0x42000000    # 32.0f
        0x80100
        0x2000100
        0x40000100    # 2.000061f
        0x80000
        0x0
        0x40080000    # 2.125f
        0x2080100
        0x40000100    # 2.000061f
    .end array-data

    .line 243
    :array_a
    .array-data 4
        0x20000010
        0x20400000
        0x4000
        0x20404010
        0x20400000
        0x10
        0x20404010
        0x400000
        0x20004000
        0x404010
        0x400000
        0x20000010
        0x400010
        0x20004000
        0x20000000
        0x4010
        0x0
        0x400010
        0x20004010
        0x4000
        0x404000
        0x20004010
        0x10
        0x20400010
        0x20400010
        0x0
        0x404010
        0x20404000
        0x4010
        0x404000
        0x20404000
        0x20000000
        0x20004000
        0x10
        0x20400010
        0x404000
        0x20404010
        0x400000
        0x4010
        0x20000010
        0x400000
        0x20004000
        0x20000000
        0x4010
        0x20000010
        0x20404010
        0x404000
        0x20400000
        0x404010
        0x20404000
        0x0
        0x20400010
        0x10
        0x4000
        0x20400000
        0x404010
        0x4000
        0x400010
        0x20004010
        0x0
        0x20404000
        0x20000000
        0x400010
        0x20004010
    .end array-data

    .line 262
    :array_b
    .array-data 4
        0x200000
        0x4200002
        0x4000802    # 1.5050005E-36f
        0x0
        0x800
        0x4000802    # 1.5050005E-36f
        0x200802
        0x4200800
        0x4200802
        0x200000
        0x0
        0x4000002
        0x2
        0x4000000
        0x4200002
        0x802
        0x4000800    # 1.5050001E-36f
        0x200802
        0x200002
        0x4000800    # 1.5050001E-36f
        0x4000002
        0x4200000
        0x4200800
        0x200002
        0x4200000
        0x800
        0x802
        0x4200802
        0x200800
        0x2
        0x4000000
        0x200800
        0x4000000
        0x200800
        0x200000
        0x4000802    # 1.5050005E-36f
        0x4000802    # 1.5050005E-36f
        0x4200002
        0x4200002
        0x2
        0x200002
        0x4000000
        0x4000800    # 1.5050001E-36f
        0x200000
        0x4200800
        0x802
        0x200802
        0x4200800
        0x802
        0x4000002
        0x4200802
        0x4200000
        0x200800
        0x0
        0x2
        0x4200802
        0x0
        0x200802
        0x4200000
        0x800
        0x4000002
        0x4000800    # 1.5050001E-36f
        0x800
        0x200002
    .end array-data

    .line 281
    :array_c
    .array-data 4
        0x10001040
        0x1000
        0x40000
        0x10041040
        0x10000000
        0x10001040
        0x40
        0x10000000
        0x40040
        0x10040000
        0x10041040
        0x41000
        0x10041000
        0x41040
        0x1000
        0x40
        0x10040000
        0x10000040
        0x10001000
        0x1040
        0x41000
        0x40040
        0x10040040
        0x10041000
        0x1040
        0x0
        0x0
        0x10040040
        0x10000040
        0x10001000
        0x41040
        0x40000
        0x41040
        0x40000
        0x10041000
        0x1000
        0x40
        0x10040040
        0x1000
        0x41040
        0x10001000
        0x40
        0x10000040
        0x10040000
        0x10040040
        0x10000000
        0x40000
        0x10001040
        0x0
        0x10041040
        0x40040
        0x10000040
        0x10040000
        0x10001000
        0x10001040
        0x0
        0x10041040
        0x41000
        0x41000
        0x1040
        0x1040
        0x40040
        0x10000000
        0x10041000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESEngine;->workingKey:[I

    .line 24
    return-void
.end method


# virtual methods
.method protected desFunc([I[BI[BI)V
    .locals 7
    .param p1, "wKey"    # [I
    .param p2, "in"    # [B
    .param p3, "inOff"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    .line 410
    add-int/lit8 v5, p3, 0x0

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v1, v5, 0x18

    .line 411
    .local v1, "left":I
    add-int/lit8 v5, p3, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v1, v5

    .line 412
    add-int/lit8 v5, p3, 0x2

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v1, v5

    .line 413
    add-int/lit8 v5, p3, 0x3

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 415
    add-int/lit8 v5, p3, 0x4

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v2, v5, 0x18

    .line 416
    .local v2, "right":I
    add-int/lit8 v5, p3, 0x5

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    .line 417
    add-int/lit8 v5, p3, 0x6

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    .line 418
    add-int/lit8 v5, p3, 0x7

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    .line 420
    ushr-int/lit8 v5, v1, 0x4

    xor-int/2addr v5, v2

    const v6, 0xf0f0f0f

    and-int v4, v5, v6

    .line 421
    .local v4, "work":I
    xor-int/2addr v2, v4

    .line 422
    shl-int/lit8 v5, v4, 0x4

    xor-int/2addr v1, v5

    .line 423
    ushr-int/lit8 v5, v1, 0x10

    xor-int/2addr v5, v2

    const v6, 0xffff

    and-int v4, v5, v6

    .line 424
    xor-int/2addr v2, v4

    .line 425
    shl-int/lit8 v5, v4, 0x10

    xor-int/2addr v1, v5

    .line 426
    ushr-int/lit8 v5, v2, 0x2

    xor-int/2addr v5, v1

    const v6, 0x33333333

    and-int v4, v5, v6

    .line 427
    xor-int/2addr v1, v4

    .line 428
    shl-int/lit8 v5, v4, 0x2

    xor-int/2addr v2, v5

    .line 429
    ushr-int/lit8 v5, v2, 0x8

    xor-int/2addr v5, v1

    const v6, 0xff00ff

    and-int v4, v5, v6

    .line 430
    xor-int/2addr v1, v4

    .line 431
    shl-int/lit8 v5, v4, 0x8

    xor-int/2addr v2, v5

    .line 432
    shl-int/lit8 v5, v2, 0x1

    ushr-int/lit8 v6, v2, 0x1f

    and-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    and-int/lit8 v2, v5, -0x1

    .line 433
    xor-int v5, v1, v2

    const v6, -0x55555556

    and-int v4, v5, v6

    .line 434
    xor-int/2addr v1, v4

    .line 435
    xor-int/2addr v2, v4

    .line 436
    shl-int/lit8 v5, v1, 0x1

    ushr-int/lit8 v6, v1, 0x1f

    and-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    and-int/lit8 v1, v5, -0x1

    .line 438
    const/4 v3, 0x0

    .local v3, "round":I
    :goto_0
    const/16 v5, 0x8

    if-ge v3, v5, :cond_0

    .line 442
    shl-int/lit8 v5, v2, 0x1c

    ushr-int/lit8 v6, v2, 0x4

    or-int v4, v5, v6

    .line 443
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x0

    aget v5, p1, v5

    xor-int/2addr v4, v5

    .line 444
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP7:[I

    and-int/lit8 v6, v4, 0x3f

    aget v0, v5, v6

    .line 445
    .local v0, "fval":I
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP5:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 446
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP3:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 447
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP1:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 448
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v5, p1, v5

    xor-int v4, v2, v5

    .line 449
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP8:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 450
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP6:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 451
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP4:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 452
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP2:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 453
    xor-int/2addr v1, v0

    .line 454
    shl-int/lit8 v5, v1, 0x1c

    ushr-int/lit8 v6, v1, 0x4

    or-int v4, v5, v6

    .line 455
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v5, p1, v5

    xor-int/2addr v4, v5

    .line 456
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP7:[I

    and-int/lit8 v6, v4, 0x3f

    aget v0, v5, v6

    .line 457
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP5:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 458
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP3:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 459
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP1:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 460
    mul-int/lit8 v5, v3, 0x4

    add-int/lit8 v5, v5, 0x3

    aget v5, p1, v5

    xor-int v4, v1, v5

    .line 461
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP8:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 462
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP6:[I

    ushr-int/lit8 v6, v4, 0x8

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 463
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP4:[I

    ushr-int/lit8 v6, v4, 0x10

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 464
    sget-object v5, Lorg/spongycastle/crypto/engines/DESEngine;->SP2:[I

    ushr-int/lit8 v6, v4, 0x18

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    or-int/2addr v0, v5

    .line 465
    xor-int/2addr v2, v0

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 468
    .end local v0    # "fval":I
    :cond_0
    shl-int/lit8 v5, v2, 0x1f

    ushr-int/lit8 v6, v2, 0x1

    or-int v2, v5, v6

    .line 469
    xor-int v5, v1, v2

    const v6, -0x55555556

    and-int v4, v5, v6

    .line 470
    xor-int/2addr v1, v4

    .line 471
    xor-int/2addr v2, v4

    .line 472
    shl-int/lit8 v5, v1, 0x1f

    ushr-int/lit8 v6, v1, 0x1

    or-int v1, v5, v6

    .line 473
    ushr-int/lit8 v5, v1, 0x8

    xor-int/2addr v5, v2

    const v6, 0xff00ff

    and-int v4, v5, v6

    .line 474
    xor-int/2addr v2, v4

    .line 475
    shl-int/lit8 v5, v4, 0x8

    xor-int/2addr v1, v5

    .line 476
    ushr-int/lit8 v5, v1, 0x2

    xor-int/2addr v5, v2

    const v6, 0x33333333

    and-int v4, v5, v6

    .line 477
    xor-int/2addr v2, v4

    .line 478
    shl-int/lit8 v5, v4, 0x2

    xor-int/2addr v1, v5

    .line 479
    ushr-int/lit8 v5, v2, 0x10

    xor-int/2addr v5, v1

    const v6, 0xffff

    and-int v4, v5, v6

    .line 480
    xor-int/2addr v1, v4

    .line 481
    shl-int/lit8 v5, v4, 0x10

    xor-int/2addr v2, v5

    .line 482
    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v5, v1

    const v6, 0xf0f0f0f

    and-int v4, v5, v6

    .line 483
    xor-int/2addr v1, v4

    .line 484
    shl-int/lit8 v5, v4, 0x4

    xor-int/2addr v2, v5

    .line 486
    add-int/lit8 v5, p5, 0x0

    ushr-int/lit8 v6, v2, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 487
    add-int/lit8 v5, p5, 0x1

    ushr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 488
    add-int/lit8 v5, p5, 0x2

    ushr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 489
    add-int/lit8 v5, p5, 0x3

    and-int/lit16 v6, v2, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 490
    add-int/lit8 v5, p5, 0x4

    ushr-int/lit8 v6, v1, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 491
    add-int/lit8 v5, p5, 0x5

    ushr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 492
    add-int/lit8 v5, p5, 0x6

    ushr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 493
    add-int/lit8 v5, p5, 0x7

    and-int/lit16 v6, v1, 0xff

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    .line 494
    return-void
.end method

.method protected generateWorkingKey(Z[B)[I
    .locals 13
    .param p1, "encrypting"    # Z
    .param p2, "key"    # [B

    .prologue
    .line 311
    const/16 v10, 0x20

    new-array v7, v10, [I

    .line 312
    .local v7, "newKey":[I
    const/16 v10, 0x38

    new-array v8, v10, [Z

    .line 313
    .local v8, "pc1m":[Z
    const/16 v10, 0x38

    new-array v9, v10, [Z

    .line 315
    .local v9, "pcr":[Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    const/16 v10, 0x38

    if-ge v3, v10, :cond_1

    .line 317
    sget-object v10, Lorg/spongycastle/crypto/engines/DESEngine;->pc1:[B

    aget-byte v4, v10, v3

    .line 319
    .local v4, "l":I
    ushr-int/lit8 v10, v4, 0x3

    aget-byte v10, p2, v10

    sget-object v11, Lorg/spongycastle/crypto/engines/DESEngine;->bytebit:[S

    and-int/lit8 v12, v4, 0x7

    aget-short v11, v11, v12

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    :goto_1
    aput-boolean v10, v8, v3

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 322
    .end local v4    # "l":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v10, 0x10

    if-ge v0, v10, :cond_a

    .line 326
    if-eqz p1, :cond_2

    .line 328
    shl-int/lit8 v5, v0, 0x1

    .line 335
    .local v5, "m":I
    :goto_3
    add-int/lit8 v6, v5, 0x1

    .line 336
    .local v6, "n":I
    const/4 v10, 0x0

    aput v10, v7, v6

    aput v10, v7, v5

    .line 338
    const/4 v3, 0x0

    :goto_4
    const/16 v10, 0x1c

    if-ge v3, v10, :cond_4

    .line 340
    sget-object v10, Lorg/spongycastle/crypto/engines/DESEngine;->totrot:[B

    aget-byte v10, v10, v0

    add-int v4, v3, v10

    .line 341
    .restart local v4    # "l":I
    const/16 v10, 0x1c

    if-ge v4, v10, :cond_3

    .line 343
    aget-boolean v10, v8, v4

    aput-boolean v10, v9, v3

    .line 338
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 332
    .end local v4    # "l":I
    .end local v5    # "m":I
    .end local v6    # "n":I
    :cond_2
    rsub-int/lit8 v10, v0, 0xf

    shl-int/lit8 v5, v10, 0x1

    .restart local v5    # "m":I
    goto :goto_3

    .line 347
    .restart local v4    # "l":I
    .restart local v6    # "n":I
    :cond_3
    add-int/lit8 v10, v4, -0x1c

    aget-boolean v10, v8, v10

    aput-boolean v10, v9, v3

    goto :goto_5

    .line 351
    .end local v4    # "l":I
    :cond_4
    const/16 v3, 0x1c

    :goto_6
    const/16 v10, 0x38

    if-ge v3, v10, :cond_6

    .line 353
    sget-object v10, Lorg/spongycastle/crypto/engines/DESEngine;->totrot:[B

    aget-byte v10, v10, v0

    add-int v4, v3, v10

    .line 354
    .restart local v4    # "l":I
    const/16 v10, 0x38

    if-ge v4, v10, :cond_5

    .line 356
    aget-boolean v10, v8, v4

    aput-boolean v10, v9, v3

    .line 351
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 360
    :cond_5
    add-int/lit8 v10, v4, -0x1c

    aget-boolean v10, v8, v10

    aput-boolean v10, v9, v3

    goto :goto_7

    .line 364
    .end local v4    # "l":I
    :cond_6
    const/4 v3, 0x0

    :goto_8
    const/16 v10, 0x18

    if-ge v3, v10, :cond_9

    .line 366
    sget-object v10, Lorg/spongycastle/crypto/engines/DESEngine;->pc2:[B

    aget-byte v10, v10, v3

    aget-boolean v10, v9, v10

    if-eqz v10, :cond_7

    .line 368
    aget v10, v7, v5

    sget-object v11, Lorg/spongycastle/crypto/engines/DESEngine;->bigbyte:[I

    aget v11, v11, v3

    or-int/2addr v10, v11

    aput v10, v7, v5

    .line 371
    :cond_7
    sget-object v10, Lorg/spongycastle/crypto/engines/DESEngine;->pc2:[B

    add-int/lit8 v11, v3, 0x18

    aget-byte v10, v10, v11

    aget-boolean v10, v9, v10

    if-eqz v10, :cond_8

    .line 373
    aget v10, v7, v6

    sget-object v11, Lorg/spongycastle/crypto/engines/DESEngine;->bigbyte:[I

    aget v11, v11, v3

    or-int/2addr v10, v11

    aput v10, v7, v6

    .line 364
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 322
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 381
    .end local v5    # "m":I
    .end local v6    # "n":I
    :cond_a
    const/4 v0, 0x0

    :goto_9
    const/16 v10, 0x20

    if-eq v0, v10, :cond_b

    .line 385
    aget v1, v7, v0

    .line 386
    .local v1, "i1":I
    add-int/lit8 v10, v0, 0x1

    aget v2, v7, v10

    .line 388
    .local v2, "i2":I
    const/high16 v10, 0xfc0000

    and-int/2addr v10, v1

    shl-int/lit8 v10, v10, 0x6

    and-int/lit16 v11, v1, 0xfc0

    shl-int/lit8 v11, v11, 0xa

    or-int/2addr v10, v11

    const/high16 v11, 0xfc0000

    and-int/2addr v11, v2

    ushr-int/lit8 v11, v11, 0xa

    or-int/2addr v10, v11

    and-int/lit16 v11, v2, 0xfc0

    ushr-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    aput v10, v7, v0

    .line 391
    add-int/lit8 v10, v0, 0x1

    const v11, 0x3f000

    and-int/2addr v11, v1

    shl-int/lit8 v11, v11, 0xc

    and-int/lit8 v12, v1, 0x3f

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const v12, 0x3f000

    and-int/2addr v12, v2

    ushr-int/lit8 v12, v12, 0x4

    or-int/2addr v11, v12

    and-int/lit8 v12, v2, 0x3f

    or-int/2addr v11, v12

    aput v11, v7, v10

    .line 381
    add-int/lit8 v0, v0, 0x2

    goto :goto_9

    .line 395
    .end local v1    # "i1":I
    .end local v2    # "i2":I
    :cond_b
    return-object v7
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "DES"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 38
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 40
    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DES key too long - should be 8 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 46
    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 45
    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/crypto/engines/DESEngine;->generateWorkingKey(Z[B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/DESEngine;->workingKey:[I

    .line 48
    return-void

    .line 51
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to DES init - "

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
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/DESEngine;->workingKey:[I

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DES engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 77
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 82
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/DESEngine;->workingKey:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/DESEngine;->desFunc([I[BI[BI)V

    .line 87
    const/16 v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
