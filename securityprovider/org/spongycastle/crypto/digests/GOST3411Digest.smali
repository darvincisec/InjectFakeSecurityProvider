.class public Lorg/spongycastle/crypto/digests/GOST3411Digest;
.super Ljava/lang/Object;
.source "GOST3411Digest.java"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;
.implements Lorg/spongycastle/util/Memoable;


# static fields
.field private static final C2:[B

.field private static final DIGEST_LENGTH:I = 0x20


# instance fields
.field private C:[[B

.field private H:[B

.field private K:[B

.field private L:[B

.field private M:[B

.field S:[B

.field private Sum:[B

.field U:[B

.field V:[B

.field W:[B

.field a:[B

.field private byteCount:J

.field private cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private sBox:[B

.field wS:[S

.field w_S:[S

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C2:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0x20

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->L:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->M:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->Sum:[B

    .line 22
    const/4 v0, 0x4

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    .line 24
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    .line 28
    new-instance v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->K:[B

    .line 131
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->a:[B

    .line 154
    new-array v0, v3, [S

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->wS:[S

    new-array v0, v3, [S

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->w_S:[S

    .line 165
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->S:[B

    .line 166
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->U:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->V:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->W:[B

    .line 36
    const-string v0, "D-A"

    invoke-static {v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->getSBox(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->sBox:[B

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->sBox:[B

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 39
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/GOST3411Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/GOST3411Digest;

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0x20

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->L:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->M:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->Sum:[B

    .line 22
    const/4 v0, 0x4

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    .line 24
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    .line 28
    new-instance v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->K:[B

    .line 131
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->a:[B

    .line 154
    new-array v0, v3, [S

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->wS:[S

    new-array v0, v3, [S

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->w_S:[S

    .line 165
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->S:[B

    .line 166
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->U:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->V:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->W:[B

    .line 60
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->reset(Lorg/spongycastle/util/Memoable;)V

    .line 61
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "sBoxParam"    # [B

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0x20

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->L:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->M:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->Sum:[B

    .line 22
    const/4 v0, 0x4

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    .line 24
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    .line 28
    new-instance v0, Lorg/spongycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/GOST28147Engine;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 115
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->K:[B

    .line 131
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->a:[B

    .line 154
    new-array v0, v3, [S

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->wS:[S

    new-array v0, v3, [S

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->w_S:[S

    .line 165
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->S:[B

    .line 166
    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->U:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->V:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->W:[B

    .line 48
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->sBox:[B

    .line 49
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->sBox:[B

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 51
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 52
    return-void
.end method

.method private A([B)[B
    .locals 7
    .param p1, "in"    # [B

    .prologue
    const/16 v6, 0x18

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 134
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 136
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->a:[B

    aget-byte v2, p1, v0

    add-int/lit8 v3, v0, 0x8

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {p1, v4, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->a:[B

    invoke-static {v1, v5, p1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    return-object p1
.end method

.method private E([B[BI[BI)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "s"    # [B
    .param p3, "sOff"    # I
    .param p4, "in"    # [B
    .param p5, "inOff"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 150
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0, p4, p5, p2, p3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 151
    return-void
.end method

.method private P([B)[B
    .locals 4
    .param p1, "in"    # [B

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 122
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v0, 0x8

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 123
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v0, 0x10

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 124
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->K:[B

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v0, 0x18

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->K:[B

    return-object v1
.end method

.method private cpyBytesToShort([B[S)V
    .locals 3
    .param p1, "S"    # [B
    .param p2, "wS"    # [S

    .prologue
    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 316
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    mul-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method private cpyShortToBytes([S[B)V
    .locals 3
    .param p1, "wS"    # [S
    .param p2, "S"    # [B

    .prologue
    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 324
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-short v2, p1, v0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 325
    mul-int/lit8 v1, v0, 0x2

    aget-short v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method private finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 227
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->byteCount:J

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->L:[B

    invoke-static {v0, v1, v2, v4}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J[BI)V

    .line 229
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->update(B)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->L:[B

    invoke-virtual {p0, v0, v4}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    .line 235
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->Sum:[B

    invoke-virtual {p0, v0, v4}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    .line 236
    return-void
.end method

.method private fw([B)V
    .locals 7
    .param p1, "in"    # [B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xf

    .line 158
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->wS:[S

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->cpyBytesToShort([B[S)V

    .line 159
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->w_S:[S

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->wS:[S

    aget-short v1, v1, v5

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->wS:[S

    aget-short v2, v2, v6

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/4 v3, 0x2

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/4 v3, 0x3

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->wS:[S

    const/16 v3, 0xc

    aget-short v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->wS:[S

    aget-short v2, v2, v4

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, v0, v4

    .line 160
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->wS:[S

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->w_S:[S

    invoke-static {v0, v6, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->w_S:[S

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->cpyShortToBytes([S[B)V

    .line 162
    return-void
.end method

.method private sumByteArray([B)V
    .locals 5
    .param p1, "in"    # [B

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 302
    .local v0, "carry":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v3, v3

    if-eq v1, v3, :cond_0

    .line 304
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->Sum:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int v2, v3, v0

    .line 306
    .local v2, "sum":I
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->Sum:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v1

    .line 308
    ushr-int/lit8 v0, v2, 0x8

    .line 302
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v2    # "sum":I
    :cond_0
    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>(Lorg/spongycastle/crypto/digests/GOST3411Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 242
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->finish()V

    .line 244
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 248
    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "GOST3411"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 331
    const/16 v0, 0x20

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock([BI)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->M:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->U:[B

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->M:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->V:[B

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    const/16 v0, 0x20

    if-ge v7, v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->W:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v1, v1, v7

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->V:[B

    aget-byte v2, v2, v7

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 178
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->W:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->P([B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->S:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->E([B[BI[BI)V

    .line 186
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    const/4 v0, 0x4

    if-ge v6, v0, :cond_3

    .line 188
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->U:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v9

    .line 189
    .local v9, "tmpA":[B
    const/4 v7, 0x0

    :goto_2
    const/16 v0, 0x20

    if-ge v7, v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v1, v9, v7

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v6

    aget-byte v2, v2, v7

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 189
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 193
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->V:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->A([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->V:[B

    .line 194
    const/4 v7, 0x0

    :goto_3
    const/16 v0, 0x20

    if-ge v7, v0, :cond_2

    .line 196
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->W:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->U:[B

    aget-byte v1, v1, v7

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->V:[B

    aget-byte v2, v2, v7

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 194
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 199
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->W:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->P([B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->S:[B

    mul-int/lit8 v3, v6, 0x8

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    mul-int/lit8 v5, v6, 0x8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->E([B[BI[BI)V

    .line 186
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 203
    .end local v9    # "tmpA":[B
    :cond_3
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_4
    const/16 v0, 0xc

    if-ge v8, v0, :cond_4

    .line 205
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->fw([B)V

    .line 203
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 207
    :cond_4
    const/4 v8, 0x0

    :goto_5
    const/16 v0, 0x20

    if-ge v8, v0, :cond_5

    .line 209
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->S:[B

    aget-byte v1, v1, v8

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->M:[B

    aget-byte v2, v2, v8

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 207
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 212
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->fw([B)V

    .line 214
    const/4 v8, 0x0

    :goto_6
    const/16 v0, 0x20

    if-ge v8, v0, :cond_6

    .line 216
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->S:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    aget-byte v1, v1, v8

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->S:[B

    aget-byte v2, v2, v8

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    .line 214
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 218
    :cond_6
    const/4 v8, 0x0

    :goto_7
    const/16 v0, 0x3d

    if-ge v8, v0, :cond_7

    .line 220
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->S:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->fw([B)V

    .line 218
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 222
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->S:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    return-void
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->byteCount:J

    .line 263
    iput v4, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 267
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    aput-byte v4, v1, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->L:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 271
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->L:[B

    aput-byte v4, v1, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 273
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->M:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 275
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->M:[B

    aput-byte v4, v1, v0

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 277
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v5

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 279
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v5

    aput-byte v4, v1, v0

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 281
    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v6

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 283
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v6

    aput-byte v4, v1, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 285
    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 287
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->Sum:[B

    aput-byte v4, v1, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 289
    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 291
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    aput-byte v4, v1, v0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 294
    :cond_6
    sget-object v1, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C2:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C2:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    return-void
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 9
    .param p1, "other"    # Lorg/spongycastle/util/Memoable;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 341
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    .line 343
    .local v0, "t":Lorg/spongycastle/crypto/digests/GOST3411Digest;
    iget-object v1, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->sBox:[B

    iput-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->sBox:[B

    .line 344
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->sBox:[B

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-interface {v1, v6, v2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 346
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->reset()V

    .line 348
    iget-object v1, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    iget-object v3, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->H:[B

    array-length v3, v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    iget-object v1, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->L:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->L:[B

    iget-object v3, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->L:[B

    array-length v3, v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget-object v1, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->M:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->M:[B

    iget-object v3, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->M:[B

    array-length v3, v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    iget-object v1, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->Sum:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->Sum:[B

    iget-object v3, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->Sum:[B

    array-length v3, v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    iget-object v1, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v6

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v6

    iget-object v3, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v3, v3, v6

    array-length v3, v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    iget-object v1, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v7

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v7

    iget-object v3, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v3, v3, v7

    array-length v3, v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    iget-object v1, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v1, v1, v8

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v2, v2, v8

    iget-object v3, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->C:[[B

    aget-object v3, v3, v8

    array-length v3, v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iget-object v1, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v3, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v3, v3

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iget v1, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    iput v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    .line 358
    iget-wide v2, v0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->byteCount:J

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->byteCount:J

    .line 359
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 76
    iget v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->sumByteArray([B)V

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    .line 80
    iput v3, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    .line 82
    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->byteCount:J

    .line 83
    return-void
.end method

.method public update([BII)V
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v4, 0x0

    .line 87
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBufOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 89
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->update(B)V

    .line 90
    add-int/lit8 p2, p2, 0x1

    .line 91
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 94
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_1

    .line 96
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v1, v1

    invoke-static {p1, p2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->sumByteArray([B)V

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    invoke-virtual {p0, v0, v4}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->processBlock([BI)V

    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 101
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 102
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->byteCount:J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GOST3411Digest;->byteCount:J

    goto :goto_1

    .line 106
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 108
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/GOST3411Digest;->update(B)V

    .line 109
    add-int/lit8 p2, p2, 0x1

    .line 110
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 112
    :cond_2
    return-void
.end method
