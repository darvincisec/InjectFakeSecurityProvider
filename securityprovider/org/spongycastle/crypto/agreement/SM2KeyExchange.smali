.class public Lorg/spongycastle/crypto/agreement/SM2KeyExchange;
.super Ljava/lang/Object;
.source "SM2KeyExchange.java"


# instance fields
.field private curveLength:I

.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

.field private ephemeralKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

.field private ephemeralPubPoint:Lorg/spongycastle/math/ec/ECPoint;

.field private initiator:Z

.field private staticKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

.field private staticPubPoint:Lorg/spongycastle/math/ec/ECPoint;

.field private userID:[B

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lorg/spongycastle/crypto/digests/SM3Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SM3Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    .line 43
    return-void
.end method

.method private S1(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B)[B
    .locals 3
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "u"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "inner"    # [B

    .prologue
    const/4 v2, 0x0

    .line 224
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 226
    .local v0, "rv":[B
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 227
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 228
    array-length v1, p3

    invoke-interface {p1, p3, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 230
    invoke-interface {p1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 232
    return-object v0
.end method

.method private S2(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B)[B
    .locals 3
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "u"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "inner"    # [B

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 255
    .local v0, "rv":[B
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 256
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 257
    array-length v1, p3

    invoke-interface {p1, p3, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 259
    invoke-interface {p1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 261
    return-object v0
.end method

.method private addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 3
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "v"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 293
    iget v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->curveLength:I

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    .line 295
    .local v0, "p":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 296
    return-void
.end method

.method private addUserID(Lorg/spongycastle/crypto/Digest;[B)V
    .locals 3
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "userID"    # [B

    .prologue
    .line 284
    array-length v1, p2

    mul-int/lit8 v0, v1, 0x8

    .line 286
    .local v0, "len":I
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 287
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 288
    const/4 v1, 0x0

    array-length v2, p2

    invoke-interface {p1, p2, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 289
    return-void
.end method

.method private calculateInnerHash(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B[BLorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)[B
    .locals 3
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "u"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "za"    # [B
    .param p4, "zb"    # [B
    .param p5, "p1"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p6, "p2"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    const/4 v2, 0x0

    .line 237
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 238
    array-length v1, p3

    invoke-interface {p1, p3, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 239
    array-length v1, p4

    invoke-interface {p1, p4, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 240
    invoke-virtual {p5}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 241
    invoke-virtual {p5}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 242
    invoke-virtual {p6}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 243
    invoke-virtual {p6}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 245
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 247
    .local v0, "rv":[B
    invoke-interface {p1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 248
    return-object v0
.end method

.method private calculateU(Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 7
    .param p1, "otherPub"    # Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;

    .prologue
    .line 165
    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ephemeralPubPoint:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->reduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 167
    .local v3, "x1":Ljava/math/BigInteger;
    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->staticKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ephemeralKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 169
    .local v2, "tA":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;->getEphemeralPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->reduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 171
    .local v4, "x2":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;->getEphemeralPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 173
    .local v0, "B0":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;->getStaticPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 175
    .local v1, "B1":Lorg/spongycastle/math/ec/ECPoint;
    iget-object v5, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5
.end method

.method private getZ(Lorg/spongycastle/crypto/Digest;[BLorg/spongycastle/math/ec/ECPoint;)[B
    .locals 2
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "userID"    # [B
    .param p3, "pubPoint"    # Lorg/spongycastle/math/ec/ECPoint;

    .prologue
    .line 266
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addUserID(Lorg/spongycastle/crypto/Digest;[B)V

    .line 268
    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 269
    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 270
    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 271
    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 272
    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 273
    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 275
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 277
    .local v0, "rv":[B
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 279
    return-object v0
.end method

.method private kdf(Lorg/spongycastle/math/ec/ECPoint;[B[BI)[B
    .locals 9
    .param p1, "u"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p2, "za"    # [B
    .param p3, "zb"    # [B
    .param p4, "klen"    # I

    .prologue
    const/4 v8, 0x0

    .line 180
    const/4 v1, 0x1

    .line 181
    .local v1, "ct":I
    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    mul-int/lit8 v5, v6, 0x8

    .line 183
    .local v5, "v":I
    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v0, v6, [B

    .line 184
    .local v0, "buf":[B
    add-int/lit8 v6, p4, 0x7

    div-int/lit8 v6, v6, 0x8

    new-array v4, v6, [B

    .line 185
    .local v4, "rv":[B
    const/4 v3, 0x0

    .line 187
    .local v3, "off":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    add-int v6, p4, v5

    add-int/lit8 v6, v6, -0x1

    div-int/2addr v6, v5

    if-gt v2, v6, :cond_1

    .line 189
    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 190
    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 191
    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v7, p2

    invoke-interface {v6, p2, v8, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 192
    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v7, p3

    invoke-interface {v6, p3, v8, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 193
    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    shr-int/lit8 v7, v1, 0x18

    int-to-byte v7, v7

    invoke-interface {v6, v7}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 194
    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    shr-int/lit8 v7, v1, 0x10

    int-to-byte v7, v7

    invoke-interface {v6, v7}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 195
    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    invoke-interface {v6, v7}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 196
    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    int-to-byte v7, v1

    invoke-interface {v6, v7}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 198
    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6, v0, v8}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 200
    array-length v6, v0

    add-int/2addr v6, v3

    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 202
    array-length v6, v0

    invoke-static {v0, v8, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    :goto_1
    array-length v6, v0

    add-int/2addr v3, v6

    .line 210
    add-int/lit8 v1, v1, 0x1

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    :cond_0
    array-length v6, v4

    sub-int/2addr v6, v3

    invoke-static {v0, v8, v4, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 213
    :cond_1
    return-object v4
.end method

.method private reduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    const-wide/16 v2, 0x1

    .line 219
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->w:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->w:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public calculateKey(ILorg/spongycastle/crypto/CipherParameters;)[B
    .locals 9
    .param p1, "kLen"    # I
    .param p2, "pubParam"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 82
    instance-of v6, p2, Lorg/spongycastle/crypto/params/ParametersWithID;

    if-eqz v6, :cond_0

    move-object v6, p2

    .line 84
    check-cast v6, Lorg/spongycastle/crypto/params/ParametersWithID;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ParametersWithID;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;

    .line 85
    .local v1, "otherPub":Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithID;

    .end local p2    # "pubParam":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithID;->getID()[B

    move-result-object v2

    .line 93
    .local v2, "otherUserID":[B
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v7, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->userID:[B

    iget-object v8, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->staticPubPoint:Lorg/spongycastle/math/ec/ECPoint;

    invoke-direct {p0, v6, v7, v8}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->getZ(Lorg/spongycastle/crypto/Digest;[BLorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v4

    .line 94
    .local v4, "za":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;->getStaticPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-direct {p0, v6, v2, v7}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->getZ(Lorg/spongycastle/crypto/Digest;[BLorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v5

    .line 96
    .local v5, "zb":[B
    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->calculateU(Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 99
    .local v0, "U":Lorg/spongycastle/math/ec/ECPoint;
    iget-boolean v6, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->initiator:Z

    if-eqz v6, :cond_1

    .line 101
    invoke-direct {p0, v0, v4, v5, p1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->kdf(Lorg/spongycastle/math/ec/ECPoint;[B[BI)[B

    move-result-object v3

    .line 108
    .local v3, "rv":[B
    :goto_1
    return-object v3

    .end local v0    # "U":Lorg/spongycastle/math/ec/ECPoint;
    .end local v1    # "otherPub":Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;
    .end local v2    # "otherUserID":[B
    .end local v3    # "rv":[B
    .end local v4    # "za":[B
    .end local v5    # "zb":[B
    .restart local p2    # "pubParam":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    move-object v1, p2

    .line 89
    check-cast v1, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;

    .line 90
    .restart local v1    # "otherPub":Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;
    const/4 v6, 0x0

    new-array v2, v6, [B

    .restart local v2    # "otherUserID":[B
    goto :goto_0

    .line 105
    .end local p2    # "pubParam":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v0    # "U":Lorg/spongycastle/math/ec/ECPoint;
    .restart local v4    # "za":[B
    .restart local v5    # "zb":[B
    :cond_1
    invoke-direct {p0, v0, v5, v4, p1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->kdf(Lorg/spongycastle/math/ec/ECPoint;[B[BI)[B

    move-result-object v3

    .restart local v3    # "rv":[B
    goto :goto_1
.end method

.method public calculateKeyWithConfirmation(I[BLorg/spongycastle/crypto/CipherParameters;)[[B
    .locals 19
    .param p1, "kLen"    # I
    .param p2, "confirmationTag"    # [B
    .param p3, "pubParam"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 116
    move-object/from16 v0, p3

    instance-of v2, v0, Lorg/spongycastle/crypto/params/ParametersWithID;

    if-eqz v2, :cond_0

    move-object/from16 v2, p3

    .line 118
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithID;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithID;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;

    .line 119
    .local v15, "otherPub":Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;
    check-cast p3, Lorg/spongycastle/crypto/params/ParametersWithID;

    .end local p3    # "pubParam":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/crypto/params/ParametersWithID;->getID()[B

    move-result-object v16

    .line 127
    .local v16, "otherUserID":[B
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->initiator:Z

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    .line 129
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "if initiating, confirmationTag must be set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v15    # "otherPub":Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;
    .end local v16    # "otherUserID":[B
    .restart local p3    # "pubParam":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    move-object/from16 v15, p3

    .line 123
    check-cast v15, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;

    .line 124
    .restart local v15    # "otherPub":Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;
    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .restart local v16    # "otherUserID":[B
    goto :goto_0

    .line 132
    .end local p3    # "pubParam":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->userID:[B

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->staticPubPoint:Lorg/spongycastle/math/ec/ECPoint;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v7}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->getZ(Lorg/spongycastle/crypto/Digest;[BLorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v5

    .line 133
    .local v5, "za":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;->getStaticPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->getZ(Lorg/spongycastle/crypto/Digest;[BLorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v6

    .line 135
    .local v6, "zb":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->calculateU(Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    .line 138
    .local v4, "U":Lorg/spongycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->initiator:Z

    if-eqz v2, :cond_3

    .line 140
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v5, v6, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->kdf(Lorg/spongycastle/math/ec/ECPoint;[B[BI)[B

    move-result-object v17

    .line 142
    .local v17, "rv":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ephemeralPubPoint:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;->getEphemeralPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->calculateInnerHash(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B[BLorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v14

    .line 144
    .local v14, "inner":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v14}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->S1(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B)[B

    move-result-object v18

    .line 146
    .local v18, "s1":[B
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 148
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "confirmation tag mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v17, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4, v14}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->S2(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B)[B

    move-result-object v7

    aput-object v7, v2, v3

    .line 159
    .end local v18    # "s1":[B
    :goto_1
    return-object v2

    .line 155
    .end local v14    # "inner":[B
    .end local v17    # "rv":[B
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v6, v5, v1}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->kdf(Lorg/spongycastle/math/ec/ECPoint;[B[BI)[B

    move-result-object v17

    .line 157
    .restart local v17    # "rv":[B
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/params/SM2KeyExchangePublicParameters;->getEphemeralPublicKey()Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ephemeralPubPoint:Lorg/spongycastle/math/ec/ECPoint;

    move-object/from16 v7, p0

    move-object v9, v4

    move-object v10, v6

    move-object v11, v5

    invoke-direct/range {v7 .. v13}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->calculateInnerHash(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B[BLorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;)[B

    move-result-object v14

    .line 159
    .restart local v14    # "inner":[B
    const/4 v2, 0x3

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object v17, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4, v14}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->S1(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B)[B

    move-result-object v7

    aput-object v7, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4, v14}, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->S2(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B)[B

    move-result-object v7

    aput-object v7, v2, v3

    goto :goto_1
.end method

.method public getFieldSize()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->staticKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "privParam"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 50
    instance-of v1, p1, Lorg/spongycastle/crypto/params/ParametersWithID;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 52
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithID;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithID;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;

    .line 53
    .local v0, "baseParam":Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;
    check-cast p1, Lorg/spongycastle/crypto/params/ParametersWithID;

    .end local p1    # "privParam":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithID;->getID()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->userID:[B

    .line 61
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->isInitiator()Z

    move-result v1

    iput-boolean v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->initiator:Z

    .line 62
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->getStaticPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->staticKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 63
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->getEphemeralPrivateKey()Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ephemeralKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    .line 64
    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->staticKey:Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 65
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->getStaticPublicPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->staticPubPoint:Lorg/spongycastle/math/ec/ECPoint;

    .line 66
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;->getEphemeralPublicPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ephemeralPubPoint:Lorg/spongycastle/math/ec/ECPoint;

    .line 68
    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->curveLength:I

    .line 69
    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->w:I

    .line 70
    return-void

    .end local v0    # "baseParam":Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;
    .restart local p1    # "privParam":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    move-object v0, p1

    .line 57
    check-cast v0, Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;

    .line 58
    .restart local v0    # "baseParam":Lorg/spongycastle/crypto/params/SM2KeyExchangePrivateParameters;
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/SM2KeyExchange;->userID:[B

    goto :goto_0
.end method
