.class public Lorg/spongycastle/pqc/asn1/ParSet;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ParSet.java"


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private h:[I

.field private k:[I

.field private t:I

.field private w:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/asn1/ParSet;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(I[I[I[I)V
    .locals 0
    .param p1, "t"    # I
    .param p2, "h"    # [I
    .param p3, "w"    # [I
    .param p4, "k"    # [I

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 78
    iput p1, p0, Lorg/spongycastle/pqc/asn1/ParSet;->t:I

    .line 79
    iput-object p2, p0, Lorg/spongycastle/pqc/asn1/ParSet;->h:[I

    .line 80
    iput-object p3, p0, Lorg/spongycastle/pqc/asn1/ParSet;->w:[I

    .line 81
    iput-object p4, p0, Lorg/spongycastle/pqc/asn1/ParSet;->k:[I

    .line 82
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 8
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 47
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sie of seqOfParams = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 49
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 51
    .local v0, "asn1int":Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/spongycastle/pqc/asn1/ParSet;->checkBigIntegerInIntRangeAndPositive(Ljava/math/BigInteger;)I

    move-result v5

    iput v5, p0, Lorg/spongycastle/pqc/asn1/ParSet;->t:I

    .line 53
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 54
    .local v3, "seqOfPSh":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 55
    .local v4, "seqOfPSw":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 57
    .local v2, "seqOfPSK":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    iget v6, p0, Lorg/spongycastle/pqc/asn1/ParSet;->t:I

    if-ne v5, v6, :cond_1

    .line 58
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    iget v6, p0, Lorg/spongycastle/pqc/asn1/ParSet;->t:I

    if-ne v5, v6, :cond_1

    .line 59
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    iget v6, p0, Lorg/spongycastle/pqc/asn1/ParSet;->t:I

    if-eq v5, v6, :cond_2

    .line 61
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid size of sequences"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 64
    :cond_2
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/spongycastle/pqc/asn1/ParSet;->h:[I

    .line 65
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/spongycastle/pqc/asn1/ParSet;->w:[I

    .line 66
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/spongycastle/pqc/asn1/ParSet;->k:[I

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lorg/spongycastle/pqc/asn1/ParSet;->t:I

    if-ge v1, v5, :cond_3

    .line 70
    iget-object v6, p0, Lorg/spongycastle/pqc/asn1/ParSet;->h:[I

    invoke-virtual {v3, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/pqc/asn1/ParSet;->checkBigIntegerInIntRangeAndPositive(Ljava/math/BigInteger;)I

    move-result v5

    aput v5, v6, v1

    .line 71
    iget-object v6, p0, Lorg/spongycastle/pqc/asn1/ParSet;->w:[I

    invoke-virtual {v4, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/pqc/asn1/ParSet;->checkBigIntegerInIntRangeAndPositive(Ljava/math/BigInteger;)I

    move-result v5

    aput v5, v6, v1

    .line 72
    iget-object v6, p0, Lorg/spongycastle/pqc/asn1/ParSet;->k:[I

    invoke-virtual {v2, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/pqc/asn1/ParSet;->checkBigIntegerInIntRangeAndPositive(Ljava/math/BigInteger;)I

    move-result v5

    aput v5, v6, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_3
    return-void
.end method

.method private static checkBigIntegerInIntRangeAndPositive(Ljava/math/BigInteger;)I
    .locals 3
    .param p0, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 35
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lorg/spongycastle/pqc/asn1/ParSet;->ZERO:Ljava/math/BigInteger;

    .line 36
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BigInteger not in Range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/ParSet;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 86
    instance-of v0, p0, Lorg/spongycastle/pqc/asn1/ParSet;

    if-eqz v0, :cond_0

    .line 88
    check-cast p0, Lorg/spongycastle/pqc/asn1/ParSet;

    .line 95
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 90
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 92
    new-instance v0, Lorg/spongycastle/pqc/asn1/ParSet;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/asn1/ParSet;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 95
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getH()[I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/ParSet;->h:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getK()[I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/ParSet;->k:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getT()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/spongycastle/pqc/asn1/ParSet;->t:I

    return v0
.end method

.method public getW()[I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/ParSet;->w:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 8

    .prologue
    .line 120
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 121
    .local v2, "seqOfPSh":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 122
    .local v3, "seqOfPSw":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 124
    .local v1, "seqOfPSK":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lorg/spongycastle/pqc/asn1/ParSet;->h:[I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 126
    new-instance v5, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v6, p0, Lorg/spongycastle/pqc/asn1/ParSet;->h:[I

    aget v6, v6, v0

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v2, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 127
    new-instance v5, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v6, p0, Lorg/spongycastle/pqc/asn1/ParSet;->w:[I

    aget v6, v6, v0

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 128
    new-instance v5, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v6, p0, Lorg/spongycastle/pqc/asn1/ParSet;->k:[I

    aget v6, v6, v0

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v1, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 133
    .local v4, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v5, Lorg/spongycastle/asn1/ASN1Integer;

    iget v6, p0, Lorg/spongycastle/pqc/asn1/ParSet;->t:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 134
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 135
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 136
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 138
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v5
.end method
