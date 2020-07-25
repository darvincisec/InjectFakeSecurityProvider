.class public abstract Lorg/spongycastle/math/Primes;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/math/Primes$STOutput;,
        Lorg/spongycastle/math/Primes$MROutput;
    }
.end annotation


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field public static final SMALL_FACTOR_LIMIT:I = 0xd3

.field private static final THREE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    .line 18
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    .line 19
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 3
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 356
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 358
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must be non-null and >= 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1
    return-void
.end method

.method public static enhancedMRProbablePrimeTest(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lorg/spongycastle/math/Primes$MROutput;
    .locals 15
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "iterations"    # I

    .prologue
    .line 152
    const-string v13, "candidate"

    invoke-static {p0, v13}, Lorg/spongycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 154
    if-nez p1, :cond_0

    .line 156
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "\'random\' cannot be null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 158
    :cond_0
    const/4 v13, 0x1

    move/from16 v0, p2

    if-ge v0, v13, :cond_1

    .line 160
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "\'iterations\' must be > 0"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 163
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 165
    invoke-static {}, Lorg/spongycastle/math/Primes$MROutput;->access$000()Lorg/spongycastle/math/Primes$MROutput;

    move-result-object v13

    .line 241
    :goto_0
    return-object v13

    .line 167
    :cond_2
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 169
    sget-object v13, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v13}, Lorg/spongycastle/math/Primes$MROutput;->access$100(Ljava/math/BigInteger;)Lorg/spongycastle/math/Primes$MROutput;

    move-result-object v13

    goto :goto_0

    .line 172
    :cond_3
    move-object v8, p0

    .line 173
    .local v8, "w":Ljava/math/BigInteger;
    sget-object v13, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 174
    .local v9, "wSubOne":Ljava/math/BigInteger;
    sget-object v13, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 176
    .local v10, "wSubTwo":Ljava/math/BigInteger;
    invoke-virtual {v9}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v1

    .line 177
    .local v1, "a":I
    invoke-virtual {v9, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 179
    .local v6, "m":Ljava/math/BigInteger;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v4, v0, :cond_b

    .line 181
    sget-object v13, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, p1

    invoke-static {v13, v10, v0}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 182
    .local v2, "b":Ljava/math/BigInteger;
    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 184
    .local v3, "g":Ljava/math/BigInteger;
    sget-object v13, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-lez v13, :cond_4

    .line 186
    invoke-static {v3}, Lorg/spongycastle/math/Primes$MROutput;->access$100(Ljava/math/BigInteger;)Lorg/spongycastle/math/Primes$MROutput;

    move-result-object v13

    goto :goto_0

    .line 189
    :cond_4
    invoke-virtual {v2, v6, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 191
    .local v12, "z":Ljava/math/BigInteger;
    sget-object v13, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 179
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 196
    :cond_6
    const/4 v7, 0x0

    .line 198
    .local v7, "primeToBase":Z
    move-object v11, v12

    .line 199
    .local v11, "x":Ljava/math/BigInteger;
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_2
    if-ge v5, v1, :cond_7

    .line 201
    sget-object v13, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v13, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 203
    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 205
    const/4 v7, 0x1

    .line 217
    :cond_7
    if-nez v7, :cond_5

    .line 219
    sget-object v13, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 221
    move-object v11, v12

    .line 222
    sget-object v13, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v13, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 224
    sget-object v13, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 226
    move-object v11, v12

    .line 230
    :cond_8
    sget-object v13, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 232
    sget-object v13, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-lez v13, :cond_a

    .line 234
    invoke-static {v3}, Lorg/spongycastle/math/Primes$MROutput;->access$100(Ljava/math/BigInteger;)Lorg/spongycastle/math/Primes$MROutput;

    move-result-object v13

    goto/16 :goto_0

    .line 209
    :cond_9
    sget-object v13, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 214
    move-object v11, v12

    .line 199
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 237
    :cond_a
    invoke-static {}, Lorg/spongycastle/math/Primes$MROutput;->access$200()Lorg/spongycastle/math/Primes$MROutput;

    move-result-object v13

    goto/16 :goto_0

    .line 241
    .end local v2    # "b":Ljava/math/BigInteger;
    .end local v3    # "g":Ljava/math/BigInteger;
    .end local v5    # "j":I
    .end local v7    # "primeToBase":Z
    .end local v11    # "x":Ljava/math/BigInteger;
    .end local v12    # "z":Ljava/math/BigInteger;
    :cond_b
    invoke-static {}, Lorg/spongycastle/math/Primes$MROutput;->access$000()Lorg/spongycastle/math/Primes$MROutput;

    move-result-object v13

    goto/16 :goto_0
.end method

.method private static extract32([B)I
    .locals 6
    .param p0, "bs"    # [B

    .prologue
    .line 585
    const/4 v3, 0x0

    .line 587
    .local v3, "result":I
    const/4 v4, 0x4

    array-length v5, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 588
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 590
    array-length v4, p0

    add-int/lit8 v5, v2, 0x1

    sub-int/2addr v4, v5

    aget-byte v4, p0, v4

    and-int/lit16 v0, v4, 0xff

    .line 591
    .local v0, "b":I
    mul-int/lit8 v4, v2, 0x8

    shl-int v4, v0, v4

    or-int/2addr v3, v4

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    .end local v0    # "b":I
    :cond_0
    return v3
.end method

.method public static generateSTRandomPrime(Lorg/spongycastle/crypto/Digest;I[B)Lorg/spongycastle/math/Primes$STOutput;
    .locals 2
    .param p0, "hash"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "length"    # I
    .param p2, "inputSeed"    # [B

    .prologue
    .line 118
    if-nez p0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'hash\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'length\' must be >= 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    if-nez v0, :cond_3

    .line 128
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'inputSeed\' cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_3
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/spongycastle/math/Primes;->implSTRandomPrime(Lorg/spongycastle/crypto/Digest;I[B)Lorg/spongycastle/math/Primes$STOutput;

    move-result-object v0

    return-object v0
.end method

.method public static hasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 1
    .param p0, "candidate"    # Ljava/math/BigInteger;

    .prologue
    .line 255
    const-string v0, "candidate"

    invoke-static {p0, v0}, Lorg/spongycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 257
    invoke-static {p0}, Lorg/spongycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v0

    return v0
.end method

.method private static hash(Lorg/spongycastle/crypto/Digest;[B[BI)V
    .locals 2
    .param p0, "d"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "input"    # [B
    .param p2, "output"    # [B
    .param p3, "outPos"    # I

    .prologue
    .line 599
    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 600
    invoke-interface {p0, p2, p3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 601
    return-void
.end method

.method private static hashGen(Lorg/spongycastle/crypto/Digest;[BI)Ljava/math/BigInteger;
    .locals 6
    .param p0, "d"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "seed"    # [B
    .param p2, "count"    # I

    .prologue
    const/4 v5, 0x1

    .line 605
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    .line 606
    .local v1, "dLen":I
    mul-int v3, p2, v1

    .line 607
    .local v3, "pos":I
    new-array v0, v3, [B

    .line 608
    .local v0, "buf":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 610
    sub-int/2addr v3, v1

    .line 611
    invoke-static {p0, p1, v0, v3}, Lorg/spongycastle/math/Primes;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 612
    invoke-static {p1, v5}, Lorg/spongycastle/math/Primes;->inc([BI)V

    .line 608
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 614
    :cond_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v4
.end method

.method private static implHasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 6
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    const/4 v2, 0x1

    .line 367
    const v0, 0xd4c2086

    .line 368
    .local v0, "m":I
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 369
    .local v1, "r":I
    rem-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x3

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x5

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x7

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0xb

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0xd

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x11

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x13

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x17

    if-nez v3, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v2

    .line 375
    :cond_1
    const v0, 0x37ed0ed

    .line 376
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 377
    rem-int/lit8 v3, v1, 0x1d

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x1f

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x25

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x29

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x2b

    if-eqz v3, :cond_0

    .line 382
    const v0, 0x23cd611f

    .line 383
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 384
    rem-int/lit8 v3, v1, 0x2f

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x35

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x3b

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x3d

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x43

    if-eqz v3, :cond_0

    .line 389
    const v0, 0x20691a3

    .line 390
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 391
    rem-int/lit8 v3, v1, 0x47

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x49

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x4f

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x53

    if-eqz v3, :cond_0

    .line 396
    const v0, 0x55a60cb

    .line 397
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 398
    rem-int/lit8 v3, v1, 0x59

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x61

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x65

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x67

    if-eqz v3, :cond_0

    .line 403
    const v0, 0x9f9f361

    .line 404
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 405
    rem-int/lit8 v3, v1, 0x6b

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x6d

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x71

    if-eqz v3, :cond_0

    rem-int/lit8 v3, v1, 0x7f

    if-eqz v3, :cond_0

    .line 410
    const v0, 0x1627b25d

    .line 411
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 412
    rem-int/lit16 v3, v1, 0x83

    if-eqz v3, :cond_0

    rem-int/lit16 v3, v1, 0x89

    if-eqz v3, :cond_0

    rem-int/lit16 v3, v1, 0x8b

    if-eqz v3, :cond_0

    rem-int/lit16 v3, v1, 0x95

    if-eqz v3, :cond_0

    .line 417
    const v0, 0x2676ed77

    .line 418
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 419
    rem-int/lit16 v3, v1, 0x97

    if-eqz v3, :cond_0

    rem-int/lit16 v3, v1, 0x9d

    if-eqz v3, :cond_0

    rem-int/lit16 v3, v1, 0xa3

    if-eqz v3, :cond_0

    rem-int/lit16 v3, v1, 0xa7

    if-eqz v3, :cond_0

    .line 424
    const v0, 0x3fcf739d

    .line 425
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 426
    rem-int/lit16 v3, v1, 0xad

    if-eqz v3, :cond_0

    rem-int/lit16 v3, v1, 0xb3

    if-eqz v3, :cond_0

    rem-int/lit16 v3, v1, 0xb5

    if-eqz v3, :cond_0

    rem-int/lit16 v3, v1, 0xbf

    if-eqz v3, :cond_0

    .line 431
    const v0, 0x5f281a99

    .line 432
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 433
    rem-int/lit16 v3, v1, 0xc1

    if-eqz v3, :cond_0

    rem-int/lit16 v3, v1, 0xc5

    if-eqz v3, :cond_0

    rem-int/lit16 v3, v1, 0xc7

    if-eqz v3, :cond_0

    rem-int/lit16 v3, v1, 0xd3

    if-eqz v3, :cond_0

    .line 442
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private static implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z
    .locals 4
    .param p0, "w"    # Ljava/math/BigInteger;
    .param p1, "wSubOne"    # Ljava/math/BigInteger;
    .param p2, "m"    # Ljava/math/BigInteger;
    .param p3, "a"    # I
    .param p4, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 447
    invoke-virtual {p4, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 449
    .local v2, "z":Ljava/math/BigInteger;
    sget-object v3, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    :cond_0
    const/4 v1, 0x1

    .line 472
    :cond_1
    :goto_0
    return v1

    .line 454
    :cond_2
    const/4 v1, 0x0

    .line 456
    .local v1, "result":Z
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_1
    if-ge v0, p3, :cond_1

    .line 458
    sget-object v3, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 460
    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 462
    const/4 v1, 0x1

    .line 463
    goto :goto_0

    .line 466
    :cond_3
    sget-object v3, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 468
    const/4 v1, 0x0

    goto :goto_0

    .line 456
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static implSTRandomPrime(Lorg/spongycastle/crypto/Digest;I[B)Lorg/spongycastle/math/Primes$STOutput;
    .locals 28
    .param p0, "d"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "length"    # I
    .param p2, "primeSeed"    # [B

    .prologue
    .line 477
    invoke-interface/range {p0 .. p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v11

    .line 479
    .local v11, "dLen":I
    const/16 v23, 0x21

    move/from16 v0, p1

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 481
    const/16 v18, 0x0

    .line 483
    .local v18, "primeGenCounter":I
    new-array v8, v11, [B

    .line 484
    .local v8, "c0":[B
    new-array v10, v11, [B

    .line 488
    .local v10, "c1":[B
    :cond_0
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v23

    invoke-static {v0, v1, v8, v2}, Lorg/spongycastle/math/Primes;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 489
    const/16 v23, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/spongycastle/math/Primes;->inc([BI)V

    .line 491
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v23

    invoke-static {v0, v1, v10, v2}, Lorg/spongycastle/math/Primes;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 492
    const/16 v23, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/spongycastle/math/Primes;->inc([BI)V

    .line 494
    invoke-static {v8}, Lorg/spongycastle/math/Primes;->extract32([B)I

    move-result v23

    invoke-static {v10}, Lorg/spongycastle/math/Primes;->extract32([B)I

    move-result v24

    xor-int v7, v23, v24

    .line 495
    .local v7, "c":I
    const/16 v23, -0x1

    rsub-int/lit8 v24, p1, 0x20

    ushr-int v23, v23, v24

    and-int v7, v7, v23

    .line 496
    const/16 v23, 0x1

    add-int/lit8 v24, p1, -0x1

    shl-int v23, v23, v24

    or-int/lit8 v23, v23, 0x1

    or-int v7, v7, v23

    .line 498
    add-int/lit8 v18, v18, 0x1

    .line 500
    int-to-long v0, v7

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v12, v24, v26

    .line 501
    .local v12, "c64":J
    invoke-static {v12, v13}, Lorg/spongycastle/math/Primes;->isPrime32(J)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 503
    new-instance v23, Lorg/spongycastle/math/Primes$STOutput;

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    move/from16 v3, v18

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILorg/spongycastle/math/Primes$1;)V

    .line 565
    .end local v7    # "c":I
    .end local v8    # "c0":[B
    .end local v10    # "c1":[B
    .end local v12    # "c64":J
    :goto_0
    return-object v23

    .line 506
    .restart local v7    # "c":I
    .restart local v8    # "c0":[B
    .restart local v10    # "c1":[B
    .restart local v12    # "c64":J
    :cond_1
    mul-int/lit8 v23, p1, 0x4

    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    .line 508
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "Too many iterations in Shawe-Taylor Random_Prime Routine"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 513
    .end local v7    # "c":I
    .end local v8    # "c0":[B
    .end local v10    # "c1":[B
    .end local v12    # "c64":J
    .end local v18    # "primeGenCounter":I
    :cond_2
    add-int/lit8 v23, p1, 0x3

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/Primes;->implSTRandomPrime(Lorg/spongycastle/crypto/Digest;I[B)Lorg/spongycastle/math/Primes$STOutput;

    move-result-object v19

    .line 515
    .local v19, "rec":Lorg/spongycastle/math/Primes$STOutput;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/Primes$STOutput;->getPrime()Ljava/math/BigInteger;

    move-result-object v8

    .line 516
    .local v8, "c0":Ljava/math/BigInteger;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/Primes$STOutput;->getPrimeSeed()[B

    move-result-object p2

    .line 517
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/Primes$STOutput;->getPrimeGenCounter()I

    move-result v18

    .line 519
    .restart local v18    # "primeGenCounter":I
    mul-int/lit8 v17, v11, 0x8

    .line 520
    .local v17, "outlen":I
    add-int/lit8 v23, p1, -0x1

    div-int v15, v23, v17

    .line 522
    .local v15, "iterations":I
    move/from16 v16, v18

    .line 524
    .local v16, "oldCounter":I
    add-int/lit8 v23, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/Primes;->hashGen(Lorg/spongycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v21

    .line 525
    .local v21, "x":Ljava/math/BigInteger;
    sget-object v23, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v24, p1, -0x1

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    add-int/lit8 v24, p1, -0x1

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v21

    .line 527
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 528
    .local v9, "c0x2":Ljava/math/BigInteger;
    sget-object v23, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    sget-object v24, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v20

    .line 529
    .local v20, "tx2":Ljava/math/BigInteger;
    const/4 v14, 0x0

    .line 531
    .local v14, "dt":I
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    sget-object v24, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 539
    .local v7, "c":Ljava/math/BigInteger;
    :goto_1
    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-le v0, v1, :cond_3

    .line 541
    sget-object v23, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v24, p1, -0x1

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v23

    sget-object v24, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    sget-object v24, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v20

    .line 542
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    sget-object v24, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 545
    :cond_3
    add-int/lit8 v18, v18, 0x1

    .line 553
    invoke-static {v7}, Lorg/spongycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 555
    add-int/lit8 v23, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/Primes;->hashGen(Lorg/spongycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v6

    .line 556
    .local v6, "a":Ljava/math/BigInteger;
    sget-object v23, Lorg/spongycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    sget-object v24, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 558
    int-to-long v0, v14

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    .line 559
    const/4 v14, 0x0

    .line 561
    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    .line 563
    .local v22, "z":Ljava/math/BigInteger;
    sget-object v23, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    sget-object v24, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    sget-object v24, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 565
    new-instance v23, Lorg/spongycastle/math/Primes$STOutput;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move/from16 v2, v18

    move-object/from16 v3, v24

    invoke-direct {v0, v7, v1, v2, v3}, Lorg/spongycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILorg/spongycastle/math/Primes$1;)V

    goto/16 :goto_0

    .line 570
    .end local v6    # "a":Ljava/math/BigInteger;
    .end local v22    # "z":Ljava/math/BigInteger;
    :cond_4
    add-int/lit8 v23, v15, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Lorg/spongycastle/math/Primes;->inc([BI)V

    .line 573
    :cond_5
    mul-int/lit8 v23, p1, 0x4

    add-int v23, v23, v16

    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    .line 575
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "Too many iterations in Shawe-Taylor Random_Prime Routine"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 578
    :cond_6
    add-int/lit8 v14, v14, 0x2

    .line 579
    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto/16 :goto_1
.end method

.method private static inc([BI)V
    .locals 2
    .param p0, "seed"    # [B
    .param p1, "c"    # I

    .prologue
    .line 619
    array-length v0, p0

    .line 620
    .local v0, "pos":I
    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 622
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr p1, v1

    .line 623
    int-to-byte v1, p1

    aput-byte v1, p0, v0

    .line 624
    ushr-int/lit8 p1, p1, 0x8

    goto :goto_0

    .line 626
    :cond_0
    return-void
.end method

.method public static isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z
    .locals 11
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "iterations"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 278
    const-string v9, "candidate"

    invoke-static {p0, v9}, Lorg/spongycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 280
    if-nez p1, :cond_0

    .line 282
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "\'random\' cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 284
    :cond_0
    if-ge p2, v7, :cond_1

    .line 286
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "\'iterations\' must be > 0"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 289
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 315
    :cond_2
    :goto_0
    return v7

    .line 293
    :cond_3
    invoke-virtual {p0, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-nez v9, :cond_4

    move v7, v8

    .line 295
    goto :goto_0

    .line 298
    :cond_4
    move-object v4, p0

    .line 299
    .local v4, "w":Ljava/math/BigInteger;
    sget-object v9, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 300
    .local v5, "wSubOne":Ljava/math/BigInteger;
    sget-object v9, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 302
    .local v6, "wSubTwo":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v0

    .line 303
    .local v0, "a":I
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 305
    .local v3, "m":Ljava/math/BigInteger;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, p2, :cond_2

    .line 307
    sget-object v9, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v9, v6, p1}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 309
    .local v1, "b":Ljava/math/BigInteger;
    invoke-static {v4, v5, v3, v0, v1}, Lorg/spongycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v9

    if-nez v9, :cond_5

    move v7, v8

    .line 311
    goto :goto_0

    .line 305
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static isMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 6
    .param p0, "candidate"    # Ljava/math/BigInteger;
    .param p1, "base"    # Ljava/math/BigInteger;

    .prologue
    .line 332
    const-string v4, "candidate"

    invoke-static {p0, v4}, Lorg/spongycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 333
    const-string v4, "base"

    invoke-static {p1, v4}, Lorg/spongycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 335
    sget-object v4, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 337
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "\'base\' must be < (\'candidate\' - 1)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 340
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 342
    const/4 v4, 0x1

    .line 351
    :goto_0
    return v4

    .line 345
    :cond_1
    move-object v2, p0

    .line 346
    .local v2, "w":Ljava/math/BigInteger;
    sget-object v4, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 348
    .local v3, "wSubOne":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v0

    .line 349
    .local v0, "a":I
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 351
    .local v1, "m":Ljava/math/BigInteger;
    invoke-static {v2, v3, v1, v0, p1}, Lorg/spongycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v4

    goto :goto_0
.end method

.method private static isPrime32(J)Z
    .locals 10
    .param p0, "x"    # J

    .prologue
    .line 630
    const/16 v6, 0x20

    ushr-long v6, p0, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 632
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Size limit exceeded"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 639
    :cond_0
    const-wide/16 v6, 0x5

    cmp-long v6, p0, v6

    if-gtz v6, :cond_3

    .line 641
    const-wide/16 v6, 0x2

    cmp-long v6, p0, v6

    if-eqz v6, :cond_1

    const-wide/16 v6, 0x3

    cmp-long v6, p0, v6

    if-eqz v6, :cond_1

    const-wide/16 v6, 0x5

    cmp-long v6, p0, v6

    if-nez v6, :cond_2

    :cond_1
    const/4 v6, 0x1

    .line 670
    :goto_0
    return v6

    .line 641
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 644
    :cond_3
    const-wide/16 v6, 0x1

    and-long/2addr v6, p0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    const-wide/16 v6, 0x3

    rem-long v6, p0, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    const-wide/16 v6, 0x5

    rem-long v6, p0, v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 646
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 649
    :cond_5
    const/16 v6, 0x8

    new-array v4, v6, [J

    fill-array-data v4, :array_0

    .line 650
    .local v4, "ds":[J
    const-wide/16 v0, 0x0

    .line 651
    .local v0, "base":J
    const/4 v5, 0x1

    .line 656
    .local v5, "pos":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_8

    .line 658
    aget-wide v6, v4, v5

    add-long v2, v0, v6

    .line 659
    .local v2, "d":J
    rem-long v6, p0, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 661
    const-wide/16 v6, 0x1e

    cmp-long v6, p0, v6

    if-gez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    .line 663
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 664
    goto :goto_1

    .line 666
    .end local v2    # "d":J
    :cond_8
    const-wide/16 v6, 0x1e

    add-long/2addr v0, v6

    .line 668
    mul-long v6, v0, v0

    cmp-long v6, v6, p0

    if-ltz v6, :cond_9

    .line 670
    const/4 v6, 0x1

    goto :goto_0

    .line 651
    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    .line 649
    :array_0
    .array-data 8
        0x1
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
    .end array-data
.end method
