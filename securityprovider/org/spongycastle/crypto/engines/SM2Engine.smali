.class public Lorg/spongycastle/crypto/engines/SM2Engine;
.super Ljava/lang/Object;
.source "SM2Engine.java"


# instance fields
.field private curveLength:I

.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

.field private ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

.field private forEncryption:Z

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/spongycastle/crypto/digests/SM3Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SM3Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/SM2Engine;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    .line 42
    return-void
.end method

.method private addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 3
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "v"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 241
    iget v1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->curveLength:I

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    .line 243
    .local v0, "p":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 244
    return-void
.end method

.method private clearBlock([B)V
    .locals 2
    .param p1, "block"    # [B

    .prologue
    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 254
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    return-void
.end method

.method private decrypt([BII)[B
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 125
    iget v7, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->curveLength:I

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    new-array v0, v7, [B

    .line 127
    .local v0, "c1":[B
    array-length v7, v0

    invoke-static {p1, p2, v0, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 131
    .local v1, "c1P":Lorg/spongycastle/math/ec/ECPoint;
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    .line 132
    .local v6, "s":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 134
    new-instance v7, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v8, "[h]C1 at infinity"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 137
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v7, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 139
    array-length v7, v0

    sub-int v7, p3, v7

    iget-object v8, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v8}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    sub-int/2addr v7, v8

    new-array v2, v7, [B

    .line 141
    .local v2, "c2":[B
    array-length v7, v0

    add-int/2addr v7, p2

    array-length v8, v2

    invoke-static {p1, v7, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-direct {p0, v7, v1, v2}, Lorg/spongycastle/crypto/engines/SM2Engine;->kdf(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B)V

    .line 145
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v3, v7, [B

    .line 147
    .local v3, "c3":[B
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lorg/spongycastle/crypto/engines/SM2Engine;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 148
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v8, v2

    invoke-interface {v7, v2, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 149
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lorg/spongycastle/crypto/engines/SM2Engine;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 151
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7, v3, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 153
    const/4 v4, 0x0

    .line 154
    .local v4, "check":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v7, v3

    if-eq v5, v7, :cond_1

    .line 156
    aget-byte v7, v3, v5

    array-length v8, v0

    array-length v9, v2

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    aget-byte v8, p1, v8

    xor-int/2addr v7, v8

    or-int/2addr v4, v7

    .line 154
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/SM2Engine;->clearBlock([B)V

    .line 160
    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/engines/SM2Engine;->clearBlock([B)V

    .line 162
    if-eqz v4, :cond_2

    .line 164
    invoke-direct {p0, v2}, Lorg/spongycastle/crypto/engines/SM2Engine;->clearBlock([B)V

    .line 165
    new-instance v7, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v8, "invalid cipher text"

    invoke-direct {v7, v8}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 168
    :cond_2
    return-object v2
.end method

.method private encrypt([BII)[B
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 91
    new-array v2, p3, [B

    .line 93
    .local v2, "c2":[B
    array-length v6, v2

    invoke-static {p1, p2, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SM2Engine;->nextK()Ljava/math/BigInteger;

    move-result-object v4

    .line 101
    .local v4, "k":Ljava/math/BigInteger;
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 103
    .local v1, "c1P":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v1, v8}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    .line 105
    .local v0, "c1":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v6, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    .line 107
    .local v5, "kPB":Lorg/spongycastle/math/ec/ECPoint;
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-direct {p0, v6, v5, v2}, Lorg/spongycastle/crypto/engines/SM2Engine;->kdf(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B)V

    .line 109
    invoke-direct {p0, v2, p1, p2}, Lorg/spongycastle/crypto/engines/SM2Engine;->notEncrypted([B[BI)Z

    move-result v6

    if-nez v6, :cond_0

    .line 111
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v3, v6, [B

    .line 113
    .local v3, "c3":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/spongycastle/crypto/engines/SM2Engine;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 114
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 115
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/spongycastle/crypto/engines/SM2Engine;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 117
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6, v3, v8}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 119
    invoke-static {v0, v2, v3}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v6

    return-object v6
.end method

.method private kdf(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B)V
    .locals 7
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "c1"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "encData"    # [B

    .prologue
    .line 186
    const/4 v1, 0x1

    .line 187
    .local v1, "ct":I
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    .line 189
    .local v4, "v":I
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v0, v5, [B

    .line 190
    .local v0, "buf":[B
    const/4 v3, 0x0

    .line 192
    .local v3, "off":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v5, p3

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v4

    if-gt v2, v5, :cond_1

    .line 194
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/spongycastle/crypto/engines/SM2Engine;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 195
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/spongycastle/crypto/engines/SM2Engine;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 196
    shr-int/lit8 v5, v1, 0x18

    int-to-byte v5, v5

    invoke-interface {p1, v5}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 197
    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    invoke-interface {p1, v5}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 198
    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    invoke-interface {p1, v5}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 199
    int-to-byte v5, v1

    invoke-interface {p1, v5}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 201
    const/4 v5, 0x0

    invoke-interface {p1, v0, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 203
    array-length v5, v0

    add-int/2addr v5, v3

    array-length v6, p3

    if-ge v5, v6, :cond_0

    .line 205
    array-length v5, v0

    invoke-direct {p0, p3, v0, v3, v5}, Lorg/spongycastle/crypto/engines/SM2Engine;->xor([B[BII)V

    .line 212
    :goto_1
    array-length v5, v0

    add-int/2addr v3, v5

    .line 213
    add-int/lit8 v1, v1, 0x1

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_0
    array-length v5, p3

    sub-int/2addr v5, v3

    invoke-direct {p0, p3, v0, v3, v5}, Lorg/spongycastle/crypto/engines/SM2Engine;->xor([B[BII)V

    goto :goto_1

    .line 215
    :cond_1
    return-void
.end method

.method private nextK()Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 227
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 232
    .local v1, "qBitLength":I
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 234
    .local v0, "k":Ljava/math/BigInteger;
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_0

    .line 236
    return-object v0
.end method

.method private notEncrypted([B[BI)Z
    .locals 3
    .param p1, "encData"    # [B
    .param p2, "in"    # [B
    .param p3, "inOff"    # I

    .prologue
    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_1

    .line 175
    aget-byte v1, p1, v0

    aget-byte v2, p2, p3

    if-eq v1, v2, :cond_0

    .line 177
    const/4 v1, 0x0

    .line 181
    :goto_1
    return v1

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private xor([B[BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "kdfOut"    # [B
    .param p3, "dOff"    # I
    .param p4, "dRemaining"    # I

    .prologue
    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, p4, :cond_0

    .line 221
    add-int v1, p3, v0

    aget-byte v2, p1, v1

    aget-byte v3, p2, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method


# virtual methods
.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 46
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->forEncryption:Z

    .line 48
    if-eqz p1, :cond_1

    move-object v0, p2

    .line 50
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 52
    .local v0, "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/ECKeyParameters;

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 53
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 55
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 56
    .local v1, "s":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "invalid key: [h]Q at infinity"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->random:Ljava/security/SecureRandom;

    .line 69
    .end local v0    # "rParam":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local v1    # "s":Lorg/spongycastle/math/ec/ECPoint;
    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->curveLength:I

    .line 70
    return-void

    .line 65
    .restart local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/crypto/params/ECKeyParameters;

    .end local p2    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 66
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 78
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/engines/SM2Engine;->encrypt([BII)[B

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/engines/SM2Engine;->decrypt([BII)[B

    move-result-object v0

    goto :goto_0
.end method
