.class public Lorg/spongycastle/crypto/digests/RIPEMD160Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source "RIPEMD160Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x14


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    .line 25
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->reset()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/RIPEMD160Digest;)V
    .locals 1
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    .line 36
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->copyIn(Lorg/spongycastle/crypto/digests/RIPEMD160Digest;)V

    .line 37
    return-void
.end method

.method private RL(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "n"    # I

    .prologue
    .line 144
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private copyIn(Lorg/spongycastle/crypto/digests/RIPEMD160Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 43
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H0:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H0:I

    .line 44
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H1:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H1:I

    .line 45
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H2:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H2:I

    .line 46
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H3:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H3:I

    .line 47
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H4:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H4:I

    .line 49
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget v0, p1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    .line 51
    return-void
.end method

.method private f1(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 159
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private f2(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 170
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private f3(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 181
    xor-int/lit8 v0, p2, -0x1

    or-int/2addr v0, p1

    xor-int/2addr v0, p3

    return v0
.end method

.method private f4(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 192
    and-int v0, p1, p3

    xor-int/lit8 v1, p3, -0x1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private f5(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 203
    xor-int/lit8 v0, p3, -0x1

    or-int/2addr v0, p2

    xor-int/2addr v0, p1

    return v0
.end method

.method private unpackWord(I[BI)V
    .locals 2
    .param p1, "word"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .prologue
    .line 93
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 94
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 95
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 96
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 97
    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .prologue
    .line 434
    new-instance v0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>(Lorg/spongycastle/crypto/digests/RIPEMD160Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->finish()V

    .line 105
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H0:I

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    .line 106
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    .line 107
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    .line 108
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H3:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    .line 109
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H4:I

    add-int/lit8 v1, p2, 0x10

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->unpackWord(I[BI)V

    .line 111
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->reset()V

    .line 113
    const/16 v0, 0x14

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "RIPEMD160"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x14

    return v0
.end method

.method protected processBlock()V
    .locals 14

    .prologue
    .line 214
    iget v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H0:I

    .local v1, "aa":I
    move v0, v1

    .line 215
    .local v0, "a":I
    iget v3, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H1:I

    .local v3, "bb":I
    move v2, v3

    .line 216
    .local v2, "b":I
    iget v5, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H2:I

    .local v5, "cc":I
    move v4, v5

    .line 217
    .local v4, "c":I
    iget v7, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H3:I

    .local v7, "dd":I
    move v6, v7

    .line 218
    .local v6, "d":I
    iget v9, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H4:I

    .local v9, "ee":I
    move v8, v9

    .line 224
    .local v8, "e":I
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 225
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 226
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 227
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 228
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 229
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 230
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 231
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 232
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 233
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 234
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 235
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 236
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 237
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 238
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 239
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 242
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 243
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 244
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 245
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 246
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 247
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 248
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 249
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 250
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 251
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 252
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 253
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 254
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 255
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 256
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 257
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x50a28be6

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 263
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 264
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 265
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 266
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 267
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 268
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 269
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 270
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 271
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 272
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 273
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 274
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 275
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 276
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 277
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 278
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5a827999

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 281
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 282
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 283
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 284
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 285
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 286
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 287
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 288
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 289
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 290
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 291
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 292
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 293
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 294
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 295
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 296
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x5c4dd124

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 302
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 303
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 304
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 305
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 306
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 307
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 308
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 309
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 310
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 311
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 312
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 313
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 314
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 315
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 316
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 317
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6ed9eba1

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 320
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 321
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 322
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 323
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 324
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 325
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 326
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 327
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 328
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 329
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 330
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 331
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 332
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 333
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 334
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/4 v12, 0x7

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 335
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x6d703ef3

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 341
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 342
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 343
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 344
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 345
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 346
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 347
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 348
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 349
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 350
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 351
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 352
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 353
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 354
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 355
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 356
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f4(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x70e44324

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 359
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 360
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 361
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 362
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 363
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 364
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 365
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 366
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 367
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 368
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 369
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 370
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 371
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 372
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 373
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 374
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, 0x7a6d76e9

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 380
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 381
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 382
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 383
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 384
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 385
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 386
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 387
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 388
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 389
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 390
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 391
    invoke-direct {p0, v2, v4, v6}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v0

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v0, v11, v8

    const/16 v11, 0xa

    invoke-direct {p0, v4, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v4

    .line 392
    invoke-direct {p0, v0, v2, v4}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v8

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v8, v11, v6

    const/16 v11, 0xa

    invoke-direct {p0, v2, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v2

    .line 393
    invoke-direct {p0, v8, v0, v2}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v6

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v6, v11, v4

    const/16 v11, 0xa

    invoke-direct {p0, v0, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v0

    .line 394
    invoke-direct {p0, v6, v8, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v4

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v4, v11, v2

    const/16 v11, 0xa

    invoke-direct {p0, v8, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v8

    .line 395
    invoke-direct {p0, v4, v6, v8}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const v12, -0x56ac02b2

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v2, v11, v0

    const/16 v11, 0xa

    invoke-direct {p0, v6, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v6

    .line 398
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xc

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 399
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xf

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 400
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xa

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 401
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0x9

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 402
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xc

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 403
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 404
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x8

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xe

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 405
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 406
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x6

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0x8

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 407
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 408
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xd

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x6

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 409
    invoke-direct {p0, v3, v5, v7}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xe

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v1, v11, v9

    const/16 v11, 0xa

    invoke-direct {p0, v5, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v5

    .line 410
    invoke-direct {p0, v1, v3, v5}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xf

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v9, v11, v7

    const/16 v11, 0xa

    invoke-direct {p0, v3, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v3

    .line 411
    invoke-direct {p0, v9, v1, v3}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v7, v11, v5

    const/16 v11, 0xa

    invoke-direct {p0, v1, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v1

    .line 412
    invoke-direct {p0, v7, v9, v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v5

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0x9

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v5, v11, v3

    const/16 v11, 0xa

    invoke-direct {p0, v9, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v9

    .line 413
    invoke-direct {p0, v5, v7, v9}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v13, 0xb

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {p0, v11, v12}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v11

    add-int v3, v11, v1

    const/16 v11, 0xa

    invoke-direct {p0, v7, v11}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->RL(II)I

    move-result v7

    .line 415
    iget v11, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H1:I

    add-int/2addr v11, v4

    add-int/2addr v7, v11

    .line 416
    iget v11, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H2:I

    add-int/2addr v11, v6

    add-int/2addr v11, v9

    iput v11, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H1:I

    .line 417
    iget v11, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H3:I

    add-int/2addr v11, v8

    add-int/2addr v11, v1

    iput v11, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H2:I

    .line 418
    iget v11, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H4:I

    add-int/2addr v11, v0

    add-int/2addr v11, v3

    iput v11, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H3:I

    .line 419
    iget v11, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H0:I

    add-int/2addr v11, v2

    add-int/2addr v11, v5

    iput v11, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H4:I

    .line 420
    iput v7, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H0:I

    .line 425
    const/4 v11, 0x0

    iput v11, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    .line 426
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v11, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    array-length v11, v11

    if-eq v10, v11, :cond_0

    .line 428
    iget-object v11, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/4 v12, 0x0

    aput v12, v11, v10

    .line 426
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 430
    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 5
    .param p1, "bitLength"    # J

    .prologue
    const/16 v4, 0xe

    .line 79
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    if-le v0, v4, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->processBlock()V

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v1, v2

    aput v1, v0, v4

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    const/16 v1, 0xf

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 86
    return-void
.end method

.method protected processWord([BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    iget v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 70
    iget v0, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->processBlock()V

    .line 74
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->reset()V

    .line 123
    const v1, 0x67452301

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H0:I

    .line 124
    const v1, -0x10325477

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H1:I

    .line 125
    const v1, -0x67452302

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H2:I

    .line 126
    const v1, 0x10325476

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H3:I

    .line 127
    const v1, -0x3c2d1e10

    iput v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->H4:I

    .line 129
    iput v2, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->xOff:I

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 133
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->X:[I

    aput v2, v1, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lorg/spongycastle/util/Memoable;

    .prologue
    .line 439
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    .line 441
    .local v0, "d":Lorg/spongycastle/crypto/digests/RIPEMD160Digest;
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;->copyIn(Lorg/spongycastle/crypto/digests/RIPEMD160Digest;)V

    .line 442
    return-void
.end method
