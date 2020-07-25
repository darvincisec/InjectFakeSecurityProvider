.class public Lorg/spongycastle/asn1/cms/Attributes;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "Attributes.java"


# instance fields
.field private attributes:Lorg/spongycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V
    .locals 1
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/asn1/DLSet;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DLSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/Attributes;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 37
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 0
    .param p1, "set"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/Attributes;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 32
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/Attributes;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 54
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/Attributes;

    if-eqz v0, :cond_0

    .line 56
    check-cast p0, Lorg/spongycastle/asn1/cms/Attributes;

    .line 63
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 58
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 60
    new-instance v0, Lorg/spongycastle/asn1/cms/Attributes;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/Attributes;-><init>(Lorg/spongycastle/asn1/ASN1Set;)V

    move-object p0, v0

    goto :goto_0

    .line 63
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAttributes()[Lorg/spongycastle/asn1/cms/Attribute;
    .locals 3

    .prologue
    .line 68
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/Attributes;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/cms/Attribute;

    .line 70
    .local v1, "rv":[Lorg/spongycastle/asn1/cms/Attribute;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 72
    iget-object v2, p0, Lorg/spongycastle/asn1/cms/Attributes;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/Attribute;

    move-result-object v2

    aput-object v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-object v1
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/Attributes;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method
