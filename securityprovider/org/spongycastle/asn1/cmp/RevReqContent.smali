.class public Lorg/spongycastle/asn1/cmp/RevReqContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "RevReqContent.java"


# instance fields
.field private content:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/RevReqContent;->content:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/RevDetails;)V
    .locals 1
    .param p1, "revDetails"    # Lorg/spongycastle/asn1/cmp/RevDetails;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevReqContent;->content:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 37
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/cmp/RevDetails;)V
    .locals 3
    .param p1, "revDetailsArray"    # [Lorg/spongycastle/asn1/cmp/RevDetails;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 41
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 43
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-eq v0, v2, :cond_0

    .line 45
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/RevReqContent;->content:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 49
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/RevReqContent;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 21
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/RevReqContent;

    if-eqz v0, :cond_0

    .line 23
    check-cast p0, Lorg/spongycastle/asn1/cmp/RevReqContent;

    .line 31
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 26
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 28
    new-instance v0, Lorg/spongycastle/asn1/cmp/RevReqContent;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/RevReqContent;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevReqContent;->content:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toRevDetailsArray()[Lorg/spongycastle/asn1/cmp/RevDetails;
    .locals 3

    .prologue
    .line 53
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/RevReqContent;->content:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/cmp/RevDetails;

    .line 55
    .local v1, "result":[Lorg/spongycastle/asn1/cmp/RevDetails;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 57
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/RevReqContent;->content:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cmp/RevDetails;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/RevDetails;

    move-result-object v2

    aput-object v2, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-object v1
.end method
