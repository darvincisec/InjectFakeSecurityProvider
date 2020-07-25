.class Lorg/spongycastle/pqc/crypto/newhope/NewHope;
.super Ljava/lang/Object;
.source "NewHope.java"


# static fields
.field public static final AGREEMENT_SIZE:I = 0x20

.field public static final POLY_SIZE:I = 0x400

.field public static final SENDA_BYTES:I = 0x720

.field public static final SENDB_BYTES:I = 0x800

.field private static final STATISTICAL_TEST:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeA([S[B[B)V
    .locals 3
    .param p0, "pk"    # [S
    .param p1, "seed"    # [B
    .param p2, "r"    # [B

    .prologue
    .line 111
    invoke-static {p0, p2}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->fromBytes([S[B)V

    .line 112
    const/16 v0, 0x700

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p2, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    return-void
.end method

.method static decodeB([S[S[B)V
    .locals 5
    .param p0, "b"    # [S
    .param p1, "c"    # [S
    .param p2, "r"    # [B

    .prologue
    .line 117
    invoke-static {p0, p2}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->fromBytes([S[B)V

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x100

    if-ge v0, v3, :cond_0

    .line 121
    mul-int/lit8 v1, v0, 0x4

    .line 122
    .local v1, "j":I
    add-int/lit16 v3, v0, 0x700

    aget-byte v3, p2, v3

    and-int/lit16 v2, v3, 0xff

    .line 123
    .local v2, "ri":I
    add-int/lit8 v3, v1, 0x0

    and-int/lit8 v4, v2, 0x3

    int-to-short v4, v4

    aput-short v4, p1, v3

    .line 124
    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v2, 0x2

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    aput-short v4, p1, v3

    .line 125
    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    aput-short v4, p1, v3

    .line 126
    add-int/lit8 v3, v1, 0x3

    ushr-int/lit8 v4, v2, 0x6

    int-to-short v4, v4

    aput-short v4, p1, v3

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "j":I
    .end local v2    # "ri":I
    :cond_0
    return-void
.end method

.method static encodeA([B[S[B)V
    .locals 3
    .param p0, "r"    # [B
    .param p1, "pk"    # [S
    .param p2, "seed"    # [B

    .prologue
    .line 132
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->toBytes([B[S)V

    .line 133
    const/4 v0, 0x0

    const/16 v1, 0x700

    const/16 v2, 0x20

    invoke-static {p2, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    return-void
.end method

.method static encodeB([B[S[S)V
    .locals 5
    .param p0, "r"    # [B
    .param p1, "b"    # [S
    .param p2, "c"    # [S

    .prologue
    .line 138
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->toBytes([B[S)V

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_0

    .line 142
    mul-int/lit8 v1, v0, 0x4

    .line 143
    .local v1, "j":I
    add-int/lit16 v2, v0, 0x700

    aget-short v3, p2, v1

    add-int/lit8 v4, v1, 0x1

    aget-short v4, p2, v4

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x2

    aget-short v4, p2, v4

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x3

    aget-short v4, p2, v4

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method static generateA([S[B)V
    .locals 0
    .param p0, "a"    # [S
    .param p1, "seed"    # [B

    .prologue
    .line 149
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->uniform([S[B)V

    .line 150
    return-void
.end method

.method public static keygen(Ljava/security/SecureRandom;[B[S)V
    .locals 8
    .param p0, "rand"    # Ljava/security/SecureRandom;
    .param p1, "send"    # [B
    .param p2, "sk"    # [S

    .prologue
    const/16 v6, 0x20

    const/16 v7, 0x400

    .line 21
    new-array v5, v6, [B

    .line 22
    .local v5, "seed":[B
    invoke-virtual {p0, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 24
    new-array v0, v7, [S

    .line 25
    .local v0, "a":[S
    invoke-static {v0, v5}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->generateA([S[B)V

    .line 27
    new-array v2, v6, [B

    .line 28
    .local v2, "noiseSeed":[B
    invoke-virtual {p0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 30
    const/4 v6, 0x0

    invoke-static {p2, v2, v6}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 31
    invoke-static {p2}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    .line 33
    new-array v1, v7, [S

    .line 34
    .local v1, "e":[S
    const/4 v6, 0x1

    invoke-static {v1, v2, v6}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 35
    invoke-static {v1}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    .line 37
    new-array v4, v7, [S

    .line 38
    .local v4, "r":[S
    invoke-static {v0, p2, v4}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    .line 40
    new-array v3, v7, [S

    .line 41
    .local v3, "pk":[S
    invoke-static {v4, v1, v3}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->add([S[S[S)V

    .line 43
    invoke-static {p1, v3, v5}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->encodeA([B[S[B)V

    .line 44
    return-void
.end method

.method static sha3([B)V
    .locals 3
    .param p0, "sharedKey"    # [B

    .prologue
    const/4 v2, 0x0

    .line 154
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    .line 155
    .local v0, "d":Lorg/spongycastle/crypto/digests/SHA3Digest;
    const/16 v1, 0x20

    invoke-virtual {v0, p0, v2, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 156
    invoke-virtual {v0, p0, v2}, Lorg/spongycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    .line 157
    return-void
.end method

.method public static sharedA([B[S[B)V
    .locals 4
    .param p0, "sharedKey"    # [B
    .param p1, "sk"    # [S
    .param p2, "received"    # [B

    .prologue
    const/16 v3, 0x400

    .line 93
    new-array v0, v3, [S

    .line 94
    .local v0, "bp":[S
    new-array v1, v3, [S

    .line 95
    .local v1, "c":[S
    invoke-static {v0, v1, p2}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->decodeB([S[S[B)V

    .line 97
    new-array v2, v3, [S

    .line 98
    .local v2, "v":[S
    invoke-static {p1, v0, v2}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    .line 99
    invoke-static {v2}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->fromNTT([S)V

    .line 101
    invoke-static {p0, v2, v1}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->rec([B[S[S)V

    .line 105
    invoke-static {p0}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->sha3([B)V

    .line 107
    return-void
.end method

.method public static sharedB(Ljava/security/SecureRandom;[B[B[B)V
    .locals 12
    .param p0, "rand"    # Ljava/security/SecureRandom;
    .param p1, "sharedKey"    # [B
    .param p2, "send"    # [B
    .param p3, "received"    # [B

    .prologue
    const/16 v10, 0x20

    const/16 v11, 0x400

    .line 48
    new-array v6, v11, [S

    .line 49
    .local v6, "pkA":[S
    new-array v7, v10, [B

    .line 50
    .local v7, "seed":[B
    invoke-static {v6, v7, p3}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->decodeA([S[B[B)V

    .line 52
    new-array v0, v11, [S

    .line 53
    .local v0, "a":[S
    invoke-static {v0, v7}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->generateA([S[B)V

    .line 55
    new-array v5, v10, [B

    .line 56
    .local v5, "noiseSeed":[B
    invoke-virtual {p0, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 58
    new-array v8, v11, [S

    .line 59
    .local v8, "sp":[S
    const/4 v10, 0x0

    invoke-static {v8, v5, v10}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 60
    invoke-static {v8}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    .line 62
    new-array v3, v11, [S

    .line 63
    .local v3, "ep":[S
    const/4 v10, 0x1

    invoke-static {v3, v5, v10}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 64
    invoke-static {v3}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    .line 66
    new-array v1, v11, [S

    .line 67
    .local v1, "bp":[S
    invoke-static {v0, v8, v1}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    .line 68
    invoke-static {v1, v3, v1}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->add([S[S[S)V

    .line 70
    new-array v9, v11, [S

    .line 71
    .local v9, "v":[S
    invoke-static {v6, v8, v9}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    .line 72
    invoke-static {v9}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->fromNTT([S)V

    .line 74
    new-array v4, v11, [S

    .line 75
    .local v4, "epp":[S
    const/4 v10, 0x2

    invoke-static {v4, v5, v10}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 76
    invoke-static {v9, v4, v9}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->add([S[S[S)V

    .line 78
    new-array v2, v11, [S

    .line 79
    .local v2, "c":[S
    const/4 v10, 0x3

    invoke-static {v2, v9, v5, v10}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->helpRec([S[S[BB)V

    .line 81
    invoke-static {p2, v1, v2}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->encodeB([B[S[S)V

    .line 83
    invoke-static {p1, v9, v2}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->rec([B[S[S)V

    .line 87
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->sha3([B)V

    .line 89
    return-void
.end method
