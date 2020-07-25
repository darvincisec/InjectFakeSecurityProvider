.class public Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables64kGCMMultiplier.java"

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
    .locals 9
    .param p1, "H"    # [B

    .prologue
    const/16 v8, 0x100

    const/16 v7, 0x10

    const/4 v5, 0x0

    .line 13
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    if-nez v3, :cond_1

    .line 15
    const/4 v3, 0x4

    filled-new-array {v7, v8, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[I

    iput-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    .line 22
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->H:[B

    .line 25
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v3, v3, v5

    const/16 v4, 0x80

    aget-object v3, v3, v4

    invoke-static {p1, v3}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->asInts([B[I)V

    .line 27
    const/16 v1, 0x40

    .local v1, "j":I
    :goto_0
    const/4 v3, 0x1

    if-lt v1, v3, :cond_3

    .line 29
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v3, v3, v5

    add-int v4, v1, v1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v5

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP([I[I)V

    .line 27
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    .end local v1    # "j":I
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->H:[B

    invoke-static {v3, p1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    :cond_2
    return-void

    .line 32
    .restart local v1    # "j":I
    :cond_3
    const/4 v0, 0x0

    .line 35
    .local v0, "i":I
    :cond_4
    const/4 v1, 0x2

    :goto_1
    if-ge v1, v8, :cond_6

    .line 37
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 39
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v5, v5, v0

    add-int v6, v1, v2

    aget-object v5, v5, v6

    invoke-static {v3, v4, v5}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->xor([I[I[I)V

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 35
    :cond_5
    add-int/2addr v1, v1

    goto :goto_1

    .line 43
    .end local v2    # "k":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    if-eq v0, v7, :cond_2

    .line 49
    const/16 v1, 0x80

    :goto_3
    if-lez v1, :cond_4

    .line 51
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([I[I)V

    .line 49
    shr-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public multiplyH([B)V
    .locals 9
    .param p1, "x"    # [B

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    const/4 v3, 0x4

    new-array v2, v3, [I

    .line 61
    .local v2, "z":[I
    const/16 v0, 0xf

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 64
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->M:[[[I

    aget-object v3, v3, v0

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    aget-object v1, v3, v4

    .line 65
    .local v1, "m":[I
    aget v3, v2, v5

    aget v4, v1, v5

    xor-int/2addr v3, v4

    aput v3, v2, v5

    .line 66
    aget v3, v2, v6

    aget v4, v1, v6

    xor-int/2addr v3, v4

    aput v3, v2, v6

    .line 67
    aget v3, v2, v7

    aget v4, v1, v7

    xor-int/2addr v3, v4

    aput v3, v2, v7

    .line 68
    aget v3, v2, v8

    aget v4, v1, v8

    xor-int/2addr v3, v4

    aput v3, v2, v8

    .line 61
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 71
    .end local v1    # "m":[I
    :cond_0
    invoke-static {v2, p1, v5}, Lorg/spongycastle/util/Pack;->intToBigEndian([I[BI)V

    .line 72
    return-void
.end method
