.class public Lorg/spongycastle/asn1/cmc/PKIData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PKIData.java"


# instance fields
.field private final cmsSequence:[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

.field private final controlSequence:[Lorg/spongycastle/asn1/cmc/TaggedAttribute;

.field private final otherMsgSequence:[Lorg/spongycastle/asn1/cmc/OtherMsg;

.field private final reqSequence:[Lorg/spongycastle/asn1/cmc/TaggedRequest;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 44
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Sequence not 4 elements."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 48
    .local v0, "s":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    .line 49
    const/4 v1, 0x0

    .local v1, "t":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 51
    iget-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/cmc/TaggedAttribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    move-result-object v3

    aput-object v3, v2, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .end local v0    # "s":Lorg/spongycastle/asn1/ASN1Sequence;
    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 55
    .restart local v0    # "s":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/asn1/cmc/TaggedRequest;

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/spongycastle/asn1/cmc/TaggedRequest;

    .line 56
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/spongycastle/asn1/cmc/TaggedRequest;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 58
    iget-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/spongycastle/asn1/cmc/TaggedRequest;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/cmc/TaggedRequest;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/TaggedRequest;

    move-result-object v3

    aput-object v3, v2, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .end local v0    # "s":Lorg/spongycastle/asn1/ASN1Sequence;
    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 62
    .restart local v0    # "s":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    .line 63
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 65
    iget-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/cmc/TaggedContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    move-result-object v3

    aput-object v3, v2, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 68
    :cond_3
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .end local v0    # "s":Lorg/spongycastle/asn1/ASN1Sequence;
    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 69
    .restart local v0    # "s":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/asn1/cmc/OtherMsg;

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/spongycastle/asn1/cmc/OtherMsg;

    .line 70
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/spongycastle/asn1/cmc/OtherMsg;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 72
    iget-object v2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/spongycastle/asn1/cmc/OtherMsg;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/cmc/OtherMsg;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/OtherMsg;

    move-result-object v3

    aput-object v3, v2, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 74
    :cond_4
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/cmc/TaggedAttribute;[Lorg/spongycastle/asn1/cmc/TaggedRequest;[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;[Lorg/spongycastle/asn1/cmc/OtherMsg;)V
    .locals 0
    .param p1, "controlSequence"    # [Lorg/spongycastle/asn1/cmc/TaggedAttribute;
    .param p2, "reqSequence"    # [Lorg/spongycastle/asn1/cmc/TaggedRequest;
    .param p3, "cmsSequence"    # [Lorg/spongycastle/asn1/cmc/TaggedContentInfo;
    .param p4, "otherMsgSequence"    # [Lorg/spongycastle/asn1/cmc/OtherMsg;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    .line 35
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/spongycastle/asn1/cmc/TaggedRequest;

    .line 36
    iput-object p3, p0, Lorg/spongycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    .line 37
    iput-object p4, p0, Lorg/spongycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/spongycastle/asn1/cmc/OtherMsg;

    .line 38
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/PKIData;
    .locals 2
    .param p0, "src"    # Ljava/lang/Object;

    .prologue
    .line 78
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/PKIData;

    if-eqz v0, :cond_0

    .line 80
    check-cast p0, Lorg/spongycastle/asn1/cmc/PKIData;

    .line 86
    .end local p0    # "src":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 82
    .restart local p0    # "src":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 84
    new-instance v0, Lorg/spongycastle/asn1/cmc/PKIData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/PKIData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 86
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCmsSequence()[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    return-object v0
.end method

.method public getControlSequence()[Lorg/spongycastle/asn1/cmc/TaggedAttribute;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    return-object v0
.end method

.method public getOtherMsgSequence()[Lorg/spongycastle/asn1/cmc/OtherMsg;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/spongycastle/asn1/cmc/OtherMsg;

    return-object v0
.end method

.method public getReqSequence()[Lorg/spongycastle/asn1/cmc/TaggedRequest;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/spongycastle/asn1/cmc/TaggedRequest;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    .line 91
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/spongycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/spongycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/spongycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/spongycastle/asn1/cmc/TaggedRequest;

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/spongycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/spongycastle/asn1/cmc/TaggedContentInfo;

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/spongycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/spongycastle/asn1/cmc/OtherMsg;

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
