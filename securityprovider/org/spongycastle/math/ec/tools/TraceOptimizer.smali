.class public Lorg/spongycastle/math/ec/tools/TraceOptimizer;
.super Ljava/lang/Object;
.source "TraceOptimizer.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final R:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/ec/tools/TraceOptimizer;->ONE:Ljava/math/BigInteger;

    .line 23
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/spongycastle/math/ec/tools/TraceOptimizer;->R:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateTrace(Lorg/spongycastle/math/ec/ECFieldElement;)I
    .locals 6
    .param p0, "fe"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v2

    .line 115
    .local v2, "m":I
    move-object v3, p0

    .line 116
    .local v3, "tr":Lorg/spongycastle/math/ec/ECFieldElement;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 118
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p0

    .line 119
    invoke-virtual {v3, p0}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 122
    .local v0, "b":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 124
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 126
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    return v4
.end method

.method private static enumToList(Ljava/util/Enumeration;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "en"    # Ljava/util/Enumeration;

    .prologue
    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "rv":Ljava/util/ArrayList;
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_0
    return-object v0
.end method

.method public static implPrintNonZeroTraceBits(Lorg/spongycastle/asn1/x9/X9ECParameters;)V
    .locals 14
    .param p0, "x9"    # Lorg/spongycastle/asn1/x9/X9ECParameters;

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 60
    .local v1, "c":Lorg/spongycastle/math/ec/ECCurve;
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v6

    .line 62
    .local v6, "m":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v7, "nonZeroTraceBits":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 72
    sget-object v11, Lorg/spongycastle/math/ec/tools/TraceOptimizer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 73
    .local v10, "zi":Ljava/math/BigInteger;
    invoke-virtual {v1, v10}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 74
    .local v3, "fe":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-static {v3}, Lorg/spongycastle/math/ec/tools/TraceOptimizer;->calculateTrace(Lorg/spongycastle/math/ec/ECFieldElement;)I

    move-result v8

    .line 75
    .local v8, "tr":I
    if-eqz v8, :cond_0

    .line 77
    invoke-static {v4}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 70
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .end local v3    # "fe":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v8    # "tr":I
    .end local v10    # "zi":Ljava/math/BigInteger;
    :cond_1
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11}, Ljava/io/PrintStream;->println()V

    .line 88
    const/4 v4, 0x0

    :goto_1
    const/16 v11, 0x3e8

    if-ge v4, v11, :cond_5

    .line 90
    new-instance v9, Ljava/math/BigInteger;

    sget-object v11, Lorg/spongycastle/math/ec/tools/TraceOptimizer;->R:Ljava/security/SecureRandom;

    invoke-direct {v9, v6, v11}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 91
    .local v9, "x":Ljava/math/BigInteger;
    invoke-virtual {v1, v9}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 92
    .restart local v3    # "fe":Lorg/spongycastle/math/ec/ECFieldElement;
    invoke-static {v3}, Lorg/spongycastle/math/ec/tools/TraceOptimizer;->calculateTrace(Lorg/spongycastle/math/ec/ECFieldElement;)I

    move-result v2

    .line 94
    .local v2, "check":I
    const/4 v8, 0x0

    .line 95
    .restart local v8    # "tr":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 97
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 98
    .local v0, "bit":I
    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 100
    xor-int/lit8 v8, v8, 0x1

    .line 95
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 104
    .end local v0    # "bit":I
    :cond_3
    if-eq v2, v8, :cond_4

    .line 106
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Optimized-trace sanity check failed"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 88
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    .end local v2    # "check":I
    .end local v3    # "fe":Lorg/spongycastle/math/ec/ECFieldElement;
    .end local v5    # "j":I
    .end local v8    # "tr":I
    .end local v9    # "x":Ljava/math/BigInteger;
    :cond_5
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 27
    new-instance v2, Ljava/util/TreeSet;

    invoke-static {}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getNames()Ljava/util/Enumeration;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/math/ec/tools/TraceOptimizer;->enumToList(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 28
    .local v2, "names":Ljava/util/SortedSet;
    invoke-static {}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->getNames()Ljava/util/Enumeration;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/math/ec/tools/TraceOptimizer;->enumToList(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 31
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v3

    .line 35
    .local v3, "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    if-nez v3, :cond_1

    .line 37
    invoke-static {v1}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getByName(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v3

    .line 39
    :cond_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/math/ec/ECAlgorithms;->isF2mCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 42
    invoke-static {v3}, Lorg/spongycastle/math/ec/tools/TraceOptimizer;->implPrintNonZeroTraceBits(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    goto :goto_0

    .line 45
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "x9":Lorg/spongycastle/asn1/x9/X9ECParameters;
    :cond_2
    return-void
.end method

.method public static printNonZeroTraceBits(Lorg/spongycastle/asn1/x9/X9ECParameters;)V
    .locals 2
    .param p0, "x9"    # Lorg/spongycastle/asn1/x9/X9ECParameters;

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->isF2mCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trace only defined over characteristic-2 fields"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/math/ec/tools/TraceOptimizer;->implPrintNonZeroTraceBits(Lorg/spongycastle/asn1/x9/X9ECParameters;)V

    .line 55
    return-void
.end method
