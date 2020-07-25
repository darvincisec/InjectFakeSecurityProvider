.class public Lorg/spongycastle/asn1/cmc/BodyPartID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "BodyPartID.java"


# static fields
.field public static final bodyIdMax:J = 0xffffffffL


# instance fields
.field private final id:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    iput-wide p1, p0, Lorg/spongycastle/asn1/cmc/BodyPartID;->id:J

    .line 31
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;)V
    .locals 2
    .param p1, "id"    # Lorg/spongycastle/asn1/ASN1Integer;

    .prologue
    .line 44
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/BodyPartID;->convert(Ljava/math/BigInteger;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/cmc/BodyPartID;-><init>(J)V

    .line 45
    return-void
.end method

.method private static convert(Ljava/math/BigInteger;)J
    .locals 2
    .param p0, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartID;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 49
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartID;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Lorg/spongycastle/asn1/cmc/BodyPartID;

    .line 59
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 54
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/cmc/BodyPartID;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/BodyPartID;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    move-object p0, v0

    goto :goto_0

    .line 59
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getID()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartID;->id:J

    return-wide v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget-wide v2, p0, Lorg/spongycastle/asn1/cmc/BodyPartID;->id:J

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v0
.end method
