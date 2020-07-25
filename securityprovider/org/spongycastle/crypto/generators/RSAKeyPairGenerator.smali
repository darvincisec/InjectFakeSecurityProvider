.class public Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "RSAKeyPairGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private iterations:I

.field private param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNumberOfIterations(II)I
    .locals 5
    .param p0, "bits"    # I
    .param p1, "certainty"    # I

    .prologue
    const/16 v4, 0x50

    const/4 v1, 0x5

    const/4 v0, 0x4

    const/16 v3, 0x64

    .line 207
    const/16 v2, 0x600

    if-lt p0, v2, :cond_2

    .line 209
    if-gt p1, v3, :cond_1

    const/4 v0, 0x3

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    const/16 v1, 0x80

    if-le p1, v1, :cond_0

    add-int/lit8 v0, p1, -0x80

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 213
    :cond_2
    const/16 v2, 0x400

    if-lt p0, v2, :cond_4

    .line 215
    if-le p1, v3, :cond_0

    const/16 v0, 0x70

    if-gt p1, v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p1, -0x70

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    .line 219
    :cond_4
    const/16 v0, 0x200

    if-lt p0, v0, :cond_7

    .line 221
    if-gt p1, v4, :cond_5

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    if-gt p1, v3, :cond_6

    const/4 v1, 0x7

    goto :goto_1

    :cond_6
    add-int/lit8 v0, p1, -0x64

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x7

    goto :goto_1

    .line 227
    :cond_7
    if-gt p1, v4, :cond_8

    const/16 v0, 0x28

    goto :goto_0

    :cond_8
    add-int/lit8 v0, p1, -0x50

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x28

    goto :goto_0
.end method


# virtual methods
.method protected chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "bitlength"    # I
    .param p2, "e"    # Ljava/math/BigInteger;
    .param p3, "sqrdBound"    # Ljava/math/BigInteger;

    .prologue
    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int/lit8 v2, p1, 0x5

    if-eq v0, v2, :cond_2

    .line 164
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 166
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 176
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    sget-object v2, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    return-object v1

    .line 189
    .end local v1    # "p":Ljava/math/BigInteger;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unable to generate prime number for RSA key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 30

    .prologue
    .line 33
    const/16 v25, 0x0

    .line 34
    .local v25, "result":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    const/4 v15, 0x0

    .line 39
    .local v15, "done":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v27

    .line 40
    .local v27, "strength":I
    add-int/lit8 v4, v27, 0x1

    div-int/lit8 v22, v4, 0x2

    .line 41
    .local v22, "pbitlength":I
    sub-int v24, v27, v22

    .line 42
    .local v24, "qbitlength":I
    div-int/lit8 v4, v27, 0x2

    add-int/lit8 v20, v4, -0x64

    .line 44
    .local v20, "mindiffbits":I
    div-int/lit8 v4, v27, 0x3

    move/from16 v0, v20

    if-ge v0, v4, :cond_0

    .line 46
    div-int/lit8 v20, v27, 0x3

    .line 49
    :cond_0
    shr-int/lit8 v19, v27, 0x2

    .line 52
    .local v19, "minWeight":I
    const-wide/16 v28, 0x2

    invoke-static/range {v28 .. v29}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    div-int/lit8 v28, v27, 0x2

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v13

    .line 54
    .local v13, "dLowerBound":Ljava/math/BigInteger;
    sget-object v4, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v28, v27, -0x1

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v26

    .line 56
    .local v26, "squaredBound":Ljava/math/BigInteger;
    sget-object v4, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v18

    .line 58
    .local v18, "minDiff":Ljava/math/BigInteger;
    :cond_1
    :goto_0
    if-nez v15, :cond_6

    .line 62
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v6

    .line 64
    .local v6, "e":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v6, v2}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 71
    .local v8, "p":Ljava/math/BigInteger;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v6, v2}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 74
    .local v9, "q":Ljava/math/BigInteger;
    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v14

    .line 75
    .local v14, "diff":Ljava/math/BigInteger;
    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    move/from16 v0, v20

    if-lt v4, v0, :cond_2

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_2

    .line 83
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 85
    .local v5, "n":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    move/from16 v0, v27

    if-eq v4, v0, :cond_3

    .line 91
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 92
    goto :goto_1

    .line 101
    :cond_3
    invoke-static {v5}, Lorg/spongycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v4

    move/from16 v0, v19

    if-ge v4, v0, :cond_4

    .line 103
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v6, v2}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 104
    goto :goto_1

    .line 110
    :cond_4
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_5

    .line 112
    move-object/from16 v16, v8

    .line 113
    .local v16, "gcd":Ljava/math/BigInteger;
    move-object v8, v9

    .line 114
    move-object/from16 v9, v16

    .line 117
    .end local v16    # "gcd":Ljava/math/BigInteger;
    :cond_5
    sget-object v4, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    .line 118
    .local v21, "pSub1":Ljava/math/BigInteger;
    sget-object v4, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    .line 119
    .local v23, "qSub1":Ljava/math/BigInteger;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 120
    .restart local v16    # "gcd":Ljava/math/BigInteger;
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 125
    .local v17, "lcm":Ljava/math/BigInteger;
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 127
    .local v7, "d":Ljava/math/BigInteger;
    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_1

    .line 133
    const/4 v15, 0x1

    .line 141
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 142
    .local v10, "dP":Ljava/math/BigInteger;
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 143
    .local v11, "dQ":Ljava/math/BigInteger;
    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 145
    .local v12, "qInv":Ljava/math/BigInteger;
    new-instance v25, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    .end local v25    # "result":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    new-instance v28, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5, v6}, Lorg/spongycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v4, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-direct/range {v4 .. v12}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    .line 148
    .restart local v25    # "result":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    goto/16 :goto_0

    .line 150
    .end local v5    # "n":Ljava/math/BigInteger;
    .end local v6    # "e":Ljava/math/BigInteger;
    .end local v7    # "d":Ljava/math/BigInteger;
    .end local v8    # "p":Ljava/math/BigInteger;
    .end local v9    # "q":Ljava/math/BigInteger;
    .end local v10    # "dP":Ljava/math/BigInteger;
    .end local v11    # "dQ":Ljava/math/BigInteger;
    .end local v12    # "qInv":Ljava/math/BigInteger;
    .end local v14    # "diff":Ljava/math/BigInteger;
    .end local v16    # "gcd":Ljava/math/BigInteger;
    .end local v17    # "lcm":Ljava/math/BigInteger;
    .end local v21    # "pSub1":Ljava/math/BigInteger;
    .end local v23    # "qSub1":Ljava/math/BigInteger;
    :cond_6
    return-object v25
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 2
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 27
    check-cast p1, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/KeyGenerationParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    .line 28
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->getNumberOfIterations(II)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->iterations:I

    .line 29
    return-void
.end method

.method protected isProbablePrime(Ljava/math/BigInteger;)Z
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 197
    invoke-static {p1}, Lorg/spongycastle/math/Primes;->hasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->param:Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/generators/RSAKeyPairGenerator;->iterations:I

    invoke-static {p1, v0, v1}, Lorg/spongycastle/math/Primes;->isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
