.class public abstract Lorg/spongycastle/asn1/eac/PublicKeyDataObject;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PublicKeyDataObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/eac/PublicKeyDataObject;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 12
    instance-of v2, p0, Lorg/spongycastle/asn1/eac/PublicKeyDataObject;

    if-eqz v2, :cond_0

    .line 14
    check-cast p0, Lorg/spongycastle/asn1/eac/PublicKeyDataObject;

    .line 31
    .end local p0    # "obj":Ljava/lang/Object;
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    .local v1, "usage":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :goto_0
    return-object p0

    .line 16
    .end local v0    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v1    # "usage":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_2

    .line 18
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 19
    .restart local v0    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 21
    .restart local v1    # "usage":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    sget-object v2, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 23
    new-instance p0, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/ECDSAPublicKey;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    goto :goto_0

    .line 27
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance p0, Lorg/spongycastle/asn1/eac/RSAPublicKey;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/RSAPublicKey;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    goto :goto_0

    .line 31
    .end local v0    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v1    # "usage":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract getUsage()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
.end method
