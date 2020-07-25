.class public Lorg/spongycastle/crypto/engines/RC2Engine;
.super Ljava/lang/Object;
.source "RC2Engine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static piTable:[B


# instance fields
.field private encrypting:Z

.field private workingKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/RC2Engine;->piTable:[B

    return-void

    :array_0
    .array-data 1
        -0x27t
        0x78t
        -0x7t
        -0x3ct
        0x19t
        -0x23t
        -0x4bt
        -0x13t
        0x28t
        -0x17t
        -0x3t
        0x79t
        0x4at
        -0x60t
        -0x28t
        -0x63t
        -0x3at
        0x7et
        0x37t
        -0x7dt
        0x2bt
        0x76t
        0x53t
        -0x72t
        0x62t
        0x4ct
        0x64t
        -0x78t
        0x44t
        -0x75t
        -0x5t
        -0x5et
        0x17t
        -0x66t
        0x59t
        -0xbt
        -0x79t
        -0x4dt
        0x4ft
        0x13t
        0x61t
        0x45t
        0x6dt
        -0x73t
        0x9t
        -0x7ft
        0x7dt
        0x32t
        -0x43t
        -0x71t
        0x40t
        -0x15t
        -0x7at
        -0x49t
        0x7bt
        0xbt
        -0x10t
        -0x6bt
        0x21t
        0x22t
        0x5ct
        0x6bt
        0x4et
        -0x7et
        0x54t
        -0x2at
        0x65t
        -0x6dt
        -0x32t
        0x60t
        -0x4et
        0x1ct
        0x73t
        0x56t
        -0x40t
        0x14t
        -0x59t
        -0x74t
        -0xft
        -0x24t
        0x12t
        0x75t
        -0x36t
        0x1ft
        0x3bt
        -0x42t
        -0x1ct
        -0x2ft
        0x42t
        0x3dt
        -0x2ct
        0x30t
        -0x5dt
        0x3ct
        -0x4at
        0x26t
        0x6ft
        -0x41t
        0xet
        -0x26t
        0x46t
        0x69t
        0x7t
        0x57t
        0x27t
        -0xet
        0x1dt
        -0x65t
        -0x44t
        -0x6ct
        0x43t
        0x3t
        -0x8t
        0x11t
        -0x39t
        -0xat
        -0x70t
        -0x11t
        0x3et
        -0x19t
        0x6t
        -0x3dt
        -0x2bt
        0x2ft
        -0x38t
        0x66t
        0x1et
        -0x29t
        0x8t
        -0x18t
        -0x16t
        -0x22t
        -0x80t
        0x52t
        -0x12t
        -0x9t
        -0x7ct
        -0x56t
        0x72t
        -0x54t
        0x35t
        0x4dt
        0x6at
        0x2at
        -0x6at
        0x1at
        -0x2et
        0x71t
        0x5at
        0x15t
        0x49t
        0x74t
        0x4bt
        -0x61t
        -0x30t
        0x5et
        0x4t
        0x18t
        -0x5ct
        -0x14t
        -0x3et
        -0x20t
        0x41t
        0x6et
        0xft
        0x51t
        -0x35t
        -0x34t
        0x24t
        -0x6ft
        -0x51t
        0x50t
        -0x5ft
        -0xct
        0x70t
        0x39t
        -0x67t
        0x7ct
        0x3at
        -0x7bt
        0x23t
        -0x48t
        -0x4ct
        0x7at
        -0x4t
        0x2t
        0x36t
        0x5bt
        0x25t
        0x55t
        -0x69t
        0x31t
        0x2dt
        0x5dt
        -0x6t
        -0x68t
        -0x1dt
        -0x76t
        -0x6et
        -0x52t
        0x5t
        -0x21t
        0x29t
        0x10t
        0x67t
        0x6ct
        -0x46t
        -0x37t
        -0x2dt
        0x0t
        -0x1at
        -0x31t
        -0x1ft
        -0x62t
        -0x58t
        0x2ct
        0x63t
        0x16t
        0x1t
        0x3ft
        0x58t
        -0x1et
        -0x77t
        -0x57t
        0xdt
        0x38t
        0x34t
        0x1bt
        -0x55t
        0x33t
        -0x1t
        -0x50t
        -0x45t
        0x48t
        0xct
        0x5ft
        -0x47t
        -0x4ft
        -0x33t
        0x2et
        -0x3bt
        -0xdt
        -0x25t
        0x47t
        -0x1bt
        -0x5bt
        -0x64t
        0x77t
        0xat
        -0x5at
        0x20t
        0x68t
        -0x2t
        0x7ft
        -0x3ft
        -0x53t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decryptBlock([BI[BI)V
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 269
    add-int/lit8 v5, p2, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v4, v5, v6

    .line 270
    .local v4, "x76":I
    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v3, v5, v6

    .line 271
    .local v3, "x54":I
    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v2, v5, v6

    .line 272
    .local v2, "x32":I
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v1, v5, v6

    .line 274
    .local v1, "x10":I
    const/16 v0, 0x3c

    .local v0, "i":I
    :goto_0
    const/16 v5, 0x2c

    if-lt v0, v5, :cond_0

    .line 276
    const/16 v5, 0xb

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    and-int v7, v2, v3

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x3

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v4, v5, v6

    .line 277
    const/16 v5, 0xd

    invoke-direct {p0, v3, v5}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v4

    and-int v7, v1, v2

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x2

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 278
    const/16 v5, 0xe

    invoke-direct {p0, v2, v5}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    and-int v7, v4, v1

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v2, v5, v6

    .line 279
    const/16 v5, 0xf

    invoke-direct {p0, v1, v5}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v4, -0x1

    and-int/2addr v6, v2

    and-int v7, v3, v4

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v7, v7, v0

    add-int/2addr v6, v7

    sub-int v1, v5, v6

    .line 274
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    .line 282
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v3, 0x3f

    aget v5, v5, v6

    sub-int/2addr v4, v5

    .line 283
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v2, 0x3f

    aget v5, v5, v6

    sub-int/2addr v3, v5

    .line 284
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v1, 0x3f

    aget v5, v5, v6

    sub-int/2addr v2, v5

    .line 285
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    sub-int/2addr v1, v5

    .line 287
    const/16 v0, 0x28

    :goto_1
    const/16 v5, 0x14

    if-lt v0, v5, :cond_1

    .line 289
    const/16 v5, 0xb

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    and-int v7, v2, v3

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x3

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v4, v5, v6

    .line 290
    const/16 v5, 0xd

    invoke-direct {p0, v3, v5}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v4

    and-int v7, v1, v2

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x2

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 291
    const/16 v5, 0xe

    invoke-direct {p0, v2, v5}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    and-int v7, v4, v1

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v2, v5, v6

    .line 292
    const/16 v5, 0xf

    invoke-direct {p0, v1, v5}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v4, -0x1

    and-int/2addr v6, v2

    and-int v7, v3, v4

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v7, v7, v0

    add-int/2addr v6, v7

    sub-int v1, v5, v6

    .line 287
    add-int/lit8 v0, v0, -0x4

    goto :goto_1

    .line 295
    :cond_1
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v3, 0x3f

    aget v5, v5, v6

    sub-int/2addr v4, v5

    .line 296
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v2, 0x3f

    aget v5, v5, v6

    sub-int/2addr v3, v5

    .line 297
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v1, 0x3f

    aget v5, v5, v6

    sub-int/2addr v2, v5

    .line 298
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    sub-int/2addr v1, v5

    .line 300
    const/16 v0, 0x10

    :goto_2
    if-ltz v0, :cond_2

    .line 302
    const/16 v5, 0xb

    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v1

    and-int v7, v2, v3

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x3

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v4, v5, v6

    .line 303
    const/16 v5, 0xd

    invoke-direct {p0, v3, v5}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v6, v4

    and-int v7, v1, v2

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x2

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v3, v5, v6

    .line 304
    const/16 v5, 0xe

    invoke-direct {p0, v2, v5}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v1, -0x1

    and-int/2addr v6, v3

    and-int v7, v4, v1

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v8, v0, 0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    sub-int v2, v5, v6

    .line 305
    const/16 v5, 0xf

    invoke-direct {p0, v1, v5}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v5

    xor-int/lit8 v6, v4, -0x1

    and-int/2addr v6, v2

    and-int v7, v3, v4

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v7, v7, v0

    add-int/2addr v6, v7

    sub-int v1, v5, v6

    .line 300
    add-int/lit8 v0, v0, -0x4

    goto :goto_2

    .line 308
    :cond_2
    add-int/lit8 v5, p4, 0x0

    int-to-byte v6, v1

    aput-byte v6, p3, v5

    .line 309
    add-int/lit8 v5, p4, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 310
    add-int/lit8 v5, p4, 0x2

    int-to-byte v6, v2

    aput-byte v6, p3, v5

    .line 311
    add-int/lit8 v5, p4, 0x3

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 312
    add-int/lit8 v5, p4, 0x4

    int-to-byte v6, v3

    aput-byte v6, p3, v5

    .line 313
    add-int/lit8 v5, p4, 0x5

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 314
    add-int/lit8 v5, p4, 0x6

    int-to-byte v6, v4

    aput-byte v6, p3, v5

    .line 315
    add-int/lit8 v5, p4, 0x7

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 316
    return-void
.end method

.method private encryptBlock([BI[BI)V
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 212
    add-int/lit8 v5, p2, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v4, v5, v6

    .line 213
    .local v4, "x76":I
    add-int/lit8 v5, p2, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v3, v5, v6

    .line 214
    .local v3, "x54":I
    add-int/lit8 v5, p2, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v2, v5, v6

    .line 215
    .local v2, "x32":I
    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, p2, 0x0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int v1, v5, v6

    .line 217
    .local v1, "x10":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v5, 0x10

    if-gt v0, v5, :cond_0

    .line 219
    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    add-int/2addr v5, v1

    and-int v6, v3, v4

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v6, v6, v0

    add-int/2addr v5, v6

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    .line 220
    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    add-int/2addr v5, v2

    and-int v6, v4, v1

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    .line 221
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v4

    add-int/2addr v5, v3

    and-int v6, v1, v2

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    .line 222
    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    add-int/2addr v5, v4

    and-int v6, v2, v3

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    .line 217
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 225
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    add-int/2addr v1, v5

    .line 226
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v1, 0x3f

    aget v5, v5, v6

    add-int/2addr v2, v5

    .line 227
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v2, 0x3f

    aget v5, v5, v6

    add-int/2addr v3, v5

    .line 228
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v3, 0x3f

    aget v5, v5, v6

    add-int/2addr v4, v5

    .line 230
    const/16 v0, 0x14

    :goto_1
    const/16 v5, 0x28

    if-gt v0, v5, :cond_1

    .line 232
    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    add-int/2addr v5, v1

    and-int v6, v3, v4

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v6, v6, v0

    add-int/2addr v5, v6

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    .line 233
    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    add-int/2addr v5, v2

    and-int v6, v4, v1

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    .line 234
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v4

    add-int/2addr v5, v3

    and-int v6, v1, v2

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    .line 235
    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    add-int/2addr v5, v4

    and-int v6, v2, v3

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    .line 230
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 238
    :cond_1
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v4, 0x3f

    aget v5, v5, v6

    add-int/2addr v1, v5

    .line 239
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v1, 0x3f

    aget v5, v5, v6

    add-int/2addr v2, v5

    .line 240
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v2, 0x3f

    aget v5, v5, v6

    add-int/2addr v3, v5

    .line 241
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    and-int/lit8 v6, v3, 0x3f

    aget v5, v5, v6

    add-int/2addr v4, v5

    .line 243
    const/16 v0, 0x2c

    :goto_2
    const/16 v5, 0x40

    if-ge v0, v5, :cond_2

    .line 245
    xor-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v2

    add-int/2addr v5, v1

    and-int v6, v3, v4

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    aget v6, v6, v0

    add-int/2addr v5, v6

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v1

    .line 246
    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v3

    add-int/2addr v5, v2

    and-int v6, v4, v1

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x2

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v2

    .line 247
    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v4

    add-int/2addr v5, v3

    and-int v6, v1, v2

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v3

    .line 248
    xor-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    add-int/2addr v5, v4

    and-int v6, v2, v3

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    add-int/lit8 v7, v0, 0x3

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/engines/RC2Engine;->rotateWordLeft(II)I

    move-result v4

    .line 243
    add-int/lit8 v0, v0, 0x4

    goto :goto_2

    .line 251
    :cond_2
    add-int/lit8 v5, p4, 0x0

    int-to-byte v6, v1

    aput-byte v6, p3, v5

    .line 252
    add-int/lit8 v5, p4, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 253
    add-int/lit8 v5, p4, 0x2

    int-to-byte v6, v2

    aput-byte v6, p3, v5

    .line 254
    add-int/lit8 v5, p4, 0x3

    shr-int/lit8 v6, v2, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 255
    add-int/lit8 v5, p4, 0x4

    int-to-byte v6, v3

    aput-byte v6, p3, v5

    .line 256
    add-int/lit8 v5, p4, 0x5

    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 257
    add-int/lit8 v5, p4, 0x6

    int-to-byte v6, v4

    aput-byte v6, p3, v5

    .line 258
    add-int/lit8 v5, p4, 0x7

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    .line 259
    return-void
.end method

.method private generateWorkingKey([BI)[I
    .locals 12
    .param p1, "key"    # [B
    .param p2, "bits"    # I

    .prologue
    const/16 v10, 0x80

    .line 66
    new-array v7, v10, [I

    .line 68
    .local v7, "xKey":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v8, p1

    if-eq v0, v8, :cond_0

    .line 70
    aget-byte v8, p1, v0

    and-int/lit16 v8, v8, 0xff

    aput v8, v7, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    array-length v3, p1

    .line 76
    .local v3, "len":I
    if-ge v3, v10, :cond_1

    .line 78
    const/4 v1, 0x0

    .line 80
    .local v1, "index":I
    add-int/lit8 v8, v3, -0x1

    aget v6, v7, v8

    .line 84
    .local v6, "x":I
    :goto_1
    sget-object v8, Lorg/spongycastle/crypto/engines/RC2Engine;->piTable:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget v9, v7, v1

    add-int/2addr v9, v6

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    and-int/lit16 v6, v8, 0xff

    .line 85
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "len":I
    .local v4, "len":I
    aput v6, v7, v3

    .line 87
    if-lt v4, v10, :cond_4

    move v3, v4

    .line 91
    .end local v2    # "index":I
    .end local v4    # "len":I
    .end local v6    # "x":I
    .restart local v3    # "len":I
    :cond_1
    add-int/lit8 v8, p2, 0x7

    shr-int/lit8 v3, v8, 0x3

    .line 92
    sget-object v8, Lorg/spongycastle/crypto/engines/RC2Engine;->piTable:[B

    rsub-int v9, v3, 0x80

    aget v9, v7, v9

    const/16 v10, 0xff

    neg-int v11, p2

    and-int/lit8 v11, v11, 0x7

    shr-int/2addr v10, v11

    and-int/2addr v9, v10

    aget-byte v8, v8, v9

    and-int/lit16 v6, v8, 0xff

    .line 93
    .restart local v6    # "x":I
    rsub-int v8, v3, 0x80

    aput v6, v7, v8

    .line 95
    rsub-int v8, v3, 0x80

    add-int/lit8 v0, v8, -0x1

    :goto_2
    if-ltz v0, :cond_2

    .line 97
    sget-object v8, Lorg/spongycastle/crypto/engines/RC2Engine;->piTable:[B

    add-int v9, v0, v3

    aget v9, v7, v9

    xor-int/2addr v9, v6

    aget-byte v8, v8, v9

    and-int/lit16 v6, v8, 0xff

    .line 98
    aput v6, v7, v0

    .line 95
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 102
    :cond_2
    const/16 v8, 0x40

    new-array v5, v8, [I

    .line 104
    .local v5, "newKey":[I
    const/4 v0, 0x0

    :goto_3
    array-length v8, v5

    if-eq v0, v8, :cond_3

    .line 106
    mul-int/lit8 v8, v0, 0x2

    aget v8, v7, v8

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, 0x1

    aget v9, v7, v9

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v8, v9

    aput v8, v5, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 109
    :cond_3
    return-object v5

    .end local v3    # "len":I
    .end local v5    # "newKey":[I
    .restart local v2    # "index":I
    .restart local v4    # "len":I
    :cond_4
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    move v3, v4

    .end local v4    # "len":I
    .restart local v3    # "len":I
    goto :goto_1
.end method

.method private rotateWordLeft(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 200
    const v0, 0xffff

    and-int/2addr p1, v0

    .line 201
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x10

    shr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "RC2"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 157
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 124
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->encrypting:Z

    .line 126
    instance-of v2, p2, Lorg/spongycastle/crypto/params/RC2Parameters;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 128
    check-cast v1, Lorg/spongycastle/crypto/params/RC2Parameters;

    .line 130
    .local v1, "param":Lorg/spongycastle/crypto/params/RC2Parameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/RC2Parameters;->getKey()[B

    move-result-object v2

    .line 131
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/RC2Parameters;->getEffectiveKeyBits()I

    move-result v3

    .line 130
    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/engines/RC2Engine;->generateWorkingKey([BI)[I

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    .line 144
    .end local v1    # "param":Lorg/spongycastle/crypto/params/RC2Parameters;
    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 133
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    instance-of v2, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_1

    .line 135
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 137
    .local v0, "key":[B
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {p0, v0, v2}, Lorg/spongycastle/crypto/engines/RC2Engine;->generateWorkingKey([BI)[I

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    goto :goto_0

    .line 141
    .end local v0    # "key":[B
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid parameter passed to RC2 init - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final processBlock([BI[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->workingKey:[I

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RC2 engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 173
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 178
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/RC2Engine;->encrypting:Z

    if-eqz v0, :cond_3

    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC2Engine;->encryptBlock([BI[BI)V

    .line 190
    :goto_0
    const/16 v0, 0x8

    return v0

    .line 187
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/RC2Engine;->decryptBlock([BI[BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method
