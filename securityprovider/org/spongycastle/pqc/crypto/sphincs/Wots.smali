.class Lorg/spongycastle/pqc/crypto/sphincs/Wots;
.super Ljava/lang/Object;
.source "Wots.java"


# static fields
.field static final WOTS_L:I = 0x43

.field static final WOTS_L1:I = 0x40

.field static final WOTS_LOGW:I = 0x4

.field static final WOTS_LOG_L:I = 0x7

.field static final WOTS_SIGBYTES:I = 0x860

.field static final WOTS_W:I = 0x10


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clear([BII)V
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offSet"    # I
    .param p2, "length"    # I

    .prologue
    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, p2, :cond_0

    .line 26
    add-int v1, v0, p1

    const/4 v2, 0x0

    aput-byte v2, p0, v1

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method static expand_seed([BI[BI)V
    .locals 6
    .param p0, "outseeds"    # [B
    .param p1, "outOff"    # I
    .param p2, "inseed"    # [B
    .param p3, "inOff"    # I

    .prologue
    .line 17
    const/16 v0, 0x860

    invoke-static {p0, p1, v0}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;->clear([BII)V

    .line 19
    const-wide/16 v2, 0x860

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/sphincs/Seed;->prg([BIJ[BI)V

    .line 20
    return-void
.end method

.method static gen_chain(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V
    .locals 10
    .param p0, "hs"    # Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "seed"    # [B
    .param p4, "seedOff"    # I
    .param p5, "masks"    # [B
    .param p6, "masksOff"    # I
    .param p7, "chainlen"    # I

    .prologue
    .line 33
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_0
    const/16 v1, 0x20

    if-ge v9, v1, :cond_0

    .line 34
    add-int v1, v9, p2

    add-int v2, v9, p4

    aget-byte v2, p3, v2

    aput-byte v2, p1, v1

    .line 33
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 36
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move/from16 v0, p7

    if-ge v8, v0, :cond_1

    const/16 v1, 0x10

    if-ge v8, v1, :cond_1

    .line 37
    mul-int/lit8 v1, v8, 0x20

    add-int v7, p6, v1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p1

    move v5, p2

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n_mask([BI[BI[BI)I

    .line 36
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 38
    :cond_1
    return-void
.end method


# virtual methods
.method wots_pkgen(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V
    .locals 9
    .param p1, "hs"    # Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .param p4, "sk"    # [B
    .param p5, "skOff"    # I
    .param p6, "masks"    # [B
    .param p7, "masksOff"    # I

    .prologue
    .line 44
    invoke-static {p2, p3, p4, p5}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;->expand_seed([BI[BI)V

    .line 45
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v0, 0x43

    if-ge v8, v0, :cond_0

    .line 46
    mul-int/lit8 v0, v8, 0x20

    add-int v2, p3, v0

    mul-int/lit8 v0, v8, 0x20

    add-int v4, p3, v0

    const/16 v7, 0xf

    move-object v0, p1

    move-object v1, p2

    move-object v3, p2

    move-object v5, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;->gen_chain(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V

    .line 45
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method wots_sign(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B)V
    .locals 12
    .param p1, "hs"    # Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    .param p2, "sig"    # [B
    .param p3, "sigOff"    # I
    .param p4, "msg"    # [B
    .param p5, "sk"    # [B
    .param p6, "masks"    # [B

    .prologue
    .line 52
    const/16 v1, 0x43

    new-array v9, v1, [I

    .line 53
    .local v9, "basew":[I
    const/4 v10, 0x0

    .line 55
    .local v10, "c":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    const/16 v1, 0x40

    if-ge v11, v1, :cond_0

    .line 57
    div-int/lit8 v1, v11, 0x2

    aget-byte v1, p4, v1

    and-int/lit8 v1, v1, 0xf

    aput v1, v9, v11

    .line 58
    add-int/lit8 v1, v11, 0x1

    div-int/lit8 v2, v11, 0x2

    aget-byte v2, p4, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x4

    aput v2, v9, v1

    .line 59
    aget v1, v9, v11

    rsub-int/lit8 v1, v1, 0xf

    add-int/2addr v10, v1

    .line 60
    add-int/lit8 v1, v11, 0x1

    aget v1, v9, v1

    rsub-int/lit8 v1, v1, 0xf

    add-int/2addr v10, v1

    .line 55
    add-int/lit8 v11, v11, 0x2

    goto :goto_0

    .line 63
    :cond_0
    :goto_1
    const/16 v1, 0x43

    if-ge v11, v1, :cond_1

    .line 65
    and-int/lit8 v1, v10, 0xf

    aput v1, v9, v11

    .line 66
    ushr-int/lit8 v10, v10, 0x4

    .line 63
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 69
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-static {p2, p3, v0, v1}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;->expand_seed([BI[BI)V

    .line 71
    const/4 v11, 0x0

    :goto_2
    const/16 v1, 0x43

    if-ge v11, v1, :cond_2

    .line 72
    mul-int/lit8 v1, v11, 0x20

    add-int v3, p3, v1

    mul-int/lit8 v1, v11, 0x20

    add-int v5, p3, v1

    const/4 v7, 0x0

    aget v8, v9, v11

    move-object v1, p1

    move-object v2, p2

    move-object v4, p2

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v8}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;->gen_chain(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V

    .line 71
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 73
    :cond_2
    return-void
.end method

.method wots_verify(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)V
    .locals 11
    .param p1, "hs"    # Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;
    .param p2, "pk"    # [B
    .param p3, "sig"    # [B
    .param p4, "sigOff"    # I
    .param p5, "msg"    # [B
    .param p6, "masks"    # [B

    .prologue
    .line 77
    const/16 v0, 0x43

    new-array v8, v0, [I

    .line 78
    .local v8, "basew":[I
    const/4 v9, 0x0

    .line 80
    .local v9, "c":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v0, 0x40

    if-ge v10, v0, :cond_0

    .line 82
    div-int/lit8 v0, v10, 0x2

    aget-byte v0, p5, v0

    and-int/lit8 v0, v0, 0xf

    aput v0, v8, v10

    .line 83
    add-int/lit8 v0, v10, 0x1

    div-int/lit8 v1, v10, 0x2

    aget-byte v1, p5, v1

    and-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x4

    aput v1, v8, v0

    .line 84
    aget v0, v8, v10

    rsub-int/lit8 v0, v0, 0xf

    add-int/2addr v9, v0

    .line 85
    add-int/lit8 v0, v10, 0x1

    aget v0, v8, v0

    rsub-int/lit8 v0, v0, 0xf

    add-int/2addr v9, v0

    .line 80
    add-int/lit8 v10, v10, 0x2

    goto :goto_0

    .line 88
    :cond_0
    :goto_1
    const/16 v0, 0x43

    if-ge v10, v0, :cond_1

    .line 90
    and-int/lit8 v0, v9, 0xf

    aput v0, v8, v10

    .line 91
    ushr-int/lit8 v9, v9, 0x4

    .line 88
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 94
    :cond_1
    const/4 v10, 0x0

    :goto_2
    const/16 v0, 0x43

    if-ge v10, v0, :cond_2

    .line 95
    mul-int/lit8 v2, v10, 0x20

    mul-int/lit8 v0, v10, 0x20

    add-int v4, p4, v0

    aget v0, v8, v10

    mul-int/lit8 v6, v0, 0x20

    aget v0, v8, v10

    rsub-int/lit8 v7, v0, 0xf

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v7}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;->gen_chain(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V

    .line 94
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 96
    :cond_2
    return-void
.end method
