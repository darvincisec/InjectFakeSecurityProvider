.class public Lorg/spongycastle/crypto/engines/AESLightEngine;
.super Ljava/lang/Object;
.source "AESLightEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final S:[B

.field private static final Si:[B

.field private static final m1:I = -0x7f7f7f80

.field private static final m2:I = 0x7f7f7f7f

.field private static final m3:I = 0x1b

.field private static final m4:I = -0x3f3f3f40

.field private static final m5:I = 0x3f3f3f3f

.field private static final rcon:[I


# instance fields
.field private C0:I

.field private C1:I

.field private C2:I

.field private C3:I

.field private ROUNDS:I

.field private WorkingKey:[[I

.field private forEncryption:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 39
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    .line 75
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    .line 111
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/spongycastle/crypto/engines/AESLightEngine;->rcon:[I

    return-void

    .line 39
    :array_0
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

    .line 75
    :array_1
    .array-data 1
        0x52t
        0x9t
        0x6at
        -0x2bt
        0x30t
        0x36t
        -0x5bt
        0x38t
        -0x41t
        0x40t
        -0x5dt
        -0x62t
        -0x7ft
        -0xdt
        -0x29t
        -0x5t
        0x7ct
        -0x1dt
        0x39t
        -0x7et
        -0x65t
        0x2ft
        -0x1t
        -0x79t
        0x34t
        -0x72t
        0x43t
        0x44t
        -0x3ct
        -0x22t
        -0x17t
        -0x35t
        0x54t
        0x7bt
        -0x6ct
        0x32t
        -0x5at
        -0x3et
        0x23t
        0x3dt
        -0x12t
        0x4ct
        -0x6bt
        0xbt
        0x42t
        -0x6t
        -0x3dt
        0x4et
        0x8t
        0x2et
        -0x5ft
        0x66t
        0x28t
        -0x27t
        0x24t
        -0x4et
        0x76t
        0x5bt
        -0x5et
        0x49t
        0x6dt
        -0x75t
        -0x2ft
        0x25t
        0x72t
        -0x8t
        -0xat
        0x64t
        -0x7at
        0x68t
        -0x68t
        0x16t
        -0x2ct
        -0x5ct
        0x5ct
        -0x34t
        0x5dt
        0x65t
        -0x4at
        -0x6et
        0x6ct
        0x70t
        0x48t
        0x50t
        -0x3t
        -0x13t
        -0x47t
        -0x26t
        0x5et
        0x15t
        0x46t
        0x57t
        -0x59t
        -0x73t
        -0x63t
        -0x7ct
        -0x70t
        -0x28t
        -0x55t
        0x0t
        -0x74t
        -0x44t
        -0x2dt
        0xat
        -0x9t
        -0x1ct
        0x58t
        0x5t
        -0x48t
        -0x4dt
        0x45t
        0x6t
        -0x30t
        0x2ct
        0x1et
        -0x71t
        -0x36t
        0x3ft
        0xft
        0x2t
        -0x3ft
        -0x51t
        -0x43t
        0x3t
        0x1t
        0x13t
        -0x76t
        0x6bt
        0x3at
        -0x6ft
        0x11t
        0x41t
        0x4ft
        0x67t
        -0x24t
        -0x16t
        -0x69t
        -0xet
        -0x31t
        -0x32t
        -0x10t
        -0x4ct
        -0x1at
        0x73t
        -0x6at
        -0x54t
        0x74t
        0x22t
        -0x19t
        -0x53t
        0x35t
        -0x7bt
        -0x1et
        -0x7t
        0x37t
        -0x18t
        0x1ct
        0x75t
        -0x21t
        0x6et
        0x47t
        -0xft
        0x1at
        0x71t
        0x1dt
        0x29t
        -0x3bt
        -0x77t
        0x6ft
        -0x49t
        0x62t
        0xet
        -0x56t
        0x18t
        -0x42t
        0x1bt
        -0x4t
        0x56t
        0x3et
        0x4bt
        -0x3at
        -0x2et
        0x79t
        0x20t
        -0x66t
        -0x25t
        -0x40t
        -0x2t
        0x78t
        -0x33t
        0x5at
        -0xct
        0x1ft
        -0x23t
        -0x58t
        0x33t
        -0x78t
        0x7t
        -0x39t
        0x31t
        -0x4ft
        0x12t
        0x10t
        0x59t
        0x27t
        -0x80t
        -0x14t
        0x5ft
        0x60t
        0x51t
        0x7ft
        -0x57t
        0x19t
        -0x4bt
        0x4at
        0xdt
        0x2dt
        -0x1bt
        0x7at
        -0x61t
        -0x6dt
        -0x37t
        -0x64t
        -0x11t
        -0x60t
        -0x20t
        0x3bt
        0x4dt
        -0x52t
        0x2at
        -0xbt
        -0x50t
        -0x38t
        -0x15t
        -0x45t
        0x3ct
        -0x7dt
        0x53t
        -0x67t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        -0x46t
        0x77t
        -0x2at
        0x26t
        -0x1ft
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    .line 111
    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    .line 325
    return-void
.end method

.method private static FFmulX(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 130
    const v0, 0x7f7f7f7f

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x1

    const v1, -0x7f7f7f80

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method private static FFmulX2(I)I
    .locals 4
    .param p0, "x"    # I

    .prologue
    .line 135
    const v2, 0x3f3f3f3f

    and-int/2addr v2, p0

    shl-int/lit8 v0, v2, 0x2

    .line 136
    .local v0, "t0":I
    const v2, -0x3f3f3f40

    and-int v1, p0, v2

    .line 137
    .local v1, "t1":I
    ushr-int/lit8 v2, v1, 0x1

    xor-int/2addr v1, v2

    .line 138
    ushr-int/lit8 v2, v1, 0x2

    xor-int/2addr v2, v0

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    return v2
.end method

.method private decryptBlock([[I)V
    .locals 12
    .param p1, "KW"    # [[I

    .prologue
    .line 488
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    iget v10, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v10, p1, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v6, v9, v10

    .line 489
    .local v6, "t0":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    iget v10, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v10, p1, v10

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v7, v9, v10

    .line 490
    .local v7, "t1":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    iget v10, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v10, p1, v10

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v8, v9, v10

    .line 492
    .local v8, "t2":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v0, v9, -0x1

    .local v0, "r":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    iget v10, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    aget-object v10, p1, v10

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    .local v5, "r3":I
    move v1, v0

    .line 493
    .end local v0    # "r":I
    .local v1, "r":I
    :goto_0
    const/4 v9, 0x1

    if-le v1, v9, :cond_0

    .line 495
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v6, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v7, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v9

    aget-object v10, p1, v1

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v2, v9, v10

    .line 496
    .local v2, "r0":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v7, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v6, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v8, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v9

    aget-object v10, p1, v1

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v3, v9, v10

    .line 497
    .local v3, "r1":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v8, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v7, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v6, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v9

    aget-object v10, p1, v1

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v4, v9, v10

    .line 498
    .local v4, "r2":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v5, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v7, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v6, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v9

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "r":I
    .restart local v0    # "r":I
    aget-object v10, p1, v1

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    .line 499
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v2, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v4, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v9

    aget-object v10, p1, v0

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v6, v9, v10

    .line 500
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v3, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v4, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v9

    aget-object v10, p1, v0

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v7, v9, v10

    .line 501
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v4, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v2, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v9

    aget-object v10, p1, v0

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v8, v9, v10

    .line 502
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v5, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v4, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v3, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v9

    add-int/lit8 v1, v0, -0x1

    .end local v0    # "r":I
    .restart local v1    # "r":I
    aget-object v10, p1, v0

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    goto/16 :goto_0

    .line 505
    .end local v2    # "r0":I
    .end local v3    # "r1":I
    .end local v4    # "r2":I
    :cond_0
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v6, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v7, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v9

    aget-object v10, p1, v1

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v2, v9, v10

    .line 506
    .restart local v2    # "r0":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v7, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v6, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v8, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v9

    aget-object v10, p1, v1

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v3, v9, v10

    .line 507
    .restart local v3    # "r1":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v8, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v7, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v6, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v9

    aget-object v10, p1, v1

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v4, v9, v10

    .line 508
    .restart local v4    # "r2":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v5, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v7, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v6, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v9

    aget-object v10, p1, v1

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    .line 512
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v2, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v4, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    .line 513
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v3, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v4, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    .line 514
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v4, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v2, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    .line 515
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    and-int/lit16 v10, v5, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v4, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v3, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->Si:[B

    shr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    .line 516
    return-void
.end method

.method private encryptBlock([[I)V
    .locals 12
    .param p1, "KW"    # [[I

    .prologue
    .line 456
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v6, v9, v10

    .line 457
    .local v6, "t0":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v7, v9, v10

    .line 458
    .local v7, "t1":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v8, v9, v10

    .line 460
    .local v8, "t2":I
    const/4 v0, 0x1

    .local v0, "r":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    const/4 v10, 0x0

    aget-object v10, p1, v10

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    .line 461
    .local v5, "r3":I
    :goto_0
    iget v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    add-int/lit8 v9, v9, -0x1

    if-ge v0, v9, :cond_0

    .line 463
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v6, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v7, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    aget-object v10, p1, v0

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v2, v9, v10

    .line 464
    .local v2, "r0":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v7, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v6, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    aget-object v10, p1, v0

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v3, v9, v10

    .line 465
    .local v3, "r1":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v8, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v6, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v7, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    aget-object v10, p1, v0

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v4, v9, v10

    .line 466
    .local v4, "r2":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v5, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v6, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v7, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v8, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "r":I
    .local v1, "r":I
    aget-object v10, p1, v0

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    .line 467
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v2, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v4, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    aget-object v10, p1, v1

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v6, v9, v10

    .line 468
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v3, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v4, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    aget-object v10, p1, v1

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v7, v9, v10

    .line 469
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v4, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v2, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    aget-object v10, p1, v1

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v8, v9, v10

    .line 470
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v5, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v3, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v4, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "r":I
    .restart local v0    # "r":I
    aget-object v10, p1, v1

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    goto/16 :goto_0

    .line 473
    .end local v2    # "r0":I
    .end local v3    # "r1":I
    .end local v4    # "r2":I
    :cond_0
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v6, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v7, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v8, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    aget-object v10, p1, v0

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int v2, v9, v10

    .line 474
    .restart local v2    # "r0":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v7, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v6, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    aget-object v10, p1, v0

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int v3, v9, v10

    .line 475
    .restart local v3    # "r1":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v8, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v6, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v7, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    aget-object v10, p1, v0

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int v4, v9, v10

    .line 476
    .restart local v4    # "r2":I
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v5, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v6, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v7, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v8, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    invoke-static {v9}, Lorg/spongycastle/crypto/engines/AESLightEngine;->mcol(I)I

    move-result v9

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "r":I
    .restart local v1    # "r":I
    aget-object v10, p1, v0

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int v5, v9, v10

    .line 480
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v2, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v3, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v4, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v5, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x0

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    .line 481
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v3, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v4, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v5, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v2, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x1

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    .line 482
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v4, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v5, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v2, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x2

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    .line 483
    sget-object v9, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v10, v5, 0xff

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v2, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v3, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    xor-int/2addr v9, v10

    sget-object v10, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v11, v4, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v9, v10

    aget-object v10, p1, v1

    const/4 v11, 0x3

    aget v10, v10, v11

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    .line 484
    return-void
.end method

.method private generateWorkingKey([BZ)[[I
    .locals 20
    .param p1, "key"    # [B
    .param p2, "forEncryption"    # Z

    .prologue
    .line 184
    move-object/from16 v0, p1

    array-length v6, v0

    .line 185
    .local v6, "keyLen":I
    const/16 v17, 0x10

    move/from16 v0, v17

    if-lt v6, v0, :cond_0

    const/16 v17, 0x20

    move/from16 v0, v17

    if-gt v6, v0, :cond_0

    and-int/lit8 v17, v6, 0x7

    if-eqz v17, :cond_1

    .line 187
    :cond_0
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "Key length not 128/192/256 bits."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 190
    :cond_1
    shr-int/lit8 v2, v6, 0x2

    .line 191
    .local v2, "KC":I
    add-int/lit8 v17, v2, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    .line 192
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    const/16 v18, 0x4

    filled-new-array/range {v17 .. v18}, [I

    move-result-object v17

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 194
    .local v3, "W":[[I
    packed-switch v2, :pswitch_data_0

    .line 295
    :pswitch_0
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Should never get here"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 198
    :pswitch_1
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    .local v8, "t0":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 199
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v9

    .local v9, "t1":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 200
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v10

    .local v10, "t2":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 201
    const/16 v17, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v11

    .local v11, "t3":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v11, v17, v18

    .line 203
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v17, 0xa

    move/from16 v0, v17

    if-gt v4, v0, :cond_3

    .line 205
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v17

    sget-object v18, Lorg/spongycastle/crypto/engines/AESLightEngine;->rcon:[I

    add-int/lit8 v19, v4, -0x1

    aget v18, v18, v19

    xor-int v16, v17, v18

    .line 206
    .local v16, "u":I
    xor-int v8, v8, v16

    aget-object v17, v3, v4

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 207
    xor-int/2addr v9, v8

    aget-object v17, v3, v4

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 208
    xor-int/2addr v10, v9

    aget-object v17, v3, v4

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 209
    xor-int/2addr v11, v10

    aget-object v17, v3, v4

    const/16 v18, 0x3

    aput v11, v17, v18

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 216
    .end local v4    # "i":I
    .end local v8    # "t0":I
    .end local v9    # "t1":I
    .end local v10    # "t2":I
    .end local v11    # "t3":I
    .end local v16    # "u":I
    :pswitch_2
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    .restart local v8    # "t0":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 217
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v9

    .restart local v9    # "t1":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 218
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v10

    .restart local v10    # "t2":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 219
    const/16 v17, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v11

    .restart local v11    # "t3":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v11, v17, v18

    .line 220
    const/16 v17, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v12

    .local v12, "t4":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v12, v17, v18

    .line 221
    const/16 v17, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v13

    .local v13, "t5":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v13, v17, v18

    .line 223
    const/4 v7, 0x1

    .line 224
    .local v7, "rcon":I
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v13, v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v17

    xor-int v16, v17, v7

    .restart local v16    # "u":I
    shl-int/lit8 v7, v7, 0x1

    .line 225
    xor-int v8, v8, v16

    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v8, v17, v18

    .line 226
    xor-int/2addr v9, v8

    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v9, v17, v18

    .line 227
    xor-int/2addr v10, v9

    const/16 v17, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v10, v17, v18

    .line 228
    xor-int/2addr v11, v10

    const/16 v17, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v11, v17, v18

    .line 229
    xor-int/2addr v12, v11

    const/16 v17, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v12, v17, v18

    .line 230
    xor-int/2addr v13, v12

    const/16 v17, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v13, v17, v18

    .line 232
    const/4 v4, 0x3

    .restart local v4    # "i":I
    :goto_1
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ge v4, v0, :cond_2

    .line 234
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v13, v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v17

    xor-int v16, v17, v7

    shl-int/lit8 v7, v7, 0x1

    .line 235
    xor-int v8, v8, v16

    aget-object v17, v3, v4

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 236
    xor-int/2addr v9, v8

    aget-object v17, v3, v4

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 237
    xor-int/2addr v10, v9

    aget-object v17, v3, v4

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 238
    xor-int/2addr v11, v10

    aget-object v17, v3, v4

    const/16 v18, 0x3

    aput v11, v17, v18

    .line 239
    xor-int/2addr v12, v11

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v12, v17, v18

    .line 240
    xor-int/2addr v13, v12

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v13, v17, v18

    .line 241
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v13, v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v17

    xor-int v16, v17, v7

    shl-int/lit8 v7, v7, 0x1

    .line 242
    xor-int v8, v8, v16

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v8, v17, v18

    .line 243
    xor-int/2addr v9, v8

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v9, v17, v18

    .line 244
    xor-int/2addr v10, v9

    add-int/lit8 v17, v4, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v10, v17, v18

    .line 245
    xor-int/2addr v11, v10

    add-int/lit8 v17, v4, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v11, v17, v18

    .line 246
    xor-int/2addr v12, v11

    add-int/lit8 v17, v4, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v12, v17, v18

    .line 247
    xor-int/2addr v13, v12

    add-int/lit8 v17, v4, 0x2

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v13, v17, v18

    .line 232
    add-int/lit8 v4, v4, 0x3

    goto/16 :goto_1

    .line 250
    :cond_2
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v13, v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v17

    xor-int v16, v17, v7

    .line 251
    xor-int v8, v8, v16

    const/16 v17, 0xc

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 252
    xor-int/2addr v9, v8

    const/16 v17, 0xc

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 253
    xor-int/2addr v10, v9

    const/16 v17, 0xc

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 254
    xor-int/2addr v11, v10

    const/16 v17, 0xc

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v11, v17, v18

    .line 299
    .end local v7    # "rcon":I
    .end local v12    # "t4":I
    .end local v13    # "t5":I
    .end local v16    # "u":I
    :cond_3
    :goto_2
    if-nez p2, :cond_6

    .line 301
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/engines/AESLightEngine;->ROUNDS:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_6

    .line 303
    const/4 v4, 0x0

    :goto_4
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v4, v0, :cond_5

    .line 305
    aget-object v17, v3, v5

    aget-object v18, v3, v5

    aget v18, v18, v4

    invoke-static/range {v18 .. v18}, Lorg/spongycastle/crypto/engines/AESLightEngine;->inv_mcol(I)I

    move-result v18

    aput v18, v17, v4

    .line 303
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 260
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v8    # "t0":I
    .end local v9    # "t1":I
    .end local v10    # "t2":I
    .end local v11    # "t3":I
    :pswitch_3
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v8

    .restart local v8    # "t0":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 261
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v9

    .restart local v9    # "t1":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 262
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v10

    .restart local v10    # "t2":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 263
    const/16 v17, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v11

    .restart local v11    # "t3":I
    const/16 v17, 0x0

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v11, v17, v18

    .line 264
    const/16 v17, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v12

    .restart local v12    # "t4":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v12, v17, v18

    .line 265
    const/16 v17, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v13

    .restart local v13    # "t5":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v13, v17, v18

    .line 266
    const/16 v17, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v14

    .local v14, "t6":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v14, v17, v18

    .line 267
    const/16 v17, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v15

    .local v15, "t7":I
    const/16 v17, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v15, v17, v18

    .line 269
    const/4 v7, 0x1

    .line 271
    .restart local v7    # "rcon":I
    const/4 v4, 0x2

    .restart local v4    # "i":I
    :goto_5
    const/16 v17, 0xe

    move/from16 v0, v17

    if-ge v4, v0, :cond_4

    .line 273
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v15, v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v17

    xor-int v16, v17, v7

    .restart local v16    # "u":I
    shl-int/lit8 v7, v7, 0x1

    .line 274
    xor-int v8, v8, v16

    aget-object v17, v3, v4

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 275
    xor-int/2addr v9, v8

    aget-object v17, v3, v4

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 276
    xor-int/2addr v10, v9

    aget-object v17, v3, v4

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 277
    xor-int/2addr v11, v10

    aget-object v17, v3, v4

    const/16 v18, 0x3

    aput v11, v17, v18

    .line 278
    invoke-static {v11}, Lorg/spongycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v16

    .line 279
    xor-int v12, v12, v16

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v12, v17, v18

    .line 280
    xor-int/2addr v13, v12

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v13, v17, v18

    .line 281
    xor-int/2addr v14, v13

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v14, v17, v18

    .line 282
    xor-int/2addr v15, v14

    add-int/lit8 v17, v4, 0x1

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v15, v17, v18

    .line 271
    add-int/lit8 v4, v4, 0x2

    goto :goto_5

    .line 285
    .end local v16    # "u":I
    :cond_4
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v15, v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/crypto/engines/AESLightEngine;->subWord(I)I

    move-result v17

    xor-int v16, v17, v7

    .line 286
    .restart local v16    # "u":I
    xor-int v8, v8, v16

    const/16 v17, 0xe

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 287
    xor-int/2addr v9, v8

    const/16 v17, 0xe

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aput v9, v17, v18

    .line 288
    xor-int/2addr v10, v9

    const/16 v17, 0xe

    aget-object v17, v3, v17

    const/16 v18, 0x2

    aput v10, v17, v18

    .line 289
    xor-int/2addr v11, v10

    const/16 v17, 0xe

    aget-object v17, v3, v17

    const/16 v18, 0x3

    aput v11, v17, v18

    goto/16 :goto_2

    .line 301
    .end local v7    # "rcon":I
    .end local v12    # "t4":I
    .end local v13    # "t5":I
    .end local v14    # "t6":I
    .end local v15    # "t7":I
    .end local v16    # "u":I
    .restart local v5    # "j":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 310
    .end local v5    # "j":I
    :cond_6
    return-object v3

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static inv_mcol(I)I
    .locals 3
    .param p0, "x"    # I

    .prologue
    .line 162
    move v0, p0

    .line 163
    .local v0, "t0":I
    const/16 v2, 0x8

    invoke-static {v0, v2}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v2

    xor-int v1, v0, v2

    .line 164
    .local v1, "t1":I
    invoke-static {v1}, Lorg/spongycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v2

    xor-int/2addr v0, v2

    .line 165
    invoke-static {v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->FFmulX2(I)I

    move-result v2

    xor-int/2addr v1, v2

    .line 166
    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v2

    xor-int/2addr v2, v1

    xor-int/2addr v0, v2

    .line 167
    return v0
.end method

.method private static mcol(I)I
    .locals 4
    .param p0, "x"    # I

    .prologue
    .line 154
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v0

    .line 155
    .local v0, "t0":I
    xor-int v1, p0, v0

    .line 156
    .local v1, "t1":I
    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/engines/AESLightEngine;->shift(II)I

    move-result v2

    xor-int/2addr v2, v0

    invoke-static {v1}, Lorg/spongycastle/crypto/engines/AESLightEngine;->FFmulX(I)I

    move-result v3

    xor-int/2addr v2, v3

    return v2
.end method

.method private packBlock([BI)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .prologue
    .line 431
    move v0, p2

    .line 433
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 434
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 435
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 436
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 438
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 439
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 440
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 441
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 443
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 444
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 445
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 446
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 448
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 449
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 450
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 451
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 452
    return-void
.end method

.method private static shift(II)I
    .locals 2
    .param p0, "r"    # I
    .param p1, "shift"    # I

    .prologue
    .line 117
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static subWord(I)I
    .locals 3
    .param p0, "x"    # I

    .prologue
    .line 173
    sget-object v0, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    sget-object v1, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lorg/spongycastle/crypto/engines/AESLightEngine;->S:[B

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private unpackBlock([BI)V
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .prologue
    .line 404
    move v0, p2

    .line 406
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    .line 407
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    .line 408
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    .line 409
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C0:I

    .line 411
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    .line 412
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    .line 413
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    .line 414
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C1:I

    .line 416
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    .line 417
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    .line 418
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    .line 419
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C2:I

    .line 421
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    .line 422
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    .line 423
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    .line 424
    iget v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->C3:I

    .line 425
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    const-string v0, "AES"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 356
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 339
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 341
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/engines/AESLightEngine;->generateWorkingKey([BZ)[[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    .line 342
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->forEncryption:Z

    .line 343
    return-void

    .line 346
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to AES init - "

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
    .line 365
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AES engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 372
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 377
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    .line 382
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/AESLightEngine;->unpackBlock([BI)V

    .line 383
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->encryptBlock([[I)V

    .line 384
    invoke-direct {p0, p3, p4}, Lorg/spongycastle/crypto/engines/AESLightEngine;->packBlock([BI)V

    .line 393
    :goto_0
    const/16 v0, 0x10

    return v0

    .line 388
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/AESLightEngine;->unpackBlock([BI)V

    .line 389
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/AESLightEngine;->WorkingKey:[[I

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/AESLightEngine;->decryptBlock([[I)V

    .line 390
    invoke-direct {p0, p3, p4}, Lorg/spongycastle/crypto/engines/AESLightEngine;->packBlock([BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method
