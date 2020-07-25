.class public Lorg/spongycastle/crypto/macs/Poly1305;
.super Ljava/lang/Object;
.source "Poly1305.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# static fields
.field private static final BLOCK_SIZE:I = 0x10


# instance fields
.field private final cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private final currentBlock:[B

.field private currentBlockOffset:I

.field private h0:I

.field private h1:I

.field private h2:I

.field private h3:I

.field private h4:I

.field private k0:I

.field private k1:I

.field private k2:I

.field private k3:I

.field private r0:I

.field private r1:I

.field private r2:I

.field private r3:I

.field private r4:I

.field private s1:I

.field private s2:I

.field private s3:I

.field private s4:I

.field private final singleByte:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->singleByte:[B

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    const/16 v1, 0x10

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->singleByte:[B

    .line 48
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 69
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 requires a 128 bit block cipher."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 74
    return-void
.end method

.method private static final mul32x32_64(II)J
    .locals 4
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    .prologue
    .line 311
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v2, p1

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private processBlock()V
    .locals 28

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/16 v22, 0x10

    move/from16 v0, v22

    if-ge v3, v0, :cond_0

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    move/from16 v22, v0

    const/16 v23, 0x1

    aput-byte v23, v3, v22

    .line 210
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    add-int/lit8 v2, v3, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v22, 0x0

    aput-byte v22, v3, v2

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    :cond_0
    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v24, v0

    and-long v4, v22, v24

    .line 217
    .local v4, "t0":J
    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v24, v0

    and-long v6, v22, v24

    .line 218
    .local v6, "t1":J
    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v24, v0

    and-long v8, v22, v24

    .line 219
    .local v8, "t2":J
    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v24, 0xc

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v24, v0

    and-long v10, v22, v24

    .line 221
    .local v10, "t3":J
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x3ffffff

    and-long v24, v24, v4

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v3, v0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 222
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const/16 v3, 0x20

    shl-long v24, v6, v3

    or-long v24, v24, v4

    const/16 v3, 0x1a

    ushr-long v24, v24, v3

    const-wide/32 v26, 0x3ffffff

    and-long v24, v24, v26

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v3, v0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    .line 223
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const/16 v3, 0x20

    shl-long v24, v8, v3

    or-long v24, v24, v6

    const/16 v3, 0x14

    ushr-long v24, v24, v3

    const-wide/32 v26, 0x3ffffff

    and-long v24, v24, v26

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v3, v0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    .line 224
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const/16 v3, 0x20

    shl-long v24, v10, v3

    or-long v24, v24, v8

    const/16 v3, 0xe

    ushr-long v24, v24, v3

    const-wide/32 v26, 0x3ffffff

    and-long v24, v24, v26

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v3, v0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    .line 225
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    int-to-long v0, v3

    move-wide/from16 v22, v0

    const/16 v3, 0x8

    ushr-long v24, v10, v3

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v3, v0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    .line 227
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/16 v22, 0x10

    move/from16 v0, v22

    if-ne v3, v0, :cond_1

    .line 229
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    const/high16 v22, 0x1000000

    add-int v3, v3, v22

    move-object/from16 v0, p0

    iput v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    .line 232
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s3:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s2:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s1:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v12, v22, v24

    .line 233
    .local v12, "tp0":J
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s3:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s2:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v14, v22, v24

    .line 234
    .local v14, "tp1":J
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s3:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v16, v22, v24

    .line 235
    .local v16, "tp2":J
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r3:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v18, v22, v24

    .line 236
    .local v18, "tp3":J
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r4:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r3:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v22, v22, v24

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    add-long v20, v22, v24

    .line 238
    .local v20, "tp4":J
    long-to-int v3, v12

    const v22, 0x3ffffff

    and-int v3, v3, v22

    move-object/from16 v0, p0

    iput v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    const/16 v3, 0x1a

    ushr-long v22, v12, v3

    add-long v14, v14, v22

    .line 239
    long-to-int v3, v14

    const v22, 0x3ffffff

    and-int v3, v3, v22

    move-object/from16 v0, p0

    iput v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    const/16 v3, 0x1a

    ushr-long v22, v14, v3

    add-long v16, v16, v22

    .line 240
    move-wide/from16 v0, v16

    long-to-int v3, v0

    const v22, 0x3ffffff

    and-int v3, v3, v22

    move-object/from16 v0, p0

    iput v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    const/16 v3, 0x1a

    ushr-long v22, v16, v3

    add-long v18, v18, v22

    .line 241
    move-wide/from16 v0, v18

    long-to-int v3, v0

    const v22, 0x3ffffff

    and-int v3, v3, v22

    move-object/from16 v0, p0

    iput v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    const/16 v3, 0x1a

    ushr-long v22, v18, v3

    add-long v20, v20, v22

    .line 242
    move-wide/from16 v0, v20

    long-to-int v3, v0

    const v22, 0x3ffffff

    and-int v3, v3, v22

    move-object/from16 v0, p0

    iput v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    .line 243
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    const/16 v22, 0x1a

    ushr-long v22, v20, v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x5

    add-int v3, v3, v22

    move-object/from16 v0, p0

    iput v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 244
    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v22, v0

    ushr-int/lit8 v22, v22, 0x1a

    add-int v3, v3, v22

    move-object/from16 v0, p0

    iput v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    const v22, 0x3ffffff

    and-int v3, v3, v22

    move-object/from16 v0, p0

    iput v3, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 245
    return-void
.end method

.method private setKey([B[B)V
    .locals 11
    .param p1, "key"    # [B
    .param p2, "nonce"    # [B

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x10

    .line 115
    array-length v6, p1

    const/16 v7, 0x20

    if-eq v6, v7, :cond_0

    .line 117
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Poly1305 key must be 256 bits."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 119
    :cond_0
    iget-object v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    if-eqz v6, :cond_2

    if-eqz p2, :cond_1

    array-length v6, p2

    if-eq v6, v9, :cond_2

    .line 121
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Poly1305 requires a 128 bit IV."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 125
    :cond_2
    invoke-static {p1, v10}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    .line 126
    .local v2, "t0":I
    const/4 v6, 0x4

    invoke-static {p1, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .line 127
    .local v3, "t1":I
    const/16 v6, 0x8

    invoke-static {p1, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    .line 128
    .local v4, "t2":I
    const/16 v6, 0xc

    invoke-static {p1, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    .line 131
    .local v5, "t3":I
    const v6, 0x3ffffff

    and-int/2addr v6, v2

    iput v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    .line 132
    ushr-int/lit8 v6, v2, 0x1a

    shl-int/lit8 v7, v3, 0x6

    or-int/2addr v6, v7

    const v7, 0x3ffff03

    and-int/2addr v6, v7

    iput v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    .line 133
    ushr-int/lit8 v6, v3, 0x14

    shl-int/lit8 v7, v4, 0xc

    or-int/2addr v6, v7

    const v7, 0x3ffc0ff

    and-int/2addr v6, v7

    iput v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    .line 134
    ushr-int/lit8 v6, v4, 0xe

    shl-int/lit8 v7, v5, 0x12

    or-int/2addr v6, v7

    const v7, 0x3f03fff

    and-int/2addr v6, v7

    iput v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r3:I

    .line 135
    ushr-int/lit8 v6, v5, 0x8

    const v7, 0xfffff

    and-int/2addr v6, v7

    iput v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r4:I

    .line 138
    iget v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    mul-int/lit8 v6, v6, 0x5

    iput v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->s1:I

    .line 139
    iget v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    mul-int/lit8 v6, v6, 0x5

    iput v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->s2:I

    .line 140
    iget v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r3:I

    mul-int/lit8 v6, v6, 0x5

    iput v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->s3:I

    .line 141
    iget v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r4:I

    mul-int/lit8 v6, v6, 0x5

    iput v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    .line 146
    iget-object v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    if-nez v6, :cond_3

    .line 148
    move-object v0, p1

    .line 149
    .local v0, "kBytes":[B
    const/16 v1, 0x10

    .line 161
    .local v1, "kOff":I
    :goto_0
    add-int/lit8 v6, v1, 0x0

    invoke-static {v0, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    iput v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->k0:I

    .line 162
    add-int/lit8 v6, v1, 0x4

    invoke-static {v0, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    iput v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->k1:I

    .line 163
    add-int/lit8 v6, v1, 0x8

    invoke-static {v0, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    iput v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->k2:I

    .line 164
    add-int/lit8 v6, v1, 0xc

    invoke-static {v0, v6}, Lorg/spongycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v6

    iput v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->k3:I

    .line 165
    return-void

    .line 154
    .end local v0    # "kBytes":[B
    .end local v1    # "kOff":I
    :cond_3
    new-array v0, v9, [B

    .line 155
    .restart local v0    # "kBytes":[B
    const/4 v1, 0x0

    .line 157
    .restart local v1    # "kOff":I
    iget-object v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v7, 0x1

    new-instance v8, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v8, p1, v9, v9}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-interface {v6, v7, v8}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 158
    iget-object v6, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v6, p2, v10, v0, v10}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 26
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 251
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 253
    new-instance v19, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v20, "Output buffer is too short."

    invoke-direct/range {v19 .. v20}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 256
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    move/from16 v19, v0

    if-lez v19, :cond_1

    .line 259
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/crypto/macs/Poly1305;->processBlock()V

    .line 262
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v20, v0

    ushr-int/lit8 v20, v20, 0x1a

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v20, v0

    ushr-int/lit8 v20, v20, 0x1a

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v20, v0

    ushr-int/lit8 v20, v20, 0x1a

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v20, v0

    ushr-int/lit8 v20, v20, 0x1a

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    .line 266
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v20, v0

    ushr-int/lit8 v20, v20, 0x1a

    mul-int/lit8 v20, v20, 0x5

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v20, v0

    ushr-int/lit8 v20, v20, 0x1a

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    add-int/lit8 v5, v19, 0x5

    .local v5, "g0":I
    ushr-int/lit8 v4, v5, 0x1a

    .local v4, "b":I
    const v19, 0x3ffffff

    and-int v5, v5, v19

    .line 271
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    add-int v14, v19, v4

    .local v14, "g1":I
    ushr-int/lit8 v4, v14, 0x1a

    const v19, 0x3ffffff

    and-int v14, v14, v19

    .line 272
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    add-int v15, v19, v4

    .local v15, "g2":I
    ushr-int/lit8 v4, v15, 0x1a

    const v19, 0x3ffffff

    and-int v15, v15, v19

    .line 273
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    add-int v16, v19, v4

    .local v16, "g3":I
    ushr-int/lit8 v4, v16, 0x1a

    const v19, 0x3ffffff

    and-int v16, v16, v19

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v19, v0

    add-int v19, v19, v4

    const/high16 v20, 0x4000000

    sub-int v17, v19, v20

    .line 276
    .local v17, "g4":I
    ushr-int/lit8 v19, v17, 0x1f

    add-int/lit8 v4, v19, -0x1

    .line 277
    xor-int/lit8 v18, v4, -0x1

    .line 278
    .local v18, "nb":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v5, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 279
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v14, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    .line 280
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v15, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v16, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    .line 282
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v17, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x1a

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->k0:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    and-long v22, v22, v24

    add-long v6, v20, v22

    .line 286
    .local v6, "f0":J
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    ushr-int/lit8 v19, v19, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x14

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->k1:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    and-long v22, v22, v24

    add-long v8, v20, v22

    .line 287
    .local v8, "f1":J
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    ushr-int/lit8 v19, v19, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0xe

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->k2:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    and-long v22, v22, v24

    add-long v10, v20, v22

    .line 288
    .local v10, "f2":J
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    ushr-int/lit8 v19, v19, 0x12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->k3:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    and-long v22, v22, v24

    add-long v12, v20, v22

    .line 290
    .local v12, "f3":J
    long-to-int v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 291
    const/16 v19, 0x20

    ushr-long v20, v6, v19

    add-long v8, v8, v20

    .line 292
    long-to-int v0, v8

    move/from16 v19, v0

    add-int/lit8 v20, p2, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 293
    const/16 v19, 0x20

    ushr-long v20, v8, v19

    add-long v10, v10, v20

    .line 294
    long-to-int v0, v10

    move/from16 v19, v0

    add-int/lit8 v20, p2, 0x8

    move/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 295
    const/16 v19, 0x20

    ushr-long v20, v10, v19

    add-long v12, v12, v20

    .line 296
    long-to-int v0, v12

    move/from16 v19, v0

    add-int/lit8 v20, p2, 0xc

    move/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/spongycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/crypto/macs/Poly1305;->reset()V

    .line 299
    const/16 v19, 0x10

    return v19
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    if-nez v0, :cond_0

    const-string v0, "Poly1305"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Poly1305-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0x10

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 89
    .local v2, "nonce":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    if-eqz v3, :cond_1

    .line 91
    instance-of v3, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v3, :cond_0

    .line 93
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Poly1305 requires an IV when used with a block cipher."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v0, p1

    .line 96
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 97
    .local v0, "ivParams":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    .line 98
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    .line 101
    .end local v0    # "ivParams":Lorg/spongycastle/crypto/params/ParametersWithIV;
    :cond_1
    instance-of v3, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v3, :cond_2

    .line 103
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Poly1305 requires a key."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move-object v1, p1

    .line 106
    check-cast v1, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 108
    .local v1, "keyParams":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lorg/spongycastle/crypto/macs/Poly1305;->setKey([B[B)V

    .line 110
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/Poly1305;->reset()V

    .line 111
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 304
    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 306
    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 307
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->singleByte:[B

    aput-byte p1, v0, v2

    .line 181
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/macs/Poly1305;->update([BII)V

    .line 182
    return-void
.end method

.method public update([BII)V
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "copied":I
    :goto_0
    if-le p3, v0, :cond_1

    .line 191
    iget v2, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 193
    invoke-direct {p0}, Lorg/spongycastle/crypto/macs/Poly1305;->processBlock()V

    .line 194
    const/4 v2, 0x0

    iput v2, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 197
    :cond_0
    sub-int v2, p3, v0

    iget v3, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    rsub-int/lit8 v3, v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 198
    .local v1, "toCopy":I
    add-int v2, v0, p2

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    add-int/2addr v0, v1

    .line 200
    iget v2, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    goto :goto_0

    .line 203
    .end local v1    # "toCopy":I
    :cond_1
    return-void
.end method
