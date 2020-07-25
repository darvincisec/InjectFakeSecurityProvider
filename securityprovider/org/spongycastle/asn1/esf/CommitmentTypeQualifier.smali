.class public Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CommitmentTypeQualifier.java"


# instance fields
.field private commitmentTypeIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private qualifier:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "commitmentTypeIdentifier"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "commitmentTypeIdentifier"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "qualifier"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->commitmentTypeIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    iput-object p2, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 49
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "as"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->commitmentTypeIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 64
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 66
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;
    .locals 2
    .param p0, "as"    # Ljava/lang/Object;

    .prologue
    .line 70
    instance-of v0, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;

    if-eqz v0, :cond_0

    .line 72
    check-cast p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;

    .line 79
    .end local p0    # "as":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 74
    .restart local p0    # "as":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 76
    new-instance v0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 79
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCommitmentTypeIdentifier()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->commitmentTypeIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getQualifier()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 100
    .local v0, "dev":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->commitmentTypeIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 101
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 106
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
