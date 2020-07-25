.class public Lorg/spongycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source "DSAParametersGenerator.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private L:I

.field private N:I

.field private certainty:I

.field private digest:Lorg/spongycastle/crypto/Digest;

.field private iterations:I

.field private random:Ljava/security/SecureRandom;

.field private usageIndex:I

.field private use186_3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    .line 22
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    .line 23
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA1()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    .line 41
    return-void
.end method

.method private static calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/security/SecureRandom;

    .prologue
    .line 202
    sget-object v4, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 203
    .local v0, "e":Ljava/math/BigInteger;
    sget-object v4, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 207
    .local v3, "pSub2":Ljava/math/BigInteger;
    :cond_0
    sget-object v4, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v4, v3, p2}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 208
    .local v2, "h":Ljava/math/BigInteger;
    invoke-virtual {v2, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 209
    .local v1, "g":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 211
    return-object v1
.end method

.method private static calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/security/SecureRandom;

    .prologue
    .line 346
    invoke-static {p0, p1, p2}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static calculateGenerator_FIPS186_3_Verifiable(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .locals 10
    .param p0, "d"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "seed"    # [B
    .param p4, "index"    # I

    .prologue
    const/4 v9, 0x0

    .line 353
    sget-object v7, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 354
    .local v3, "e":Ljava/math/BigInteger;
    const-string v7, "6767656E"

    invoke-static {v7}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 357
    .local v5, "ggen":[B
    array-length v7, p3

    array-length v8, v5

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x2

    new-array v0, v7, [B

    .line 358
    .local v0, "U":[B
    array-length v7, p3

    invoke-static {p3, v9, v0, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    array-length v7, p3

    array-length v8, v5

    invoke-static {v5, v9, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    array-length v7, v0

    add-int/lit8 v7, v7, -0x3

    int-to-byte v8, p4

    aput-byte v8, v0, v7

    .line 362
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v6, v7, [B

    .line 363
    .local v6, "w":[B
    const/4 v2, 0x1

    .local v2, "count":I
    :goto_0
    const/high16 v7, 0x10000

    if-ge v2, v7, :cond_1

    .line 365
    invoke-static {v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 366
    invoke-static {p0, v0, v6, v9}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 367
    new-instance v1, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v1, v7, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 368
    .local v1, "W":Ljava/math/BigInteger;
    invoke-virtual {v1, v3, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 369
    .local v4, "g":Ljava/math/BigInteger;
    sget-object v7, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ltz v7, :cond_0

    .line 375
    .end local v1    # "W":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    :goto_1
    return-object v4

    .line 363
    .restart local v1    # "W":Ljava/math/BigInteger;
    .restart local v4    # "g":Ljava/math/BigInteger;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 375
    .end local v1    # "W":Ljava/math/BigInteger;
    .end local v4    # "g":Ljava/math/BigInteger;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private generateParameters_FIPS186_2()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 22

    .prologue
    .line 123
    const/16 v19, 0x14

    move/from16 v0, v19

    new-array v15, v0, [B

    .line 124
    .local v15, "seed":[B
    const/16 v19, 0x14

    move/from16 v0, v19

    new-array v11, v0, [B

    .line 125
    .local v11, "part1":[B
    const/16 v19, 0x14

    move/from16 v0, v19

    new-array v12, v0, [B

    .line 126
    .local v12, "part2":[B
    const/16 v19, 0x14

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 127
    .local v16, "u":[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    div-int/lit16 v8, v0, 0xa0

    .line 128
    .local v8, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 130
    .local v17, "w":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 132
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 149
    .local v6, "i":I
    :cond_0
    const/16 v19, 0x0

    aget-byte v20, v16, v19

    or-int/lit8 v20, v20, -0x80

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v16, v19

    .line 150
    const/16 v19, 0x13

    aget-byte v20, v16, v19

    or-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v16, v19

    .line 152
    new-instance v13, Ljava/math/BigInteger;

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v13, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 154
    .local v13, "q":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 137
    .end local v6    # "i":I
    .end local v13    # "q":Ljava/math/BigInteger;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v15, v11, v1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 140
    const/16 v19, 0x0

    const/16 v20, 0x0

    array-length v0, v15

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v15, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    invoke-static {v12}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v12, v12, v1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 144
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v6, v0, :cond_0

    .line 146
    aget-byte v19, v11, v6

    aget-byte v20, v12, v6

    xor-int v19, v19, v20

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v16, v6

    .line 144
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 159
    .restart local v13    # "q":Ljava/math/BigInteger;
    :cond_2
    invoke-static {v15}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v9

    .line 160
    .local v9, "offset":[B
    invoke-static {v9}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 162
    const/4 v4, 0x0

    .local v4, "counter":I
    :goto_1
    const/16 v19, 0x1000

    move/from16 v0, v19

    if-ge v4, v0, :cond_1

    .line 165
    const/4 v7, 0x1

    .local v7, "k":I
    :goto_2
    if-gt v7, v8, :cond_3

    .line 167
    invoke-static {v9}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    array-length v0, v11

    move/from16 v21, v0

    mul-int v21, v21, v7

    sub-int v20, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-static {v0, v9, v1, v2}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 165
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 171
    :cond_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    array-length v0, v11

    move/from16 v20, v0

    mul-int v20, v20, v8

    sub-int v14, v19, v20

    .line 172
    .local v14, "remaining":I
    invoke-static {v9}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v9, v11, v1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 174
    array-length v0, v11

    move/from16 v19, v0

    sub-int v19, v19, v14

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-static {v11, v0, v1, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    const/16 v19, 0x0

    aget-byte v20, v17, v19

    or-int/lit8 v20, v20, -0x80

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v17, v19

    .line 179
    new-instance v18, Ljava/math/BigInteger;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 181
    .local v18, "x":Ljava/math/BigInteger;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 183
    .local v3, "c":Ljava/math/BigInteger;
    sget-object v19, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 185
    .local v10, "p":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 162
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 190
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v10, v13, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    .line 194
    .local v5, "g":Ljava/math/BigInteger;
    new-instance v19, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v20, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v0, v20

    invoke-direct {v0, v15, v4}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v10, v13, v5, v1}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    return-object v19
.end method

.method private generateParameters_FIPS186_3()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 27

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    .line 225
    .local v11, "d":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v11}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v24

    mul-int/lit8 v16, v24, 0x8

    .line 233
    .local v16, "outlen":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v22, v0

    .line 234
    .local v22, "seedlen":I
    div-int/lit8 v24, v22, 0x8

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 237
    .local v21, "seed":[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    div-int v14, v24, v16

    .line 240
    .local v14, "n":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    rem-int v7, v24, v16

    .line 242
    .local v7, "b":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x8

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 243
    .local v23, "w":[B
    invoke-interface {v11}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 247
    .local v17, "output":[B
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 250
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-static {v11, v0, v1, v2}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 252
    new-instance v24, Ljava/math/BigInteger;

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v25, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 255
    .local v5, "U":Ljava/math/BigInteger;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v19

    .line 258
    .local v19, "q":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 266
    invoke-static/range {v21 .. v21}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v15

    .line 269
    .local v15, "offset":[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v24, v0

    mul-int/lit8 v10, v24, 0x4

    .line 270
    .local v10, "counterLimit":I
    const/4 v9, 0x0

    .local v9, "counter":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 276
    const/4 v13, 0x1

    .local v13, "j":I
    :goto_1
    if-gt v13, v14, :cond_1

    .line 278
    invoke-static {v15}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 279
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    mul-int v25, v25, v13

    sub-int v24, v24, v25

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v11, v15, v0, v1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 276
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 282
    :cond_1
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    mul-int v25, v25, v14

    sub-int v20, v24, v25

    .line 283
    .local v20, "remaining":I
    invoke-static {v15}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 284
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-static {v11, v15, v0, v1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 285
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    sub-int v24, v24, v20

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move-object/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    const/16 v24, 0x0

    aget-byte v25, v23, v24

    or-int/lit8 v25, v25, -0x80

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v23, v24

    .line 291
    new-instance v6, Ljava/math/BigInteger;

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 294
    .local v6, "X":Ljava/math/BigInteger;
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 297
    .local v8, "c":Ljava/math/BigInteger;
    sget-object v24, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    .line 300
    .local v18, "p":Ljava/math/BigInteger;
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->bitLength()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 270
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 306
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    move/from16 v24, v0

    if-ltz v24, :cond_4

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v24

    invoke-static {v11, v0, v1, v2, v3}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v12

    .line 313
    .local v12, "g":Ljava/math/BigInteger;
    if-eqz v12, :cond_4

    .line 315
    new-instance v24, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v25, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move/from16 v2, v26

    invoke-direct {v0, v1, v9, v2}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v12, v3}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    .line 321
    :goto_2
    return-object v24

    .line 319
    .end local v12    # "g":Ljava/math/BigInteger;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v12

    .line 321
    .restart local v12    # "g":Ljava/math/BigInteger;
    new-instance v24, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v25, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v12, v3}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    goto :goto_2
.end method

.method private static getDefaultN(I)I
    .locals 1
    .param p0, "L"    # I

    .prologue
    .line 386
    const/16 v0, 0x400

    if-le p0, v0, :cond_0

    const/16 v0, 0x100

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa0

    goto :goto_0
.end method

.method private static getMinimumIterations(I)I
    .locals 1
    .param p0, "L"    # I

    .prologue
    .line 392
    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    const/16 v0, 0x28

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    div-int/lit16 v0, v0, 0x400

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x30

    goto :goto_0
.end method

.method private static hash(Lorg/spongycastle/crypto/Digest;[B[BI)V
    .locals 2
    .param p0, "d"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "input"    # [B
    .param p2, "output"    # [B
    .param p3, "outputPos"    # I

    .prologue
    .line 380
    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 381
    invoke-interface {p0, p2, p3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 382
    return-void
.end method

.method private static inc([B)V
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 397
    array-length v2, p0

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 399
    aget-byte v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 400
    .local v0, "b":B
    aput-byte v0, p0, v1

    .line 402
    if-eqz v0, :cond_1

    .line 407
    .end local v0    # "b":B
    :cond_0
    return-void

    .line 397
    .restart local v0    # "b":B
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private isProbablePrime(Ljava/math/BigInteger;)Z
    .locals 1
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 340
    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public generateParameters()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 118
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_0
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "certainty"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 55
    iput p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 56
    invoke-static {p1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 57
    iput p2, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 58
    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    invoke-static {v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 59
    iput-object p3, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    .line 62
    return-void
.end method

.method public init(Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;)V
    .locals 6
    .param p1, "params"    # Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;

    .prologue
    const/16 v5, 0xc00

    const/16 v4, 0x400

    const/16 v3, 0x100

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    move-result v0

    .local v0, "L":I
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    move-result v1

    .line 77
    .local v1, "N":I
    if-lt v0, v4, :cond_0

    if-gt v0, v5, :cond_0

    rem-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_1

    .line 79
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_1
    if-ne v0, v4, :cond_2

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_2

    .line 83
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 160 for L = 1024"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_2
    const/16 v2, 0x800

    if-ne v0, v2, :cond_3

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_3

    .line 87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 224 or 256 for L = 2048"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_3
    if-ne v0, v5, :cond_4

    if-eq v1, v3, :cond_4

    .line 91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "N must be 256 for L = 3072"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_4
    iget-object v2, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-ge v2, v1, :cond_5

    .line 96
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Digest output size too small for value of N"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_5
    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 100
    iput v1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 101
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 102
    invoke-static {v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v2

    iget v3, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 103
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 105
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    .line 106
    return-void
.end method
