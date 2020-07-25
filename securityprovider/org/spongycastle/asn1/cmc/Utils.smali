.class Lorg/spongycastle/asn1/cmc/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clone([Lorg/spongycastle/asn1/cmc/BodyPartID;)[Lorg/spongycastle/asn1/cmc/BodyPartID;
    .locals 3
    .param p0, "ids"    # [Lorg/spongycastle/asn1/cmc/BodyPartID;

    .prologue
    const/4 v2, 0x0

    .line 22
    array-length v1, p0

    new-array v0, v1, [Lorg/spongycastle/asn1/cmc/BodyPartID;

    .line 24
    .local v0, "tmp":[Lorg/spongycastle/asn1/cmc/BodyPartID;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    return-object v0
.end method

.method static clone([Lorg/spongycastle/asn1/x509/Extension;)[Lorg/spongycastle/asn1/x509/Extension;
    .locals 3
    .param p0, "ids"    # [Lorg/spongycastle/asn1/x509/Extension;

    .prologue
    const/4 v2, 0x0

    .line 31
    array-length v1, p0

    new-array v0, v1, [Lorg/spongycastle/asn1/x509/Extension;

    .line 33
    .local v0, "tmp":[Lorg/spongycastle/asn1/x509/Extension;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    return-object v0
.end method

.method static toBodyPartIDArray(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/cmc/BodyPartID;
    .locals 3
    .param p0, "bodyPartIDs"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 10
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/cmc/BodyPartID;

    .line 12
    .local v1, "ids":[Lorg/spongycastle/asn1/cmc/BodyPartID;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 14
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cmc/BodyPartID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartID;

    move-result-object v2

    aput-object v2, v1, v0

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_0
    return-object v1
.end method
