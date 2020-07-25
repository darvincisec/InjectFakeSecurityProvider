.class public Lorg/spongycastle/asn1/ocsp/ResponderID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ResponderID.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private value:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "value"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/ResponderID;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500Name;)V
    .locals 0
    .param p1, "value"    # Lorg/spongycastle/asn1/x500/X500Name;

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/ResponderID;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 29
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/ResponderID;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 34
    instance-of v1, p0, Lorg/spongycastle/asn1/ocsp/ResponderID;

    if-eqz v1, :cond_0

    .line 36
    check-cast p0, Lorg/spongycastle/asn1/ocsp/ResponderID;

    .line 56
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 38
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Lorg/spongycastle/asn1/DEROctetString;

    if-eqz v1, :cond_1

    .line 40
    new-instance v1, Lorg/spongycastle/asn1/ocsp/ResponderID;

    check-cast p0, Lorg/spongycastle/asn1/DEROctetString;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v1, p0}, Lorg/spongycastle/asn1/ocsp/ResponderID;-><init>(Lorg/spongycastle/asn1/ASN1OctetString;)V

    move-object p0, v1

    goto :goto_0

    .line 42
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_3

    move-object v0, p0

    .line 44
    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 46
    .local v0, "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 48
    new-instance p0, Lorg/spongycastle/asn1/ocsp/ResponderID;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/ocsp/ResponderID;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    goto :goto_0

    .line 52
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance p0, Lorg/spongycastle/asn1/ocsp/ResponderID;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {v0, v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/ocsp/ResponderID;-><init>(Lorg/spongycastle/asn1/ASN1OctetString;)V

    goto :goto_0

    .line 56
    .end local v0    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v1, Lorg/spongycastle/asn1/ocsp/ResponderID;

    invoke-static {p0}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ocsp/ResponderID;-><init>(Lorg/spongycastle/asn1/x500/X500Name;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/ResponderID;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ocsp/ResponderID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/ResponderID;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getKeyHash()[B
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ResponderID;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v1, v1, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 70
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponderID;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    .line 71
    .local v0, "octetString":Lorg/spongycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    .line 74
    .end local v0    # "octetString":Lorg/spongycastle/asn1/ASN1OctetString;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponderID;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponderID;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/ResponderID;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/spongycastle/asn1/ocsp/ResponderID;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 102
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/ResponderID;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v3, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method
