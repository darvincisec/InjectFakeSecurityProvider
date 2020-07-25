.class public Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;
.super Ljava/lang/Object;
.source "DiscoverEndomorphisms.java"


# static fields
.field private static final radix:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areRelativelyPrime(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 2
    .param p0, "a"    # Ljava/math/BigInteger;
    .param p1, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static calculateRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3
    .param p0, "mid"    # Ljava/math/BigInteger;
    .param p1, "off"    # Ljava/math/BigInteger;
    .param p2, "div"    # Ljava/math/BigInteger;

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 229
    .local v0, "i1":Ljava/math/BigInteger;
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 230
    .local v1, "i2":Ljava/math/BigInteger;
    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->order(Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    return-object v2
.end method

.method private static chooseShortest([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 1
    .param p0, "u"    # [Ljava/math/BigInteger;
    .param p1, "v"    # [Ljava/math/BigInteger;

    .prologue
    .line 307
    invoke-static {p0, p1}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->isShorter([Ljava/math/BigInteger;[Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "u":[Ljava/math/BigInteger;
    :goto_0
    return-object p0

    .restart local p0    # "u":[Ljava/math/BigInteger;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method private static discoverEndomorphisms(Ljava/lang/String;)V
    .locals 6
    .param p0, "curveName"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 56
    .local v2, "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    if-nez v2, :cond_1

    .line 58
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown curve: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 63
    .local v0, "c":Lorg/spongycastle/math/ec/ECCurve;
    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v3

    invoke-interface {v3}, Lorg/spongycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v1

    .line 67
    .local v1, "characteristic":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lorg/spongycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Curve \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' has a \'GLV Type B\' endomorphism with these parameters:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    invoke-static {v2}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->printGLVTypeBParameters(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    goto :goto_0
.end method

.method public static discoverEndomorphisms(Lorg/spongycastle/asn1/x9/X9ECParameters;)V
    .locals 4
    .param p0, "x9"    # Lorg/spongycastle/asn1/x9/X9ECParameters;

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 37
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "x9"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    .line 41
    .local v0, "c":Lorg/spongycastle/math/ec/ECCurve;
    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v1

    .line 45
    .local v1, "characteristic":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Curve has a \'GLV Type B\' endomorphism with these parameters:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->printGLVTypeBParameters(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .line 51
    .end local v1    # "characteristic":Ljava/math/BigInteger;
    :cond_1
    return-void
.end method

.method private static extEuclidBezout([Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 15
    .param p0, "ab"    # [Ljava/math/BigInteger;

    .prologue
    .line 235
    const/4 v13, 0x0

    aget-object v13, p0, v13

    const/4 v14, 0x1

    aget-object v14, p0, v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-gez v13, :cond_1

    const/4 v9, 0x1

    .line 236
    .local v9, "swap":Z
    :goto_0
    if-eqz v9, :cond_0

    .line 238
    invoke-static {p0}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->swap([Ljava/math/BigInteger;)V

    .line 241
    :cond_0
    const/4 v13, 0x0

    aget-object v2, p0, v13

    .local v2, "r0":Ljava/math/BigInteger;
    const/4 v13, 0x1

    aget-object v3, p0, v13

    .line 242
    .local v3, "r1":Ljava/math/BigInteger;
    sget-object v5, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .local v5, "s0":Ljava/math/BigInteger;
    sget-object v6, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 243
    .local v6, "s1":Ljava/math/BigInteger;
    sget-object v10, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .local v10, "t0":Ljava/math/BigInteger;
    sget-object v11, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 245
    .local v11, "t1":Ljava/math/BigInteger;
    :goto_1
    sget-object v13, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-lez v13, :cond_2

    .line 247
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 248
    .local v1, "qr":[Ljava/math/BigInteger;
    const/4 v13, 0x0

    aget-object v0, v1, v13

    .local v0, "q":Ljava/math/BigInteger;
    const/4 v13, 0x1

    aget-object v4, v1, v13

    .line 250
    .local v4, "r2":Ljava/math/BigInteger;
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 251
    .local v7, "s2":Ljava/math/BigInteger;
    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 253
    .local v12, "t2":Ljava/math/BigInteger;
    move-object v2, v3

    .line 254
    move-object v3, v4

    .line 255
    move-object v5, v6

    .line 256
    move-object v6, v7

    .line 257
    move-object v10, v11

    .line 258
    move-object v11, v12

    .line 259
    goto :goto_1

    .line 235
    .end local v0    # "q":Ljava/math/BigInteger;
    .end local v1    # "qr":[Ljava/math/BigInteger;
    .end local v2    # "r0":Ljava/math/BigInteger;
    .end local v3    # "r1":Ljava/math/BigInteger;
    .end local v4    # "r2":Ljava/math/BigInteger;
    .end local v5    # "s0":Ljava/math/BigInteger;
    .end local v6    # "s1":Ljava/math/BigInteger;
    .end local v7    # "s2":Ljava/math/BigInteger;
    .end local v9    # "swap":Z
    .end local v10    # "t0":Ljava/math/BigInteger;
    .end local v11    # "t1":Ljava/math/BigInteger;
    .end local v12    # "t2":Ljava/math/BigInteger;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 261
    .restart local v2    # "r0":Ljava/math/BigInteger;
    .restart local v3    # "r1":Ljava/math/BigInteger;
    .restart local v5    # "s0":Ljava/math/BigInteger;
    .restart local v6    # "s1":Ljava/math/BigInteger;
    .restart local v9    # "swap":Z
    .restart local v10    # "t0":Ljava/math/BigInteger;
    .restart local v11    # "t1":Ljava/math/BigInteger;
    :cond_2
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gtz v13, :cond_4

    .line 266
    const/4 v8, 0x0

    .line 274
    :cond_3
    :goto_2
    return-object v8

    .line 269
    :cond_4
    const/4 v13, 0x2

    new-array v8, v13, [Ljava/math/BigInteger;

    const/4 v13, 0x0

    aput-object v6, v8, v13

    const/4 v13, 0x1

    aput-object v11, v8, v13

    .line 270
    .local v8, "st":[Ljava/math/BigInteger;
    if-eqz v9, :cond_3

    .line 272
    invoke-static {v8}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->swap([Ljava/math/BigInteger;)V

    goto :goto_2
.end method

.method private static extEuclidGLV(Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 11
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "lambda"    # Ljava/math/BigInteger;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 279
    move-object v2, p0

    .local v2, "r0":Ljava/math/BigInteger;
    move-object v3, p1

    .line 281
    .local v3, "r1":Ljava/math/BigInteger;
    sget-object v5, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .local v5, "t0":Ljava/math/BigInteger;
    sget-object v6, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 285
    .local v6, "t1":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 286
    .local v1, "qr":[Ljava/math/BigInteger;
    aget-object v0, v1, v9

    .local v0, "q":Ljava/math/BigInteger;
    aget-object v4, v1, v10

    .line 289
    .local v4, "r2":Ljava/math/BigInteger;
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 291
    .local v7, "t2":Ljava/math/BigInteger;
    invoke-static {v3, p0}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->isLessThanSqrt(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 293
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/math/BigInteger;

    aput-object v2, v8, v9

    aput-object v5, v8, v10

    const/4 v9, 0x2

    aput-object v3, v8, v9

    const/4 v9, 0x3

    aput-object v6, v8, v9

    const/4 v9, 0x4

    aput-object v4, v8, v9

    const/4 v9, 0x5

    aput-object v7, v8, v9

    return-object v8

    .line 296
    :cond_0
    move-object v2, v3

    .line 297
    move-object v3, v4

    .line 300
    move-object v5, v6

    .line 301
    move-object v6, v7

    .line 302
    goto :goto_0
.end method

.method private static findBetaValues(Lorg/spongycastle/math/ec/ECCurve;)[Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 9
    .param p0, "c"    # Lorg/spongycastle/math/ec/ECCurve;

    .prologue
    .line 395
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v6

    invoke-interface {v6}, Lorg/spongycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v3

    .line 396
    .local v3, "q":Ljava/math/BigInteger;
    sget-object v6, Lorg/spongycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 399
    .local v2, "e":Ljava/math/BigInteger;
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 403
    .local v5, "random":Ljava/security/SecureRandom;
    :cond_0
    sget-object v6, Lorg/spongycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    sget-object v7, Lorg/spongycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    .line 404
    .local v4, "r":Ljava/math/BigInteger;
    invoke-virtual {v4, v2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 406
    .local v0, "b":Ljava/math/BigInteger;
    sget-object v6, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 408
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 410
    .local v1, "beta":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v6, 0x2

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    aput-object v8, v6, v7

    return-object v6
.end method

.method private static intersect([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 6
    .param p0, "ab"    # [Ljava/math/BigInteger;
    .param p1, "cd"    # [Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 312
    aget-object v2, p0, v4

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 313
    .local v1, "min":Ljava/math/BigInteger;
    aget-object v2, p0, v5

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->min(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 314
    .local v0, "max":Ljava/math/BigInteger;
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_0

    .line 316
    const/4 v2, 0x0

    .line 318
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/math/BigInteger;

    aput-object v1, v2, v4

    aput-object v0, v2, v5

    goto :goto_0
.end method

.method private static isLessThanSqrt(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 4
    .param p0, "a"    # Ljava/math/BigInteger;
    .param p1, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 323
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    .line 324
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .local v2, "target":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    mul-int/lit8 v0, v3, 0x2

    .local v0, "maxBits":I
    add-int/lit8 v1, v0, -0x1

    .line 326
    .local v1, "minBits":I
    if-gt v1, v2, :cond_1

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isShorter([Ljava/math/BigInteger;[Ljava/math/BigInteger;)Z
    .locals 12
    .param p0, "u"    # [Ljava/math/BigInteger;
    .param p1, "v"    # [Ljava/math/BigInteger;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 331
    aget-object v10, p0, v9

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v4

    .local v4, "u1":Ljava/math/BigInteger;
    aget-object v10, p0, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v5

    .local v5, "u2":Ljava/math/BigInteger;
    aget-object v10, p1, v9

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v6

    .local v6, "v1":Ljava/math/BigInteger;
    aget-object v10, p1, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v7

    .line 336
    .local v7, "v2":Ljava/math/BigInteger;
    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gez v10, :cond_0

    move v0, v8

    .local v0, "c1":Z
    :goto_0
    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gez v10, :cond_1

    move v1, v8

    .line 337
    .local v1, "c2":Z
    :goto_1
    if-ne v0, v1, :cond_2

    .line 345
    .end local v0    # "c1":Z
    :goto_2
    return v0

    .end local v1    # "c2":Z
    :cond_0
    move v0, v9

    .line 336
    goto :goto_0

    .restart local v0    # "c1":Z
    :cond_1
    move v1, v9

    goto :goto_1

    .line 342
    .restart local v1    # "c2":Z
    :cond_2
    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v5, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 343
    .local v2, "du":Ljava/math/BigInteger;
    invoke-virtual {v6, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v7, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 345
    .local v3, "dv":Ljava/math/BigInteger;
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gez v10, :cond_3

    :goto_3
    move v0, v8

    goto :goto_2

    :cond_3
    move v8, v9

    goto :goto_3
.end method

.method private static isVectorBoundedBySqrt([Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 3
    .param p0, "v"    # [Ljava/math/BigInteger;
    .param p1, "n"    # Ljava/math/BigInteger;

    .prologue
    .line 350
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 351
    .local v0, "max":Ljava/math/BigInteger;
    invoke-static {v0, p1}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->isLessThanSqrt(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v1

    return v1
.end method

.method private static isqrt(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 415
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 418
    .local v0, "g0":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 419
    .local v1, "g1":Ljava/math/BigInteger;
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    return-object v1

    .line 423
    :cond_0
    move-object v0, v1

    .line 424
    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 21
    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 23
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Expected a list of curve names as arguments"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void

    .line 27
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 29
    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->discoverEndomorphisms(Ljava/lang/String;)V

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static order(Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 4
    .param p0, "a"    # Ljava/math/BigInteger;
    .param p1, "b"    # Ljava/math/BigInteger;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 356
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 358
    new-array v0, v3, [Ljava/math/BigInteger;

    aput-object p0, v0, v1

    aput-object p1, v0, v2

    .line 360
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/math/BigInteger;

    aput-object p1, v0, v1

    aput-object p0, v0, v2

    goto :goto_0
.end method

.method private static printGLVTypeBParameters(Lorg/spongycastle/asn1/x9/X9ECParameters;)V
    .locals 5
    .param p0, "x9"    # Lorg/spongycastle/asn1/x9/X9ECParameters;

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-static {v2, v3, v4}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->solveQuadraticEquation(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 84
    .local v1, "lambdas":[Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->findBetaValues(Lorg/spongycastle/math/ec/ECCurve;)[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 86
    .local v0, "betas":[Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {p0, v2, v0}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->printGLVTypeBParameters(Lorg/spongycastle/asn1/x9/X9ECParameters;Ljava/math/BigInteger;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 87
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "OR"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {p0, v2, v0}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->printGLVTypeBParameters(Lorg/spongycastle/asn1/x9/X9ECParameters;Ljava/math/BigInteger;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 89
    return-void
.end method

.method private static printGLVTypeBParameters(Lorg/spongycastle/asn1/x9/X9ECParameters;Ljava/math/BigInteger;[Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 33
    .param p0, "x9"    # Lorg/spongycastle/asn1/x9/X9ECParameters;
    .param p1, "lambda"    # Ljava/math/BigInteger;
    .param p2, "betas"    # [Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 96
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 97
    .local v2, "G":Lorg/spongycastle/math/ec/ECPoint;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v15

    .line 98
    .local v15, "mapG":Lorg/spongycastle/math/ec/ECPoint;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_0

    .line 100
    new-instance v29, Ljava/lang/IllegalStateException;

    const-string v30, "Derivation of GLV Type B parameters failed unexpectedly"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 107
    :cond_0
    const/16 v29, 0x0

    aget-object v8, p2, v29

    .line 108
    .local v8, "beta":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    .line 110
    const/16 v29, 0x1

    aget-object v8, p2, v29

    .line 111
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v29

    invoke-virtual {v15}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1

    .line 113
    new-instance v29, Ljava/lang/IllegalStateException;

    const-string v30, "Derivation of GLV Type B parameters failed unexpectedly"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 120
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v16

    .line 121
    .local v16, "n":Ljava/math/BigInteger;
    const/16 v24, 0x0

    .line 122
    .local v24, "v1":[Ljava/math/BigInteger;
    const/16 v25, 0x0

    .line 124
    .local v25, "v2":[Ljava/math/BigInteger;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->extEuclidGLV(Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v19

    .line 125
    .local v19, "rt":[Ljava/math/BigInteger;
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v24, v0

    .end local v24    # "v1":[Ljava/math/BigInteger;
    const/16 v29, 0x0

    const/16 v30, 0x2

    aget-object v30, v19, v30

    aput-object v30, v24, v29

    const/16 v29, 0x1

    const/16 v30, 0x3

    aget-object v30, v19, v30

    invoke-virtual/range {v30 .. v30}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v30

    aput-object v30, v24, v29

    .line 126
    .restart local v24    # "v1":[Ljava/math/BigInteger;
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aget-object v31, v19, v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x1

    aget-object v31, v19, v31

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x4

    aget-object v32, v19, v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x5

    aget-object v32, v19, v32

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->chooseShortest([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v25

    .line 134
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->isVectorBoundedBySqrt([Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v29

    if-nez v29, :cond_6

    const/16 v29, 0x0

    aget-object v29, v24, v29

    const/16 v30, 0x1

    aget-object v30, v24, v30

    invoke-static/range {v29 .. v30}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->areRelativelyPrime(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 136
    const/16 v29, 0x0

    aget-object v17, v24, v29

    .local v17, "r":Ljava/math/BigInteger;
    const/16 v29, 0x1

    aget-object v22, v24, v29

    .local v22, "t":Ljava/math/BigInteger;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    .line 138
    .local v20, "s":Ljava/math/BigInteger;
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v29 .. v29}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->extEuclidBezout([Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v26

    .line 139
    .local v26, "vw":[Ljava/math/BigInteger;
    if-eqz v26, :cond_6

    .line 141
    const/16 v29, 0x0

    aget-object v23, v26, v29

    .local v23, "v":Ljava/math/BigInteger;
    const/16 v29, 0x1

    aget-object v27, v26, v29

    .line 143
    .local v27, "w":Ljava/math/BigInteger;
    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->signum()I

    move-result v29

    if-gez v29, :cond_2

    .line 145
    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v23

    .line 147
    :cond_2
    invoke-virtual/range {v22 .. v22}, Ljava/math/BigInteger;->signum()I

    move-result v29

    if-lez v29, :cond_3

    .line 149
    invoke-virtual/range {v27 .. v27}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v27

    .line 152
    :cond_3
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 153
    .local v11, "check":Ljava/math/BigInteger;
    sget-object v29, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    .line 155
    new-instance v29, Ljava/lang/IllegalStateException;

    invoke-direct/range {v29 .. v29}, Ljava/lang/IllegalStateException;-><init>()V

    throw v29

    .line 158
    :cond_4
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v28

    .line 160
    .local v28, "x":Ljava/math/BigInteger;
    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    .line 161
    .local v6, "base1":Ljava/math/BigInteger;
    invoke-virtual/range {v28 .. v28}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v7

    .line 167
    .local v7, "base2":Ljava/math/BigInteger;
    sget-object v29, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->isqrt(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v29

    sget-object v30, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual/range {v29 .. v30}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    .line 169
    .local v21, "sqrtN":Ljava/math/BigInteger;
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v6, v0, v1}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->calculateRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v3

    .line 170
    .local v3, "I1":[Ljava/math/BigInteger;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v7, v0, v1}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->calculateRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    .line 172
    .local v4, "I2":[Ljava/math/BigInteger;
    invoke-static {v3, v4}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->intersect([Ljava/math/BigInteger;[Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v18

    .line 173
    .local v18, "range":[Ljava/math/BigInteger;
    if-eqz v18, :cond_6

    .line 175
    const/16 v29, 0x0

    aget-object v5, v18, v29

    .local v5, "alpha":Ljava/math/BigInteger;
    :goto_0
    const/16 v29, 0x1

    aget-object v29, v18, v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v29

    if-gtz v29, :cond_6

    .line 177
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v10, v0, [Ljava/math/BigInteger;

    const/16 v29, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v30

    aput-object v30, v10, v29

    const/16 v29, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v30

    aput-object v30, v10, v29

    .line 178
    .local v10, "candidate":[Ljava/math/BigInteger;
    move-object/from16 v0, v25

    invoke-static {v10, v0}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->isShorter([Ljava/math/BigInteger;[Ljava/math/BigInteger;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 180
    move-object/from16 v25, v10

    .line 175
    :cond_5
    sget-object v29, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_0

    .line 187
    .end local v3    # "I1":[Ljava/math/BigInteger;
    .end local v4    # "I2":[Ljava/math/BigInteger;
    .end local v5    # "alpha":Ljava/math/BigInteger;
    .end local v6    # "base1":Ljava/math/BigInteger;
    .end local v7    # "base2":Ljava/math/BigInteger;
    .end local v10    # "candidate":[Ljava/math/BigInteger;
    .end local v11    # "check":Ljava/math/BigInteger;
    .end local v17    # "r":Ljava/math/BigInteger;
    .end local v18    # "range":[Ljava/math/BigInteger;
    .end local v20    # "s":Ljava/math/BigInteger;
    .end local v21    # "sqrtN":Ljava/math/BigInteger;
    .end local v22    # "t":Ljava/math/BigInteger;
    .end local v23    # "v":Ljava/math/BigInteger;
    .end local v26    # "vw":[Ljava/math/BigInteger;
    .end local v27    # "w":Ljava/math/BigInteger;
    .end local v28    # "x":Ljava/math/BigInteger;
    :cond_6
    const/16 v29, 0x0

    aget-object v29, v24, v29

    const/16 v30, 0x1

    aget-object v30, v25, v30

    invoke-virtual/range {v29 .. v30}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v29

    const/16 v30, 0x1

    aget-object v30, v24, v30

    const/16 v31, 0x0

    aget-object v31, v25, v31

    invoke-virtual/range {v30 .. v31}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 194
    .local v12, "d":Ljava/math/BigInteger;
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->bitLength()I

    move-result v29

    add-int/lit8 v29, v29, 0x10

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->bitLength()I

    move-result v30

    and-int/lit8 v30, v30, 0x7

    sub-int v9, v29, v30

    .line 195
    .local v9, "bits":I
    const/16 v29, 0x1

    aget-object v29, v25, v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v0, v12}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->roundQuotient(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 196
    .local v13, "g1":Ljava/math/BigInteger;
    const/16 v29, 0x1

    aget-object v29, v24, v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v0, v12}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->roundQuotient(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v14

    .line 198
    .local v14, "g2":Ljava/math/BigInteger;
    const-string v29, "Beta"

    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v30

    const/16 v31, 0x10

    invoke-virtual/range {v30 .. v31}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->printProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    const-string v29, "Lambda"

    const/16 v30, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->printProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    const-string v29, "v1"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "{ "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x0

    aget-object v31, v24, v31

    const/16 v32, 0x10

    invoke-virtual/range {v31 .. v32}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x1

    aget-object v31, v24, v31

    const/16 v32, 0x10

    invoke-virtual/range {v31 .. v32}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " }"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->printProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    const-string v29, "v2"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "{ "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x0

    aget-object v31, v25, v31

    const/16 v32, 0x10

    invoke-virtual/range {v31 .. v32}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x1

    aget-object v31, v25, v31

    const/16 v32, 0x10

    invoke-virtual/range {v31 .. v32}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " }"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->printProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    const-string v29, "d"

    const/16 v30, 0x10

    move/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->printProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    const-string v29, "(OPT) g1"

    const/16 v30, 0x10

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->printProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    const-string v29, "(OPT) g2"

    const/16 v30, 0x10

    move/from16 v0, v30

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->printProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    const-string v29, "(OPT) bits"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lorg/spongycastle/math/ec/tools/DiscoverEndomorphisms;->printProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method private static printProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 214
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 216
    :cond_0
    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method private static roundQuotient(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "y"    # Ljava/math/BigInteger;

    .prologue
    const/4 v2, 0x1

    .line 365
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-eq v3, v4, :cond_1

    move v0, v2

    .line 366
    .local v0, "negative":Z
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    .line 367
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 368
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 369
    .local v1, "result":Ljava/math/BigInteger;
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    .end local v1    # "result":Ljava/math/BigInteger;
    :cond_0
    return-object v1

    .line 365
    .end local v0    # "negative":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static solveQuadraticEquation(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 8
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "r"    # Ljava/math/BigInteger;
    .param p2, "s"    # Ljava/math/BigInteger;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 374
    invoke-virtual {p1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 376
    .local v0, "det":Ljava/math/BigInteger;
    new-instance v3, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    invoke-direct {v3, p0, v0}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;->sqrt()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .local v1, "root1":Ljava/math/BigInteger;
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 377
    .local v2, "root2":Ljava/math/BigInteger;
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 390
    :goto_0
    new-array v3, v7, [Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v3, v5

    return-object v3

    .line 383
    :cond_0
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0
.end method

.method private static swap([Ljava/math/BigInteger;)V
    .locals 4
    .param p0, "ab"    # [Ljava/math/BigInteger;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 429
    aget-object v0, p0, v2

    .line 430
    .local v0, "tmp":Ljava/math/BigInteger;
    aget-object v1, p0, v3

    aput-object v1, p0, v2

    .line 431
    aput-object v0, p0, v3

    .line 432
    return-void
.end method
