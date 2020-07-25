.class public Lorg/spongycastle/asn1/esf/SPuri;
.super Ljava/lang/Object;
.source "SPuri.java"


# instance fields
.field private uri:Lorg/spongycastle/asn1/DERIA5String;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/DERIA5String;)V
    .locals 0
    .param p1, "uri"    # Lorg/spongycastle/asn1/DERIA5String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/SPuri;->uri:Lorg/spongycastle/asn1/DERIA5String;

    .line 29
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/SPuri;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 13
    instance-of v0, p0, Lorg/spongycastle/asn1/esf/SPuri;

    if-eqz v0, :cond_0

    .line 15
    check-cast p0, Lorg/spongycastle/asn1/esf/SPuri;

    .line 22
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 17
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/DERIA5String;

    if-eqz v0, :cond_1

    .line 19
    new-instance v0, Lorg/spongycastle/asn1/esf/SPuri;

    invoke-static {p0}, Lorg/spongycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERIA5String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/esf/SPuri;-><init>(Lorg/spongycastle/asn1/DERIA5String;)V

    move-object p0, v0

    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getUri()Lorg/spongycastle/asn1/DERIA5String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SPuri;->uri:Lorg/spongycastle/asn1/DERIA5String;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SPuri;->uri:Lorg/spongycastle/asn1/DERIA5String;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERIA5String;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
