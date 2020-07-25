.class public Lorg/spongycastle/asn1/cmp/ErrorMsgContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ErrorMsgContent.java"


# instance fields
.field private errorCode:Lorg/spongycastle/asn1/ASN1Integer;

.field private errorDetails:Lorg/spongycastle/asn1/cmp/PKIFreeText;

.field private pkiStatusInfo:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 24
    .local v0, "en":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->pkiStatusInfo:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 30
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_0

    .line 32
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->errorCode:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v1}, Lorg/spongycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIFreeText;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->errorDetails:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    goto :goto_0

    .line 39
    .end local v1    # "o":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/PKIStatusInfo;)V
    .locals 1
    .param p1, "pkiStatusInfo"    # Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0, v0}, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;-><init>(Lorg/spongycastle/asn1/cmp/PKIStatusInfo;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/cmp/PKIFreeText;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/PKIStatusInfo;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/cmp/PKIFreeText;)V
    .locals 2
    .param p1, "pkiStatusInfo"    # Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    .param p2, "errorCode"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p3, "errorDetails"    # Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'pkiStatusInfo\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->pkiStatusInfo:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    .line 72
    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->errorCode:Lorg/spongycastle/asn1/ASN1Integer;

    .line 73
    iput-object p3, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->errorDetails:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .line 74
    return-void
.end method

.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 116
    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {p1, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 120
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/ErrorMsgContent;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 43
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;

    .line 53
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 48
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 50
    new-instance v0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 53
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getErrorCode()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->errorCode:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getErrorDetails()Lorg/spongycastle/asn1/cmp/PKIFreeText;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->errorDetails:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    return-object v0
.end method

.method public getPKIStatusInfo()Lorg/spongycastle/asn1/cmp/PKIStatusInfo;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->pkiStatusInfo:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 107
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->pkiStatusInfo:Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 108
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->errorCode:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 109
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->errorDetails:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/asn1/cmp/ErrorMsgContent;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
