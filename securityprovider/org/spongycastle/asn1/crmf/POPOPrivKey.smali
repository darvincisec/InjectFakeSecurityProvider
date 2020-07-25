.class public Lorg/spongycastle/asn1/crmf/POPOPrivKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "POPOPrivKey.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# static fields
.field public static final agreeMAC:I = 0x3

.field public static final dhMAC:I = 0x2

.field public static final encryptedKey:I = 0x4

.field public static final subsequentMessage:I = 0x1

.field public static final thisMessage:I


# instance fields
.field private obj:Lorg/spongycastle/asn1/ASN1Encodable;

.field private tagNo:I


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V
    .locals 2
    .param p1, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    .line 30
    iget v0, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    packed-switch v0, :pswitch_data_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag in POPOPrivKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :pswitch_0
    invoke-static {p1, v1}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 50
    :goto_0
    return-void

    .line 36
    :pswitch_1
    invoke-static {p1, v1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/SubsequentMessage;->valueOf(I)Lorg/spongycastle/asn1/crmf/SubsequentMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 39
    :pswitch_2
    invoke-static {p1, v1}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 42
    :pswitch_3
    invoke-static {p1, v1}, Lorg/spongycastle/asn1/crmf/PKMACValue;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/crmf/PKMACValue;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 45
    :pswitch_4
    invoke-static {p1, v1}, Lorg/spongycastle/asn1/cms/EnvelopedData;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/EnvelopedData;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/crmf/SubsequentMessage;)V
    .locals 1
    .param p1, "msg"    # Lorg/spongycastle/asn1/crmf/SubsequentMessage;

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    .line 74
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 75
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/POPOPrivKey;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 54
    instance-of v0, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;

    if-eqz v0, :cond_0

    .line 56
    check-cast p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;

    .line 63
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 58
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 60
    new-instance v0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/crmf/POPOPrivKey;-><init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V

    move-object p0, v0

    goto :goto_0

    .line 63
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/crmf/POPOPrivKey;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 68
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/POPOPrivKey;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    return v0
.end method

.method public getValue()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->tagNo:I

    iget-object v3, p0, Lorg/spongycastle/asn1/crmf/POPOPrivKey;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
