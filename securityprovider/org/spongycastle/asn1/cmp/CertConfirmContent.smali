.class public Lorg/spongycastle/asn1/cmp/CertConfirmContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertConfirmContent.java"


# instance fields
.field private content:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/CertConfirmContent;->content:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 15
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/CertConfirmContent;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 19
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/CertConfirmContent;

    if-eqz v0, :cond_0

    .line 21
    check-cast p0, Lorg/spongycastle/asn1/cmp/CertConfirmContent;

    .line 29
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 24
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/cmp/CertConfirmContent;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/CertConfirmContent;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertConfirmContent;->content:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toCertStatusArray()[Lorg/spongycastle/asn1/cmp/CertStatus;
    .locals 3

    .prologue
    .line 34
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/CertConfirmContent;->content:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/cmp/CertStatus;

    .line 36
    .local v1, "result":[Lorg/spongycastle/asn1/cmp/CertStatus;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 38
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/CertConfirmContent;->content:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cmp/CertStatus;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/CertStatus;

    move-result-object v2

    aput-object v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-object v1
.end method
