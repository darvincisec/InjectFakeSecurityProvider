.class public Lorg/spongycastle/asn1/DEREnumerated;
.super Lorg/spongycastle/asn1/ASN1Enumerated;
.source "DEREnumerated.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>(Ljava/math/BigInteger;)V

    .line 27
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>([B)V

    .line 18
    return-void
.end method
