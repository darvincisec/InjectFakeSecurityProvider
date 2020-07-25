.class public Lorg/spongycastle/crypto/engines/NoekeonEngine;
.super Ljava/lang/Object;
.source "NoekeonEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field private static final genericSize:I = 0x10

.field private static final nullVector:[I

.field private static final roundConstants:[I


# instance fields
.field private _forEncryption:Z

.field private _initialised:Z

.field private decryptKeys:[I

.field private state:[I

.field private subKeys:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->nullVector:[I

    .line 23
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    return-void

    .line 18
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 23
    :array_1
    .array-data 4
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    .line 46
    return-void
.end method

.method private bytesToIntBig([BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "off"    # I

    .prologue
    .line 245
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    aget-byte v1, p1, p2

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 p2, v0, 0x1

    .end local v0    # "off":I
    .restart local p2    # "off":I
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method private decryptBlock([BI[BI)I
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v4

    .line 165
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v5

    .line 166
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v6

    .line 167
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0xc

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v7

    .line 169
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    sget-object v2, Lorg/spongycastle/crypto/engines/NoekeonEngine;->nullVector:[I

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    .line 173
    const/16 v0, 0x10

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 175
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    .line 176
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v2, v1, v4

    sget-object v3, Lorg/spongycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v4

    .line 177
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->pi1([I)V

    .line 178
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->gamma([I)V

    .line 179
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->pi2([I)V

    .line 173
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 182
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->decryptKeys:[I

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    .line 183
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v2, v1, v4

    sget-object v3, Lorg/spongycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v4

    .line 185
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v4

    invoke-direct {p0, v1, p3, p4}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 186
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v5

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v1, p3, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 187
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v6

    add-int/lit8 v2, p4, 0x8

    invoke-direct {p0, v1, p3, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 188
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v7

    add-int/lit8 v2, p4, 0xc

    invoke-direct {p0, v1, p3, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 190
    const/16 v1, 0x10

    return v1
.end method

.method private encryptBlock([BI[BI)I
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v4

    .line 133
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v5

    .line 134
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v6

    .line 135
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    add-int/lit8 v2, p2, 0xc

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v1, v7

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 140
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v2, v1, v4

    sget-object v3, Lorg/spongycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v4

    .line 141
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    .line 142
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->pi1([I)V

    .line 143
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->gamma([I)V

    .line 144
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->pi2([I)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v2, v1, v4

    sget-object v3, Lorg/spongycastle/crypto/engines/NoekeonEngine;->roundConstants:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v4

    .line 148
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    invoke-direct {p0, v1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->theta([I[I)V

    .line 150
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v4

    invoke-direct {p0, v1, p3, p4}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 151
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v5

    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v1, p3, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 152
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v6

    add-int/lit8 v2, p4, 0x8

    invoke-direct {p0, v1, p3, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 153
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->state:[I

    aget v1, v1, v7

    add-int/lit8 v2, p4, 0xc

    invoke-direct {p0, v1, p3, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->intToBytesBig(I[BI)V

    .line 155
    return v8
.end method

.method private gamma([I)V
    .locals 8
    .param p1, "a"    # [I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 195
    aget v1, p1, v5

    aget v2, p1, v7

    xor-int/lit8 v2, v2, -0x1

    aget v3, p1, v6

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p1, v5

    .line 196
    aget v1, p1, v4

    aget v2, p1, v6

    aget v3, p1, v5

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p1, v4

    .line 198
    aget v0, p1, v7

    .line 199
    .local v0, "tmp":I
    aget v1, p1, v4

    aput v1, p1, v7

    .line 200
    aput v0, p1, v4

    .line 201
    aget v1, p1, v6

    aget v2, p1, v4

    aget v3, p1, v5

    xor-int/2addr v2, v3

    aget v3, p1, v7

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p1, v6

    .line 203
    aget v1, p1, v5

    aget v2, p1, v7

    xor-int/lit8 v2, v2, -0x1

    aget v3, p1, v6

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p1, v5

    .line 204
    aget v1, p1, v4

    aget v2, p1, v6

    aget v3, p1, v5

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p1, v4

    .line 205
    return-void
.end method

.method private intToBytesBig(I[BI)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "out"    # [B
    .param p3, "off"    # I

    .prologue
    .line 253
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "off":I
    .local v0, "off":I
    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 254
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "off":I
    .restart local p3    # "off":I
    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 255
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "off":I
    .restart local v0    # "off":I
    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 256
    int-to-byte v1, p1

    aput-byte v1, p2, v0

    .line 257
    return-void
.end method

.method private pi1([I)V
    .locals 4
    .param p1, "a"    # [I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 229
    aget v0, p1, v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v1

    .line 230
    aget v0, p1, v2

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v2

    .line 231
    aget v0, p1, v3

    invoke-direct {p0, v0, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v3

    .line 232
    return-void
.end method

.method private pi2([I)V
    .locals 5
    .param p1, "a"    # [I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 236
    aget v0, p1, v2

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v2

    .line 237
    aget v0, p1, v3

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v3

    .line 238
    aget v0, p1, v4

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v0

    aput v0, p1, v4

    .line 239
    return-void
.end method

.method private rotl(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 261
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private setKey([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v1

    aput v1, v0, v2

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v1

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v1

    .line 123
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->subKeys:[I

    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->bytesToIntBig([BI)I

    move-result v2

    aput v2, v0, v1

    .line 124
    return-void
.end method

.method private theta([I[I)V
    .locals 9
    .param p1, "a"    # [I
    .param p2, "k"    # [I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 211
    aget v2, p1, v4

    aget v3, p1, v6

    xor-int v1, v2, v3

    .line 212
    .local v1, "tmp":I
    invoke-direct {p0, v1, v8}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v2

    const/16 v3, 0x18

    invoke-direct {p0, v1, v3}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    .line 213
    aget v2, p1, v5

    xor-int/2addr v2, v1

    aput v2, p1, v5

    .line 214
    aget v2, p1, v7

    xor-int/2addr v2, v1

    aput v2, p1, v7

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 218
    aget v2, p1, v0

    aget v3, p2, v0

    xor-int/2addr v2, v3

    aput v2, p1, v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    aget v2, p1, v5

    aget v3, p1, v7

    xor-int v1, v2, v3

    .line 222
    invoke-direct {p0, v1, v8}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v2

    const/16 v3, 0x18

    invoke-direct {p0, v1, v3}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    .line 223
    aget v2, p1, v4

    xor-int/2addr v2, v1

    aput v2, p1, v4

    .line 224
    aget v2, p1, v6

    xor-int/2addr v2, v1

    aput v2, p1, v6

    .line 225
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "Noekeon"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 70
    instance-of v1, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to Noekeon init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->_forEncryption:Z

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    move-object v0, p2

    .line 78
    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 80
    .local v0, "p":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->setKey([B)V

    .line 81
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 96
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 101
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NoekeonEngine;->_forEncryption:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    .line 105
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/NoekeonEngine;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method
