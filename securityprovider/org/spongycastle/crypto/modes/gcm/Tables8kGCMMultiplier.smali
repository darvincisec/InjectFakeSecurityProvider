.class public Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables8kGCMMultiplier.java"

# interfaces
.implements Lorg/spongycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private M:[[[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 10
    .param p1, "H"    # [B

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 13
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    if-nez v3, :cond_1

    .line 15
    const/4 v3, 0x4

    filled-new-array {v9, v8, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[I

    iput-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    .line 22
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    .line 26
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v3, v3, v7

    aget-object v3, v3, v6

    invoke-static {p1, v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->asInts([B[I)V

    .line 28
    const/4 v1, 0x4

    .local v1, "j":I
    :goto_0
    if-lt v1, v7, :cond_3

    .line 30
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v3, v3, v7

    add-int v4, v1, v1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v7

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    .line 28
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    .end local v1    # "j":I
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {v3, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    :cond_2
    return-void

    .line 33
    .restart local v1    # "j":I
    :cond_3
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v3, v3, v7

    aget-object v3, v3, v7

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v5

    aget-object v4, v4, v6

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    .line 35
    const/4 v1, 0x4

    :goto_1
    if-lt v1, v7, :cond_4

    .line 37
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v3, v3, v5

    add-int v4, v1, v1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v5

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    .line 35
    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 40
    :cond_4
    const/4 v0, 0x0

    .line 43
    .local v0, "i":I
    :cond_5
    const/4 v1, 0x2

    :goto_2
    if-ge v1, v8, :cond_7

    .line 45
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_3
    if-ge v2, v1, :cond_6

    .line 47
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v5, v5, v0

    add-int v6, v1, v2

    aget-object v5, v5, v6

    invoke-static {v3, v4, v5}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([I[I[I)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 43
    :cond_6
    add-int/2addr v1, v1

    goto :goto_2

    .line 51
    .end local v2    # "k":I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    if-eq v0, v9, :cond_2

    .line 56
    if-le v0, v7, :cond_5

    .line 59
    const/16 v1, 0x8

    :goto_4
    if-lez v1, :cond_5

    .line 61
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int/lit8 v4, v0, -0x2

    aget-object v3, v3, v4

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([I[I)V

    .line 59
    shr-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public multiplyH([B)V
    .locals 9
    .param p1, "x"    # [B

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    const/4 v3, 0x4

    new-array v2, v3, [I

    .line 72
    .local v2, "z":[I
    const/16 v0, 0xf

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 75
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v4, v0, v0

    aget-object v3, v3, v4

    aget-byte v4, p1, v0

    and-int/lit8 v4, v4, 0xf

    aget-object v1, v3, v4

    .line 76
    .local v1, "m":[I
    aget v3, v2, v5

    aget v4, v1, v5

    xor-int/2addr v3, v4

    aput v3, v2, v5

    .line 77
    aget v3, v2, v6

    aget v4, v1, v6

    xor-int/2addr v3, v4

    aput v3, v2, v6

    .line 78
    aget v3, v2, v7

    aget v4, v1, v7

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 79
    aget v3, v2, v8

    aget v4, v1, v8

    xor-int/2addr v3, v4

    aput v3, v2, v8

    .line 81
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->M:[[[I

    add-int v4, v0, v0

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-object v1, v3, v4

    .line 82
    aget v3, v2, v5

    aget v4, v1, v5

    xor-int/2addr v3, v4

    aput v3, v2, v5

    .line 83
    aget v3, v2, v6

    aget v4, v1, v6

    xor-int/2addr v3, v4

    aput v3, v2, v6

    .line 84
    aget v3, v2, v7

    aget v4, v1, v7

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 85
    aget v3, v2, v8

    aget v4, v1, v8

    xor-int/2addr v3, v4

    aput v3, v2, v8

    .line 72
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 88
    .end local v1    # "m":[I
    :cond_0
    invoke-static {v2, p1, v5}, Lorg/spongycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 89
    return-void
.end method
