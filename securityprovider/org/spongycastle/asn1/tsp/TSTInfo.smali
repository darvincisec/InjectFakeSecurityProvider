.class public Lorg/spongycastle/asn1/tsp/TSTInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TSTInfo.java"


# instance fields
.field private accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

.field private extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

.field private nonce:Lorg/spongycastle/asn1/ASN1Integer;

.field private ordering:Lorg/spongycastle/asn1/ASN1Boolean;

.field private serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

.field private tsa:Lorg/spongycastle/asn1/x509/GeneralName;

.field private tsaPolicyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/tsp/MessageImprint;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/tsp/Accuracy;Lorg/spongycastle/asn1/ASN1Boolean;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/x509/Extensions;)V
    .locals 4
    .param p1, "tsaPolicyId"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "messageImprint"    # Lorg/spongycastle/asn1/tsp/MessageImprint;
    .param p3, "serialNumber"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p4, "genTime"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .param p5, "accuracy"    # Lorg/spongycastle/asn1/tsp/Accuracy;
    .param p6, "ordering"    # Lorg/spongycastle/asn1/ASN1Boolean;
    .param p7, "nonce"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p8, "tsa"    # Lorg/spongycastle/asn1/x509/GeneralName;
    .param p9, "extensions"    # Lorg/spongycastle/asn1/x509/Extensions;

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 110
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 111
    iput-object p1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 112
    iput-object p2, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

    .line 113
    iput-object p3, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    .line 114
    iput-object p4, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 116
    iput-object p5, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

    .line 117
    iput-object p6, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    .line 118
    iput-object p7, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    .line 119
    iput-object p8, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsa:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 120
    iput-object p9, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    .line 121
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 52
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 55
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/tsp/MessageImprint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/tsp/MessageImprint;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

    .line 61
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    .line 64
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 67
    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    .line 69
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 71
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Object;

    .line 73
    .local v1, "o":Lorg/spongycastle/asn1/ASN1Object;
    instance-of v3, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 75
    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 77
    .local v2, "tagged":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 86
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :pswitch_0
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsa:Lorg/spongycastle/asn1/x509/GeneralName;

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-static {v2, v4}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    goto :goto_0

    .line 89
    .end local v2    # "tagged":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_1
    instance-of v3, v1, Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v3, :cond_2

    instance-of v3, v1, Lorg/spongycastle/asn1/tsp/Accuracy;

    if-eqz v3, :cond_3

    .line 91
    :cond_2
    invoke-static {v1}, Lorg/spongycastle/asn1/tsp/Accuracy;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/tsp/Accuracy;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

    goto :goto_0

    .line 93
    :cond_3
    instance-of v3, v1, Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v3, :cond_4

    .line 95
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    goto :goto_0

    .line 97
    :cond_4
    instance-of v3, v1, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_0

    .line 99
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 103
    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1Object;
    :cond_5
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/tsp/TSTInfo;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 35
    instance-of v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Lorg/spongycastle/asn1/tsp/TSTInfo;

    .line 44
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 39
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 41
    new-instance v0, Lorg/spongycastle/asn1/tsp/TSTInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/tsp/TSTInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 44
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAccuracy()Lorg/spongycastle/asn1/tsp/Accuracy;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

    return-object v0
.end method

.method public getExtensions()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getGenTime()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getMessageImprint()Lorg/spongycastle/asn1/tsp/MessageImprint;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

    return-object v0
.end method

.method public getNonce()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getOrdering()Lorg/spongycastle/asn1/ASN1Boolean;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    return-object v0
.end method

.method public getPolicy()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getTsa()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsa:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 199
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 201
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 202
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 203
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 204
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->genTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 206
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/spongycastle/asn1/tsp/Accuracy;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 211
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->ordering:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 216
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 221
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsa:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_3

    .line 223
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->tsa:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v3, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 226
    :cond_3
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_4

    .line 228
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/tsp/TSTInfo;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-direct {v1, v3, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 231
    :cond_4
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
