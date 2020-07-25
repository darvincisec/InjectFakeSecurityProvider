.class public Lorg/spongycastle/crypto/signers/GOST3410Signer;
.super Ljava/lang/Object;
.source "GOST3410Signer.java"

# interfaces
.implements Lorg/spongycastle/crypto/DSA;


# instance fields
.field key:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 11
    .param p1, "message"    # [B

    .prologue
    const/4 v10, 0x1

    .line 59
    array-length v8, p1

    new-array v3, v8, [B

    .line 60
    .local v3, "mRev":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v8, v3

    if-eq v0, v8, :cond_0

    .line 62
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v0

    aget-byte v8, p1, v8

    aput-byte v8, v3, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v10, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 66
    .local v2, "m":Ljava/math/BigInteger;
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->key:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/GOST3410KeyParameters;->getParameters()Lorg/spongycastle/crypto/params/GOST3410Parameters;

    move-result-object v4

    .line 71
    .local v4, "params":Lorg/spongycastle/crypto/params/GOST3410Parameters;
    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    iget-object v9, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v8, v9}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 73
    .local v1, "k":Ljava/math/BigInteger;
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_1

    .line 75
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getA()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 77
    .local v5, "r":Ljava/math/BigInteger;
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->key:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

    check-cast v8, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;

    .line 78
    invoke-virtual {v8}, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 79
    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 81
    .local v7, "s":Ljava/math/BigInteger;
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/math/BigInteger;

    .line 83
    .local v6, "res":[Ljava/math/BigInteger;
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 84
    aput-object v7, v6, v10

    .line 86
    return-object v6
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 28
    if-eqz p1, :cond_1

    .line 30
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 32
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 34
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->random:Ljava/security/SecureRandom;

    .line 35
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->key:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

    .line 47
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    return-void

    .line 39
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->random:Ljava/security/SecureRandom;

    .line 40
    check-cast p2, Lorg/spongycastle/crypto/params/GOST3410PrivateKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->key:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

    goto :goto_0

    .line 45
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->key:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 12
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .prologue
    const/4 v9, 0x0

    .line 99
    array-length v10, p1

    new-array v2, v10, [B

    .line 100
    .local v2, "mRev":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v10, v2

    if-eq v0, v10, :cond_0

    .line 102
    array-length v10, v2

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v10, v0

    aget-byte v10, p1, v10

    aput-byte v10, v2, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    const/4 v10, 0x1

    invoke-direct {v1, v10, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 106
    .local v1, "m":Ljava/math/BigInteger;
    iget-object v10, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->key:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/GOST3410KeyParameters;->getParameters()Lorg/spongycastle/crypto/params/GOST3410Parameters;

    move-result-object v3

    .line 107
    .local v3, "params":Lorg/spongycastle/crypto/params/GOST3410Parameters;
    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 109
    .local v8, "zero":Ljava/math/BigInteger;
    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gez v10, :cond_1

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gtz v10, :cond_2

    .line 129
    :cond_1
    :goto_1
    return v9

    .line 114
    :cond_2
    invoke-virtual {v8, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gez v10, :cond_1

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-lez v10, :cond_1

    .line 119
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v9

    new-instance v10, Ljava/math/BigInteger;

    const-string v11, "2"

    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 121
    .local v5, "v":Ljava/math/BigInteger;
    invoke-virtual {p3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 122
    .local v6, "z1":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 124
    .local v7, "z2":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getA()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 125
    iget-object v9, p0, Lorg/spongycastle/crypto/signers/GOST3410Signer;->key:Lorg/spongycastle/crypto/params/GOST3410KeyParameters;

    check-cast v9, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;

    invoke-virtual {v9}, Lorg/spongycastle/crypto/params/GOST3410PublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 127
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getP()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/GOST3410Parameters;->getQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 129
    .local v4, "u":Ljava/math/BigInteger;
    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_1
.end method
