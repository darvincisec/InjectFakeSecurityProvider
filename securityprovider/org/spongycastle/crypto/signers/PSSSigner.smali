.class public Lorg/spongycastle/crypto/signers/PSSSigner;
.super Ljava/lang/Object;
.source "PSSSigner.java"

# interfaces
.implements Lorg/spongycastle/crypto/Signer;


# static fields
.field public static final TRAILER_IMPLICIT:B = -0x44t


# instance fields
.field private block:[B

.field private cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private contentDigest:Lorg/spongycastle/crypto/Digest;

.field private emBits:I

.field private hLen:I

.field private mDash:[B

.field private mgfDigest:Lorg/spongycastle/crypto/Digest;

.field private mgfhLen:I

.field private random:Ljava/security/SecureRandom;

.field private sLen:I

.field private sSet:Z

.field private salt:[B

.field private trailer:B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;I)V
    .locals 1
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "sLen"    # I

    .prologue
    .line 53
    const/16 v0, -0x44

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/crypto/signers/PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;IB)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;IB)V
    .locals 6
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "sLen"    # I
    .param p4, "trailer"    # B

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/signers/PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IB)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V
    .locals 6
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "contentDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "mgfDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p4, "sLen"    # I

    .prologue
    .line 62
    const/16 v5, -0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/signers/PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IB)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;IB)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "contentDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "mgfDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p4, "sLen"    # I
    .param p5, "trailer"    # B

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 82
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    .line 83
    iput-object p3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    .line 84
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    .line 85
    invoke-interface {p3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sSet:Z

    .line 87
    iput p4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    .line 88
    new-array v0, p4, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->salt:[B

    .line 89
    add-int/lit8 v0, p4, 0x8

    iget v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    .line 90
    iput-byte p5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->trailer:B

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;[B)V
    .locals 6
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "contentDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "mgfDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p4, "salt"    # [B

    .prologue
    .line 107
    const/16 v5, -0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/signers/PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;[BB)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;[BB)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "contentDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "mgfDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p4, "salt"    # [B
    .param p5, "trailer"    # B

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 118
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    .line 119
    iput-object p3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    .line 120
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    .line 121
    invoke-interface {p3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sSet:Z

    .line 123
    array-length v0, p4

    iput v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    .line 124
    iput-object p4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->salt:[B

    .line 125
    iget v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    .line 126
    iput-byte p5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->trailer:B

    .line 127
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;[B)V
    .locals 6
    .param p1, "cipher"    # Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "salt"    # [B

    .prologue
    .line 98
    const/16 v5, -0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/signers/PSSSigner;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;[BB)V

    .line 99
    return-void
.end method

.method private ItoOSP(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "sp"    # [B

    .prologue
    .line 350
    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 351
    const/4 v0, 0x1

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 352
    const/4 v0, 0x2

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 353
    const/4 v0, 0x3

    ushr-int/lit8 v1, p1, 0x0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 354
    return-void
.end method

.method private clearBlock([B)V
    .locals 2
    .param p1, "block"    # [B

    .prologue
    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 186
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 8
    .param p1, "Z"    # [B
    .param p2, "zOff"    # I
    .param p3, "zLen"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v7, 0x0

    .line 365
    new-array v3, p4, [B

    .line 366
    .local v3, "mask":[B
    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    new-array v2, v4, [B

    .line 367
    .local v2, "hashBuf":[B
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 368
    .local v0, "C":[B
    const/4 v1, 0x0

    .line 370
    .local v1, "counter":I
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 372
    :goto_0
    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    div-int v4, p4, v4

    if-ge v1, v4, :cond_0

    .line 374
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    .line 376
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 377
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 378
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 380
    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int/2addr v4, v1

    iget v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    :cond_0
    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_1

    .line 387
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/signers/PSSSigner;->ItoOSP(I[B)V

    .line 389
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 390
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 391
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 393
    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int/2addr v4, v1

    array-length v5, v3

    iget v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mgfhLen:I

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    :cond_1
    return-object v3
.end method


# virtual methods
.method public generateSignature()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/CryptoException;,
            Lorg/spongycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 225
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    iget v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    invoke-interface {v4, v5, v6}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 227
    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    if-eqz v4, :cond_1

    .line 229
    iget-boolean v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sSet:Z

    if-nez v4, :cond_0

    .line 231
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->salt:[B

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 234
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    iget v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v4, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    :cond_1
    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    new-array v2, v4, [B

    .line 239
    .local v2, "h":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v6, v6

    invoke-interface {v4, v5, v9, v6}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 241
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v2, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 243
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 244
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    iget v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v4, v9, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    array-length v4, v2

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v2, v9, v4, v5}, Lorg/spongycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v1

    .line 247
    .local v1, "dbMask":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-eq v3, v4, :cond_2

    .line 249
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v4, v3

    aget-byte v6, v1, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 252
    :cond_2
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v5, v4, v9

    const/16 v6, 0xff

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x8

    iget v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v7, v8

    shr-int/2addr v6, v7

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v9

    .line 254
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    iget v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    invoke-static {v2, v9, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    iget-byte v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->trailer:B

    aput-byte v6, v4, v5

    .line 258
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v6, v6

    invoke-interface {v4, v5, v9, v6}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 260
    .local v0, "b":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v4}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 262
    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 135
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_1

    move-object v1, p2

    .line 137
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 139
    .local v1, "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    .line 140
    .local v2, "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    .line 153
    .end local v1    # "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    :cond_0
    :goto_0
    instance-of v3, v2, Lorg/spongycastle/crypto/params/RSABlindingParameters;

    if-eqz v3, :cond_2

    .line 155
    check-cast v2, Lorg/spongycastle/crypto/params/RSABlindingParameters;

    .end local v2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/RSABlindingParameters;->getPublicKey()Lorg/spongycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 157
    .local v0, "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 166
    :goto_1
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->emBits:I

    .line 168
    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->emBits:I

    iget v4, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    mul-int/lit8 v4, v4, 0x8

    iget v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x9

    if-ge v3, v4, :cond_3

    .line 170
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "key too small for specified hash and salt lengths"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    .end local v0    # "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    :cond_1
    move-object v2, p2

    .line 145
    .restart local v2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    if-eqz p1, :cond_0

    .line 147
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->random:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 161
    check-cast v0, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 163
    .restart local v0    # "kParam":Lorg/spongycastle/crypto/params/RSAKeyParameters;
    iget-object v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3, p1, v2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_1

    .line 173
    .end local v2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_3
    iget v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->emBits:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    .line 175
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/PSSSigner;->reset()V

    .line 176
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 216
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "b"    # B

    .prologue
    .line 196
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 197
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 208
    return-void
.end method

.method public verifySignature([B)Z
    .locals 12
    .param p1, "signature"    # [B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 272
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v9, v9

    iget v10, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v9, v10

    iget v10, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v9, v10

    invoke-interface {v7, v8, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 276
    :try_start_0
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->cipher:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    const/4 v8, 0x0

    array-length v9, p1

    invoke-interface {v7, p1, v8, v9}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 277
    .local v0, "b":[B
    const/4 v7, 0x0

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v9, v9

    array-length v10, v0

    sub-int/2addr v9, v10

    array-length v10, v0

    invoke-static {v0, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget-byte v7, v7, v8

    iget-byte v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->trailer:B

    if-eq v7, v8, :cond_0

    .line 286
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 340
    .end local v0    # "b":[B
    :goto_0
    return v5

    .line 279
    :catch_0
    move-exception v2

    .line 281
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 290
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "b":[B
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v8, v8

    iget v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v10, v10

    iget v11, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    invoke-direct {p0, v7, v8, v9, v10}, Lorg/spongycastle/crypto/signers/PSSSigner;->maskGeneratorFunction1([BIII)[B

    move-result-object v1

    .line 292
    .local v1, "dbMask":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v1

    if-eq v3, v7, :cond_1

    .line 294
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v8, v7, v3

    aget-byte v9, v1, v3

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    .line 292
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 297
    :cond_1
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v8, v7, v5

    const/16 v9, 0xff

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x8

    iget v11, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->emBits:I

    sub-int/2addr v10, v11

    shr-int/2addr v9, v10

    and-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v5

    .line 299
    const/4 v3, 0x0

    :goto_2
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v7, v7

    iget v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v7, v8

    iget v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x2

    if-eq v3, v7, :cond_3

    .line 301
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v7, v7, v3

    if-eqz v7, :cond_2

    .line 303
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    goto :goto_0

    .line 299
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 308
    :cond_3
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v8, v8

    iget v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v8, v9

    iget v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x2

    aget-byte v7, v7, v8

    if-eq v7, v6, :cond_4

    .line 310
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    goto :goto_0

    .line 314
    :cond_4
    iget-boolean v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sSet:Z

    if-eqz v7, :cond_5

    .line 316
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->salt:[B

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v9, v9

    iget v10, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v9, v10

    iget v10, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v7, v5, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    :goto_3
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v9, v9

    invoke-interface {v7, v8, v5, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 324
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->contentDigest:Lorg/spongycastle/crypto/Digest;

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v9, v9

    iget v10, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v9, v10

    invoke-interface {v7, v8, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 326
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v7, v7

    iget v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v7, v8

    add-int/lit8 v3, v7, -0x1

    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v7, v7

    iget v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int v4, v7, v8

    .line 327
    .local v4, "j":I
    :goto_4
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v7, v7

    if-eq v4, v7, :cond_7

    .line 329
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    aget-byte v7, v7, v3

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    aget-byte v8, v8, v4

    xor-int/2addr v7, v8

    if-eqz v7, :cond_6

    .line 331
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 332
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    goto/16 :goto_0

    .line 320
    .end local v4    # "j":I
    :cond_5
    iget-object v7, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    array-length v8, v8

    iget v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v8, v9

    iget v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->hLen:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    iget-object v10, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    array-length v10, v10

    iget v11, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    sub-int/2addr v10, v11

    iget v11, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->sLen:I

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 327
    .restart local v4    # "j":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 337
    :cond_7
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->mDash:[B

    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    .line 338
    iget-object v5, p0, Lorg/spongycastle/crypto/signers/PSSSigner;->block:[B

    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/signers/PSSSigner;->clearBlock([B)V

    move v5, v6

    .line 340
    goto/16 :goto_0
.end method
