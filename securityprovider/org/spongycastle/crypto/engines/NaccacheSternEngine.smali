.class public Lorg/spongycastle/crypto/engines/NaccacheSternEngine;
.super Ljava/lang/Object;
.source "NaccacheSternEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static ONE:Ljava/math/BigInteger;

.field private static ZERO:Ljava/math/BigInteger;


# instance fields
.field private debug:Z

.field private forEncryption:Z

.field private key:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

.field private lookup:[Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    .line 31
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    return-void
.end method

.method private static chineseRemainder(Ljava/util/Vector;Ljava/util/Vector;)Ljava/math/BigInteger;
    .locals 8
    .param p0, "congruences"    # Ljava/util/Vector;
    .param p1, "primes"    # Ljava/util/Vector;

    .prologue
    .line 419
    sget-object v5, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    .line 420
    .local v5, "retval":Ljava/math/BigInteger;
    sget-object v1, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    .line 421
    .local v1, "all":Ljava/math/BigInteger;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 423
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 421
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 425
    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 427
    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 428
    .local v0, "a":Ljava/math/BigInteger;
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 429
    .local v2, "b":Ljava/math/BigInteger;
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 430
    .local v3, "b_":Ljava/math/BigInteger;
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 431
    .local v6, "tmp":Ljava/math/BigInteger;
    invoke-virtual {p0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 432
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 425
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 435
    .end local v0    # "a":Ljava/math/BigInteger;
    .end local v2    # "b":Ljava/math/BigInteger;
    .end local v3    # "b_":Ljava/math/BigInteger;
    .end local v6    # "tmp":Ljava/math/BigInteger;
    :cond_1
    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public addCryptedBlocks([B[B)[B
    .locals 8
    .param p1, "block1"    # [B
    .param p2, "block2"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 289
    iget-boolean v4, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-eqz v4, :cond_1

    .line 291
    array-length v4, p1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->getOutputBlockSize()I

    move-result v5

    if-gt v4, v5, :cond_0

    array-length v4, p2

    .line 292
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->getOutputBlockSize()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 294
    :cond_0
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v5, "BlockLength too large for simple addition.\n"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 300
    :cond_1
    array-length v4, p1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v5

    if-gt v4, v5, :cond_2

    array-length v4, p2

    .line 301
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 303
    :cond_2
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v5, "BlockLength too large for simple addition.\n"

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 309
    :cond_3
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v6, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 310
    .local v0, "m1Crypt":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v6, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 311
    .local v2, "m2Crypt":Ljava/math/BigInteger;
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 312
    .local v1, "m1m2Crypt":Ljava/math/BigInteger;
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 313
    iget-boolean v4, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v4, :cond_4

    .line 315
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c(m1) as BigInteger:....... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c(m2) as BigInteger:....... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c(m1)*c(m2)%n = c(m1+m2)%n: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    :cond_4
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 321
    .local v3, "output":[B
    invoke-static {v3, v7}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 322
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    array-length v5, v3

    .line 323
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v5, v6

    .line 324
    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    .line 322
    invoke-static {v4, v7, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    return-object v3
.end method

.method public encrypt(Ljava/math/BigInteger;)[B
    .locals 5
    .param p1, "plain"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x0

    .line 261
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 262
    .local v0, "output":[B
    invoke-static {v0, v4}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 263
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 264
    .local v1, "tmp":[B
    array-length v2, v0

    array-length v3, v1

    sub-int/2addr v2, v3

    array-length v3, v1

    .line 265
    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget-boolean v2, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v2, :cond_0

    .line 269
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encrypted value is:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    :cond_0
    return-object v0
.end method

.method public getInputBlockSize()I
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->getLowerSigmaBound()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method public getOutputBlockSize()I
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;->getLowerSigmaBound()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 11
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 41
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    .line 43
    instance-of v8, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v8, :cond_0

    .line 45
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 48
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    check-cast p2, Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    .line 51
    iget-boolean v8, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    if-nez v8, :cond_4

    .line 53
    iget-boolean v8, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v8, :cond_1

    .line 55
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Constructing lookup Array"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_1
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    check-cast v7, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;

    .line 58
    .local v7, "priv":Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getSmallPrimes()Ljava/util/Vector;

    move-result-object v6

    .line 59
    .local v6, "primes":Ljava/util/Vector;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v8, v8, [Ljava/util/Vector;

    iput-object v8, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    .line 60
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 62
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 63
    .local v1, "actualPrime":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 65
    .local v2, "actualPrimeValue":I
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    aput-object v9, v8, v4

    .line 66
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v8, v8, v4

    sget-object v9, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 68
    iget-boolean v8, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v8, :cond_2

    .line 70
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Constructing lookup ArrayList for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    :cond_2
    sget-object v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->ZERO:Ljava/math/BigInteger;

    .line 75
    .local v0, "accJ":Ljava/math/BigInteger;
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 77
    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getPhi_n()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 79
    .local v3, "comp":Ljava/math/BigInteger;
    iget-object v8, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    aget-object v8, v8, v4

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 75
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 60
    .end local v3    # "comp":Ljava/math/BigInteger;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "accJ":Ljava/math/BigInteger;
    .end local v1    # "actualPrime":Ljava/math/BigInteger;
    .end local v2    # "actualPrimeValue":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "primes":Ljava/util/Vector;
    .end local v7    # "priv":Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;
    :cond_4
    return-void
.end method

.method public processBlock([BII)[B
    .locals 19
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 138
    new-instance v16, Ljava/lang/IllegalStateException;

    const-string v17, "NaccacheStern engine not initialised"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 140
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, p3

    move/from16 v1, v16

    if-le v0, v1, :cond_1

    .line 142
    new-instance v16, Lorg/spongycastle/crypto/DataLengthException;

    const-string v17, "input too large for Naccache-Stern cipher.\n"

    invoke-direct/range {v16 .. v17}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 145
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 148
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v16

    move/from16 v0, p3

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 150
    new-instance v16, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v17, "BlockLength does not match modulus for Naccache-Stern cipher.\n"

    invoke-direct/range {v16 .. v17}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 156
    :cond_2
    if-nez p2, :cond_3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, p3

    move/from16 v1, v16

    if-eq v0, v1, :cond_5

    .line 158
    :cond_3
    move/from16 v0, p3

    new-array v5, v0, [B

    .line 159
    .local v5, "block":[B
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v16

    move/from16 v3, p3

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    :goto_0
    new-instance v8, Ljava/math/BigInteger;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v8, v0, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 168
    .local v8, "input":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 170
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "input as BigInteger: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->forEncryption:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 175
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->encrypt(Ljava/math/BigInteger;)[B

    move-result-object v11

    .line 246
    .local v11, "output":[B
    :goto_1
    return-object v11

    .line 163
    .end local v5    # "block":[B
    .end local v8    # "input":Ljava/math/BigInteger;
    .end local v11    # "output":[B
    :cond_5
    move-object/from16 v5, p1

    .restart local v5    # "block":[B
    goto :goto_0

    .line 179
    .restart local v8    # "input":Ljava/math/BigInteger;
    :cond_6
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 180
    .local v12, "plain":Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->key:Lorg/spongycastle/crypto/params/NaccacheSternKeyParameters;

    check-cast v14, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;

    .line 181
    .local v14, "priv":Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;
    invoke-virtual {v14}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getSmallPrimes()Ljava/util/Vector;

    move-result-object v13

    .line 183
    .local v13, "primes":Ljava/util/Vector;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_b

    .line 185
    invoke-virtual {v14}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getPhi_n()Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual {v13, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/math/BigInteger;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual {v14}, Lorg/spongycastle/crypto/params/NaccacheSternPrivateKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 186
    .local v6, "exp":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    move-object/from16 v16, v0

    aget-object v4, v16, v7

    .line 187
    .local v4, "al":Ljava/util/Vector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v17

    invoke-virtual {v13, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/math/BigInteger;

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->intValue()I

    move-result v16

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    .line 189
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 191
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Prime is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", lookup table has size "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    :cond_7
    new-instance v17, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error in lookup Array for "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 194
    invoke-virtual {v13, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/math/BigInteger;

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->intValue()I

    move-result v16

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, ": Size mismatch. Expected ArrayList with length "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 196
    invoke-virtual {v13, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/math/BigInteger;

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->intValue()I

    move-result v16

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " but found ArrayList of length "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    .line 197
    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 199
    :cond_8
    invoke-virtual {v4, v6}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 201
    .local v10, "lookedup":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_a

    .line 203
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 205
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Actual prime is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Decrypted value is "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "LookupList for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " with size "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " is: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    move-object/from16 v16, v0

    aget-object v16, v16, v7

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_9

    .line 212
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->lookup:[Ljava/util/Vector;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 210
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 215
    .end local v9    # "j":I
    :cond_9
    new-instance v16, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v17, "Lookup failed"

    invoke-direct/range {v16 .. v17}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 217
    :cond_a
    int-to-long v0, v10

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 183
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 219
    .end local v4    # "al":Ljava/util/Vector;
    .end local v6    # "exp":Ljava/math/BigInteger;
    .end local v10    # "lookedup":I
    :cond_b
    invoke-static {v12, v13}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->chineseRemainder(Ljava/util/Vector;Ljava/util/Vector;)Ljava/math/BigInteger;

    move-result-object v15

    .line 242
    .local v15, "test":Ljava/math/BigInteger;
    invoke-virtual {v15}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v11

    .restart local v11    # "output":[B
    goto/16 :goto_1
.end method

.method public processData([B)[B
    .locals 11
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 340
    iget-boolean v7, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v7, :cond_0

    .line 342
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7}, Ljava/io/PrintStream;->println()V

    .line 344
    :cond_0
    array-length v7, p1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v8

    if-le v7, v8, :cond_8

    .line 346
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->getInputBlockSize()I

    move-result v1

    .line 347
    .local v1, "inBlocksize":I
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->getOutputBlockSize()I

    move-result v2

    .line 348
    .local v2, "outBlocksize":I
    iget-boolean v7, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v7, :cond_1

    .line 350
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Input blocksize is:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Output blocksize is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 352
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data has length:.... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 354
    :cond_1
    const/4 v0, 0x0

    .line 355
    .local v0, "datapos":I
    const/4 v4, 0x0

    .line 356
    .local v4, "retpos":I
    array-length v7, p1

    div-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v7, v2

    new-array v5, v7, [B

    .line 357
    .local v5, "retval":[B
    :goto_0
    array-length v7, p1

    if-ge v0, v7, :cond_6

    .line 360
    add-int v7, v0, v1

    array-length v8, p1

    if-ge v7, v8, :cond_3

    .line 362
    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->processBlock([BII)[B

    move-result-object v6

    .line 363
    .local v6, "tmp":[B
    add-int/2addr v0, v1

    .line 370
    :goto_1
    iget-boolean v7, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v7, :cond_2

    .line 372
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "new datapos is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    :cond_2
    if-eqz v6, :cond_4

    .line 376
    array-length v7, v6

    invoke-static {v6, v10, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    array-length v7, v6

    add-int/2addr v4, v7

    goto :goto_0

    .line 367
    .end local v6    # "tmp":[B
    :cond_3
    array-length v7, p1

    sub-int/2addr v7, v0

    invoke-virtual {p0, p1, v0, v7}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->processBlock([BII)[B

    move-result-object v6

    .line 368
    .restart local v6    # "tmp":[B
    array-length v7, p1

    sub-int/2addr v7, v0

    add-int/2addr v0, v7

    goto :goto_1

    .line 382
    :cond_4
    iget-boolean v7, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v7, :cond_5

    .line 384
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "cipher returned null"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    :cond_5
    new-instance v7, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v8, "cipher returned null"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 389
    .end local v6    # "tmp":[B
    :cond_6
    new-array v3, v4, [B

    .line 390
    .local v3, "ret":[B
    invoke-static {v5, v10, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    iget-boolean v7, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v7, :cond_7

    .line 393
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "returning "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 403
    .end local v0    # "datapos":I
    .end local v1    # "inBlocksize":I
    .end local v2    # "outBlocksize":I
    .end local v3    # "ret":[B
    .end local v4    # "retpos":I
    .end local v5    # "retval":[B
    :cond_7
    :goto_2
    return-object v3

    .line 399
    :cond_8
    iget-boolean v7, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    if-eqz v7, :cond_9

    .line 401
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "data size is less then input block size, processing directly"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 403
    :cond_9
    array-length v7, p1

    invoke-virtual {p0, p1, v10, v7}, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->processBlock([BII)[B

    move-result-object v3

    goto :goto_2
.end method

.method public setDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/NaccacheSternEngine;->debug:Z

    .line 88
    return-void
.end method
