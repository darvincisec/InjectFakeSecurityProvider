.class public Lorg/spongycastle/asn1/x9/X9ECParameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "X9ECParameters.java"

# interfaces
.implements Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private curve:Lorg/spongycastle/math/ec/ECCurve;

.field private fieldID:Lorg/spongycastle/asn1/x9/X9FieldID;

.field private g:Lorg/spongycastle/asn1/x9/X9ECPoint;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private seed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 37
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 40
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad version in X9ECParameters"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/x9/X9Curve;

    const/4 v2, 0x1

    .line 44
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x9/X9FieldID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9FieldID;

    move-result-object v2

    const/4 v3, 0x2

    .line 45
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x9/X9Curve;-><init>(Lorg/spongycastle/asn1/x9/X9FieldID;Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 47
    .local v1, "x9c":Lorg/spongycastle/asn1/x9/X9Curve;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9Curve;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 48
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 50
    .local v0, "p":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v2, v0, Lorg/spongycastle/asn1/x9/X9ECPoint;

    if-eqz v2, :cond_3

    .line 52
    check-cast v0, Lorg/spongycastle/asn1/x9/X9ECPoint;

    .end local v0    # "p":Lorg/spongycastle/asn1/ASN1Encodable;
    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->g:Lorg/spongycastle/asn1/x9/X9ECPoint;

    .line 59
    :goto_0
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    .line 60
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9Curve;->getSeed()[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->seed:[B

    .line 62
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 64
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    .line 66
    :cond_2
    return-void

    .line 56
    .restart local v0    # "p":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_3
    new-instance v2, Lorg/spongycastle/asn1/x9/X9ECPoint;

    iget-object v3, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    .end local v0    # "p":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-direct {v2, v3, v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/ASN1OctetString;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->g:Lorg/spongycastle/asn1/x9/X9ECPoint;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "g"    # Lorg/spongycastle/asn1/x9/X9ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;

    .prologue
    .line 97
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 7
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "g"    # Lorg/spongycastle/asn1/x9/X9ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;
    .param p5, "seed"    # [B

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 125
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 126
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 127
    iput-object p2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->g:Lorg/spongycastle/asn1/x9/X9ECPoint;

    .line 128
    iput-object p3, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    .line 129
    iput-object p4, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    .line 130
    iput-object p5, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->seed:[B

    .line 132
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    new-instance v2, Lorg/spongycastle/asn1/x9/X9FieldID;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v3

    invoke-interface {v3}, Lorg/spongycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/x9/X9FieldID;-><init>(Ljava/math/BigInteger;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->fieldID:Lorg/spongycastle/asn1/x9/X9FieldID;

    .line 157
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECAlgorithms;->isF2mCurve(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getField()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/math/field/PolynomialExtensionField;

    .line 139
    .local v1, "field":Lorg/spongycastle/math/field/PolynomialExtensionField;
    invoke-interface {v1}, Lorg/spongycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lorg/spongycastle/math/field/Polynomial;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object v0

    .line 140
    .local v0, "exponents":[I
    array-length v2, v0

    if-ne v2, v6, :cond_1

    .line 142
    new-instance v2, Lorg/spongycastle/asn1/x9/X9FieldID;

    aget v3, v0, v5

    aget v4, v0, v4

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/x9/X9FieldID;-><init>(II)V

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->fieldID:Lorg/spongycastle/asn1/x9/X9FieldID;

    goto :goto_0

    .line 144
    :cond_1
    array-length v2, v0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 146
    new-instance v2, Lorg/spongycastle/asn1/x9/X9FieldID;

    const/4 v3, 0x4

    aget v3, v0, v3

    aget v4, v0, v4

    aget v5, v0, v5

    aget v6, v0, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/spongycastle/asn1/x9/X9FieldID;-><init>(IIII)V

    iput-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->fieldID:Lorg/spongycastle/asn1/x9/X9FieldID;

    goto :goto_0

    .line 150
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Only trinomial and pentomial curves are supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    .end local v0    # "exponents":[I
    .end local v1    # "field":Lorg/spongycastle/math/field/PolynomialExtensionField;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'curve\' is of an unsupported type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "g"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x0

    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "g"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;

    .prologue
    .line 106
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6
    .param p1, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p2, "g"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p3, "n"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;
    .param p5, "seed"    # [B

    .prologue
    .line 116
    new-instance v2, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-direct {v2, p2}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 117
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 70
    instance-of v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    if-eqz v0, :cond_0

    .line 72
    check-cast p0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    .line 80
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 75
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 77
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 80
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBaseEntry()Lorg/spongycastle/asn1/x9/X9ECPoint;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->g:Lorg/spongycastle/asn1/x9/X9ECPoint;

    return-object v0
.end method

.method public getCurve()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getCurveEntry()Lorg/spongycastle/asn1/x9/X9Curve;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lorg/spongycastle/asn1/x9/X9Curve;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x9/X9Curve;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    return-object v0
.end method

.method public getFieldIDEntry()Lorg/spongycastle/asn1/x9/X9FieldID;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->fieldID:Lorg/spongycastle/asn1/x9/X9FieldID;

    return-object v0
.end method

.method public getG()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->g:Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->seed:[B

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 229
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 231
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 232
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->fieldID:Lorg/spongycastle/asn1/x9/X9FieldID;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 233
    new-instance v1, Lorg/spongycastle/asn1/x9/X9Curve;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->curve:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v3, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->seed:[B

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/x9/X9Curve;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 234
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->g:Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 235
    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->n:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 237
    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 239
    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->h:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 242
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
