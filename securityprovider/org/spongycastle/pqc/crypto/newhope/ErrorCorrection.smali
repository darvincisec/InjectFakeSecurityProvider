.class Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static LDDecode(IIII)S
    .locals 2
    .param p0, "xi0"    # I
    .param p1, "xi1"    # I
    .param p2, "xi2"    # I
    .param p3, "xi3"    # I

    .prologue
    .line 96
    invoke-static {p0}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result v0

    .line 97
    .local v0, "t":I
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    invoke-static {p2}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    invoke-static {p3}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    const v1, 0x18008

    sub-int/2addr v0, v1

    .line 103
    ushr-int/lit8 v1, v0, 0x1f

    int-to-short v1, v1

    return v1
.end method

.method static abs(I)I
    .locals 2
    .param p0, "v"    # I

    .prologue
    .line 9
    shr-int/lit8 v0, p0, 0x1f

    .line 10
    .local v0, "mask":I
    xor-int v1, p0, v0

    sub-int/2addr v1, v0

    return v1
.end method

.method static f([IIII)I
    .locals 5
    .param p0, "v"    # [I
    .param p1, "off0"    # I
    .param p2, "off1"    # I
    .param p3, "x"    # I

    .prologue
    .line 18
    mul-int/lit16 v0, p3, 0xaaa

    .line 19
    .local v0, "b":I
    shr-int/lit8 v2, v0, 0x19

    .line 20
    .local v2, "t":I
    mul-int/lit16 v4, v2, 0x3001

    sub-int v0, p3, v4

    .line 21
    rsub-int v0, v0, 0x3000

    .line 22
    shr-int/lit8 v0, v0, 0x1f

    .line 23
    sub-int/2addr v2, v0

    .line 25
    and-int/lit8 v1, v2, 0x1

    .line 26
    .local v1, "r":I
    shr-int/lit8 v3, v2, 0x1

    .line 27
    .local v3, "xit":I
    add-int v4, v3, v1

    aput v4, p0, p1

    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 30
    and-int/lit8 v1, v2, 0x1

    .line 31
    shr-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v1

    aput v4, p0, p2

    .line 33
    aget v4, p0, p1

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit16 v4, v4, 0x3001

    sub-int v4, p3, v4

    invoke-static {v4}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->abs(I)I

    move-result v4

    return v4
.end method

.method static g(I)I
    .locals 4
    .param p0, "x"    # I

    .prologue
    .line 41
    mul-int/lit16 v0, p0, 0xaaa

    .line 42
    .local v0, "b":I
    shr-int/lit8 v2, v0, 0x1b

    .line 43
    .local v2, "t":I
    const v3, 0xc004

    mul-int/2addr v3, v2

    sub-int v0, p0, v3

    .line 44
    const v3, 0xc003

    sub-int v0, v3, v0

    .line 45
    shr-int/lit8 v0, v0, 0x1f

    .line 46
    sub-int/2addr v2, v0

    .line 48
    and-int/lit8 v1, v2, 0x1

    .line 49
    .local v1, "c":I
    shr-int/lit8 v3, v2, 0x1

    add-int v2, v3, v1

    .line 51
    const v3, 0x18008

    mul-int/2addr v2, v3

    .line 53
    sub-int v3, v2, p0

    invoke-static {v3}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->abs(I)I

    move-result v3

    return v3
.end method

.method static helpRec([S[S[BB)V
    .locals 11
    .param p0, "c"    # [S
    .param p1, "v"    # [S
    .param p2, "seed"    # [B
    .param p3, "nonce"    # B

    .prologue
    .line 58
    const/16 v7, 0x8

    new-array v1, v7, [B

    .line 60
    .local v1, "iv":[B
    const/4 v7, 0x0

    aput-byte p3, v1, v7

    .line 62
    const/16 v7, 0x20

    new-array v4, v7, [B

    .line 63
    .local v4, "rand":[B
    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {p2, v1, v4, v7, v8}, Lorg/spongycastle/pqc/crypto/newhope/ChaCha20;->process([B[B[BII)V

    .line 66
    const/16 v7, 0x8

    new-array v6, v7, [I

    .local v6, "vs":[I
    const/4 v7, 0x4

    new-array v5, v7, [I

    .line 69
    .local v5, "vTmp":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v7, 0x100

    if-ge v0, v7, :cond_0

    .line 71
    ushr-int/lit8 v7, v0, 0x3

    aget-byte v7, v4, v7

    and-int/lit8 v8, v0, 0x7

    ushr-int/2addr v7, v8

    and-int/lit8 v3, v7, 0x1

    .line 73
    .local v3, "rBit":I
    const/4 v7, 0x0

    const/4 v8, 0x4

    add-int/lit8 v9, v0, 0x0

    aget-short v9, p1, v9

    mul-int/lit8 v9, v9, 0x8

    mul-int/lit8 v10, v3, 0x4

    add-int/2addr v9, v10

    invoke-static {v6, v7, v8, v9}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v2

    .line 74
    .local v2, "k":I
    const/4 v7, 0x1

    const/4 v8, 0x5

    add-int/lit16 v9, v0, 0x100

    aget-short v9, p1, v9

    mul-int/lit8 v9, v9, 0x8

    mul-int/lit8 v10, v3, 0x4

    add-int/2addr v9, v10

    invoke-static {v6, v7, v8, v9}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v7

    add-int/2addr v2, v7

    .line 75
    const/4 v7, 0x2

    const/4 v8, 0x6

    add-int/lit16 v9, v0, 0x200

    aget-short v9, p1, v9

    mul-int/lit8 v9, v9, 0x8

    mul-int/lit8 v10, v3, 0x4

    add-int/2addr v9, v10

    invoke-static {v6, v7, v8, v9}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v7

    add-int/2addr v2, v7

    .line 76
    const/4 v7, 0x3

    const/4 v8, 0x7

    add-int/lit16 v9, v0, 0x300

    aget-short v9, p1, v9

    mul-int/lit8 v9, v9, 0x8

    mul-int/lit8 v10, v3, 0x4

    add-int/2addr v9, v10

    invoke-static {v6, v7, v8, v9}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v7

    add-int/2addr v2, v7

    .line 78
    rsub-int v7, v2, 0x6001

    shr-int/lit8 v2, v7, 0x1f

    .line 80
    const/4 v7, 0x0

    xor-int/lit8 v8, v2, -0x1

    const/4 v9, 0x0

    aget v9, v6, v9

    and-int/2addr v8, v9

    const/4 v9, 0x4

    aget v9, v6, v9

    and-int/2addr v9, v2

    xor-int/2addr v8, v9

    aput v8, v5, v7

    .line 81
    const/4 v7, 0x1

    xor-int/lit8 v8, v2, -0x1

    const/4 v9, 0x1

    aget v9, v6, v9

    and-int/2addr v8, v9

    const/4 v9, 0x5

    aget v9, v6, v9

    and-int/2addr v9, v2

    xor-int/2addr v8, v9

    aput v8, v5, v7

    .line 82
    const/4 v7, 0x2

    xor-int/lit8 v8, v2, -0x1

    const/4 v9, 0x2

    aget v9, v6, v9

    and-int/2addr v8, v9

    const/4 v9, 0x6

    aget v9, v6, v9

    and-int/2addr v9, v2

    xor-int/2addr v8, v9

    aput v8, v5, v7

    .line 83
    const/4 v7, 0x3

    xor-int/lit8 v8, v2, -0x1

    const/4 v9, 0x3

    aget v9, v6, v9

    and-int/2addr v8, v9

    const/4 v9, 0x7

    aget v9, v6, v9

    and-int/2addr v9, v2

    xor-int/2addr v8, v9

    aput v8, v5, v7

    .line 85
    add-int/lit8 v7, v0, 0x0

    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x3

    aget v9, v5, v9

    sub-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x3

    int-to-short v8, v8

    aput-short v8, p0, v7

    .line 86
    add-int/lit16 v7, v0, 0x100

    const/4 v8, 0x1

    aget v8, v5, v8

    const/4 v9, 0x3

    aget v9, v5, v9

    sub-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x3

    int-to-short v8, v8

    aput-short v8, p0, v7

    .line 87
    add-int/lit16 v7, v0, 0x200

    const/4 v8, 0x2

    aget v8, v5, v8

    const/4 v9, 0x3

    aget v9, v5, v9

    sub-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x3

    int-to-short v8, v8

    aput-short v8, p0, v7

    .line 88
    add-int/lit16 v7, v0, 0x300

    neg-int v8, v2

    const/4 v9, 0x3

    aget v9, v5, v9

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x3

    int-to-short v8, v8

    aput-short v8, p0, v7

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 90
    .end local v2    # "k":I
    .end local v3    # "rBit":I
    :cond_0
    return-void
.end method

.method static rec([B[S[S)V
    .locals 13
    .param p0, "key"    # [B
    .param p1, "v"    # [S
    .param p2, "c"    # [S

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x30010

    .line 108
    invoke-static {p0, v9}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 110
    const/4 v2, 0x4

    new-array v1, v2, [I

    .line 111
    .local v1, "tmp":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    .line 113
    add-int/lit8 v2, v0, 0x0

    aget-short v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v8

    add-int/lit8 v3, v0, 0x0

    aget-short v3, p2, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit16 v4, v0, 0x300

    aget-short v4, p2, v4

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x3001

    sub-int/2addr v2, v3

    aput v2, v1, v9

    .line 114
    add-int/lit16 v2, v0, 0x100

    aget-short v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v8

    add-int/lit16 v3, v0, 0x100

    aget-short v3, p2, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit16 v4, v0, 0x300

    aget-short v4, p2, v4

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x3001

    sub-int/2addr v2, v3

    aput v2, v1, v10

    .line 115
    add-int/lit16 v2, v0, 0x200

    aget-short v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v8

    add-int/lit16 v3, v0, 0x200

    aget-short v3, p2, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit16 v4, v0, 0x300

    aget-short v4, p2, v4

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x3001

    sub-int/2addr v2, v3

    aput v2, v1, v11

    .line 116
    add-int/lit16 v2, v0, 0x300

    aget-short v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v8

    add-int/lit16 v3, v0, 0x300

    aget-short v3, p2, v3

    mul-int/lit16 v3, v3, 0x3001

    sub-int/2addr v2, v3

    aput v2, v1, v12

    .line 118
    ushr-int/lit8 v2, v0, 0x3

    aget-byte v3, p0, v2

    aget v4, v1, v9

    aget v5, v1, v10

    aget v6, v1, v11

    aget v7, v1, v12

    invoke-static {v4, v5, v6, v7}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->LDDecode(IIII)S

    move-result v4

    and-int/lit8 v5, v0, 0x7

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method
