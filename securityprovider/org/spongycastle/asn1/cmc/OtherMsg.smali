.class public Lorg/spongycastle/asn1/cmc/OtherMsg;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OtherMsg.java"


# instance fields
.field private final bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

.field private final otherMsgType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private final otherMsgValue:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/BodyPartID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/OtherMsg;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/OtherMsg;->otherMsgType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/OtherMsg;->otherMsgValue:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmc/BodyPartID;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "bodyPartID"    # Lorg/spongycastle/asn1/cmc/BodyPartID;
    .param p2, "otherMsgType"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "otherMsgValue"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/OtherMsg;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    .line 30
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/OtherMsg;->otherMsgType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    iput-object p3, p0, Lorg/spongycastle/asn1/cmc/OtherMsg;->otherMsgValue:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 32
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/OtherMsg;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 47
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/OtherMsg;

    if-eqz v0, :cond_0

    .line 49
    check-cast p0, Lorg/spongycastle/asn1/cmc/OtherMsg;

    .line 57
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 52
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 54
    new-instance v0, Lorg/spongycastle/asn1/cmc/OtherMsg;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/OtherMsg;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 57
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cmc/OtherMsg;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 64
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/OtherMsg;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/OtherMsg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBodyPartID()Lorg/spongycastle/asn1/cmc/BodyPartID;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/OtherMsg;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    return-object v0
.end method

.method public getOtherMsgType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/OtherMsg;->otherMsgType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getOtherMsgValue()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/OtherMsg;->otherMsgValue:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 71
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/OtherMsg;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 72
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/OtherMsg;->otherMsgType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 73
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/OtherMsg;->otherMsgValue:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 75
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
