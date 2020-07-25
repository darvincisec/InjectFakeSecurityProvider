.class public Lorg/spongycastle/asn1/cmc/TaggedRequest;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TaggedRequest.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# static fields
.field public static final CRM:I = 0x1

.field public static final ORM:I = 0x2

.field public static final TCR:I


# instance fields
.field private final tagNo:I

.field private final value:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "orm"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;->tagNo:I

    .line 53
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmc/TaggedCertificationRequest;)V
    .locals 1
    .param p1, "tcr"    # Lorg/spongycastle/asn1/cmc/TaggedCertificationRequest;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;->tagNo:I

    .line 41
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/crmf/CertReqMsg;)V
    .locals 1
    .param p1, "crm"    # Lorg/spongycastle/asn1/crmf/CertReqMsg;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;->tagNo:I

    .line 47
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 48
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/TaggedRequest;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 58
    instance-of v2, p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;

    if-eqz v2, :cond_0

    .line 60
    check-cast p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;

    .line 95
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 63
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_3

    .line 65
    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_1

    .line 67
    check-cast p0, Lorg/spongycastle/asn1/ASN1Encodable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 69
    .local v0, "asn1Prim":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 78
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown tag in getInstance(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :pswitch_0
    new-instance p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;

    invoke-static {v0, v3}, Lorg/spongycastle/asn1/cmc/TaggedCertificationRequest;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cmc/TaggedCertificationRequest;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/cmc/TaggedRequest;-><init>(Lorg/spongycastle/asn1/cmc/TaggedCertificationRequest;)V

    goto :goto_0

    .line 74
    :pswitch_1
    new-instance p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;

    invoke-static {v0, v3}, Lorg/spongycastle/asn1/crmf/CertReqMsg;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/crmf/CertReqMsg;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/cmc/TaggedRequest;-><init>(Lorg/spongycastle/asn1/crmf/CertReqMsg;)V

    goto :goto_0

    .line 76
    :pswitch_2
    new-instance p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;

    invoke-static {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/cmc/TaggedRequest;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    goto :goto_0

    .line 81
    .end local v0    # "asn1Prim":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, [B

    if-eqz v2, :cond_2

    .line 85
    :try_start_0
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cmc/TaggedRequest;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/TaggedRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown encoding in getInstance()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown object in getInstance(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_3
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getTagNo()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;->tagNo:I

    return v0
.end method

.method public getValue()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;->tagNo:I

    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/TaggedRequest;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
