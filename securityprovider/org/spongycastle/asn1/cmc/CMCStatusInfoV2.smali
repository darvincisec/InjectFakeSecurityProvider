.class public Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CMCStatusInfoV2.java"


# instance fields
.field private final bodyList:Lorg/spongycastle/asn1/ASN1Sequence;

.field private final cMCStatus:Lorg/spongycastle/asn1/cmc/CMCStatus;

.field private final otherStatusInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

.field private final statusString:Lorg/spongycastle/asn1/DERUTF8String;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 58
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/CMCStatus;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->cMCStatus:Lorg/spongycastle/asn1/cmc/CMCStatus;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->bodyList:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 66
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 68
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 70
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERUTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    .line 71
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    .line 89
    :goto_0
    return-void

    .line 73
    :cond_2
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERUTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    .line 76
    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    goto :goto_0

    .line 80
    :cond_3
    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    .line 81
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/OtherStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    goto :goto_0

    .line 86
    :cond_4
    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    .line 87
    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    goto :goto_0
.end method

.method constructor <init>(Lorg/spongycastle/asn1/cmc/CMCStatus;Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/DERUTF8String;Lorg/spongycastle/asn1/cmc/OtherStatusInfo;)V
    .locals 0
    .param p1, "cMCStatus"    # Lorg/spongycastle/asn1/cmc/CMCStatus;
    .param p2, "bodyList"    # Lorg/spongycastle/asn1/ASN1Sequence;
    .param p3, "statusString"    # Lorg/spongycastle/asn1/DERUTF8String;
    .param p4, "otherStatusInfo"    # Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->cMCStatus:Lorg/spongycastle/asn1/cmc/CMCStatus;

    .line 52
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->bodyList:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 53
    iput-object p3, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    .line 54
    iput-object p4, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    .line 55
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 119
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;

    if-eqz v0, :cond_0

    .line 121
    check-cast p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;

    .line 129
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 124
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 126
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 129
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBodyList()[Lorg/spongycastle/asn1/cmc/BodyPartID;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->bodyList:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/Utils;->toBodyPartIDArray(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    return-object v0
.end method

.method public getOtherStatusInfo()Lorg/spongycastle/asn1/cmc/OtherStatusInfo;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    return-object v0
.end method

.method public getStatusString()Lorg/spongycastle/asn1/DERUTF8String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    return-object v0
.end method

.method public getcMCStatus()Lorg/spongycastle/asn1/cmc/CMCStatus;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->cMCStatus:Lorg/spongycastle/asn1/cmc/CMCStatus;

    return-object v0
.end method

.method public hasOtherInfo()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 136
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->cMCStatus:Lorg/spongycastle/asn1/cmc/CMCStatus;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 137
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->bodyList:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 139
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->statusString:Lorg/spongycastle/asn1/DERUTF8String;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 144
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CMCStatusInfoV2;->otherStatusInfo:Lorg/spongycastle/asn1/cmc/OtherStatusInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
