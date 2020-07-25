.class public Lorg/spongycastle/asn1/dvcs/PathProcInput;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PathProcInput.java"


# instance fields
.field private acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

.field private explicitPolicyReqd:Z

.field private inhibitAnyPolicy:Z

.field private inhibitPolicyMapping:Z


# direct methods
.method public constructor <init>([Lorg/spongycastle/asn1/x509/PolicyInformation;)V
    .locals 1
    .param p1, "acceptablePolicySet"    # [Lorg/spongycastle/asn1/x509/PolicyInformation;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 35
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 36
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    .line 40
    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    .line 41
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/PolicyInformation;ZZZ)V
    .locals 1
    .param p1, "acceptablePolicySet"    # [Lorg/spongycastle/asn1/x509/PolicyInformation;
    .param p2, "inhibitPolicyMapping"    # Z
    .param p3, "explicitPolicyReqd"    # Z
    .param p4, "inhibitAnyPolicy"    # Z

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 35
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 36
    iput-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    .line 45
    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    .line 46
    iput-boolean p2, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 47
    iput-boolean p3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 48
    iput-boolean p4, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    .line 49
    return-void
.end method

.method private static fromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/PolicyInformation;
    .locals 3
    .param p0, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/x509/PolicyInformation;

    .line 55
    .local v1, "tmp":[Lorg/spongycastle/asn1/x509/PolicyInformation;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 57
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v2

    aput-object v2, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .locals 10
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 65
    instance-of v7, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;

    if-eqz v7, :cond_0

    .line 67
    check-cast p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;

    .line 106
    .end local p0    # "obj":Ljava/lang/Object;
    .local v0, "i":I
    .local v2, "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    .local v3, "result":Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .local v4, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :goto_0
    return-object p0

    .line 69
    .end local v0    # "i":I
    .end local v2    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v3    # "result":Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .end local v4    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_4

    .line 71
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v4

    .line 72
    .restart local v4    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v4, v8}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 73
    .restart local v2    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    new-instance v3, Lorg/spongycastle/asn1/dvcs/PathProcInput;

    invoke-static {v2}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->fromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/PolicyInformation;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/spongycastle/asn1/dvcs/PathProcInput;-><init>([Lorg/spongycastle/asn1/x509/PolicyInformation;)V

    .line 75
    .restart local v3    # "result":Lorg/spongycastle/asn1/dvcs/PathProcInput;
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 77
    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    .line 79
    .local v1, "o":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v7, v1, Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v7, :cond_2

    .line 81
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v6

    .line 82
    .local v6, "x":Lorg/spongycastle/asn1/ASN1Boolean;
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v7

    invoke-direct {v3, v7}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->setInhibitPolicyMapping(Z)V

    .line 75
    .end local v6    # "x":Lorg/spongycastle/asn1/ASN1Boolean;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_2
    instance-of v7, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v7, :cond_1

    .line 86
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v5

    .line 88
    .local v5, "t":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 99
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown tag encountered: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 91
    :pswitch_0
    invoke-static {v5, v8}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v6

    .line 92
    .restart local v6    # "x":Lorg/spongycastle/asn1/ASN1Boolean;
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v7

    invoke-direct {v3, v7}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->setExplicitPolicyReqd(Z)V

    goto :goto_2

    .line 95
    .end local v6    # "x":Lorg/spongycastle/asn1/ASN1Boolean;
    :pswitch_1
    invoke-static {v5, v8}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v6

    .line 96
    .restart local v6    # "x":Lorg/spongycastle/asn1/ASN1Boolean;
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v7

    invoke-direct {v3, v7}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->setInhibitAnyPolicy(Z)V

    goto :goto_2

    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1Encodable;
    .end local v5    # "t":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .end local v6    # "x":Lorg/spongycastle/asn1/ASN1Boolean;
    :cond_3
    move-object p0, v3

    .line 103
    goto :goto_0

    .line 106
    .end local v0    # "i":I
    .end local v2    # "policies":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v3    # "result":Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .end local v4    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_4
    const/4 p0, 0x0

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 113
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/PathProcInput;

    move-result-object v0

    return-object v0
.end method

.method private setExplicitPolicyReqd(Z)V
    .locals 0
    .param p1, "explicitPolicyReqd"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    .line 177
    return-void
.end method

.method private setInhibitAnyPolicy(Z)V
    .locals 0
    .param p1, "inhibitAnyPolicy"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    .line 187
    return-void
.end method

.method private setInhibitPolicyMapping(Z)V
    .locals 0
    .param p1, "inhibitPolicyMapping"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    .line 167
    return-void
.end method


# virtual methods
.method public getAcceptablePolicySet()[Lorg/spongycastle/asn1/x509/PolicyInformation;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    return-object v0
.end method

.method public isExplicitPolicyReqd()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    return v0
.end method

.method public isInhibitAnyPolicy()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    return v0
.end method

.method public isInhibitPolicyMapping()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 118
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 119
    .local v2, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 121
    .local v1, "pV":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    array-length v3, v3

    if-eq v0, v3, :cond_0

    .line 123
    iget-object v3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 128
    iget-boolean v3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    if-eqz v3, :cond_1

    .line 130
    iget-boolean v3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 132
    :cond_1
    iget-boolean v3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    if-eqz v3, :cond_2

    .line 134
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-boolean v4, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v4

    invoke-direct {v3, v6, v6, v4}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 136
    :cond_2
    iget-boolean v3, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    if-eqz v3, :cond_3

    .line 138
    new-instance v3, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    invoke-static {v5}, Lorg/spongycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v5

    invoke-direct {v3, v6, v4, v5}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 141
    :cond_3
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PathProcInput: {\nacceptablePolicySet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->acceptablePolicySet:[Lorg/spongycastle/asn1/x509/PolicyInformation;

    .line 147
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ninhibitPolicyMapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitPolicyMapping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nexplicitPolicyReqd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->explicitPolicyReqd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ninhibitAnyPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/spongycastle/asn1/dvcs/PathProcInput;->inhibitAnyPolicy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    return-object v0
.end method
