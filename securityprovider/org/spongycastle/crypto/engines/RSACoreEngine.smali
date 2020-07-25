.class Lorg/spongycastle/crypto/engines/RSACoreEngine;
.super Ljava/lang/Object;
.source "RSACoreEngine.java"


# instance fields
.field private forEncryption:Z

.field private key:Lorg/spongycastle/crypto/params/RSAKeyParameters;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertInput([BII)Ljava/math/BigInteger;
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le p3, v2, :cond_0

    .line 92
    new-instance v2, Lorg/spongycastle/crypto/DataLengthException;

    const-string v3, "input too large for RSA cipher."

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne p3, v2, :cond_1

    iget-boolean v2, p0, Lorg/spongycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-nez v2, :cond_1

    .line 96
    new-instance v2, Lorg/spongycastle/crypto/DataLengthException;

    const-string v3, "input too large for RSA cipher."

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_1
    if-nez p2, :cond_2

    array-length v2, p1

    if-eq p3, v2, :cond_3

    .line 103
    :cond_2
    new-array v0, p3, [B

    .line 105
    .local v0, "block":[B
    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    :goto_0
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 113
    .local v1, "res":Ljava/math/BigInteger;
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RSACoreEngine;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_4

    .line 115
    new-instance v2, Lorg/spongycastle/crypto/DataLengthException;

    const-string v3, "input too large for RSA cipher."

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    .end local v0    # "block":[B
    .end local v1    # "res":Ljava/math/BigInteger;
    :cond_3
    move-object v0, p1

    .restart local v0    # "block":[B
    goto :goto_0

    .line 118
    .restart local v1    # "res":Ljava/math/BigInteger;
    :cond_4
    return-object v1
.end method

.method public convertOutput(Ljava/math/BigInteger;)[B
    .locals 6
    .param p1, "result"    # Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 126
    .local v0, "output":[B
    iget-boolean v2, p0, Lorg/spongycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v2, :cond_1

    .line 128
    aget-byte v2, v0, v4

    if-nez v2, :cond_0

    array-length v2, v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 130
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    .line 132
    .local v1, "tmp":[B
    array-length v2, v1

    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    .end local v1    # "tmp":[B
    :goto_0
    return-object v1

    .line 137
    :cond_0
    array-length v2, v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 139
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v2

    new-array v1, v2, [B

    .line 141
    .restart local v1    # "tmp":[B
    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 148
    .end local v1    # "tmp":[B
    :cond_1
    aget-byte v2, v0, v4

    if-nez v2, :cond_2

    .line 150
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    .line 152
    .restart local v1    # "tmp":[B
    array-length v2, v1

    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .end local v1    # "tmp":[B
    :cond_2
    move-object v1, v0

    .line 158
    goto :goto_0
.end method

.method public getInputBlockSize()I
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RSACoreEngine;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 54
    .local v0, "bitSize":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 56
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    .line 60
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RSACoreEngine;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 75
    .local v0, "bitSize":I
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 77
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    .line 81
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 29
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 31
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 33
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/RSACoreEngine;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 40
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/RSACoreEngine;->forEncryption:Z

    .line 41
    return-void

    .line 37
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    check-cast p2, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/RSACoreEngine;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    goto :goto_0
.end method

.method public processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 12
    .param p1, "input"    # Ljava/math/BigInteger;

    .prologue
    .line 163
    iget-object v10, p0, Lorg/spongycastle/crypto/engines/RSACoreEngine;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    instance-of v10, v10, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v10, :cond_0

    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RSACoreEngine;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    check-cast v0, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 172
    .local v0, "crtKey":Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v7

    .line 173
    .local v7, "p":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    .line 174
    .local v8, "q":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v1

    .line 175
    .local v1, "dP":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v2

    .line 176
    .local v2, "dQ":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v9

    .line 181
    .local v9, "qInv":Ljava/math/BigInteger;
    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v1, v7}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 184
    .local v5, "mP":Ljava/math/BigInteger;
    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v2, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 187
    .local v6, "mQ":Ljava/math/BigInteger;
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 188
    .local v3, "h":Ljava/math/BigInteger;
    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 189
    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 192
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 193
    .local v4, "m":Ljava/math/BigInteger;
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 199
    .end local v0    # "crtKey":Lorg/spongycastle/crypto/params/RSAPrivateCrtKeyParameters;
    .end local v1    # "dP":Ljava/math/BigInteger;
    .end local v2    # "dQ":Ljava/math/BigInteger;
    .end local v3    # "h":Ljava/math/BigInteger;
    .end local v4    # "m":Ljava/math/BigInteger;
    .end local v5    # "mP":Ljava/math/BigInteger;
    .end local v6    # "mQ":Ljava/math/BigInteger;
    .end local v7    # "p":Ljava/math/BigInteger;
    .end local v8    # "q":Ljava/math/BigInteger;
    .end local v9    # "qInv":Ljava/math/BigInteger;
    :goto_0
    return-object v4

    :cond_0
    iget-object v10, p0, Lorg/spongycastle/crypto/engines/RSACoreEngine;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 200
    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v10

    iget-object v11, p0, Lorg/spongycastle/crypto/engines/RSACoreEngine;->key:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v11

    .line 199
    invoke-virtual {p1, v10, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_0
.end method
