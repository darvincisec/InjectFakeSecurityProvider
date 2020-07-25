.class public Lorg/spongycastle/asn1/DERBoolean;
.super Lorg/spongycastle/asn1/ASN1Boolean;
.source "DERBoolean.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>(Z)V

    .line 16
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "value"    # [B

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Boolean;-><init>([B)V

    .line 21
    return-void
.end method
