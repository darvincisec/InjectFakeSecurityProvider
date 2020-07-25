.class public abstract Lorg/spongycastle/crypto/engines/SerpentEngineBase;
.super Ljava/lang/Object;
.source "SerpentEngineBase.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x10

.field static final PHI:I = -0x61c88647

.field static final ROUNDS:I = 0x20


# instance fields
.field protected X0:I

.field protected X1:I

.field protected X2:I

.field protected X3:I

.field protected encrypting:Z

.field protected wKey:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method protected static rotateLeft(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "bits"    # I

    .prologue
    .line 113
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method protected static rotateRight(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "bits"    # I

    .prologue
    .line 120
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected final LT()V
    .locals 6

    .prologue
    .line 455
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/16 v5, 0xd

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v0

    .line 456
    .local v0, "x0":I
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v2

    .line 457
    .local v2, "x2":I
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v4, v0

    xor-int v1, v4, v2

    .line 458
    .local v1, "x1":I
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v4, v2

    shl-int/lit8 v5, v0, 0x3

    xor-int v3, v4, v5

    .line 460
    .local v3, "x3":I
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v4

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 461
    const/4 v4, 0x7

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v4

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 462
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v4, v0

    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v4, v5

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v4

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 463
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v4, v2

    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    shl-int/lit8 v5, v5, 0x7

    xor-int/2addr v4, v5

    const/16 v5, 0x16

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v4

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 464
    return-void
.end method

.method protected abstract decryptBlock([BI[BI)V
.end method

.method protected abstract encryptBlock([BI[BI)V
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "Serpent"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x10

    return v0
.end method

.method protected final ib0(IIII)V
    .locals 7
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 167
    xor-int/lit8 v0, p1, -0x1

    .line 168
    .local v0, "t1":I
    xor-int v1, p1, p2

    .line 169
    .local v1, "t2":I
    or-int v5, v0, v1

    xor-int v2, p4, v5

    .line 170
    .local v2, "t4":I
    xor-int v3, p3, v2

    .line 171
    .local v3, "t5":I
    xor-int v5, v1, v3

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 172
    and-int v5, p4, v1

    xor-int v4, v0, v5

    .line 173
    .local v4, "t8":I
    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    and-int/2addr v5, v4

    xor-int/2addr v5, v2

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 174
    and-int v5, p1, v2

    iget v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    or-int/2addr v6, v3

    xor-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 175
    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int v6, v3, v4

    xor-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 176
    return-void
.end method

.method protected final ib1(IIII)V
    .locals 8
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 199
    xor-int v0, p2, p4

    .line 200
    .local v0, "t1":I
    and-int v7, p2, v0

    xor-int v3, p1, v7

    .line 201
    .local v3, "t3":I
    xor-int v4, v0, v3

    .line 202
    .local v4, "t4":I
    xor-int v7, p3, v4

    iput v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 203
    and-int v7, v0, v3

    xor-int v5, p2, v7

    .line 204
    .local v5, "t7":I
    iget v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    or-int v6, v7, v5

    .line 205
    .local v6, "t8":I
    xor-int v7, v3, v6

    iput v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 206
    iget v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/lit8 v1, v7, -0x1

    .line 207
    .local v1, "t10":I
    iget v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int v2, v7, v5

    .line 208
    .local v2, "t11":I
    xor-int v7, v1, v2

    iput v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 209
    or-int v7, v1, v2

    xor-int/2addr v7, v4

    iput v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 210
    return-void
.end method

.method protected final ib2(IIII)V
    .locals 12
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 234
    xor-int v0, p2, p4

    .line 235
    .local v0, "t1":I
    xor-int/lit8 v3, v0, -0x1

    .line 236
    .local v3, "t2":I
    xor-int v4, p1, p3

    .line 237
    .local v4, "t3":I
    xor-int v5, p3, v0

    .line 238
    .local v5, "t4":I
    and-int v6, p2, v5

    .line 239
    .local v6, "t5":I
    xor-int v10, v4, v6

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 240
    or-int v7, p1, v3

    .line 241
    .local v7, "t7":I
    xor-int v8, p4, v7

    .line 242
    .local v8, "t8":I
    or-int v9, v4, v8

    .line 243
    .local v9, "t9":I
    xor-int v10, v0, v9

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 244
    xor-int/lit8 v1, v5, -0x1

    .line 245
    .local v1, "t11":I
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget v11, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    or-int v2, v10, v11

    .line 246
    .local v2, "t12":I
    xor-int v10, v1, v2

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 247
    and-int v10, p4, v1

    xor-int v11, v4, v2

    xor-int/2addr v10, v11

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 248
    return-void
.end method

.method protected final ib3(IIII)V
    .locals 12
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 276
    or-int v0, p1, p2

    .line 277
    .local v0, "t1":I
    xor-int v3, p2, p3

    .line 278
    .local v3, "t2":I
    and-int v4, p2, v3

    .line 279
    .local v4, "t3":I
    xor-int v5, p1, v4

    .line 280
    .local v5, "t4":I
    xor-int v6, p3, v5

    .line 281
    .local v6, "t5":I
    or-int v7, p4, v5

    .line 282
    .local v7, "t6":I
    xor-int v10, v3, v7

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 283
    or-int v8, v3, v7

    .line 284
    .local v8, "t8":I
    xor-int v9, p4, v8

    .line 285
    .local v9, "t9":I
    xor-int v10, v6, v9

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 286
    xor-int v1, v0, v9

    .line 287
    .local v1, "t11":I
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    and-int v2, v10, v1

    .line 288
    .local v2, "t12":I
    xor-int v10, v5, v2

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 289
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    iget v11, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int/2addr v11, v1

    xor-int/2addr v10, v11

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 290
    return-void
.end method

.method protected final ib4(IIII)V
    .locals 11
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 317
    or-int v0, p3, p4

    .line 318
    .local v0, "t1":I
    and-int v3, p1, v0

    .line 319
    .local v3, "t2":I
    xor-int v4, p2, v3

    .line 320
    .local v4, "t3":I
    and-int v5, p1, v4

    .line 321
    .local v5, "t4":I
    xor-int v6, p3, v5

    .line 322
    .local v6, "t5":I
    xor-int v9, p4, v6

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 323
    xor-int/lit8 v7, p1, -0x1

    .line 324
    .local v7, "t7":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    and-int v8, v6, v9

    .line 325
    .local v8, "t8":I
    xor-int v9, v4, v8

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 326
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    or-int v1, v9, v7

    .line 327
    .local v1, "t10":I
    xor-int v2, p4, v1

    .line 328
    .local v2, "t11":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v9, v2

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 329
    and-int v9, v4, v2

    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v10, v7

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 330
    return-void
.end method

.method protected final ib5(IIII)V
    .locals 11
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 358
    xor-int/lit8 v0, p3, -0x1

    .line 359
    .local v0, "t1":I
    and-int v3, p2, v0

    .line 360
    .local v3, "t2":I
    xor-int v4, p4, v3

    .line 361
    .local v4, "t3":I
    and-int v5, p1, v4

    .line 362
    .local v5, "t4":I
    xor-int v6, p2, v0

    .line 363
    .local v6, "t5":I
    xor-int v9, v5, v6

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 364
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    or-int v7, p2, v9

    .line 365
    .local v7, "t7":I
    and-int v8, p1, v7

    .line 366
    .local v8, "t8":I
    xor-int v9, v4, v8

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 367
    or-int v1, p1, p4

    .line 368
    .local v1, "t10":I
    xor-int v2, v0, v7

    .line 369
    .local v2, "t11":I
    xor-int v9, v1, v2

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 370
    and-int v9, p2, v1

    xor-int v10, p1, p3

    or-int/2addr v10, v5

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 371
    return-void
.end method

.method protected final ib6(IIII)V
    .locals 11
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 398
    xor-int/lit8 v0, p1, -0x1

    .line 399
    .local v0, "t1":I
    xor-int v2, p1, p2

    .line 400
    .local v2, "t2":I
    xor-int v3, p3, v2

    .line 401
    .local v3, "t3":I
    or-int v4, p3, v0

    .line 402
    .local v4, "t4":I
    xor-int v5, p4, v4

    .line 403
    .local v5, "t5":I
    xor-int v9, v3, v5

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 404
    and-int v6, v3, v5

    .line 405
    .local v6, "t7":I
    xor-int v7, v2, v6

    .line 406
    .local v7, "t8":I
    or-int v8, p2, v7

    .line 407
    .local v8, "t9":I
    xor-int v9, v5, v8

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 408
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    or-int v1, p2, v9

    .line 409
    .local v1, "t11":I
    xor-int v9, v7, v1

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 410
    and-int v9, p4, v0

    xor-int v10, v3, v1

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 411
    return-void
.end method

.method protected final ib7(IIII)V
    .locals 8
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 439
    and-int v5, p1, p2

    or-int v0, p3, v5

    .line 440
    .local v0, "t3":I
    or-int v5, p1, p2

    and-int v1, p4, v5

    .line 441
    .local v1, "t4":I
    xor-int v5, v0, v1

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 442
    xor-int/lit8 v2, p4, -0x1

    .line 443
    .local v2, "t6":I
    xor-int v3, p2, v1

    .line 444
    .local v3, "t7":I
    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v5, v2

    or-int v4, v3, v5

    .line 445
    .local v4, "t9":I
    xor-int v5, p1, v4

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 446
    xor-int v5, p3, v3

    iget v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    or-int/2addr v6, p4

    xor-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 447
    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v5, v0

    iget v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    iget v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    and-int/2addr v7, p1

    xor-int/2addr v6, v7

    xor-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 448
    return-void
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 39
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 41
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->encrypting:Z

    .line 42
    check-cast p2, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->makeWorkingKey([B)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    .line 43
    return-void

    .line 46
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final inverseLT()V
    .locals 6

    .prologue
    .line 471
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    const/16 v5, 0x16

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v4

    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v4, v5

    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    shl-int/lit8 v5, v5, 0x7

    xor-int v2, v4, v5

    .line 472
    .local v2, "x2":I
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v4

    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    xor-int/2addr v4, v5

    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int v0, v4, v5

    .line 473
    .local v0, "x0":I
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    const/4 v5, 0x7

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v3

    .line 474
    .local v3, "x3":I
    iget v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v1

    .line 475
    .local v1, "x1":I
    xor-int v4, v3, v2

    shl-int/lit8 v5, v0, 0x3

    xor-int/2addr v4, v5

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 476
    xor-int v4, v1, v0

    xor-int/2addr v4, v2

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 477
    const/4 v4, 0x3

    invoke-static {v2, v4}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v4

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 478
    const/16 v4, 0xd

    invoke-static {v0, v4}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v4

    iput v4, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 479
    return-void
.end method

.method protected abstract makeWorkingKey([B)[I
.end method

.method public final processBlock([BI[BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 85
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    .line 90
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_2
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->encrypting:Z

    if-eqz v0, :cond_3

    .line 95
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->encryptBlock([BI[BI)V

    .line 102
    :goto_0
    const/16 v0, 0x10

    return v0

    .line 99
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->decryptBlock([BI[BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method protected final sb0(IIII)V
    .locals 7
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 151
    xor-int v0, p1, p4

    .line 152
    .local v0, "t1":I
    xor-int v2, p3, v0

    .line 153
    .local v2, "t3":I
    xor-int v3, p2, v2

    .line 154
    .local v3, "t4":I
    and-int v5, p1, p4

    xor-int/2addr v5, v3

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 155
    and-int v5, p2, v0

    xor-int v4, p1, v5

    .line 156
    .local v4, "t7":I
    or-int v5, p3, v4

    xor-int/2addr v5, v3

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 157
    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int v6, v2, v4

    and-int v1, v5, v6

    .line 158
    .local v1, "t12":I
    xor-int/lit8 v5, v2, -0x1

    xor-int/2addr v5, v1

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 159
    xor-int/lit8 v5, v4, -0x1

    xor-int/2addr v5, v1

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 160
    return-void
.end method

.method protected final sb1(IIII)V
    .locals 6
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 183
    xor-int/lit8 v5, p1, -0x1

    xor-int v1, p2, v5

    .line 184
    .local v1, "t2":I
    or-int v5, p1, v1

    xor-int v2, p3, v5

    .line 185
    .local v2, "t5":I
    xor-int v5, p4, v2

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 186
    or-int v5, p4, v1

    xor-int v3, p2, v5

    .line 187
    .local v3, "t7":I
    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int v4, v1, v5

    .line 188
    .local v4, "t8":I
    and-int v5, v2, v3

    xor-int/2addr v5, v4

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 189
    xor-int v0, v2, v3

    .line 190
    .local v0, "t11":I
    iget v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v5, v0

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 191
    and-int v5, v4, v0

    xor-int/2addr v5, v2

    iput v5, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 192
    return-void
.end method

.method protected final sb2(IIII)V
    .locals 9
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 217
    xor-int/lit8 v0, p1, -0x1

    .line 218
    .local v0, "t1":I
    xor-int v1, p2, p4

    .line 219
    .local v1, "t2":I
    and-int v2, p3, v0

    .line 220
    .local v2, "t3":I
    xor-int v6, v1, v2

    iput v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 221
    xor-int v3, p3, v0

    .line 222
    .local v3, "t5":I
    iget v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int v4, p3, v6

    .line 223
    .local v4, "t6":I
    and-int v5, p2, v4

    .line 224
    .local v5, "t7":I
    xor-int v6, v3, v5

    iput v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 225
    or-int v6, p4, v5

    iget v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    or-int/2addr v7, v3

    and-int/2addr v6, v7

    xor-int/2addr v6, p1

    iput v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 226
    iget v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    xor-int/2addr v6, v1

    iget v7, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    or-int v8, p4, v0

    xor-int/2addr v7, v8

    xor-int/2addr v6, v7

    iput v6, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 227
    return-void
.end method

.method protected final sb3(IIII)V
    .locals 12
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 255
    xor-int v0, p1, p2

    .line 256
    .local v0, "t1":I
    and-int v3, p1, p3

    .line 257
    .local v3, "t2":I
    or-int v4, p1, p4

    .line 258
    .local v4, "t3":I
    xor-int v5, p3, p4

    .line 259
    .local v5, "t4":I
    and-int v6, v0, v4

    .line 260
    .local v6, "t5":I
    or-int v7, v3, v6

    .line 261
    .local v7, "t6":I
    xor-int v10, v5, v7

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 262
    xor-int v8, p2, v4

    .line 263
    .local v8, "t8":I
    xor-int v9, v7, v8

    .line 264
    .local v9, "t9":I
    and-int v1, v5, v9

    .line 265
    .local v1, "t10":I
    xor-int v10, v0, v1

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 266
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    iget v11, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    and-int v2, v10, v11

    .line 267
    .local v2, "t12":I
    xor-int v10, v9, v2

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 268
    or-int v10, p2, p4

    xor-int v11, v5, v2

    xor-int/2addr v10, v11

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 269
    return-void
.end method

.method protected final sb4(IIII)V
    .locals 11
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 297
    xor-int v0, p1, p4

    .line 298
    .local v0, "t1":I
    and-int v3, p4, v0

    .line 299
    .local v3, "t2":I
    xor-int v4, p3, v3

    .line 300
    .local v4, "t3":I
    or-int v5, p2, v4

    .line 301
    .local v5, "t4":I
    xor-int v9, v0, v5

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 302
    xor-int/lit8 v6, p2, -0x1

    .line 303
    .local v6, "t6":I
    or-int v7, v0, v6

    .line 304
    .local v7, "t7":I
    xor-int v9, v4, v7

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 305
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    and-int v8, p1, v9

    .line 306
    .local v8, "t9":I
    xor-int v1, v0, v6

    .line 307
    .local v1, "t10":I
    and-int v2, v5, v1

    .line 308
    .local v2, "t11":I
    xor-int v9, v8, v2

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 309
    xor-int v9, p1, v4

    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    and-int/2addr v10, v1

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 310
    return-void
.end method

.method protected final sb5(IIII)V
    .locals 12
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 337
    xor-int/lit8 v0, p1, -0x1

    .line 338
    .local v0, "t1":I
    xor-int v4, p1, p2

    .line 339
    .local v4, "t2":I
    xor-int v5, p1, p4

    .line 340
    .local v5, "t3":I
    xor-int v6, p3, v0

    .line 341
    .local v6, "t4":I
    or-int v7, v4, v5

    .line 342
    .local v7, "t5":I
    xor-int v10, v6, v7

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 343
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    and-int v8, p4, v10

    .line 344
    .local v8, "t7":I
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    xor-int v9, v4, v10

    .line 345
    .local v9, "t8":I
    xor-int v10, v8, v9

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 346
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    or-int v1, v0, v10

    .line 347
    .local v1, "t10":I
    or-int v2, v4, v8

    .line 348
    .local v2, "t11":I
    xor-int v3, v5, v1

    .line 349
    .local v3, "t12":I
    xor-int v10, v2, v3

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 350
    xor-int v10, p2, v8

    iget v11, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    and-int/2addr v11, v3

    xor-int/2addr v10, v11

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 351
    return-void
.end method

.method protected final sb6(IIII)V
    .locals 11
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 378
    xor-int/lit8 v0, p1, -0x1

    .line 379
    .local v0, "t1":I
    xor-int v2, p1, p4

    .line 380
    .local v2, "t2":I
    xor-int v3, p2, v2

    .line 381
    .local v3, "t3":I
    or-int v4, v0, v2

    .line 382
    .local v4, "t4":I
    xor-int v5, p3, v4

    .line 383
    .local v5, "t5":I
    xor-int v9, p2, v5

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 384
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    or-int v6, v2, v9

    .line 385
    .local v6, "t7":I
    xor-int v7, p4, v6

    .line 386
    .local v7, "t8":I
    and-int v8, v5, v7

    .line 387
    .local v8, "t9":I
    xor-int v9, v3, v8

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 388
    xor-int v1, v5, v7

    .line 389
    .local v1, "t11":I
    iget v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    xor-int/2addr v9, v1

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 390
    xor-int/lit8 v9, v5, -0x1

    and-int v10, v3, v1

    xor-int/2addr v9, v10

    iput v9, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 391
    return-void
.end method

.method protected final sb7(IIII)V
    .locals 13
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I

    .prologue
    .line 418
    xor-int v0, p2, p3

    .line 419
    .local v0, "t1":I
    and-int v3, p3, v0

    .line 420
    .local v3, "t2":I
    xor-int v4, p4, v3

    .line 421
    .local v4, "t3":I
    xor-int v5, p1, v4

    .line 422
    .local v5, "t4":I
    or-int v6, p4, v0

    .line 423
    .local v6, "t5":I
    and-int v7, v5, v6

    .line 424
    .local v7, "t6":I
    xor-int v10, p2, v7

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    .line 425
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X1:I

    or-int v8, v4, v10

    .line 426
    .local v8, "t8":I
    and-int v9, p1, v5

    .line 427
    .local v9, "t9":I
    xor-int v10, v0, v9

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    .line 428
    xor-int v1, v5, v8

    .line 429
    .local v1, "t11":I
    iget v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    and-int v2, v10, v1

    .line 430
    .local v2, "t12":I
    xor-int v10, v4, v2

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    .line 431
    xor-int/lit8 v10, v1, -0x1

    iget v11, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X3:I

    iget v12, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X2:I

    and-int/2addr v11, v12

    xor-int/2addr v10, v11

    iput v10, p0, Lorg/spongycastle/crypto/engines/SerpentEngineBase;->X0:I

    .line 432
    return-void
.end method
