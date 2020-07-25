.class public Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
.super Ljava/lang/Object;
.source "IntegerPolynomial.java"

# interfaces
.implements Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator;,
        Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$CombineTask;,
        Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;
    }
.end annotation


# static fields
.field private static final BIGINT_PRIMES:Ljava/util/List;

.field private static final NUM_EQUAL_RESULTANTS:I = 0x3

.field private static final PRIMES:[I


# instance fields
.field public coeffs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    const/16 v1, 0x26b

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->PRIMES:[I

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->BIGINT_PRIMES:Ljava/util/List;

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->PRIMES:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 105
    sget-object v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->BIGINT_PRIMES:Ljava/util/List;

    sget-object v2, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->PRIMES:[I

    aget v2, v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void

    .line 35
    :array_0
    .array-data 4
        0x119b
        0x11a1
        0x11a5
        0x11a7
        0x11ab
        0x11c3
        0x11c5
        0x11d1
        0x11d7
        0x11e7
        0x11ef
        0x11f5
        0x11fb
        0x120d
        0x121d
        0x121f
        0x1223
        0x1229
        0x122b
        0x1231
        0x1237
        0x1241
        0x1247
        0x1253
        0x125f
        0x1271
        0x1273
        0x1279
        0x127d
        0x128f
        0x1297
        0x12af
        0x12b3
        0x12b5
        0x12b9
        0x12bf
        0x12c1
        0x12cd
        0x12d1
        0x12df
        0x12fd
        0x1307
        0x130d
        0x1319
        0x1327
        0x132d
        0x1337
        0x1343
        0x1345
        0x1349
        0x134f
        0x1357
        0x135d
        0x1367
        0x1369
        0x136d
        0x137b
        0x1381
        0x1387
        0x138b
        0x1391
        0x1393
        0x139d
        0x139f
        0x13af
        0x13bb
        0x13c3
        0x13d5
        0x13d9
        0x13df
        0x13eb
        0x13ed
        0x13f3
        0x13f9
        0x13ff
        0x141b
        0x1421
        0x142f
        0x1433
        0x143b
        0x1445
        0x144d
        0x1459
        0x146b
        0x146f
        0x1471
        0x1475
        0x148d
        0x1499
        0x149f
        0x14a1
        0x14b1
        0x14b7
        0x14bd
        0x14cb
        0x14d5
        0x14e3
        0x14e7
        0x1505
        0x150b
        0x1511
        0x1517
        0x151f
        0x1525
        0x1529
        0x152b
        0x1537
        0x153d
        0x1541
        0x1543
        0x1549
        0x155f
        0x1565
        0x1567
        0x156b
        0x157d
        0x157f
        0x1583
        0x158f
        0x1591
        0x1597
        0x159b
        0x15b5
        0x15bb
        0x15c1
        0x15c5
        0x15cd
        0x15d7
        0x15f7
        0x1607
        0x1609
        0x160f
        0x1613
        0x1615
        0x1619
        0x161b
        0x1625
        0x1633
        0x1639
        0x163d
        0x1645
        0x164f
        0x1655
        0x1669
        0x166d
        0x166f
        0x1675
        0x1693
        0x1697
        0x169f
        0x16a9
        0x16af
        0x16b5
        0x16bd
        0x16c3
        0x16cf
        0x16d3
        0x16d9
        0x16db
        0x16e1
        0x16e5
        0x16eb
        0x16ed
        0x16f7
        0x16f9
        0x1709
        0x170f
        0x1723
        0x1727
        0x1733
        0x1741
        0x175d
        0x1763
        0x1777
        0x177b
        0x178d
        0x1795
        0x179b
        0x179f
        0x17a5
        0x17b3
        0x17b9
        0x17bf
        0x17c9
        0x17cb
        0x17d5
        0x17e1
        0x17e9
        0x17f3
        0x17f5
        0x17ff
        0x1807
        0x1813
        0x181d
        0x1835
        0x1837
        0x183b
        0x1843
        0x1849
        0x184d
        0x1855
        0x1867
        0x1871
        0x1877
        0x187d
        0x187f
        0x1885
        0x188f
        0x189b
        0x189d
        0x18a7
        0x18ad
        0x18b3
        0x18b9
        0x18c1
        0x18c7
        0x18d1
        0x18d7
        0x18d9
        0x18df
        0x18e5
        0x18eb
        0x18f5
        0x18fd
        0x1915
        0x191b
        0x1931
        0x1933
        0x1945
        0x1949
        0x1951
        0x195b
        0x1979
        0x1981
        0x1993
        0x1997
        0x1999
        0x19a3
        0x19a9
        0x19ab
        0x19b1
        0x19b5
        0x19c7
        0x19cf
        0x19db
        0x19ed
        0x19fd
        0x1a03
        0x1a05
        0x1a11
        0x1a17
        0x1a21
        0x1a23
        0x1a2d
        0x1a2f
        0x1a35
        0x1a3f
        0x1a4d
        0x1a51
        0x1a69
        0x1a6b
        0x1a7b
        0x1a7d
        0x1a87
        0x1a89
        0x1a93
        0x1aa7
        0x1aab
        0x1aad
        0x1ab1
        0x1ab9
        0x1ac9
        0x1acf
        0x1ad5
        0x1ad7
        0x1ae3
        0x1af3
        0x1afb
        0x1aff
        0x1b05
        0x1b23
        0x1b25
        0x1b2f
        0x1b31
        0x1b37
        0x1b3b
        0x1b41
        0x1b47
        0x1b4f
        0x1b55
        0x1b59
        0x1b65
        0x1b6b
        0x1b73
        0x1b7f
        0x1b83
        0x1b91
        0x1b9d
        0x1ba7
        0x1bbf
        0x1bc5
        0x1bd1
        0x1bd7
        0x1bd9
        0x1bef
        0x1bf7
        0x1c09
        0x1c13
        0x1c19
        0x1c27
        0x1c2b
        0x1c2d
        0x1c33
        0x1c3d
        0x1c45
        0x1c4b
        0x1c4f
        0x1c55
        0x1c73
        0x1c81
        0x1c8b
        0x1c8d
        0x1c99
        0x1ca3
        0x1ca5
        0x1cb5
        0x1cb7
        0x1cc9
        0x1ce1
        0x1cf3
        0x1cf9
        0x1d09
        0x1d1b
        0x1d21
        0x1d23
        0x1d35
        0x1d39
        0x1d3f
        0x1d41
        0x1d4b
        0x1d53
        0x1d5d
        0x1d63
        0x1d69
        0x1d71
        0x1d75
        0x1d7b
        0x1d7d
        0x1d87
        0x1d89
        0x1d95
        0x1d99
        0x1d9f
        0x1da5
        0x1da7
        0x1db3
        0x1db7
        0x1dc5
        0x1dd7
        0x1ddb
        0x1de1
        0x1df5
        0x1df9
        0x1e01
        0x1e07
        0x1e0b
        0x1e13
        0x1e17
        0x1e25
        0x1e2b
        0x1e2f
        0x1e3d
        0x1e49
        0x1e4d
        0x1e4f
        0x1e6d
        0x1e71
        0x1e89
        0x1e8f
        0x1e95
        0x1ea1
        0x1ead
        0x1ebb
        0x1ec1
        0x1ec5
        0x1ec7
        0x1ecb
        0x1edd
        0x1ee3
        0x1eef
        0x1ef7
        0x1efd
        0x1f01
        0x1f0d
        0x1f0f
        0x1f1b
        0x1f39
        0x1f49
        0x1f4b
        0x1f51
        0x1f67
        0x1f75
        0x1f7b
        0x1f85
        0x1f91
        0x1f97
        0x1f99
        0x1f9d
        0x1fa5
        0x1faf
        0x1fb5
        0x1fbb
        0x1fd3
        0x1fe1
        0x1fe7
        0x1feb
        0x1ff3
        0x1fff
        0x2011
        0x201b
        0x201d
        0x2027
        0x2029
        0x202d
        0x2033
        0x2047
        0x204d
        0x2051
        0x205f
        0x2063
        0x2065
        0x2069
        0x2077
        0x207d
        0x2089
        0x20a1
        0x20ab
        0x20b1
        0x20b9
        0x20c3
        0x20c5
        0x20e3
        0x20e7
        0x20ed
        0x20ef
        0x20fb
        0x20ff
        0x210d
        0x2113
        0x2135
        0x2141
        0x2149
        0x214f
        0x2159
        0x215b
        0x215f
        0x2173
        0x217d
        0x2185
        0x2195
        0x2197
        0x21a1
        0x21af
        0x21b3
        0x21b5
        0x21c1
        0x21c7
        0x21d7
        0x21dd
        0x21e5
        0x21e9
        0x21f1
        0x21f5
        0x21fb
        0x2203
        0x2209
        0x220f
        0x221b
        0x2221
        0x2225
        0x222b
        0x2231
        0x2239
        0x224b
        0x224f
        0x2263
        0x2267
        0x2273
        0x2275
        0x227f
        0x2285
        0x2287
        0x2291
        0x229d
        0x229f
        0x22a3
        0x22b7
        0x22bd
        0x22db
        0x22e1
        0x22e5
        0x22ed
        0x22f7
        0x2303
        0x2309
        0x230b
        0x2327
        0x2329
        0x232f
        0x2333
        0x2335
        0x2345
        0x2351
        0x2353
        0x2359
        0x2363
        0x236b
        0x2383
        0x238f
        0x2395
        0x23a7
        0x23ad
        0x23b1
        0x23bf
        0x23c5
        0x23c9
        0x23d5
        0x23dd
        0x23e3
        0x23ef
        0x23f3
        0x23f9
        0x2405
        0x240b
        0x2417
        0x2419
        0x2429
        0x243d
        0x2441
        0x2443
        0x244d
        0x245f
        0x2467
        0x246b
        0x2479
        0x247d
        0x247f
        0x2485
        0x249b
        0x24a1
        0x24af
        0x24b5
        0x24bb
        0x24c5
        0x24cb
        0x24cd
        0x24d7
        0x24d9
        0x24dd
        0x24df
        0x24f5
        0x24f7
        0x24fb
        0x2501
        0x2507
        0x2513
        0x2519
        0x2527
        0x2531
        0x253d
        0x2543
        0x254b
        0x254f
        0x2573
        0x2581
        0x258d
        0x2593
        0x2597
        0x259d
        0x259f
        0x25ab
        0x25b1
        0x25bd
        0x25cd
        0x25cf
        0x25d9
        0x25e1
        0x25f7
        0x25f9
        0x2605
        0x260b
        0x260f
        0x2615
        0x2627
        0x2629
        0x2635
        0x263b
        0x263f
        0x264b
        0x2653
        0x2659
        0x2665
        0x2669
        0x266f
        0x267b
        0x2681
        0x2683
        0x268f
        0x269b
        0x269f
        0x26ad
        0x26b3
        0x26c3
        0x26c9
        0x26cb
        0x26d5
        0x26dd
        0x26ef
        0x26f5
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "N"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)V
    .locals 3
    .param p1, "p"    # Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public constructor <init>([I)V
    .locals 0
    .param p1, "coeffs"    # [I

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    .line 129
    return-void
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->BIGINT_PRIMES:Ljava/util/List;

    return-object v0
.end method

.method private equalsAbsOne()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1248
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1250
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v3, v3, v0

    if-eqz v3, :cond_0

    .line 1255
    :goto_1
    return v2

    .line 1248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1255
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private equalsZero()Z
    .locals 2

    .prologue
    .line 1214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1216
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 1218
    const/4 v1, 0x0

    .line 1221
    :goto_1
    return v1

    .line 1214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1221
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static fromBinary(Ljava/io/InputStream;II)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "N"    # I
    .param p2, "q"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-static {p0, p1, p2}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->decodeModQ(Ljava/io/InputStream;II)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v0
.end method

.method public static fromBinary([BII)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "N"    # I
    .param p2, "q"    # I

    .prologue
    .line 195
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-static {p0, p1, p2}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v0
.end method

.method public static fromBinary3Sves([BI)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "N"    # I

    .prologue
    .line 155
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-static {p0, p1}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->decodeMod3Sves([BI)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v0
.end method

.method public static fromBinary3Tight(Ljava/io/InputStream;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "N"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-static {p0, p1}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->decodeMod3Tight(Ljava/io/InputStream;I)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v0
.end method

.method public static fromBinary3Tight([BI)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 2
    .param p0, "b"    # [B
    .param p1, "N"    # I

    .prologue
    .line 167
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-static {p0, p1}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->decodeMod3Tight([BI)[I

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v0
.end method

.method private mod2ToModq(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 7
    .param p1, "Fq"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "q"    # I

    .prologue
    .line 455
    invoke-static {}, Lorg/spongycastle/pqc/math/ntru/util/Util;->is64BitJVM()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x800

    if-ne p2, v5, :cond_1

    .line 457
    new-instance v3, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-direct {v3, p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 458
    .local v3, "thisLong":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    new-instance v1, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    invoke-direct {v1, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 459
    .local v1, "FqLong":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    const/4 v4, 0x2

    .line 460
    .local v4, "v":I
    :goto_0
    if-ge v4, p2, :cond_0

    .line 462
    mul-int/lit8 v4, v4, 0x2

    .line 463
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    .line 464
    .local v2, "temp":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->mult2And(I)V

    .line 465
    invoke-virtual {v3, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;)Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;

    move-result-object v1

    .line 466
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v1, v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->subAnd(Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;I)V

    .line 467
    move-object v1, v2

    .line 468
    goto :goto_0

    .line 469
    .end local v2    # "temp":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;->toIntegerPolynomial()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    move-object v5, v0

    .line 483
    .end local v1    # "FqLong":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    .end local v3    # "thisLong":Lorg/spongycastle/pqc/math/ntru/polynomial/LongPolynomial2;
    :goto_1
    return-object v5

    .line 473
    .end local v4    # "v":I
    :cond_1
    const/4 v4, 0x2

    .restart local v4    # "v":I
    move-object v0, p1

    .line 474
    .end local p1    # "Fq":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .local v0, "Fq":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    :goto_2
    if-ge v4, p2, :cond_2

    .line 476
    mul-int/lit8 v4, v4, 0x2

    .line 477
    new-instance v2, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v5, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    iget-object v6, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v6, v6

    invoke-static {v5, v6}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 478
    .local v2, "temp":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-direct {v2, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult2(I)V

    .line 479
    invoke-virtual {p0, v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    .line 480
    .end local v0    # "Fq":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .restart local p1    # "Fq":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v2, p1, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 481
    move-object p1, v2

    move-object v0, p1

    .line 482
    .end local p1    # "Fq":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .restart local v0    # "Fq":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    goto :goto_2

    .end local v2    # "temp":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    :cond_2
    move-object p1, v0

    .end local v0    # "Fq":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .restart local p1    # "Fq":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    move-object v5, v0

    .line 483
    goto :goto_1
.end method

.method private mult2(I)V
    .locals 3
    .param p1, "modulus"    # I

    .prologue
    .line 973
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 975
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    mul-int/lit8 v2, v2, 0x2

    aput v2, v1, v0

    .line 976
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    rem-int/2addr v2, p1

    aput v2, v1, v0

    .line 973
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    :cond_0
    return-void
.end method

.method private multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 23
    .param p1, "poly2"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .prologue
    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    .line 315
    .local v4, "a":[I
    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    .line 317
    .local v7, "b":[I
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v17, v0

    .line 318
    .local v17, "n":I
    const/16 v19, 0x20

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_1

    .line 320
    mul-int/lit8 v19, v17, 0x2

    add-int/lit8 v14, v19, -0x1

    .line 321
    .local v14, "cn":I
    new-instance v10, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    new-array v0, v14, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 322
    .local v10, "c":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    const/16 v16, 0x0

    .local v16, "k":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_4

    .line 324
    const/16 v19, 0x0

    sub-int v20, v16, v17

    add-int/lit8 v20, v20, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .local v15, "i":I
    :goto_1
    add-int/lit8 v19, v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    if-gt v15, v0, :cond_0

    .line 326
    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v19, v0

    aget v20, v19, v16

    aget v21, v7, v15

    sub-int v22, v16, v15

    aget v22, v4, v22

    mul-int v21, v21, v22

    add-int v20, v20, v21

    aput v20, v19, v16

    .line 324
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 322
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 333
    .end local v10    # "c":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v14    # "cn":I
    .end local v15    # "i":I
    .end local v16    # "k":I
    :cond_1
    div-int/lit8 v18, v17, 0x2

    .line 335
    .local v18, "n1":I
    new-instance v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move/from16 v0, v18

    invoke-static {v4, v0}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 336
    .local v5, "a1":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    new-instance v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v1}, Lorg/spongycastle/util/Arrays;->copyOfRange([III)[I

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 337
    .local v6, "a2":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    new-instance v8, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move/from16 v0, v18

    invoke-static {v7, v0}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 338
    .local v8, "b1":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    new-instance v9, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v7, v0, v1}, Lorg/spongycastle/util/Arrays;->copyOfRange([III)[I

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 340
    .local v9, "b2":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 341
    .local v2, "A":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v2, v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 342
    invoke-virtual {v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 343
    .local v3, "B":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v3, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 345
    invoke-direct {v5, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v11

    .line 346
    .local v11, "c1":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-direct {v6, v9}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    .line 347
    .local v12, "c2":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-direct {v2, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v13

    .line 348
    .local v13, "c3":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v13, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 349
    invoke-virtual {v13, v12}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 351
    new-instance v10, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    mul-int/lit8 v19, v17, 0x2

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-direct {v10, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 352
    .restart local v10    # "c":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2
    iget-object v0, v11, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v15, v0, :cond_2

    .line 354
    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v19, v0

    iget-object v0, v11, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v20, v0

    aget v20, v20, v15

    aput v20, v19, v15

    .line 352
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 356
    :cond_2
    const/4 v15, 0x0

    :goto_3
    iget-object v0, v13, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v15, v0, :cond_3

    .line 358
    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v19, v0

    add-int v20, v18, v15

    aget v21, v19, v20

    iget-object v0, v13, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v22, v0

    aget v22, v22, v15

    add-int v21, v21, v22

    aput v21, v19, v20

    .line 356
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 360
    :cond_3
    const/4 v15, 0x0

    :goto_4
    iget-object v0, v12, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v15, v0, :cond_4

    .line 362
    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v19, v0

    mul-int/lit8 v20, v18, 0x2

    add-int v20, v20, v15

    aget v21, v19, v20

    iget-object v0, v12, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v22, v0

    aget v22, v22, v15

    add-int v21, v21, v22

    aput v21, v19, v20

    .line 360
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 364
    .end local v2    # "A":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v3    # "B":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v5    # "a1":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v6    # "a2":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v8    # "b1":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v9    # "b2":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v11    # "c1":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v12    # "c2":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v13    # "c3":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v15    # "i":I
    .end local v18    # "n1":I
    :cond_4
    return-object v10
.end method

.method private multShiftSub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;III)V
    .locals 6
    .param p1, "b"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "c"    # I
    .param p3, "k"    # I
    .param p4, "p"    # I

    .prologue
    .line 845
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v2

    .line 846
    .local v0, "N":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 848
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v3, v3, v1

    iget-object v4, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    sub-int v5, v1, p3

    aget v4, v4, v5

    mul-int/2addr v4, p2

    sub-int/2addr v3, v4

    rem-int/2addr v3, p4

    aput v3, v2, v1

    .line 846
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    :cond_0
    return-void
.end method

.method private sort([I)V
    .locals 5
    .param p1, "ints"    # [I

    .prologue
    .line 1154
    const/4 v1, 0x1

    .line 1156
    .local v1, "swap":Z
    :cond_0
    if-eqz v1, :cond_2

    .line 1158
    const/4 v1, 0x0

    .line 1159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1161
    aget v3, p1, v0

    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    if-le v3, v4, :cond_1

    .line 1163
    aget v2, p1, v0

    .line 1164
    .local v2, "tmp":I
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    aput v3, p1, v0

    .line 1165
    add-int/lit8 v3, v0, 0x1

    aput v2, p1, v3

    .line 1166
    const/4 v1, 0x1

    .line 1159
    .end local v2    # "tmp":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1170
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private squareSum()Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 859
    sget-object v1, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->BIGINT_ZERO:Ljava/math/BigInteger;

    .line 860
    .local v1, "sum":Ljava/math/BigInteger;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 862
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 860
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 864
    :cond_0
    return-object v1
.end method


# virtual methods
.method public add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 4
    .param p1, "b"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .prologue
    .line 901
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 903
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    .line 905
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 907
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    iget-object v3, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 905
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 909
    :cond_1
    return-void
.end method

.method public add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V
    .locals 0
    .param p1, "b"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "modulus"    # I

    .prologue
    .line 890
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 891
    invoke-virtual {p0, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod(I)V

    .line 892
    return-void
.end method

.method public center0(I)V
    .locals 3
    .param p1, "q"    # I

    .prologue
    .line 1179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1181
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v1, v1, v0

    neg-int v2, p1

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 1183
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    add-int/2addr v2, p1

    aput v2, v1, v0

    goto :goto_1

    .line 1185
    :cond_0
    :goto_2
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v1, v1, v0

    div-int/lit8 v2, p1, 0x2

    if-le v1, v2, :cond_1

    .line 1187
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    sub-int/2addr v2, p1

    aput v2, v1, v0

    goto :goto_2

    .line 1179
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1190
    :cond_2
    return-void
.end method

.method public centeredNormSq(I)J
    .locals 14
    .param p1, "q"    # I

    .prologue
    .line 1093
    iget-object v10, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v10

    .line 1094
    .local v0, "N":I
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 1095
    .local v5, "p":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v5, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->shiftGap(I)V

    .line 1097
    const-wide/16 v8, 0x0

    .line 1098
    .local v8, "sum":J
    const-wide/16 v6, 0x0

    .line 1099
    .local v6, "sqSum":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v10, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v10, v10

    if-eq v4, v10, :cond_0

    .line 1101
    iget-object v10, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v1, v10, v4

    .line 1102
    .local v1, "c":I
    int-to-long v10, v1

    add-long/2addr v8, v10

    .line 1103
    mul-int v10, v1, v1

    int-to-long v10, v10

    add-long/2addr v6, v10

    .line 1099
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1106
    .end local v1    # "c":I
    :cond_0
    mul-long v10, v8, v8

    int-to-long v12, v0

    div-long/2addr v10, v12

    sub-long v2, v6, v10

    .line 1107
    .local v2, "centeredNormSq":J
    return-wide v2
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 1292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1294
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 1292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1296
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1305
    new-instance v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-direct {v1, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v1
.end method

.method public count(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1266
    const/4 v0, 0x0

    .line 1267
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 1269
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 1271
    add-int/lit8 v0, v0, 0x1

    .line 1267
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1274
    :cond_1
    return v0
.end method

.method degree()I
    .locals 2

    .prologue
    .line 874
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 875
    .local v0, "degree":I
    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    .line 877
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 879
    :cond_0
    return v0
.end method

.method public div(I)V
    .locals 5
    .param p1, "k"    # I

    .prologue
    .line 1001
    add-int/lit8 v2, p1, 0x1

    div-int/lit8 v1, v2, 0x2

    .line 1002
    .local v1, "k2":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1004
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v4, v3, v0

    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v2, v0

    if-lez v2, :cond_0

    move v2, v1

    :goto_1
    add-int/2addr v2, v4

    aput v2, v3, v0

    .line 1005
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v3, v2, v0

    div-int/2addr v3, p1

    aput v3, v2, v0

    .line 1002
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1004
    :cond_0
    neg-int v2, v1

    goto :goto_1

    .line 1007
    :cond_1
    return-void
.end method

.method public ensurePositive(I)V
    .locals 3
    .param p1, "modulus"    # I

    .prologue
    .line 1076
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1078
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v1, v1, v0

    if-gez v1, :cond_0

    .line 1080
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    add-int/2addr v2, p1

    aput v2, v1, v0

    goto :goto_1

    .line 1076
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1083
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1310
    instance-of v0, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    check-cast p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->areEqual([I[I)Z

    move-result v0

    .line 1316
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsOne()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1231
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1233
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v3, v3, v0

    if-eqz v3, :cond_0

    .line 1238
    :goto_1
    return v2

    .line 1231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1238
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v3, v3, v2

    if-ne v3, v1, :cond_2

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public invertF3()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 14

    .prologue
    .line 495
    iget-object v10, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v10

    .line 496
    .local v1, "N":I
    const/4 v8, 0x0

    .line 497
    .local v8, "k":I
    new-instance v2, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v10, v1, 0x1

    invoke-direct {v2, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 498
    .local v2, "b":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    iget-object v10, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v12, v10, v11

    .line 499
    new-instance v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v10, v1, 0x1

    invoke-direct {v3, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 500
    .local v3, "c":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    new-instance v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v10, v1, 0x1

    invoke-direct {v4, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 501
    .local v4, "f":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    iget-object v10, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v11, v1, 0x1

    invoke-static {v10, v11}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v10

    iput-object v10, v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    .line 502
    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 504
    new-instance v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v10, v1, 0x1

    invoke-direct {v5, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 505
    .local v5, "g":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    iget-object v10, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v11, 0x0

    const/4 v12, -0x1

    aput v12, v10, v11

    .line 506
    iget-object v10, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v11, 0x1

    aput v11, v10, v1

    .line 509
    :cond_0
    :goto_0
    iget-object v10, v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-nez v10, :cond_2

    .line 511
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    if-gt v6, v1, :cond_1

    .line 513
    iget-object v10, v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v11, v6, -0x1

    iget-object v12, v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v12, v12, v6

    aput v12, v10, v11

    .line 514
    iget-object v10, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v11, v1, 0x1

    sub-int/2addr v11, v6

    iget-object v12, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    sub-int v13, v1, v6

    aget v12, v12, v13

    aput v12, v10, v11

    .line 511
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 516
    :cond_1
    iget-object v10, v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v11, 0x0

    aput v11, v10, v1

    .line 517
    iget-object v10, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 518
    add-int/lit8 v8, v8, 0x1

    .line 519
    invoke-direct {v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equalsZero()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 521
    const/4 v0, 0x0

    .line 570
    .end local v6    # "i":I
    :goto_2
    return-object v0

    .line 524
    :cond_2
    invoke-direct {v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equalsAbsOne()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 551
    iget-object v10, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v10, v10, v1

    if-eqz v10, :cond_6

    .line 553
    const/4 v0, 0x0

    goto :goto_2

    .line 528
    :cond_3
    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->degree()I

    move-result v10

    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->degree()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 531
    move-object v9, v4

    .line 532
    .local v9, "temp":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    move-object v4, v5

    .line 533
    move-object v5, v9

    .line 535
    move-object v9, v2

    .line 536
    move-object v2, v3

    .line 537
    move-object v3, v9

    .line 539
    .end local v9    # "temp":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    :cond_4
    iget-object v10, v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    if-ne v10, v11, :cond_5

    .line 541
    const/4 v10, 0x3

    invoke-virtual {v4, v5, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 542
    const/4 v10, 0x3

    invoke-virtual {v2, v3, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    goto :goto_0

    .line 546
    :cond_5
    const/4 v10, 0x3

    invoke-virtual {v4, v5, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 547
    const/4 v10, 0x3

    invoke-virtual {v2, v3, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    goto :goto_0

    .line 556
    :cond_6
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 557
    .local v0, "Fp":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    const/4 v7, 0x0

    .line 558
    .local v7, "j":I
    rem-int/2addr v8, v1

    .line 559
    add-int/lit8 v6, v1, -0x1

    .restart local v6    # "i":I
    :goto_3
    if-ltz v6, :cond_8

    .line 561
    sub-int v7, v6, v8

    .line 562
    if-gez v7, :cond_7

    .line 564
    add-int/2addr v7, v1

    .line 566
    :cond_7
    iget-object v10, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    iget-object v11, v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v12, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v12, v12, v6

    mul-int/2addr v11, v12

    aput v11, v10, v7

    .line 559
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 569
    :cond_8
    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    goto :goto_2
.end method

.method public invertFq(I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 14
    .param p1, "q"    # I

    .prologue
    .line 377
    iget-object v10, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v10

    .line 378
    .local v1, "N":I
    const/4 v8, 0x0

    .line 379
    .local v8, "k":I
    new-instance v2, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v10, v1, 0x1

    invoke-direct {v2, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 380
    .local v2, "b":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    iget-object v10, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v12, v10, v11

    .line 381
    new-instance v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v10, v1, 0x1

    invoke-direct {v3, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 382
    .local v3, "c":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    new-instance v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v10, v1, 0x1

    invoke-direct {v4, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 383
    .local v4, "f":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    iget-object v10, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v11, v1, 0x1

    invoke-static {v10, v11}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v10

    iput-object v10, v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    .line 384
    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 386
    new-instance v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    add-int/lit8 v10, v1, 0x1

    invoke-direct {v5, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 387
    .local v5, "g":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    iget-object v10, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v12, v10, v11

    .line 388
    iget-object v10, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v11, 0x1

    aput v11, v10, v1

    .line 391
    :cond_0
    :goto_0
    iget-object v10, v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-nez v10, :cond_2

    .line 393
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    if-gt v6, v1, :cond_1

    .line 395
    iget-object v10, v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v11, v6, -0x1

    iget-object v12, v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v12, v12, v6

    aput v12, v10, v11

    .line 396
    iget-object v10, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v11, v1, 0x1

    sub-int/2addr v11, v6

    iget-object v12, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    sub-int v13, v1, v6

    aget v12, v12, v13

    aput v12, v10, v11

    .line 393
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 398
    :cond_1
    iget-object v10, v4, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v11, 0x0

    aput v11, v10, v1

    .line 399
    iget-object v10, v3, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 400
    add-int/lit8 v8, v8, 0x1

    .line 401
    invoke-direct {v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equalsZero()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 403
    const/4 v10, 0x0

    .line 443
    .end local v6    # "i":I
    :goto_2
    return-object v10

    .line 406
    :cond_2
    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equalsOne()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 425
    iget-object v10, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v10, v10, v1

    if-eqz v10, :cond_5

    .line 427
    const/4 v10, 0x0

    goto :goto_2

    .line 410
    :cond_3
    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->degree()I

    move-result v10

    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->degree()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 413
    move-object v9, v4

    .line 414
    .local v9, "temp":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    move-object v4, v5

    .line 415
    move-object v5, v9

    .line 417
    move-object v9, v2

    .line 418
    move-object v2, v3

    .line 419
    move-object v3, v9

    .line 421
    .end local v9    # "temp":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    :cond_4
    const/4 v10, 0x2

    invoke-virtual {v4, v5, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 422
    const/4 v10, 0x2

    invoke-virtual {v2, v3, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V

    goto :goto_0

    .line 430
    :cond_5
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 431
    .local v0, "Fq":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    const/4 v7, 0x0

    .line 432
    .local v7, "j":I
    rem-int/2addr v8, v1

    .line 433
    add-int/lit8 v6, v1, -0x1

    .restart local v6    # "i":I
    :goto_3
    if-ltz v6, :cond_7

    .line 435
    sub-int v7, v6, v8

    .line 436
    if-gez v7, :cond_6

    .line 438
    add-int/2addr v7, v1

    .line 440
    :cond_6
    iget-object v10, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    iget-object v11, v2, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v11, v11, v6

    aput v11, v10, v7

    .line 433
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 443
    :cond_7
    invoke-direct {p0, v0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod2ToModq(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v10

    goto :goto_2
.end method

.method public mod(I)V
    .locals 3
    .param p1, "modulus"    # I

    .prologue
    .line 1063
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1065
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    rem-int/2addr v2, p1

    aput v2, v1, v0

    .line 1063
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1067
    :cond_0
    return-void
.end method

.method public mod3()V
    .locals 3

    .prologue
    .line 1014
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1016
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    rem-int/lit8 v2, v2, 0x3

    aput v2, v1, v0

    .line 1017
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v1, v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1019
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x3

    aput v2, v1, v0

    .line 1021
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1023
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x3

    aput v2, v1, v0

    .line 1014
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1026
    :cond_2
    return-void
.end method

.method modCenter(I)V
    .locals 3
    .param p1, "modulus"    # I

    .prologue
    .line 1044
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod(I)V

    .line 1045
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1047
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v1, v1, v0

    div-int/lit8 v2, p1, 0x2

    if-ge v1, v2, :cond_0

    .line 1049
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    add-int/2addr v2, p1

    aput v2, v1, v0

    goto :goto_1

    .line 1051
    :cond_0
    :goto_2
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v1, v1, v0

    div-int/lit8 v2, p1, 0x2

    if-lt v1, v2, :cond_1

    .line 1053
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    sub-int/2addr v2, p1

    aput v2, v1, v0

    goto :goto_2

    .line 1045
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1056
    :cond_2
    return-void
.end method

.method public modPositive(I)V
    .locals 0
    .param p1, "modulus"    # I

    .prologue
    .line 1035
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod(I)V

    .line 1036
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    .line 1037
    return-void
.end method

.method public mult(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    .locals 1
    .param p1, "poly2"    # Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    .prologue
    .line 306
    new-instance v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 7
    .param p1, "poly2"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .prologue
    .line 285
    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v3

    .line 286
    .local v0, "N":I
    iget-object v3, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v3, v3

    if-eq v3, v0, :cond_0

    .line 288
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Number of coefficients must be the same"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 291
    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->multRecursive(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    .line 293
    .local v1, "c":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    iget-object v3, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v3, v3

    if-le v3, v0, :cond_2

    .line 295
    move v2, v0

    .local v2, "k":I
    :goto_0
    iget-object v3, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 297
    iget-object v3, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    sub-int v4, v2, v0

    aget v5, v3, v4

    iget-object v6, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v6, v6, v2

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    :cond_1
    iget-object v3, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-static {v3, v0}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    .line 301
    .end local v2    # "k":I
    :cond_2
    return-object v1
.end method

.method public mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 1
    .param p1, "poly2"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "modulus"    # I

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 276
    .local v0, "c":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod(I)V

    .line 277
    return-object v0
.end method

.method public mult(I)V
    .locals 3
    .param p1, "factor"    # I

    .prologue
    .line 960
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 962
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    mul-int/2addr v2, p1

    aput v2, v1, v0

    .line 960
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 964
    :cond_0
    return-void
.end method

.method public mult3(I)V
    .locals 3
    .param p1, "modulus"    # I

    .prologue
    .line 987
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 989
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    mul-int/lit8 v2, v2, 0x3

    aput v2, v1, v0

    .line 990
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    rem-int/2addr v2, p1

    aput v2, v1, v0

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 992
    :cond_0
    return-void
.end method

.method public resultant(I)Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    .locals 24
    .param p1, "p"    # I

    .prologue
    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v18 .. v19}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v11

    .line 778
    .local v11, "fcoeffs":[I
    new-instance v10, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v10, v11}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 779
    .local v10, "f":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    array-length v4, v11

    .line 781
    .local v4, "N":I
    new-instance v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v5, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 782
    .local v5, "a":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, -0x1

    aput v20, v18, v19

    .line 783
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v4, -0x1

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 784
    new-instance v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v0, v10, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 785
    .local v6, "b":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    new-instance v16, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 786
    .local v16, "v1":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    new-instance v17, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 787
    .local v17, "v2":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput v20, v18, v19

    .line 788
    add-int/lit8 v8, v4, -0x1

    .line 789
    .local v8, "da":I
    invoke-virtual {v6}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->degree()I

    move-result v9

    .line 790
    .local v9, "db":I
    move v13, v8

    .line 791
    .local v13, "ta":I
    const/4 v7, 0x0

    .line 792
    .local v7, "c":I
    const/4 v12, 0x1

    .line 793
    .local v12, "r":I
    :cond_0
    :goto_0
    if-lez v9, :cond_2

    .line 795
    iget-object v0, v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v18, v0

    aget v18, v18, v9

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/ntru/util/Util;->invert(II)I

    move-result v7

    .line 796
    iget-object v0, v5, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v18, v0

    aget v18, v18, v8

    mul-int v18, v18, v7

    rem-int v7, v18, p1

    .line 797
    sub-int v18, v8, v9

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-direct {v5, v6, v7, v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->multShiftSub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;III)V

    .line 798
    sub-int v18, v8, v9

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, p1

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->multShiftSub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;III)V

    .line 800
    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->degree()I

    move-result v8

    .line 801
    if-ge v8, v9, :cond_0

    .line 803
    iget-object v0, v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v18, v0

    aget v18, v18, v9

    sub-int v19, v13, v8

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lorg/spongycastle/pqc/math/ntru/util/Util;->pow(III)I

    move-result v18

    mul-int v12, v12, v18

    .line 804
    rem-int v12, v12, p1

    .line 805
    rem-int/lit8 v18, v13, 0x2

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    rem-int/lit8 v18, v9, 0x2

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 807
    neg-int v0, v12

    move/from16 v18, v0

    rem-int v12, v18, p1

    .line 809
    :cond_1
    move-object v14, v5

    .line 810
    .local v14, "temp":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    move-object v5, v6

    .line 811
    move-object v6, v14

    .line 812
    move v15, v8

    .line 813
    .local v15, "tempdeg":I
    move v8, v9

    .line 814
    move-object/from16 v14, v16

    .line 815
    move-object/from16 v16, v17

    .line 816
    move-object/from16 v17, v14

    .line 817
    move v13, v9

    .line 818
    move v9, v15

    .line 819
    goto :goto_0

    .line 821
    .end local v14    # "temp":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .end local v15    # "tempdeg":I
    :cond_2
    iget-object v0, v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v8, v1}, Lorg/spongycastle/pqc/math/ntru/util/Util;->pow(III)I

    move-result v18

    mul-int v12, v12, v18

    .line 822
    rem-int v12, v12, p1

    .line 823
    iget-object v0, v6, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/ntru/util/Util;->invert(II)I

    move-result v7

    .line 824
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    .line 825
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod(I)V

    .line 826
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    .line 827
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod(I)V

    .line 830
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    invoke-static/range {v18 .. v19}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    .line 831
    new-instance v18, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    new-instance v19, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    int-to-long v0, v12

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v20

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v18
.end method

.method public resultant()Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;
    .locals 26

    .prologue
    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v4, v0

    .line 592
    .local v4, "N":I
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 593
    .local v12, "modResultants":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    sget-object v14, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->BIGINT_ONE:Ljava/math/BigInteger;

    .line 594
    .local v14, "pProd":Ljava/math/BigInteger;
    sget-object v19, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->BIGINT_ONE:Ljava/math/BigInteger;

    .line 595
    .local v19, "res":Ljava/math/BigInteger;
    const/4 v13, 0x1

    .line 597
    .local v13, "numEqual":I
    new-instance v18, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator;

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$1;)V

    .line 601
    .local v18, "primes":Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator;
    :cond_0
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$PrimeGenerator;->nextPrime()Ljava/math/BigInteger;

    move-result-object v17

    .line 602
    .local v17, "prime":Ljava/math/BigInteger;
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->intValue()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->resultant(I)Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v6

    .line 603
    .local v6, "crr":Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    invoke-virtual {v12, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 605
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    .line 606
    .local v23, "temp":Ljava/math/BigInteger;
    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->calculate(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;

    move-result-object v7

    .line 607
    .local v7, "er":Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;
    move-object/from16 v21, v19

    .line 608
    .local v21, "resPrev":Ljava/math/BigInteger;
    iget-object v0, v7, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->x:Ljava/math/BigInteger;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 609
    iget-object v0, v6, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->res:Ljava/math/BigInteger;

    move-object/from16 v24, v0

    iget-object v0, v7, Lorg/spongycastle/pqc/math/ntru/euclid/BigIntEuclidean;->y:Ljava/math/BigInteger;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    .line 610
    .local v20, "res2":Ljava/math/BigInteger;
    invoke-virtual/range {v19 .. v20}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 611
    move-object/from16 v14, v23

    .line 613
    const-wide/16 v24, 0x2

    invoke-static/range {v24 .. v25}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 614
    .local v15, "pProd2":Ljava/math/BigInteger;
    invoke-virtual {v15}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v16

    .line 615
    .local v16, "pProd2n":Ljava/math/BigInteger;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v24

    if-lez v24, :cond_2

    .line 617
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 624
    :cond_1
    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 626
    add-int/lit8 v13, v13, 0x1

    .line 627
    const/16 v24, 0x3

    move/from16 v0, v24

    if-lt v13, v0, :cond_0

    .line 641
    :goto_2
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    .line 643
    invoke-virtual {v12}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    .line 644
    .local v9, "modRes1":Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    invoke-virtual {v12}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    .line 645
    .local v10, "modRes2":Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    invoke-static {v9, v10}, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->combineRho(Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;)Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-result-object v11

    .line 646
    .local v11, "modRes3":Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    invoke-virtual {v12, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 619
    .end local v9    # "modRes1":Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    .end local v10    # "modRes2":Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    .end local v11    # "modRes3":Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v24

    if-gez v24, :cond_1

    .line 621
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    goto :goto_1

    .line 634
    :cond_3
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 648
    :cond_4
    invoke-virtual {v12}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->rho:Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-object/from16 v22, v0

    .line 650
    .local v22, "rhoP":Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    const-wide/16 v24, 0x2

    invoke-static/range {v24 .. v25}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 651
    invoke-virtual {v15}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v16

    .line 652
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v24

    if-lez v24, :cond_5

    .line 654
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 656
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v24

    if-gez v24, :cond_6

    .line 658
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 661
    :cond_6
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v4, :cond_9

    .line 663
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    move-object/from16 v24, v0

    aget-object v5, v24, v8

    .line 664
    .local v5, "c":Ljava/math/BigInteger;
    invoke-virtual {v5, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v24

    if-lez v24, :cond_7

    .line 666
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    move-object/from16 v24, v0

    invoke-virtual {v5, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    aput-object v25, v24, v8

    .line 668
    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v24

    if-gez v24, :cond_8

    .line 670
    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    move-object/from16 v24, v0

    invoke-virtual {v5, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    aput-object v25, v24, v8

    .line 661
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 674
    .end local v5    # "c":Ljava/math/BigInteger;
    :cond_9
    new-instance v24, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;)V

    return-object v24
.end method

.method public resultantMultiThread()Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;
    .locals 30

    .prologue
    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v6, v0

    .line 688
    .local v6, "N":I
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->squareSum()Ljava/math/BigInteger;

    move-result-object v26

    add-int/lit8 v27, v6, 0x1

    div-int/lit8 v27, v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 689
    .local v11, "max":Ljava/math/BigInteger;
    const-wide/16 v26, 0x2

    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->degree()I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    div-int/lit8 v27, v27, 0x2

    invoke-virtual/range {v26 .. v27}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 690
    const-wide/16 v26, 0x2

    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 693
    .local v12, "max2":Ljava/math/BigInteger;
    const-wide/16 v26, 0x2710

    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v20

    .line 694
    .local v20, "prime":Ljava/math/BigInteger;
    sget-object v17, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->BIGINT_ONE:Ljava/math/BigInteger;

    .line 695
    .local v17, "pProd":Ljava/math/BigInteger;
    new-instance v23, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v23 .. v23}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 696
    .local v23, "resultantTasks":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/util/concurrent/Future<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;>;"
    sget-object v26, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->BIGINT_PRIMES:Ljava/util/List;

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 697
    .local v21, "primes":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/math/BigInteger;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    .line 698
    .local v9, "executor":Ljava/util/concurrent/ExecutorService;
    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v26

    if-gez v26, :cond_1

    .line 700
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 702
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "prime":Ljava/math/BigInteger;
    check-cast v20, Ljava/math/BigInteger;

    .line 708
    .restart local v20    # "prime":Ljava/math/BigInteger;
    :goto_1
    new-instance v26, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;

    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->intValue()I

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$ModResultantTask;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;ILorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$1;)V

    move-object/from16 v0, v26

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v25

    .line 709
    .local v25, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 710
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 711
    goto :goto_0

    .line 706
    .end local v25    # "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    :cond_0
    invoke-virtual/range {v20 .. v20}, Ljava/math/BigInteger;->nextProbablePrime()Ljava/math/BigInteger;

    move-result-object v20

    goto :goto_1

    .line 716
    :cond_1
    const/16 v16, 0x0

    .line 717
    .local v16, "overallResultant":Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    :goto_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_2

    .line 721
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/Future;

    .line 722
    .local v13, "modRes1":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/Future;

    .line 723
    .local v14, "modRes2":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    if-nez v14, :cond_7

    .line 726
    invoke-interface {v13}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "overallResultant":Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    check-cast v16, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    .end local v13    # "modRes1":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    .end local v14    # "modRes2":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    .restart local v16    # "overallResultant":Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    :cond_2
    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 738
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->res:Ljava/math/BigInteger;

    move-object/from16 v22, v0

    .line 739
    .local v22, "res":Ljava/math/BigInteger;
    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;->rho:Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;

    move-object/from16 v24, v0

    .line 741
    .local v24, "rhoP":Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    const-wide/16 v26, 0x2

    invoke-static/range {v26 .. v27}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    .line 742
    .local v18, "pProd2":Ljava/math/BigInteger;
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v19

    .line 744
    .local v19, "pProd2n":Ljava/math/BigInteger;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v26

    if-lez v26, :cond_3

    .line 746
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    .line 748
    :cond_3
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v26

    if-gez v26, :cond_4

    .line 750
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    .line 753
    :cond_4
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v6, :cond_8

    .line 755
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    move-object/from16 v26, v0

    aget-object v7, v26, v10

    .line 756
    .local v7, "c":Ljava/math/BigInteger;
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v26

    if-lez v26, :cond_5

    .line 758
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v27

    aput-object v27, v26, v10

    .line 760
    :cond_5
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v26

    if-gez v26, :cond_6

    .line 762
    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;->coeffs:[Ljava/math/BigInteger;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v27

    aput-object v27, v26, v10

    .line 753
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 729
    .end local v7    # "c":Ljava/math/BigInteger;
    .end local v10    # "i":I
    .end local v18    # "pProd2":Ljava/math/BigInteger;
    .end local v19    # "pProd2n":Ljava/math/BigInteger;
    .end local v22    # "res":Ljava/math/BigInteger;
    .end local v24    # "rhoP":Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    .restart local v13    # "modRes1":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    .restart local v14    # "modRes2":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    :cond_7
    :try_start_1
    new-instance v28, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$CombineTask;

    invoke-interface {v13}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    invoke-interface {v14}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$CombineTask;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial$1;)V

    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v15

    .line 730
    .local v15, "newTask":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 732
    .end local v13    # "modRes1":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    .end local v14    # "modRes2":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    .end local v15    # "newTask":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;>;"
    .end local v16    # "overallResultant":Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    :catch_0
    move-exception v8

    .line 734
    .local v8, "e":Ljava/lang/Exception;
    new-instance v26, Ljava/lang/IllegalStateException;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 766
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "i":I
    .restart local v16    # "overallResultant":Lorg/spongycastle/pqc/math/ntru/polynomial/ModularResultant;
    .restart local v18    # "pProd2":Ljava/math/BigInteger;
    .restart local v19    # "pProd2n":Ljava/math/BigInteger;
    .restart local v22    # "res":Ljava/math/BigInteger;
    .restart local v24    # "rhoP":Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;
    :cond_8
    new-instance v26, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/Resultant;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;)V

    return-object v26
.end method

.method public rotate1()V
    .locals 5

    .prologue
    .line 1282
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v0, v2, v3

    .line 1283
    .local v0, "clast":I
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 1285
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    iget-object v3, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    aput v3, v2, v1

    .line 1283
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1287
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 1288
    return-void
.end method

.method shiftGap(I)V
    .locals 11
    .param p1, "q"    # I

    .prologue
    .line 1117
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->modCenter(I)V

    .line 1119
    iget-object v9, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-static {v9}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v8

    .line 1121
    .local v8, "sorted":[I
    invoke-direct {p0, v8}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sort([I)V

    .line 1123
    const/4 v2, 0x0

    .line 1124
    .local v2, "maxrange":I
    const/4 v3, 0x0

    .line 1125
    .local v3, "maxrangeStart":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    if-ge v0, v9, :cond_1

    .line 1127
    add-int/lit8 v9, v0, 0x1

    aget v9, v8, v9

    aget v10, v8, v0

    sub-int v6, v9, v10

    .line 1128
    .local v6, "range":I
    if-le v6, v2, :cond_0

    .line 1130
    move v2, v6

    .line 1131
    aget v3, v8, v0

    .line 1125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1135
    .end local v6    # "range":I
    :cond_1
    const/4 v9, 0x0

    aget v5, v8, v9

    .line 1136
    .local v5, "pmin":I
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    aget v4, v8, v9

    .line 1138
    .local v4, "pmax":I
    sub-int v9, p1, v4

    add-int v1, v9, v5

    .line 1140
    .local v1, "j":I
    if-le v1, v2, :cond_2

    .line 1142
    add-int v9, v4, v5

    div-int/lit8 v7, v9, 0x2

    .line 1149
    .local v7, "shift":I
    :goto_1
    invoke-virtual {p0, v7}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(I)V

    .line 1150
    return-void

    .line 1146
    .end local v7    # "shift":I
    :cond_2
    div-int/lit8 v9, v2, 0x2

    add-int/2addr v9, v3

    div-int/lit8 v10, p1, 0x2

    add-int v7, v9, v10

    .restart local v7    # "shift":I
    goto :goto_1
.end method

.method sub(I)V
    .locals 3
    .param p1, "b"    # I

    .prologue
    .line 947
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 949
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    sub-int/2addr v2, p1

    aput v2, v1, v0

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    :cond_0
    return-void
.end method

.method public sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 4
    .param p1, "b"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .prologue
    .line 930
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 932
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    iget-object v2, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    .line 934
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 936
    iget-object v1, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v1, v0

    iget-object v3, p1, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    aput v2, v1, v0

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 938
    :cond_1
    return-void
.end method

.method public sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;I)V
    .locals 0
    .param p1, "b"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "modulus"    # I

    .prologue
    .line 919
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;)V

    .line 920
    invoke-virtual {p0, p2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->mod(I)V

    .line 921
    return-void
.end method

.method public sumCoeffs()I
    .locals 3

    .prologue
    .line 1199
    const/4 v1, 0x0

    .line 1200
    .local v1, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1202
    iget-object v2, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 1200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1204
    :cond_0
    return v1
.end method

.method public toBinary(I)[B
    .locals 1
    .param p1, "q"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-static {v0, p1}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->encodeModQ([II)[B

    move-result-object v0

    return-object v0
.end method

.method public toBinary3Sves()[B
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/ntru/util/ArrayEncoder;->encodeMod3Sves([I)[B

    move-result-object v0

    return-object v0
.end method

.method public toBinary3Tight()[B
    .locals 10

    .prologue
    const-wide/16 v8, 0x3

    .line 233
    sget-object v5, Lorg/spongycastle/pqc/math/ntru/polynomial/Constants;->BIGINT_ZERO:Ljava/math/BigInteger;

    .line 234
    .local v5, "sum":Ljava/math/BigInteger;
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v6, v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 236
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 237
    iget-object v6, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v6, v6, v3

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 234
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    add-int/lit8 v6, v6, 0x7

    div-int/lit8 v4, v6, 0x8

    .line 241
    .local v4, "size":I
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 243
    .local v0, "arr":[B
    array-length v6, v0

    if-ge v6, v4, :cond_1

    .line 246
    new-array v2, v4, [B

    .line 247
    .local v2, "arr2":[B
    const/4 v6, 0x0

    array-length v7, v0

    sub-int v7, v4, v7

    array-length v8, v0

    invoke-static {v0, v6, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 256
    .end local v0    # "arr":[B
    .end local v2    # "arr2":[B
    .local v1, "arr":[B
    :goto_1
    return-object v2

    .line 251
    .end local v1    # "arr":[B
    .restart local v0    # "arr":[B
    :cond_1
    array-length v6, v0

    if-le v6, v4, :cond_2

    .line 254
    const/4 v6, 0x1

    array-length v7, v0

    invoke-static {v0, v6, v7}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :cond_2
    move-object v1, v0

    .end local v0    # "arr":[B
    .restart local v1    # "arr":[B
    move-object v2, v0

    .line 256
    goto :goto_1
.end method

.method public toIntegerPolynomial()Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .locals 1

    .prologue
    .line 1300
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    return-object v0
.end method
