.class public Lorg/spongycastle/asn1/esf/SigPolicyQualifiers;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SigPolicyQualifiers.java"


# instance fields
.field qualifiers:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifiers;->qualifiers:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 33
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;)V
    .locals 3
    .param p1, "qualifierInfos"    # [Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 38
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 39
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 41
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifiers;->qualifiers:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 44
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/SigPolicyQualifiers;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 17
    instance-of v0, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifiers;

    if-eqz v0, :cond_0

    .line 19
    check-cast p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifiers;

    .line 26
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 21
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 23
    new-instance v0, Lorg/spongycastle/asn1/esf/SigPolicyQualifiers;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/esf/SigPolicyQualifiers;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getInfoAt(I)Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifiers;->qualifiers:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifiers;->qualifiers:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifiers;->qualifiers:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
