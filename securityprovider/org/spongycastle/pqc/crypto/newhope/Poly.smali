.class Lorg/spongycastle/pqc/crypto/newhope/Poly;
.super Ljava/lang/Object;
.source "Poly.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add([S[S[S)V
    .locals 3
    .param p0, "x"    # [S
    .param p1, "y"    # [S
    .param p2, "z"    # [S

    .prologue
    .line 10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    .line 12
    aget-short v1, p0, v0

    aget-short v2, p1, v0

    add-int/2addr v1, v2

    int-to-short v1, v1

    invoke-static {v1}, Lorg/spongycastle/pqc/crypto/newhope/Reduce;->barrett(S)S

    move-result v1

    aput-short v1, p2, v0

    .line 10
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    return-void
.end method

.method static fromBytes([S[B)V
    .locals 13
    .param p0, "r"    # [S
    .param p1, "a"    # [B

    .prologue
    .line 18
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v10, 0x100

    if-ge v7, v10, :cond_0

    .line 20
    mul-int/lit8 v8, v7, 0x7

    .line 21
    .local v8, "j":I
    add-int/lit8 v10, v8, 0x0

    aget-byte v10, p1, v10

    and-int/lit16 v0, v10, 0xff

    .local v0, "a0":I
    add-int/lit8 v10, v8, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v1, v10, 0xff

    .local v1, "a1":I
    add-int/lit8 v10, v8, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v2, v10, 0xff

    .local v2, "a2":I
    add-int/lit8 v10, v8, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v3, v10, 0xff

    .line 22
    .local v3, "a3":I
    add-int/lit8 v10, v8, 0x4

    aget-byte v10, p1, v10

    and-int/lit16 v4, v10, 0xff

    .local v4, "a4":I
    add-int/lit8 v10, v8, 0x5

    aget-byte v10, p1, v10

    and-int/lit16 v5, v10, 0xff

    .local v5, "a5":I
    add-int/lit8 v10, v8, 0x6

    aget-byte v10, p1, v10

    and-int/lit16 v6, v10, 0xff

    .line 24
    .local v6, "a6":I
    mul-int/lit8 v9, v7, 0x4

    .line 25
    .local v9, "k":I
    add-int/lit8 v10, v9, 0x0

    and-int/lit8 v11, v1, 0x3f

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v11, v0

    int-to-short v11, v11

    aput-short v11, p0, v10

    .line 26
    add-int/lit8 v10, v9, 0x1

    ushr-int/lit8 v11, v1, 0x6

    shl-int/lit8 v12, v2, 0x2

    or-int/2addr v11, v12

    and-int/lit8 v12, v3, 0xf

    shl-int/lit8 v12, v12, 0xa

    or-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p0, v10

    .line 27
    add-int/lit8 v10, v9, 0x2

    ushr-int/lit8 v11, v3, 0x4

    shl-int/lit8 v12, v4, 0x4

    or-int/2addr v11, v12

    and-int/lit8 v12, v5, 0x3

    shl-int/lit8 v12, v12, 0xc

    or-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p0, v10

    .line 28
    add-int/lit8 v10, v9, 0x3

    ushr-int/lit8 v11, v5, 0x2

    shl-int/lit8 v12, v6, 0x6

    or-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p0, v10

    .line 18
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "a0":I
    .end local v1    # "a1":I
    .end local v2    # "a2":I
    .end local v3    # "a3":I
    .end local v4    # "a4":I
    .end local v5    # "a5":I
    .end local v6    # "a6":I
    .end local v8    # "j":I
    .end local v9    # "k":I
    :cond_0
    return-void
.end method

.method static fromNTT([S)V
    .locals 1
    .param p0, "r"    # [S

    .prologue
    .line 34
    invoke-static {p0}, Lorg/spongycastle/pqc/crypto/newhope/NTT;->bitReverse([S)V

    .line 35
    sget-object v0, Lorg/spongycastle/pqc/crypto/newhope/Precomp;->OMEGAS_INV_MONTGOMERY:[S

    invoke-static {p0, v0}, Lorg/spongycastle/pqc/crypto/newhope/NTT;->core([S[S)V

    .line 36
    sget-object v0, Lorg/spongycastle/pqc/crypto/newhope/Precomp;->PSIS_INV_MONTGOMERY:[S

    invoke-static {p0, v0}, Lorg/spongycastle/pqc/crypto/newhope/NTT;->mulCoefficients([S[S)V

    .line 37
    return-void
.end method

.method static getNoise([S[BB)V
    .locals 11
    .param p0, "r"    # [S
    .param p1, "seed"    # [B
    .param p2, "nonce"    # B

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 41
    new-array v5, v10, [B

    .line 42
    .local v5, "iv":[B
    aput-byte p2, v5, v9

    .line 44
    const/16 v8, 0x1000

    new-array v2, v8, [B

    .line 45
    .local v2, "buf":[B
    array-length v8, v2

    invoke-static {p1, v5, v2, v9, v8}, Lorg/spongycastle/pqc/crypto/newhope/ChaCha20;->process([B[B[BII)V

    .line 47
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v8, 0x400

    if-ge v4, v8, :cond_1

    .line 49
    mul-int/lit8 v8, v4, 0x4

    invoke-static {v2, v8}, Lorg/spongycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v7

    .line 52
    .local v7, "t":I
    const/4 v3, 0x0

    .line 53
    .local v3, "d":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v10, :cond_0

    .line 55
    shr-int v8, v7, v6

    const v9, 0x1010101

    and-int/2addr v8, v9

    add-int/2addr v3, v8

    .line 53
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 57
    :cond_0
    ushr-int/lit8 v8, v3, 0x18

    ushr-int/lit8 v9, v3, 0x0

    add-int/2addr v8, v9

    and-int/lit16 v0, v8, 0xff

    .line 58
    .local v0, "a":I
    ushr-int/lit8 v8, v3, 0x10

    ushr-int/lit8 v9, v3, 0x8

    add-int/2addr v8, v9

    and-int/lit16 v1, v8, 0xff

    .line 59
    .local v1, "b":I
    add-int/lit16 v8, v0, 0x3001

    sub-int/2addr v8, v1

    int-to-short v8, v8

    aput-short v8, p0, v4

    .line 47
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "a":I
    .end local v1    # "b":I
    .end local v3    # "d":I
    .end local v6    # "j":I
    .end local v7    # "t":I
    :cond_1
    return-void
.end method

.method private static normalize(S)S
    .locals 4
    .param p0, "x"    # S

    .prologue
    .line 139
    invoke-static {p0}, Lorg/spongycastle/pqc/crypto/newhope/Reduce;->barrett(S)S

    move-result v2

    .line 140
    .local v2, "t":I
    add-int/lit16 v1, v2, -0x3001

    .line 141
    .local v1, "m":I
    shr-int/lit8 v0, v1, 0x1f

    .line 142
    .local v0, "c":I
    xor-int v3, v2, v1

    and-int/2addr v3, v0

    xor-int v2, v1, v3

    .line 143
    int-to-short v3, v2

    return v3
.end method

.method static pointWise([S[S[S)V
    .locals 6
    .param p0, "x"    # [S
    .param p1, "y"    # [S
    .param p2, "z"    # [S

    .prologue
    const v5, 0xffff

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x400

    if-ge v0, v4, :cond_0

    .line 67
    aget-short v4, p0, v0

    and-int v2, v4, v5

    .local v2, "xi":I
    aget-short v4, p1, v0

    and-int v3, v4, v5

    .line 68
    .local v3, "yi":I
    mul-int/lit16 v4, v3, 0xc72

    invoke-static {v4}, Lorg/spongycastle/pqc/crypto/newhope/Reduce;->montgomery(I)S

    move-result v1

    .line 69
    .local v1, "t":S
    and-int v4, v1, v5

    mul-int/2addr v4, v2

    invoke-static {v4}, Lorg/spongycastle/pqc/crypto/newhope/Reduce;->montgomery(I)S

    move-result v4

    aput-short v4, p2, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "t":S
    .end local v2    # "xi":I
    .end local v3    # "yi":I
    :cond_0
    return-void
.end method

.method static toBytes([B[S)V
    .locals 10
    .param p0, "r"    # [B
    .param p1, "p"    # [S

    .prologue
    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v7, 0x100

    if-ge v0, v7, :cond_0

    .line 77
    mul-int/lit8 v1, v0, 0x4

    .line 80
    .local v1, "j":I
    add-int/lit8 v7, v1, 0x0

    aget-short v7, p1, v7

    invoke-static {v7}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->normalize(S)S

    move-result v3

    .line 81
    .local v3, "t0":S
    add-int/lit8 v7, v1, 0x1

    aget-short v7, p1, v7

    invoke-static {v7}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->normalize(S)S

    move-result v4

    .line 82
    .local v4, "t1":S
    add-int/lit8 v7, v1, 0x2

    aget-short v7, p1, v7

    invoke-static {v7}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->normalize(S)S

    move-result v5

    .line 83
    .local v5, "t2":S
    add-int/lit8 v7, v1, 0x3

    aget-short v7, p1, v7

    invoke-static {v7}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->normalize(S)S

    move-result v6

    .line 85
    .local v6, "t3":S
    mul-int/lit8 v2, v0, 0x7

    .line 86
    .local v2, "k":I
    add-int/lit8 v7, v2, 0x0

    int-to-byte v8, v3

    aput-byte v8, p0, v7

    .line 87
    add-int/lit8 v7, v2, 0x1

    shr-int/lit8 v8, v3, 0x8

    shl-int/lit8 v9, v4, 0x6

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p0, v7

    .line 88
    add-int/lit8 v7, v2, 0x2

    shr-int/lit8 v8, v4, 0x2

    int-to-byte v8, v8

    aput-byte v8, p0, v7

    .line 89
    add-int/lit8 v7, v2, 0x3

    shr-int/lit8 v8, v4, 0xa

    shl-int/lit8 v9, v5, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p0, v7

    .line 90
    add-int/lit8 v7, v2, 0x4

    shr-int/lit8 v8, v5, 0x4

    int-to-byte v8, v8

    aput-byte v8, p0, v7

    .line 91
    add-int/lit8 v7, v2, 0x5

    shr-int/lit8 v8, v5, 0xc

    shl-int/lit8 v9, v6, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p0, v7

    .line 92
    add-int/lit8 v7, v2, 0x6

    shr-int/lit8 v8, v6, 0x6

    int-to-byte v8, v8

    aput-byte v8, p0, v7

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "j":I
    .end local v2    # "k":I
    .end local v3    # "t0":S
    .end local v4    # "t1":S
    .end local v5    # "t2":S
    .end local v6    # "t3":S
    :cond_0
    return-void
.end method

.method static toNTT([S)V
    .locals 1
    .param p0, "r"    # [S

    .prologue
    .line 98
    sget-object v0, Lorg/spongycastle/pqc/crypto/newhope/Precomp;->PSIS_BITREV_MONTGOMERY:[S

    invoke-static {p0, v0}, Lorg/spongycastle/pqc/crypto/newhope/NTT;->mulCoefficients([S[S)V

    .line 99
    sget-object v0, Lorg/spongycastle/pqc/crypto/newhope/Precomp;->OMEGAS_MONTGOMERY:[S

    invoke-static {p0, v0}, Lorg/spongycastle/pqc/crypto/newhope/NTT;->core([S[S)V

    .line 100
    return-void
.end method

.method static uniform([S[B)V
    .locals 9
    .param p0, "a"    # [S
    .param p1, "seed"    # [B

    .prologue
    const/4 v8, 0x0

    .line 104
    new-instance v5, Lorg/spongycastle/crypto/digests/SHAKEDigest;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 105
    .local v5, "xof":Lorg/spongycastle/crypto/digests/SHAKEDigest;
    array-length v6, p1

    invoke-virtual {v5, p1, v8, v6}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 107
    const/4 v2, 0x0

    .line 110
    .local v2, "pos":I
    :cond_0
    const/16 v6, 0x100

    new-array v1, v6, [B

    .line 111
    .local v1, "output":[B
    array-length v6, v1

    invoke-virtual {v5, v1, v8, v6}, Lorg/spongycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 115
    aget-byte v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int v4, v6, v7

    .line 116
    .local v4, "val":I
    and-int/lit16 v4, v4, 0x3fff

    .line 117
    const/16 v6, 0x3001

    if-ge v4, v6, :cond_2

    .line 119
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    int-to-short v6, v4

    aput-short v6, p0, v2

    .line 120
    const/16 v6, 0x400

    if-ne v3, v6, :cond_1

    .line 122
    return-void

    :cond_1
    move v2, v3

    .line 113
    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method
