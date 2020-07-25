.class public Lorg/spongycastle/asn1/cmp/PKIHeader;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PKIHeader.java"


# static fields
.field public static final CMP_1999:I = 0x1

.field public static final CMP_2000:I = 0x2

.field public static final NULL_NAME:Lorg/spongycastle/asn1/x509/GeneralName;


# instance fields
.field private freeText:Lorg/spongycastle/asn1/cmp/PKIFreeText;

.field private generalInfo:Lorg/spongycastle/asn1/ASN1Sequence;

.field private messageTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private protectionAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private pvno:Lorg/spongycastle/asn1/ASN1Integer;

.field private recipKID:Lorg/spongycastle/asn1/ASN1OctetString;

.field private recipNonce:Lorg/spongycastle/asn1/ASN1OctetString;

.field private recipient:Lorg/spongycastle/asn1/x509/GeneralName;

.field private sender:Lorg/spongycastle/asn1/x509/GeneralName;

.field private senderKID:Lorg/spongycastle/asn1/ASN1OctetString;

.field private senderNonce:Lorg/spongycastle/asn1/ASN1OctetString;

.field private transactionID:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lorg/spongycastle/asn1/x509/GeneralName;

    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1}, Lorg/spongycastle/asn1/DERSequence;-><init>()V

    invoke-static {v1}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/GeneralName;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    sput-object v0, Lorg/spongycastle/asn1/cmp/PKIHeader;->NULL_NAME:Lorg/spongycastle/asn1/x509/GeneralName;

    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 4
    .param p1, "pvno"    # I
    .param p2, "sender"    # Lorg/spongycastle/asn1/x509/GeneralName;
    .param p3, "recipient"    # Lorg/spongycastle/asn1/x509/GeneralName;

    .prologue
    .line 111
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {p0, v0, p2, p3}, Lorg/spongycastle/asn1/cmp/PKIHeader;-><init>(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/x509/GeneralName;)V

    .line 112
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 0
    .param p1, "pvno"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p2, "sender"    # Lorg/spongycastle/asn1/x509/GeneralName;
    .param p3, "recipient"    # Lorg/spongycastle/asn1/x509/GeneralName;

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 119
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->pvno:Lorg/spongycastle/asn1/ASN1Integer;

    .line 120
    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->sender:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 121
    iput-object p3, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->recipient:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 122
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 48
    .local v0, "en":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->pvno:Lorg/spongycastle/asn1/ASN1Integer;

    .line 49
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->sender:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 50
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->recipient:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 52
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 56
    .local v1, "tObj":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 86
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown tag number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :pswitch_0
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->messageTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->protectionAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    .line 65
    :pswitch_2
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->senderKID:Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_0

    .line 68
    :pswitch_3
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->recipKID:Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_0

    .line 71
    :pswitch_4
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->transactionID:Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_0

    .line 74
    :pswitch_5
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->senderNonce:Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_0

    .line 77
    :pswitch_6
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->recipNonce:Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_0

    .line 80
    :pswitch_7
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/cmp/PKIFreeText;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cmp/PKIFreeText;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->freeText:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    goto :goto_0

    .line 83
    :pswitch_8
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    goto :goto_0

    .line 89
    .end local v1    # "tObj":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_0
    return-void

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 255
    if-eqz p3, :cond_0

    .line 257
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 259
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIHeader;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 93
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;

    if-eqz v0, :cond_0

    .line 95
    check-cast p0, Lorg/spongycastle/asn1/cmp/PKIHeader;

    .line 103
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 98
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 100
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIHeader;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIHeader;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 103
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFreeText()Lorg/spongycastle/asn1/cmp/PKIFreeText;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->freeText:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    return-object v0
.end method

.method public getGeneralInfo()[Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;
    .locals 3

    .prologue
    .line 181
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    if-nez v2, :cond_1

    .line 183
    const/4 v1, 0x0

    .line 191
    :cond_0
    return-object v1

    .line 185
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;

    .line 186
    .local v1, "results":[Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 188
    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 189
    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/InfoTypeAndValue;

    move-result-object v2

    aput-object v2, v1, v0

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMessageTime()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->messageTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getProtectionAlg()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->protectionAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getPvno()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->pvno:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getRecipKID()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->recipKID:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getRecipNonce()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->recipNonce:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getRecipient()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->recipient:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getSender()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->sender:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getSenderKID()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->senderKID:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSenderNonce()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->senderNonce:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getTransactionID()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->transactionID:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 235
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 237
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->pvno:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 238
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->sender:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 239
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->recipient:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 240
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->messageTime:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 241
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->protectionAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 242
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->senderKID:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 243
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->recipKID:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 244
    const/4 v1, 0x4

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->transactionID:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 245
    const/4 v1, 0x5

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->senderNonce:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 246
    const/4 v1, 0x6

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->recipNonce:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 247
    const/4 v1, 0x7

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->freeText:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 248
    const/16 v1, 0x8

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIHeader;->generalInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/PKIHeader;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 250
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
