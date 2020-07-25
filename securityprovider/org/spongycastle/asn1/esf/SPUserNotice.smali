.class public Lorg/spongycastle/asn1/esf/SPUserNotice;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SPUserNotice.java"


# instance fields
.field private explicitText:Lorg/spongycastle/asn1/x509/DisplayText;

.field private noticeRef:Lorg/spongycastle/asn1/x509/NoticeReference;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 40
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 42
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    .line 43
    .local v1, "object":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v2, v1, Lorg/spongycastle/asn1/x509/DisplayText;

    if-nez v2, :cond_0

    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1String;

    if-eqz v2, :cond_1

    .line 45
    :cond_0
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/DisplayText;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DisplayText;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->explicitText:Lorg/spongycastle/asn1/x509/DisplayText;

    goto :goto_0

    .line 47
    :cond_1
    instance-of v2, v1, Lorg/spongycastle/asn1/x509/NoticeReference;

    if-nez v2, :cond_2

    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_3

    .line 49
    :cond_2
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/NoticeReference;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/NoticeReference;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->noticeRef:Lorg/spongycastle/asn1/x509/NoticeReference;

    goto :goto_0

    .line 53
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid element in \'SPUserNotice\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    .end local v1    # "object":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/NoticeReference;Lorg/spongycastle/asn1/x509/DisplayText;)V
    .locals 0
    .param p1, "noticeRef"    # Lorg/spongycastle/asn1/x509/NoticeReference;
    .param p2, "explicitText"    # Lorg/spongycastle/asn1/x509/DisplayText;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->noticeRef:Lorg/spongycastle/asn1/x509/NoticeReference;

    .line 63
    iput-object p2, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->explicitText:Lorg/spongycastle/asn1/x509/DisplayText;

    .line 64
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/SPUserNotice;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 24
    instance-of v0, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;

    if-eqz v0, :cond_0

    .line 26
    check-cast p0, Lorg/spongycastle/asn1/esf/SPUserNotice;

    .line 33
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 28
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 30
    new-instance v0, Lorg/spongycastle/asn1/esf/SPUserNotice;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/esf/SPUserNotice;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getExplicitText()Lorg/spongycastle/asn1/x509/DisplayText;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->explicitText:Lorg/spongycastle/asn1/x509/DisplayText;

    return-object v0
.end method

.method public getNoticeRef()Lorg/spongycastle/asn1/x509/NoticeReference;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->noticeRef:Lorg/spongycastle/asn1/x509/NoticeReference;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 87
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->noticeRef:Lorg/spongycastle/asn1/x509/NoticeReference;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->noticeRef:Lorg/spongycastle/asn1/x509/NoticeReference;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 92
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->explicitText:Lorg/spongycastle/asn1/x509/DisplayText;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SPUserNotice;->explicitText:Lorg/spongycastle/asn1/x509/DisplayText;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 97
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
