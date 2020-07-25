.class public Lorg/spongycastle/asn1/x9/X9FieldElement;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "X9FieldElement.java"


# static fields
.field private static converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;


# instance fields
.field protected f:Lorg/spongycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/x9/X9FieldElement;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    return-void
.end method

.method public constructor <init>(IIIILorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 6
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I
    .param p5, "s"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 33
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    new-instance v5, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p5}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v5, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(IIIILjava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 4
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "s"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 28
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$Fp;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "f"    # Lorg/spongycastle/math/ec/ECFieldElement;

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9FieldElement;->f:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 24
    return-void
.end method


# virtual methods
.method public getValue()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9FieldElement;->f:Lorg/spongycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 59
    sget-object v2, Lorg/spongycastle/asn1/x9/X9FieldElement;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    iget-object v3, p0, Lorg/spongycastle/asn1/x9/X9FieldElement;->f:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lorg/spongycastle/math/ec/ECFieldElement;)I

    move-result v0

    .line 60
    .local v0, "byteCount":I
    sget-object v2, Lorg/spongycastle/asn1/x9/X9FieldElement;->converter:Lorg/spongycastle/asn1/x9/X9IntegerConverter;

    iget-object v3, p0, Lorg/spongycastle/asn1/x9/X9FieldElement;->f:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/spongycastle/asn1/x9/X9IntegerConverter;->integerToBytes(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 62
    .local v1, "paddedBigInteger":[B
    new-instance v2, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object v2
.end method
