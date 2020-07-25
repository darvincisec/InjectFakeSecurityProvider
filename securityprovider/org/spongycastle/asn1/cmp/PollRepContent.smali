.class public Lorg/spongycastle/asn1/cmp/PollRepContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PollRepContent.java"


# instance fields
.field private certReqId:[Lorg/spongycastle/asn1/ASN1Integer;

.field private checkAfter:[Lorg/spongycastle/asn1/ASN1Integer;

.field private reason:[Lorg/spongycastle/asn1/cmp/PKIFreeText;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Integer;)V
    .locals 1
    .param p1, "certReqId"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p2, "checkAfter"    # Lorg/spongycastle/asn1/ASN1Integer;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/asn1/cmp/PollRepContent;-><init>(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/cmp/PKIFreeText;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/cmp/PKIFreeText;)V
    .locals 3
    .param p1, "certReqId"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p2, "checkAfter"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p3, "reason"    # Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 59
    new-array v0, v2, [Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/spongycastle/asn1/ASN1Integer;

    .line 60
    new-array v0, v2, [Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/spongycastle/asn1/ASN1Integer;

    .line 61
    new-array v0, v2, [Lorg/spongycastle/asn1/cmp/PKIFreeText;

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->reason:[Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .line 63
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/spongycastle/asn1/ASN1Integer;

    aput-object p1, v0, v1

    .line 64
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/spongycastle/asn1/ASN1Integer;

    aput-object p2, v0, v1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->reason:[Lorg/spongycastle/asn1/cmp/PKIFreeText;

    aput-object p3, v0, v1

    .line 66
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x2

    .line 18
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/spongycastle/asn1/ASN1Integer;

    .line 20
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/spongycastle/asn1/ASN1Integer;

    .line 21
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/asn1/cmp/PKIFreeText;

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->reason:[Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .line 23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 25
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 27
    .local v1, "s":Lorg/spongycastle/asn1/ASN1Sequence;
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 28
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 30
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 32
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->reason:[Lorg/spongycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v1, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIFreeText;

    move-result-object v3

    aput-object v3, v2, v0

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "s":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PollRepContent;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 39
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;

    if-eqz v0, :cond_0

    .line 41
    check-cast p0, Lorg/spongycastle/asn1/cmp/PollRepContent;

    .line 49
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 44
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 46
    new-instance v0, Lorg/spongycastle/asn1/cmp/PollRepContent;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PollRepContent;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 49
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertReqId(I)Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCheckAfter(I)Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getReason(I)Lorg/spongycastle/asn1/cmp/PKIFreeText;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->reason:[Lorg/spongycastle/asn1/cmp/PKIFreeText;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/spongycastle/asn1/ASN1Integer;

    array-length v0, v0

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 100
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 102
    .local v1, "outer":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/spongycastle/asn1/ASN1Integer;

    array-length v3, v3

    if-eq v0, v3, :cond_1

    .line 104
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 106
    .local v2, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->certReqId:[Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 107
    iget-object v3, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->checkAfter:[Lorg/spongycastle/asn1/ASN1Integer;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 109
    iget-object v3, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->reason:[Lorg/spongycastle/asn1/cmp/PKIFreeText;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->reason:[Lorg/spongycastle/asn1/cmp/PKIFreeText;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 114
    :cond_0
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_1
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v3
.end method
