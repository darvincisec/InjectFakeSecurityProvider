.class public Lorg/spongycastle/asn1/cms/RecipientInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "RecipientInfo.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field info:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Primitive;)V
    .locals 0
    .param p1, "info"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;->info:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/KEKRecipientInfo;)V
    .locals 3
    .param p1, "info"    # Lorg/spongycastle/asn1/cms/KEKRecipientInfo;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 46
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;->info:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;)V
    .locals 3
    .param p1, "info"    # Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;->info:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;)V
    .locals 0
    .param p1, "info"    # Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;->info:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/OtherRecipientInfo;)V
    .locals 3
    .param p1, "info"    # Lorg/spongycastle/asn1/cms/OtherRecipientInfo;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 58
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;->info:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/PasswordRecipientInfo;)V
    .locals 3
    .param p1, "info"    # Lorg/spongycastle/asn1/cms/PasswordRecipientInfo;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 52
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;->info:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 53
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/RecipientInfo;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 84
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/cms/RecipientInfo;

    .line 94
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 88
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 90
    new-instance v0, Lorg/spongycastle/asn1/cms/RecipientInfo;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/RecipientInfo;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    move-object p0, v0

    goto :goto_0

    .line 92
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_3

    .line 94
    new-instance v0, Lorg/spongycastle/asn1/cms/RecipientInfo;

    check-cast p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cms/RecipientInfo;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    move-object p0, v0

    goto :goto_0

    .line 97
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getKEKInfo(Lorg/spongycastle/asn1/ASN1TaggedObject;)Lorg/spongycastle/asn1/cms/KEKRecipientInfo;
    .locals 1
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1TaggedObject;

    .prologue
    .line 156
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/KEKRecipientInfo;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/KEKRecipientInfo;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getInfo()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;->info:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    .line 134
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;->info:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 136
    .local v0, "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 147
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :pswitch_0
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;

    move-result-object v1

    .line 151
    .end local v0    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :goto_0
    return-object v1

    .line 141
    .restart local v0    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/cms/RecipientInfo;->getKEKInfo(Lorg/spongycastle/asn1/ASN1TaggedObject;)Lorg/spongycastle/asn1/cms/KEKRecipientInfo;

    move-result-object v1

    goto :goto_0

    .line 143
    :pswitch_2
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/cms/PasswordRecipientInfo;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/PasswordRecipientInfo;

    move-result-object v1

    goto :goto_0

    .line 145
    :pswitch_3
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/cms/OtherRecipientInfo;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/OtherRecipientInfo;

    move-result-object v1

    goto :goto_0

    .line 151
    .end local v0    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;->info:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;

    move-result-object v1

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;->info:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    .line 105
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;->info:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 107
    .local v0, "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 118
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :pswitch_0
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cms/KeyAgreeRecipientInfo;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    .line 122
    .end local v0    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :goto_0
    return-object v1

    .line 112
    .restart local v0    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :pswitch_1
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/cms/RecipientInfo;->getKEKInfo(Lorg/spongycastle/asn1/ASN1TaggedObject;)Lorg/spongycastle/asn1/cms/KEKRecipientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cms/KEKRecipientInfo;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/cms/PasswordRecipientInfo;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/PasswordRecipientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cms/PasswordRecipientInfo;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    goto :goto_0

    .line 116
    :pswitch_3
    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    goto :goto_0

    .line 122
    .end local v0    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;->info:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/cms/KeyTransRecipientInfo;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isTagged()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;->info:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/RecipientInfo;->info:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
