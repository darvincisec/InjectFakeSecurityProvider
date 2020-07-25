.class public Lorg/spongycastle/asn1/cmp/PKIConfirmContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PKIConfirmContent.java"


# instance fields
.field private val:Lorg/spongycastle/asn1/ASN1Null;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 35
    sget-object v0, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/spongycastle/asn1/ASN1Null;

    .line 36
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Null;)V
    .locals 0
    .param p1, "val"    # Lorg/spongycastle/asn1/ASN1Null;

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/spongycastle/asn1/ASN1Null;

    .line 16
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIConfirmContent;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 20
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;

    .line 27
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 25
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Null;

    if-eqz v0, :cond_2

    .line 27
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Null;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;-><init>(Lorg/spongycastle/asn1/ASN1Null;)V

    move-object p0, v0

    goto :goto_0

    .line 30
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/spongycastle/asn1/ASN1Null;

    return-object v0
.end method
