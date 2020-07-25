.class public Lorg/spongycastle/crypto/engines/SkipjackEngine;
.super Ljava/lang/Object;
.source "SkipjackEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field static final BLOCK_SIZE:I = 0x8

.field static ftable:[S


# instance fields
.field private encrypting:Z

.field private key0:[I

.field private key1:[I

.field private key2:[I

.field private key3:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x100

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->ftable:[S

    return-void

    :array_0
    .array-data 2
        0xa3s
        0xd7s
        0x9s
        0x83s
        0xf8s
        0x48s
        0xf6s
        0xf4s
        0xb3s
        0x21s
        0x15s
        0x78s
        0x99s
        0xb1s
        0xafs
        0xf9s
        0xe7s
        0x2ds
        0x4ds
        0x8as
        0xces
        0x4cs
        0xcas
        0x2es
        0x52s
        0x95s
        0xd9s
        0x1es
        0x4es
        0x38s
        0x44s
        0x28s
        0xas
        0xdfs
        0x2s
        0xa0s
        0x17s
        0xf1s
        0x60s
        0x68s
        0x12s
        0xb7s
        0x7as
        0xc3s
        0xe9s
        0xfas
        0x3ds
        0x53s
        0x96s
        0x84s
        0x6bs
        0xbas
        0xf2s
        0x63s
        0x9as
        0x19s
        0x7cs
        0xaes
        0xe5s
        0xf5s
        0xf7s
        0x16s
        0x6as
        0xa2s
        0x39s
        0xb6s
        0x7bs
        0xfs
        0xc1s
        0x93s
        0x81s
        0x1bs
        0xees
        0xb4s
        0x1as
        0xeas
        0xd0s
        0x91s
        0x2fs
        0xb8s
        0x55s
        0xb9s
        0xdas
        0x85s
        0x3fs
        0x41s
        0xbfs
        0xe0s
        0x5as
        0x58s
        0x80s
        0x5fs
        0x66s
        0xbs
        0xd8s
        0x90s
        0x35s
        0xd5s
        0xc0s
        0xa7s
        0x33s
        0x6s
        0x65s
        0x69s
        0x45s
        0x0s
        0x94s
        0x56s
        0x6ds
        0x98s
        0x9bs
        0x76s
        0x97s
        0xfcs
        0xb2s
        0xc2s
        0xb0s
        0xfes
        0xdbs
        0x20s
        0xe1s
        0xebs
        0xd6s
        0xe4s
        0xdds
        0x47s
        0x4as
        0x1ds
        0x42s
        0xeds
        0x9es
        0x6es
        0x49s
        0x3cs
        0xcds
        0x43s
        0x27s
        0xd2s
        0x7s
        0xd4s
        0xdes
        0xc7s
        0x67s
        0x18s
        0x89s
        0xcbs
        0x30s
        0x1fs
        0x8ds
        0xc6s
        0x8fs
        0xaas
        0xc8s
        0x74s
        0xdcs
        0xc9s
        0x5ds
        0x5cs
        0x31s
        0xa4s
        0x70s
        0x88s
        0x61s
        0x2cs
        0x9fs
        0xds
        0x2bs
        0x87s
        0x50s
        0x82s
        0x54s
        0x64s
        0x26s
        0x7ds
        0x3s
        0x40s
        0x34s
        0x4bs
        0x1cs
        0x73s
        0xd1s
        0xc4s
        0xfds
        0x3bs
        0xccs
        0xfbs
        0x7fs
        0xabs
        0xe6s
        0x3es
        0x5bs
        0xa5s
        0xads
        0x4s
        0x23s
        0x9cs
        0x14s
        0x51s
        0x22s
        0xf0s
        0x29s
        0x79s
        0x71s
        0x7es
        0xffs
        0x8cs
        0xes
        0xe2s
        0xcs
        0xefs
        0xbcs
        0x72s
        0x75s
        0x6fs
        0x37s
        0xa1s
        0xecs
        0xd3s
        0x8es
        0x62s
        0x8bs
        0x86s
        0x10s
        0xe8s
        0x8s
        0x77s
        0x11s
        0xbes
        0x92s
        0x4fs
        0x24s
        0xc5s
        0x32s
        0x36s
        0x9ds
        0xcfs
        0xf3s
        0xa6s
        0xbbs
        0xacs
        0x5es
        0x6cs
        0xa9s
        0x13s
        0x57s
        0x25s
        0xb5s
        0xe3s
        0xbds
        0xa8s
        0x3as
        0x1s
        0x5s
        0x59s
        0x2as
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private g(II)I
    .locals 8
    .param p1, "k"    # I
    .param p2, "w"    # I

    .prologue
    .line 134
    shr-int/lit8 v6, p2, 0x8

    and-int/lit16 v0, v6, 0xff

    .line 135
    .local v0, "g1":I
    and-int/lit16 v1, p2, 0xff

    .line 137
    .local v1, "g2":I
    sget-object v6, Lorg/spongycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key0:[I

    aget v7, v7, p1

    xor-int/2addr v7, v1

    aget-short v6, v6, v7

    xor-int v2, v6, v0

    .line 138
    .local v2, "g3":I
    sget-object v6, Lorg/spongycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key1:[I

    aget v7, v7, p1

    xor-int/2addr v7, v2

    aget-short v6, v6, v7

    xor-int v3, v6, v1

    .line 139
    .local v3, "g4":I
    sget-object v6, Lorg/spongycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key2:[I

    aget v7, v7, p1

    xor-int/2addr v7, v3

    aget-short v6, v6, v7

    xor-int v4, v6, v2

    .line 140
    .local v4, "g5":I
    sget-object v6, Lorg/spongycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key3:[I

    aget v7, v7, p1

    xor-int/2addr v7, v4

    aget-short v6, v6, v7

    xor-int v5, v6, v3

    .line 142
    .local v5, "g6":I
    shl-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v5

    return v6
.end method

.method private h(II)I
    .locals 8
    .param p1, "k"    # I
    .param p2, "w"    # I

    .prologue
    .line 202
    and-int/lit16 v0, p2, 0xff

    .line 203
    .local v0, "h1":I
    shr-int/lit8 v6, p2, 0x8

    and-int/lit16 v1, v6, 0xff

    .line 205
    .local v1, "h2":I
    sget-object v6, Lorg/spongycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key3:[I

    aget v7, v7, p1

    xor-int/2addr v7, v1

    aget-short v6, v6, v7

    xor-int v2, v6, v0

    .line 206
    .local v2, "h3":I
    sget-object v6, Lorg/spongycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key2:[I

    aget v7, v7, p1

    xor-int/2addr v7, v2

    aget-short v6, v6, v7

    xor-int v3, v6, v1

    .line 207
    .local v3, "h4":I
    sget-object v6, Lorg/spongycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key1:[I

    aget v7, v7, p1

    xor-int/2addr v7, v3

    aget-short v6, v6, v7

    xor-int v4, v6, v2

    .line 208
    .local v4, "h5":I
    sget-object v6, Lorg/spongycastle/crypto/engines/SkipjackEngine;->ftable:[S

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key0:[I

    aget v7, v7, p1

    xor-int/2addr v7, v4

    aget-short v6, v6, v7

    xor-int v5, v6, v3

    .line 210
    .local v5, "h6":I
    shl-int/lit8 v6, v5, 0x8

    add-int/2addr v6, v4

    return v6
.end method


# virtual methods
.method public decryptBlock([BI[BI)I
    .locals 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    const/16 v10, 0x8

    .line 219
    add-int/lit8 v8, p2, 0x0

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v5, v8, v9

    .line 220
    .local v5, "w2":I
    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v4, v8, v9

    .line 221
    .local v4, "w1":I
    add-int/lit8 v8, p2, 0x4

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v7, v8, v9

    .line 222
    .local v7, "w4":I
    add-int/lit8 v8, p2, 0x6

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v6, v8, v9

    .line 224
    .local v6, "w3":I
    const/16 v1, 0x1f

    .line 226
    .local v1, "k":I
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    const/4 v8, 0x2

    if-ge v2, v8, :cond_2

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v10, :cond_0

    .line 230
    move v3, v7

    .line 231
    .local v3, "tmp":I
    move v7, v6

    .line 232
    move v6, v5

    .line 233
    invoke-direct {p0, v1, v4}, Lorg/spongycastle/crypto/engines/SkipjackEngine;->h(II)I

    move-result v5

    .line 234
    xor-int v8, v5, v3

    add-int/lit8 v9, v1, 0x1

    xor-int v4, v8, v9

    .line 235
    add-int/lit8 v1, v1, -0x1

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    .end local v3    # "tmp":I
    :cond_0
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_1

    .line 240
    move v3, v7

    .line 241
    .restart local v3    # "tmp":I
    move v7, v6

    .line 242
    xor-int v8, v4, v5

    add-int/lit8 v9, v1, 0x1

    xor-int v6, v8, v9

    .line 243
    invoke-direct {p0, v1, v4}, Lorg/spongycastle/crypto/engines/SkipjackEngine;->h(II)I

    move-result v5

    .line 244
    move v4, v3

    .line 245
    add-int/lit8 v1, v1, -0x1

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 226
    .end local v3    # "tmp":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v8, p4, 0x0

    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 250
    add-int/lit8 v8, p4, 0x1

    int-to-byte v9, v5

    aput-byte v9, p3, v8

    .line 251
    add-int/lit8 v8, p4, 0x2

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 252
    add-int/lit8 v8, p4, 0x3

    int-to-byte v9, v4

    aput-byte v9, p3, v8

    .line 253
    add-int/lit8 v8, p4, 0x4

    shr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 254
    add-int/lit8 v8, p4, 0x5

    int-to-byte v9, v7

    aput-byte v9, p3, v8

    .line 255
    add-int/lit8 v8, p4, 0x6

    shr-int/lit8 v9, v6, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 256
    add-int/lit8 v8, p4, 0x7

    int-to-byte v9, v6

    aput-byte v9, p3, v8

    .line 258
    return v10
.end method

.method public encryptBlock([BI[BI)I
    .locals 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    const/16 v10, 0x8

    .line 151
    add-int/lit8 v8, p2, 0x0

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v4, v8, v9

    .line 152
    .local v4, "w1":I
    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v5, v8, v9

    .line 153
    .local v5, "w2":I
    add-int/lit8 v8, p2, 0x4

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x5

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v6, v8, v9

    .line 154
    .local v6, "w3":I
    add-int/lit8 v8, p2, 0x6

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, p2, 0x7

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    add-int v7, v8, v9

    .line 156
    .local v7, "w4":I
    const/4 v1, 0x0

    .line 158
    .local v1, "k":I
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    const/4 v8, 0x2

    if-ge v2, v8, :cond_2

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v10, :cond_0

    .line 162
    move v3, v7

    .line 163
    .local v3, "tmp":I
    move v7, v6

    .line 164
    move v6, v5

    .line 165
    invoke-direct {p0, v1, v4}, Lorg/spongycastle/crypto/engines/SkipjackEngine;->g(II)I

    move-result v5

    .line 166
    xor-int v8, v5, v3

    add-int/lit8 v9, v1, 0x1

    xor-int v4, v8, v9

    .line 167
    add-int/lit8 v1, v1, 0x1

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    .end local v3    # "tmp":I
    :cond_0
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_1

    .line 172
    move v3, v7

    .line 173
    .restart local v3    # "tmp":I
    move v7, v6

    .line 174
    xor-int v8, v4, v5

    add-int/lit8 v9, v1, 0x1

    xor-int v6, v8, v9

    .line 175
    invoke-direct {p0, v1, v4}, Lorg/spongycastle/crypto/engines/SkipjackEngine;->g(II)I

    move-result v5

    .line 176
    move v4, v3

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 158
    .end local v3    # "tmp":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v8, p4, 0x0

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 182
    add-int/lit8 v8, p4, 0x1

    int-to-byte v9, v4

    aput-byte v9, p3, v8

    .line 183
    add-int/lit8 v8, p4, 0x2

    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 184
    add-int/lit8 v8, p4, 0x3

    int-to-byte v9, v5

    aput-byte v9, p3, v8

    .line 185
    add-int/lit8 v8, p4, 0x4

    shr-int/lit8 v9, v6, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 186
    add-int/lit8 v8, p4, 0x5

    int-to-byte v9, v6

    aput-byte v9, p3, v8

    .line 187
    add-int/lit8 v8, p4, 0x6

    shr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    aput-byte v9, p3, v8

    .line 188
    add-int/lit8 v8, p4, 0x7

    int-to-byte v9, v7

    aput-byte v9, p3, v8

    .line 190
    return v10
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "SKIPJACK"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    const/16 v4, 0x20

    .line 52
    instance-of v2, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v2, :cond_0

    .line 54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid parameter passed to SKIPJACK init - "

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

    .line 57
    :cond_0
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 59
    .local v1, "keyBytes":[B
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->encrypting:Z

    .line 60
    new-array v2, v4, [I

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key0:[I

    .line 61
    new-array v2, v4, [I

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key1:[I

    .line 62
    new-array v2, v4, [I

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key2:[I

    .line 63
    new-array v2, v4, [I

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key3:[I

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 71
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key0:[I

    mul-int/lit8 v3, v0, 0x4

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    .line 72
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key1:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    .line 73
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key2:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    .line 74
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key3:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0xa

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->key1:[I

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SKIPJACK engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 101
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 106
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/SkipjackEngine;->encrypting:Z

    if-eqz v0, :cond_3

    .line 111
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/SkipjackEngine;->encryptBlock([BI[BI)I

    .line 118
    :goto_0
    const/16 v0, 0x8

    return v0

    .line 115
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/SkipjackEngine;->decryptBlock([BI[BI)I

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method
