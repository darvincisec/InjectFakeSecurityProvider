.class public Lorg/spongycastle/pqc/asn1/GMSSPrivateKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "GMSSPrivateKey.java"


# instance fields
.field private primitive:Lorg/spongycastle/asn1/ASN1Primitive;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 20
    .param p1, "mtsPrivateKey"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 29
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 30
    .local v10, "indexPart":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v9, v0, [I

    .line 31
    .local v9, "index":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_0

    .line 33
    invoke-virtual {v10, v8}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/spongycastle/pqc/asn1/GMSSPrivateKey;->checkBigIntegerInIntRange(Lorg/spongycastle/asn1/ASN1Encodable;)I

    move-result v18

    aput v18, v9, v8

    .line 31
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 37
    :cond_0
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 38
    .local v6, "curSeedsPart":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v5, v0, [[B

    .line 39
    .local v5, "curSeeds":[[B
    const/4 v8, 0x0

    :goto_1
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_1

    .line 41
    invoke-virtual {v6, v8}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v18

    check-cast v18, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v18

    aput-object v18, v5, v8

    .line 39
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 45
    :cond_1
    const/16 v18, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 46
    .local v16, "nextNextSeedsPart":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v15, v0, [[B

    .line 47
    .local v15, "nextNextSeeds":[[B
    const/4 v8, 0x0

    :goto_2
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_2

    .line 49
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v18

    check-cast v18, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v18

    aput-object v18, v15, v8

    .line 47
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 53
    :cond_2
    const/16 v18, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 56
    .local v3, "curAuthPart0":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v2, v0, [[[B

    .line 57
    .local v2, "curAuth":[[[B
    const/4 v8, 0x0

    :goto_3
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_4

    .line 59
    invoke-virtual {v3, v8}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 60
    .local v4, "curAuthPart1":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [[B

    move-object/from16 v18, v0

    aput-object v18, v2, v8

    .line 61
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    aget-object v18, v2, v8

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_3

    .line 63
    aget-object v19, v2, v8

    invoke-virtual {v4, v11}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v18

    check-cast v18, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v18

    aput-object v18, v19, v11

    .line 61
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 57
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 68
    .end local v4    # "curAuthPart1":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v11    # "j":I
    :cond_4
    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 71
    .local v13, "nextAuthPart0":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v12, v0, [[[B

    .line 72
    .local v12, "nextAuth":[[[B
    const/4 v8, 0x0

    :goto_5
    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    .line 74
    invoke-virtual {v13, v8}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 75
    .local v14, "nextAuthPart1":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v14}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [[B

    move-object/from16 v18, v0

    aput-object v18, v12, v8

    .line 76
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_6
    aget-object v18, v12, v8

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_5

    .line 78
    aget-object v19, v12, v8

    invoke-virtual {v14, v11}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v18

    check-cast v18, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v18

    aput-object v18, v19, v11

    .line 76
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 72
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 83
    .end local v11    # "j":I
    .end local v14    # "nextAuthPart1":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_6
    const/16 v18, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 90
    .local v17, "seqOfcurTreehash0":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v7, v0, [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 651
    .local v7, "curTreehash":[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    return-void
.end method

.method public constructor <init>([I[[B[[B[[[B[[[B[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 24
    .param p1, "index"    # [I
    .param p2, "currentSeed"    # [[B
    .param p3, "nextNextSeed"    # [[B
    .param p4, "currentAuthPath"    # [[[B
    .param p5, "nextAuthPath"    # [[[B
    .param p6, "currentTreehash"    # [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .param p7, "nextTreehash"    # [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .param p8, "currentStack"    # [Ljava/util/Vector;
    .param p9, "nextStack"    # [Ljava/util/Vector;
    .param p10, "currentRetain"    # [[Ljava/util/Vector;
    .param p11, "nextRetain"    # [[Ljava/util/Vector;
    .param p12, "keep"    # [[[B
    .param p13, "nextNextLeaf"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
    .param p14, "upperLeaf"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
    .param p15, "upperTreehashLeaf"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
    .param p16, "minTreehash"    # [I
    .param p17, "nextRoot"    # [[B
    .param p18, "nextNextRoot"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    .param p19, "currentRootSig"    # [[B
    .param p20, "nextRootSig"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;
    .param p21, "gmssParameterset"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;
    .param p22, "digestAlg"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 663
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 664
    const/4 v1, 0x1

    new-array v0, v1, [Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v23, v0

    const/4 v1, 0x0

    aput-object p22, v23, v1

    .local v23, "names":[Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p12

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    .line 665
    invoke-direct/range {v1 .. v23}, Lorg/spongycastle/pqc/asn1/GMSSPrivateKey;->encode([I[[B[[B[[[B[[[B[[[B[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;[Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/spongycastle/pqc/asn1/GMSSPrivateKey;->primitive:Lorg/spongycastle/asn1/ASN1Primitive;

    .line 666
    return-void
.end method

.method private static checkBigIntegerInIntRange(Lorg/spongycastle/asn1/ASN1Encodable;)I
    .locals 4
    .param p0, "a"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 1298
    check-cast p0, Lorg/spongycastle/asn1/ASN1Integer;

    .end local p0    # "a":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 1299
    .local v0, "b":Ljava/math/BigInteger;
    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_0

    const-wide/32 v2, -0x80000000

    .line 1300
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    .line 1302
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BigInteger not in Range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1304
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    return v1
.end method

.method private encode([I[[B[[B[[[B[[[B[[[B[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;[Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 60
    .param p1, "index"    # [I
    .param p2, "currentSeeds"    # [[B
    .param p3, "nextNextSeeds"    # [[B
    .param p4, "currentAuthPaths"    # [[[B
    .param p5, "nextAuthPaths"    # [[[B
    .param p6, "keep"    # [[[B
    .param p7, "currentTreehash"    # [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .param p8, "nextTreehash"    # [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .param p9, "currentStack"    # [Ljava/util/Vector;
    .param p10, "nextStack"    # [Ljava/util/Vector;
    .param p11, "currentRetain"    # [[Ljava/util/Vector;
    .param p12, "nextRetain"    # [[Ljava/util/Vector;
    .param p13, "nextNextLeaf"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
    .param p14, "upperLeaf"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
    .param p15, "upperTreehashLeaf"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;
    .param p16, "minTreehash"    # [I
    .param p17, "nextRoot"    # [[B
    .param p18, "nextNextRoot"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    .param p19, "currentRootSig"    # [[B
    .param p20, "nextRootSig"    # [Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;
    .param p21, "gmssParameterset"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;
    .param p22, "algorithms"    # [Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 713
    new-instance v33, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v33 .. v33}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 716
    .local v33, "result":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v13, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v13}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 717
    .local v13, "indexPart":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_0

    .line 719
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget v58, p1, v12

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v57

    invoke-virtual {v13, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 717
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 721
    :cond_0
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    invoke-direct {v0, v13}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 724
    new-instance v5, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 725
    .local v5, "curSeedsPart":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_1

    .line 727
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p2, v12

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 725
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 729
    :cond_1
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 732
    new-instance v22, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v22 .. v22}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 733
    .local v22, "nextNextSeedsPart":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_2

    .line 735
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p3, v12

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v22

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 733
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 737
    :cond_2
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 740
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 741
    .local v2, "curAuthPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 742
    .local v3, "curAuthPart1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_4

    .line 744
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    aget-object v57, p4, v12

    move-object/from16 v0, v57

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v14, v0, :cond_3

    .line 746
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p4, v12

    aget-object v58, v58, v14

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v57

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 744
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 748
    :cond_3
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 749
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v2    # "curAuthPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 742
    .restart local v2    # "curAuthPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 751
    .end local v14    # "j":I
    :cond_4
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 754
    new-instance v20, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 755
    .local v20, "nextAuthPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v21, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v21 .. v21}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 756
    .local v21, "nextAuthPart1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_5
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_6

    .line 758
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_6
    aget-object v57, p5, v12

    move-object/from16 v0, v57

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v14, v0, :cond_5

    .line 760
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p5, v12

    aget-object v58, v58, v14

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v20

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 758
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 762
    :cond_5
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 763
    new-instance v20, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v20    # "nextAuthPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 756
    .restart local v20    # "nextAuthPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 765
    .end local v14    # "j":I
    :cond_6
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 768
    new-instance v38, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v38 .. v38}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 769
    .local v38, "seqOfTreehash0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v39, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v39 .. v39}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 770
    .local v39, "seqOfTreehash1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 771
    .local v37, "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v34, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 772
    .local v34, "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v35, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v35 .. v35}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 774
    .local v35, "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_7
    move-object/from16 v0, p7

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_a

    .line 776
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_8
    aget-object v57, p7, v12

    move-object/from16 v0, v57

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v14, v0, :cond_9

    .line 778
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    const/16 v58, 0x0

    aget-object v58, p22, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 780
    aget-object v57, p7, v12

    aget-object v57, v57, v14

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v57

    const/16 v58, 0x1

    aget v54, v57, v58

    .line 782
    .local v54, "tailLength":I
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p7, v12

    aget-object v58, v58, v14

    .line 783
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x0

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 782
    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 784
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p7, v12

    aget-object v58, v58, v14

    .line 785
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x1

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 784
    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 786
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p7, v12

    aget-object v58, v58, v14

    .line 787
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x2

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 786
    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 788
    const/4 v15, 0x0

    .local v15, "k":I
    :goto_9
    move/from16 v0, v54

    if-ge v15, v0, :cond_7

    .line 790
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p7, v12

    aget-object v58, v58, v14

    .line 791
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v58

    add-int/lit8 v59, v15, 0x3

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 790
    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 788
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 793
    :cond_7
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 794
    new-instance v34, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 796
    .restart local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p7, v12

    aget-object v58, v58, v14

    .line 797
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x0

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 796
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 798
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 799
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p7, v12

    aget-object v58, v58, v14

    .line 800
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x2

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 799
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 801
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p7, v12

    aget-object v58, v58, v14

    .line 802
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x3

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 801
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 803
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p7, v12

    aget-object v58, v58, v14

    .line 804
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x4

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 803
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 805
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p7, v12

    aget-object v58, v58, v14

    .line 806
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x5

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 805
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 807
    const/4 v15, 0x0

    :goto_a
    move/from16 v0, v54

    if-ge v15, v0, :cond_8

    .line 809
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p7, v12

    aget-object v58, v58, v14

    .line 810
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    add-int/lit8 v59, v15, 0x6

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 809
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 807
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 812
    :cond_8
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 813
    new-instance v35, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v35 .. v35}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 815
    .restart local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 816
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 776
    .restart local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8

    .line 818
    .end local v15    # "k":I
    .end local v54    # "tailLength":I
    :cond_9
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 819
    new-instance v39, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v39    # "seqOfTreehash1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v39 .. v39}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 774
    .restart local v39    # "seqOfTreehash1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 821
    .end local v14    # "j":I
    :cond_a
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 824
    new-instance v38, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v38    # "seqOfTreehash0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v38 .. v38}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 825
    .restart local v38    # "seqOfTreehash0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v39, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v39    # "seqOfTreehash1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v39 .. v39}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 826
    .restart local v39    # "seqOfTreehash1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 827
    .restart local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v34, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 828
    .restart local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v35, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v35 .. v35}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 830
    .restart local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_b
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_e

    .line 832
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_c
    aget-object v57, p8, v12

    move-object/from16 v0, v57

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v14, v0, :cond_d

    .line 834
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    const/16 v58, 0x0

    aget-object v58, p22, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 836
    aget-object v57, p8, v12

    aget-object v57, v57, v14

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v57

    const/16 v58, 0x1

    aget v54, v57, v58

    .line 838
    .restart local v54    # "tailLength":I
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p8, v12

    aget-object v58, v58, v14

    .line 839
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x0

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 838
    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 840
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p8, v12

    aget-object v58, v58, v14

    .line 841
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x1

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 840
    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 842
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p8, v12

    aget-object v58, v58, v14

    .line 843
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x2

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 842
    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 844
    const/4 v15, 0x0

    .restart local v15    # "k":I
    :goto_d
    move/from16 v0, v54

    if-ge v15, v0, :cond_b

    .line 846
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p8, v12

    aget-object v58, v58, v14

    .line 847
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v58

    add-int/lit8 v59, v15, 0x3

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 846
    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 844
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 849
    :cond_b
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 850
    new-instance v34, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 852
    .restart local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p8, v12

    aget-object v58, v58, v14

    .line 853
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x0

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 854
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 855
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p8, v12

    aget-object v58, v58, v14

    .line 856
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x2

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 857
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p8, v12

    aget-object v58, v58, v14

    .line 858
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x3

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 859
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p8, v12

    aget-object v58, v58, v14

    .line 860
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x4

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 861
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p8, v12

    aget-object v58, v58, v14

    .line 862
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x5

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 863
    const/4 v15, 0x0

    :goto_e
    move/from16 v0, v54

    if-ge v15, v0, :cond_c

    .line 865
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p8, v12

    aget-object v58, v58, v14

    .line 866
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    add-int/lit8 v59, v15, 0x6

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 865
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 863
    add-int/lit8 v15, v15, 0x1

    goto :goto_e

    .line 868
    :cond_c
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 869
    new-instance v35, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v35 .. v35}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 871
    .restart local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 872
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 832
    .restart local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_c

    .line 874
    .end local v15    # "k":I
    .end local v54    # "tailLength":I
    :cond_d
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    new-instance v58, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v58

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 875
    new-instance v39, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v39    # "seqOfTreehash1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v39 .. v39}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 830
    .restart local v39    # "seqOfTreehash1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_b

    .line 877
    .end local v14    # "j":I
    :cond_e
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 880
    new-instance v16, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 881
    .local v16, "keepPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v17, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 882
    .local v17, "keepPart1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_f
    move-object/from16 v0, p6

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_10

    .line 884
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_10
    aget-object v57, p6, v12

    move-object/from16 v0, v57

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v14, v0, :cond_f

    .line 886
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p6, v12

    aget-object v58, v58, v14

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v16

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 884
    add-int/lit8 v14, v14, 0x1

    goto :goto_10

    .line 888
    :cond_f
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 889
    new-instance v16, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v16    # "keepPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 882
    .restart local v16    # "keepPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 891
    .end local v14    # "j":I
    :cond_10
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 894
    new-instance v6, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 895
    .local v6, "curStackPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v7, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 896
    .local v7, "curStackPart1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_11
    move-object/from16 v0, p9

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_12

    .line 898
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_12
    aget-object v57, p9, v12

    invoke-virtual/range {v57 .. v57}, Ljava/util/Vector;->size()I

    move-result v57

    move/from16 v0, v57

    if-ge v14, v0, :cond_11

    .line 900
    new-instance v58, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v57, p9, v12

    .line 901
    move-object/from16 v0, v57

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, [B

    check-cast v57, [B

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 900
    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 898
    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    .line 903
    :cond_11
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    invoke-direct {v0, v6}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v57

    invoke-virtual {v7, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 904
    new-instance v6, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v6    # "curStackPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct {v6}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 896
    .restart local v6    # "curStackPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 906
    .end local v14    # "j":I
    :cond_12
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    invoke-direct {v0, v7}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 909
    new-instance v27, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v27 .. v27}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 910
    .local v27, "nextStackPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v28, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v28 .. v28}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 911
    .local v28, "nextStackPart1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_13
    move-object/from16 v0, p10

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_14

    .line 913
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_14
    aget-object v57, p10, v12

    invoke-virtual/range {v57 .. v57}, Ljava/util/Vector;->size()I

    move-result v57

    move/from16 v0, v57

    if-ge v14, v0, :cond_13

    .line 915
    new-instance v58, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v57, p10, v12

    .line 916
    move-object/from16 v0, v57

    invoke-virtual {v0, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, [B

    check-cast v57, [B

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 915
    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 913
    add-int/lit8 v14, v14, 0x1

    goto :goto_14

    .line 918
    :cond_13
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 919
    new-instance v27, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v27    # "nextStackPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v27 .. v27}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 911
    .restart local v27    # "nextStackPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    .line 921
    .end local v14    # "j":I
    :cond_14
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 924
    new-instance v8, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 925
    .local v8, "currentRetainPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v9, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 926
    .local v9, "currentRetainPart1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v10, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 927
    .local v10, "currentRetainPart2":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_15
    move-object/from16 v0, p11

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_17

    .line 929
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_16
    aget-object v57, p11, v12

    move-object/from16 v0, v57

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v14, v0, :cond_16

    .line 931
    const/4 v15, 0x0

    .restart local v15    # "k":I
    :goto_17
    aget-object v57, p11, v12

    aget-object v57, v57, v14

    invoke-virtual/range {v57 .. v57}, Ljava/util/Vector;->size()I

    move-result v57

    move/from16 v0, v57

    if-ge v15, v0, :cond_15

    .line 933
    new-instance v58, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v57, p11, v12

    aget-object v57, v57, v14

    .line 934
    move-object/from16 v0, v57

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, [B

    check-cast v57, [B

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 933
    move-object/from16 v0, v58

    invoke-virtual {v8, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 931
    add-int/lit8 v15, v15, 0x1

    goto :goto_17

    .line 936
    :cond_15
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    invoke-direct {v0, v8}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v57

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 937
    new-instance v8, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v8    # "currentRetainPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct {v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 929
    .restart local v8    # "currentRetainPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v14, v14, 0x1

    goto :goto_16

    .line 939
    .end local v15    # "k":I
    :cond_16
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    invoke-direct {v0, v9}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v57

    invoke-virtual {v10, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 940
    new-instance v9, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v9    # "currentRetainPart1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct {v9}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 927
    .restart local v9    # "currentRetainPart1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    .line 942
    .end local v14    # "j":I
    :cond_17
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    invoke-direct {v0, v10}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 945
    new-instance v23, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v23 .. v23}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 946
    .local v23, "nextRetainPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v24, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v24 .. v24}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 947
    .local v24, "nextRetainPart1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v25, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v25 .. v25}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 948
    .local v25, "nextRetainPart2":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_18
    move-object/from16 v0, p12

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_1a

    .line 950
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_19
    aget-object v57, p12, v12

    move-object/from16 v0, v57

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v14, v0, :cond_19

    .line 952
    const/4 v15, 0x0

    .restart local v15    # "k":I
    :goto_1a
    aget-object v57, p12, v12

    aget-object v57, v57, v14

    invoke-virtual/range {v57 .. v57}, Ljava/util/Vector;->size()I

    move-result v57

    move/from16 v0, v57

    if-ge v15, v0, :cond_18

    .line 954
    new-instance v58, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v57, p12, v12

    aget-object v57, v57, v14

    .line 955
    move-object/from16 v0, v57

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, [B

    check-cast v57, [B

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 954
    move-object/from16 v0, v23

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 952
    add-int/lit8 v15, v15, 0x1

    goto :goto_1a

    .line 957
    :cond_18
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 958
    new-instance v23, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v23    # "nextRetainPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v23 .. v23}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 950
    .restart local v23    # "nextRetainPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v14, v14, 0x1

    goto :goto_19

    .line 960
    .end local v15    # "k":I
    :cond_19
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 961
    new-instance v24, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v24    # "nextRetainPart1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v24 .. v24}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 948
    .restart local v24    # "nextRetainPart1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    .line 963
    .end local v14    # "j":I
    :cond_1a
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 966
    new-instance v36, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 967
    .local v36, "seqOfLeaf":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 968
    .restart local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v34, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 969
    .restart local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v35, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v35 .. v35}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 971
    .restart local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_1b
    move-object/from16 v0, p13

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_1b

    .line 973
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    const/16 v58, 0x0

    aget-object v58, p22, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 975
    aget-object v57, p13, v12

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v55

    .line 976
    .local v55, "tempByte":[[B
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    const/16 v58, 0x0

    aget-object v58, v55, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 977
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    const/16 v58, 0x1

    aget-object v58, v55, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 978
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    const/16 v58, 0x2

    aget-object v58, v55, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 979
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    const/16 v58, 0x3

    aget-object v58, v55, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 980
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 981
    new-instance v34, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 983
    .restart local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    aget-object v57, p13, v12

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v56

    .line 984
    .local v56, "tempInt":[I
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    const/16 v58, 0x0

    aget v58, v56, v58

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 985
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    const/16 v58, 0x1

    aget v58, v56, v58

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 986
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    const/16 v58, 0x2

    aget v58, v56, v58

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 987
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    const/16 v58, 0x3

    aget v58, v56, v58

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 988
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 989
    new-instance v35, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v35 .. v35}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 991
    .restart local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 992
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 971
    .restart local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1b

    .line 994
    .end local v55    # "tempByte":[[B
    .end local v56    # "tempInt":[I
    :cond_1b
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 997
    new-instance v40, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v40 .. v40}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 998
    .local v40, "seqOfUpperLeaf":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 999
    .restart local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v34, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1000
    .restart local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v35, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v35 .. v35}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1002
    .restart local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_1c
    move-object/from16 v0, p14

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_1c

    .line 1004
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    const/16 v58, 0x0

    aget-object v58, p22, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1006
    aget-object v57, p14, v12

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v55

    .line 1007
    .restart local v55    # "tempByte":[[B
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    const/16 v58, 0x0

    aget-object v58, v55, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1008
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    const/16 v58, 0x1

    aget-object v58, v55, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1009
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    const/16 v58, 0x2

    aget-object v58, v55, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1010
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    const/16 v58, 0x3

    aget-object v58, v55, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1011
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1012
    new-instance v34, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1014
    .restart local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    aget-object v57, p14, v12

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v56

    .line 1015
    .restart local v56    # "tempInt":[I
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    const/16 v58, 0x0

    aget v58, v56, v58

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1016
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    const/16 v58, 0x1

    aget v58, v56, v58

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1017
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    const/16 v58, 0x2

    aget v58, v56, v58

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1018
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    const/16 v58, 0x3

    aget v58, v56, v58

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1019
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1020
    new-instance v35, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v35 .. v35}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1022
    .restart local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1023
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1002
    .restart local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1c

    .line 1025
    .end local v55    # "tempByte":[[B
    .end local v56    # "tempInt":[I
    :cond_1c
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1028
    new-instance v41, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v41 .. v41}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1029
    .local v41, "seqOfUpperTreehashLeaf":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1030
    .restart local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v34, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1031
    .restart local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v35, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v35 .. v35}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1033
    .restart local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_1d
    move-object/from16 v0, p15

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_1d

    .line 1035
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    const/16 v58, 0x0

    aget-object v58, p22, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1037
    aget-object v57, p15, v12

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v55

    .line 1038
    .restart local v55    # "tempByte":[[B
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    const/16 v58, 0x0

    aget-object v58, v55, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1039
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    const/16 v58, 0x1

    aget-object v58, v55, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1040
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    const/16 v58, 0x2

    aget-object v58, v55, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1041
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    const/16 v58, 0x3

    aget-object v58, v55, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1042
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1043
    new-instance v34, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1045
    .restart local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    aget-object v57, p15, v12

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v56

    .line 1046
    .restart local v56    # "tempInt":[I
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    const/16 v58, 0x0

    aget v58, v56, v58

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1047
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    const/16 v58, 0x1

    aget v58, v56, v58

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1048
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    const/16 v58, 0x2

    aget v58, v56, v58

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1049
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    const/16 v58, 0x3

    aget v58, v56, v58

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1050
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1051
    new-instance v35, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v35 .. v35}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1053
    .restart local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1054
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1033
    .restart local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1d

    .line 1056
    .end local v55    # "tempByte":[[B
    .end local v56    # "tempInt":[I
    :cond_1d
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1059
    new-instance v18, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v18 .. v18}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1060
    .local v18, "minTreehashPart":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_1e
    move-object/from16 v0, p16

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_1e

    .line 1062
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget v58, p16, v12

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1060
    add-int/lit8 v12, v12, 0x1

    goto :goto_1e

    .line 1064
    :cond_1e
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1067
    new-instance v26, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v26 .. v26}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1068
    .local v26, "nextRootPart":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_1f
    move-object/from16 v0, p17

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_1f

    .line 1070
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p17, v12

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v26

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1068
    add-int/lit8 v12, v12, 0x1

    goto :goto_1f

    .line 1072
    :cond_1f
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1075
    new-instance v46, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1076
    .local v46, "seqOfnextNextRoot":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v51, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v51 .. v51}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1077
    .local v51, "seqOfnnRStats":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v52, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v52 .. v52}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1078
    .local v52, "seqOfnnRStrings":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v48, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v48 .. v48}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1079
    .local v48, "seqOfnnRBytes":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v49, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v49 .. v49}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1080
    .local v49, "seqOfnnRInts":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v53, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v53 .. v53}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1081
    .local v53, "seqOfnnRTreehash":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v50, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v50 .. v50}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1083
    .local v50, "seqOfnnRRetain":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_20
    move-object/from16 v0, p18

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_29

    .line 1085
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    const/16 v58, 0x0

    aget-object v58, p22, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1086
    new-instance v52, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v52    # "seqOfnnRStrings":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v52 .. v52}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1088
    .restart local v52    # "seqOfnnRStrings":Lorg/spongycastle/asn1/ASN1EncodableVector;
    aget-object v57, p18, v12

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v57

    const/16 v58, 0x0

    aget v11, v57, v58

    .line 1089
    .local v11, "heightOfTree":I
    aget-object v57, p18, v12

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v57

    const/16 v58, 0x7

    aget v54, v57, v58

    .line 1091
    .restart local v54    # "tailLength":I
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p18, v12

    .line 1092
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x0

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 1091
    move-object/from16 v0, v48

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1093
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_21
    if-ge v14, v11, :cond_20

    .line 1095
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p18, v12

    .line 1096
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v58

    add-int/lit8 v59, v14, 0x1

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 1095
    move-object/from16 v0, v48

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1093
    add-int/lit8 v14, v14, 0x1

    goto :goto_21

    .line 1098
    :cond_20
    const/4 v14, 0x0

    :goto_22
    move/from16 v0, v54

    if-ge v14, v0, :cond_21

    .line 1100
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p18, v12

    .line 1101
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v58

    add-int/lit8 v59, v11, 0x1

    add-int v59, v59, v14

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 1100
    move-object/from16 v0, v48

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1098
    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    .line 1104
    :cond_21
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1105
    new-instance v48, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v48    # "seqOfnnRBytes":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v48 .. v48}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1107
    .restart local v48    # "seqOfnnRBytes":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v0, v11

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v49

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1108
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p18, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x1

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v49

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1109
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p18, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x2

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v49

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1110
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p18, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x3

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v49

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1111
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p18, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x4

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v49

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1112
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p18, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x5

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v49

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1113
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p18, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x6

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v49

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1114
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v49

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1115
    const/4 v14, 0x0

    :goto_23
    if-ge v14, v11, :cond_22

    .line 1117
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p18, v12

    .line 1118
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v58

    add-int/lit8 v59, v14, 0x8

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1117
    move-object/from16 v0, v49

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1115
    add-int/lit8 v14, v14, 0x1

    goto :goto_23

    .line 1120
    :cond_22
    const/4 v14, 0x0

    :goto_24
    move/from16 v0, v54

    if-ge v14, v0, :cond_23

    .line 1122
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p18, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v58

    add-int/lit8 v59, v11, 0x8

    add-int v59, v59, v14

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v49

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1120
    add-int/lit8 v14, v14, 0x1

    goto :goto_24

    .line 1126
    :cond_23
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1127
    new-instance v49, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v49    # "seqOfnnRInts":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v49 .. v49}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1131
    .restart local v49    # "seqOfnnRInts":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1132
    .restart local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v34, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1133
    .restart local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v35, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v35 .. v35}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1135
    .restart local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    aget-object v57, p18, v12

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v57

    if-eqz v57, :cond_26

    .line 1137
    const/4 v14, 0x0

    :goto_25
    aget-object v57, p18, v12

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v57

    move-object/from16 v0, v57

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v14, v0, :cond_26

    .line 1139
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    const/16 v58, 0x0

    aget-object v58, p22, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1141
    aget-object v57, p18, v12

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v57

    aget-object v57, v57, v14

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v57

    const/16 v58, 0x1

    aget v54, v57, v58

    .line 1143
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p18, v12

    .line 1144
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v58

    aget-object v58, v58, v14

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x0

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 1143
    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1145
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p18, v12

    .line 1146
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v58

    aget-object v58, v58, v14

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x1

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 1145
    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1147
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p18, v12

    .line 1148
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v58

    aget-object v58, v58, v14

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x2

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 1147
    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1149
    const/4 v15, 0x0

    .restart local v15    # "k":I
    :goto_26
    move/from16 v0, v54

    if-ge v15, v0, :cond_24

    .line 1151
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p18, v12

    .line 1152
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v58

    aget-object v58, v58, v14

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v58

    add-int/lit8 v59, v15, 0x3

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 1151
    move-object/from16 v0, v34

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1149
    add-int/lit8 v15, v15, 0x1

    goto :goto_26

    .line 1154
    :cond_24
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1155
    new-instance v34, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v34 .. v34}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1157
    .restart local v34    # "seqOfByte":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p18, v12

    .line 1158
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v58

    aget-object v58, v58, v14

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x0

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1157
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1159
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1160
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p18, v12

    .line 1161
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v58

    aget-object v58, v58, v14

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x2

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1160
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1162
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p18, v12

    .line 1163
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v58

    aget-object v58, v58, v14

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x3

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1162
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1164
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p18, v12

    .line 1165
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v58

    aget-object v58, v58, v14

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x4

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1164
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1166
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p18, v12

    .line 1167
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v58

    aget-object v58, v58, v14

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x5

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1166
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1168
    const/4 v15, 0x0

    :goto_27
    move/from16 v0, v54

    if-ge v15, v0, :cond_25

    .line 1170
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p18, v12

    .line 1171
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v58

    aget-object v58, v58, v14

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v58

    add-int/lit8 v59, v15, 0x6

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1170
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1168
    add-int/lit8 v15, v15, 0x1

    goto :goto_27

    .line 1173
    :cond_25
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1174
    new-instance v35, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v35 .. v35}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1176
    .restart local v35    # "seqOfInt":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v53

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1177
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1137
    .restart local v37    # "seqOfStat":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_25

    .line 1181
    .end local v15    # "k":I
    :cond_26
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1182
    new-instance v53, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v53    # "seqOfnnRTreehash":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v53 .. v53}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1187
    .restart local v53    # "seqOfnnRTreehash":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v8, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v8    # "currentRetainPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct {v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1188
    .restart local v8    # "currentRetainPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    aget-object v57, p18, v12

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v57

    if-eqz v57, :cond_28

    .line 1190
    const/4 v14, 0x0

    :goto_28
    aget-object v57, p18, v12

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v57

    move-object/from16 v0, v57

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v14, v0, :cond_28

    .line 1192
    const/4 v15, 0x0

    .restart local v15    # "k":I
    :goto_29
    aget-object v57, p18, v12

    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v57

    aget-object v57, v57, v14

    invoke-virtual/range {v57 .. v57}, Ljava/util/Vector;->size()I

    move-result v57

    move/from16 v0, v57

    if-ge v15, v0, :cond_27

    .line 1194
    new-instance v58, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v57, p18, v12

    .line 1195
    invoke-virtual/range {v57 .. v57}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v57

    aget-object v57, v57, v14

    .line 1196
    move-object/from16 v0, v57

    invoke-virtual {v0, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, [B

    check-cast v57, [B

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 1194
    move-object/from16 v0, v58

    invoke-virtual {v8, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1192
    add-int/lit8 v15, v15, 0x1

    goto :goto_29

    .line 1198
    :cond_27
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    invoke-direct {v0, v8}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v50

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1199
    new-instance v8, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v8    # "currentRetainPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct {v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1190
    .restart local v8    # "currentRetainPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v14, v14, 0x1

    goto :goto_28

    .line 1203
    .end local v15    # "k":I
    :cond_28
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v51

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1204
    new-instance v50, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v50    # "seqOfnnRRetain":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v50 .. v50}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1206
    .restart local v50    # "seqOfnnRRetain":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v46

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1207
    new-instance v51, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v51    # "seqOfnnRStats":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v51 .. v51}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1083
    .restart local v51    # "seqOfnnRStats":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_20

    .line 1209
    .end local v11    # "heightOfTree":I
    .end local v14    # "j":I
    .end local v54    # "tailLength":I
    :cond_29
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1212
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1213
    .local v4, "curRootSigPart":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_2a
    move-object/from16 v0, p19

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_2a

    .line 1215
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p19, v12

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1213
    add-int/lit8 v12, v12, 0x1

    goto :goto_2a

    .line 1217
    :cond_2a
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1220
    new-instance v47, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v47 .. v47}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1221
    .local v47, "seqOfnextRootSigs":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v44, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v44 .. v44}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1222
    .local v44, "seqOfnRSStats":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v45, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v45 .. v45}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1223
    .local v45, "seqOfnRSStrings":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v42, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v42 .. v42}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1224
    .local v42, "seqOfnRSBytes":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v43, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v43 .. v43}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1226
    .local v43, "seqOfnRSInts":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_2b
    move-object/from16 v0, p20

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_2b

    .line 1228
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    const/16 v58, 0x0

    aget-object v58, p22, v58

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v44

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1229
    new-instance v45, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v45    # "seqOfnRSStrings":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v45 .. v45}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1231
    .restart local v45    # "seqOfnRSStrings":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p20, v12

    .line 1232
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x0

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 1231
    move-object/from16 v0, v42

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1233
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p20, v12

    .line 1234
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x1

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 1233
    move-object/from16 v0, v42

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1235
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p20, v12

    .line 1236
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x2

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 1235
    move-object/from16 v0, v42

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1237
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p20, v12

    .line 1238
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x3

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 1237
    move-object/from16 v0, v42

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1239
    new-instance v57, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v58, p20, v12

    .line 1240
    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v58

    const/16 v59, 0x4

    aget-object v58, v58, v59

    invoke-direct/range {v57 .. v58}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 1239
    move-object/from16 v0, v42

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1242
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v44

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1243
    new-instance v42, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v42    # "seqOfnRSBytes":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v42 .. v42}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1245
    .restart local v42    # "seqOfnRSBytes":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p20, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x0

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1246
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p20, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x1

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1247
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p20, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x2

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1248
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p20, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x3

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1249
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p20, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x4

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1250
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p20, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x5

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1251
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p20, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x6

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1252
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p20, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x7

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1253
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v58, p20, v12

    invoke-virtual/range {v58 .. v58}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v58

    const/16 v59, 0x8

    aget v58, v58, v59

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v43

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1255
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v44

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1256
    new-instance v43, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v43    # "seqOfnRSInts":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v43 .. v43}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1258
    .restart local v43    # "seqOfnRSInts":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v47

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1259
    new-instance v44, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v44    # "seqOfnRSStats":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v44 .. v44}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1226
    .restart local v44    # "seqOfnRSStats":Lorg/spongycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2b

    .line 1261
    :cond_2b
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1264
    new-instance v29, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v29 .. v29}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1265
    .local v29, "parSetPart0":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v30, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v30 .. v30}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1266
    .local v30, "parSetPart1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v31, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v31 .. v31}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1267
    .local v31, "parSetPart2":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v32, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v32 .. v32}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1269
    .local v32, "parSetPart3":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_2c
    invoke-virtual/range {p21 .. p21}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v57

    move-object/from16 v0, v57

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_2c

    .line 1271
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    .line 1272
    invoke-virtual/range {p21 .. p21}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v58

    aget v58, v58, v12

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1271
    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1273
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    .line 1274
    invoke-virtual/range {p21 .. p21}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v58

    aget v58, v58, v12

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    .line 1273
    move-object/from16 v0, v31

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1275
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual/range {p21 .. p21}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v58

    aget v58, v58, v12

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v32

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1269
    add-int/lit8 v12, v12, 0x1

    goto :goto_2c

    .line 1277
    :cond_2c
    new-instance v57, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual/range {p21 .. p21}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v58

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    invoke-direct/range {v57 .. v59}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1278
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1279
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1280
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1281
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1284
    new-instance v19, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1286
    .local v19, "namesPart":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v12, 0x0

    :goto_2d
    move-object/from16 v0, p22

    array-length v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    if-ge v12, v0, :cond_2d

    .line 1288
    aget-object v57, p22, v12

    move-object/from16 v0, v19

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1286
    add-int/lit8 v12, v12, 0x1

    goto :goto_2d

    .line 1291
    :cond_2d
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1292
    new-instance v57, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v57

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v57
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/GMSSPrivateKey;->primitive:Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method
