.class public Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ExtendedFailInfo.java"


# instance fields
.field private final failInfoOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private final failInfoValue:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "failInfoOID"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "failInfoValue"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;->failInfoOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 26
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;->failInfoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 27
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "s"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence must be 2 elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;->failInfoOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;->failInfoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 38
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 42
    instance-of v1, p0, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;

    if-eqz v1, :cond_0

    .line 44
    check-cast p0, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;

    .line 62
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 47
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_1

    .line 49
    check-cast p0, Lorg/spongycastle/asn1/ASN1Encodable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 50
    .local v0, "asn1Value":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 52
    new-instance p0, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local v0    # "asn1Value":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    goto :goto_0

    .line 57
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, [B

    if-eqz v1, :cond_2

    .line 59
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;

    move-result-object p0

    goto :goto_0

    .line 62
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFailInfoOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;->failInfoOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getFailInfoValue()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;->failInfoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/spongycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;->failInfoOID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/ExtendedFailInfo;->failInfoValue:Lorg/spongycastle/asn1/ASN1Encodable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
