.class public Lorg/spongycastle/asn1/DERUTCTime;
.super Lorg/spongycastle/asn1/ASN1UTCTime;
.source "DERUTCTime.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1UTCTime;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1UTCTime;-><init>(Ljava/util/Date;)V

    .line 19
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1UTCTime;-><init>([B)V

    .line 14
    return-void
.end method
