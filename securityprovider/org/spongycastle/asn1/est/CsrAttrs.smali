.class public Lorg/spongycastle/asn1/est/CsrAttrs;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CsrAttrs.java"


# instance fields
.field private final attrOrOIDs:[Lorg/spongycastle/asn1/est/AttrOrOID;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/spongycastle/asn1/est/AttrOrOID;

    iput-object v1, p0, Lorg/spongycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/spongycastle/asn1/est/AttrOrOID;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/spongycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/spongycastle/asn1/est/AttrOrOID;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/est/AttrOrOID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/est/AttrOrOID;

    move-result-object v2

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/est/AttrOrOID;)V
    .locals 2
    .param p1, "attrOrOID"    # Lorg/spongycastle/asn1/est/AttrOrOID;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/asn1/est/AttrOrOID;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/spongycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/spongycastle/asn1/est/AttrOrOID;

    .line 51
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/est/AttrOrOID;)V
    .locals 1
    .param p1, "attrOrOIDs"    # [Lorg/spongycastle/asn1/est/AttrOrOID;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 57
    invoke-static {p1}, Lorg/spongycastle/asn1/est/Utils;->clone([Lorg/spongycastle/asn1/est/AttrOrOID;)[Lorg/spongycastle/asn1/est/AttrOrOID;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/spongycastle/asn1/est/AttrOrOID;

    .line 58
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/est/CsrAttrs;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 22
    instance-of v0, p0, Lorg/spongycastle/asn1/est/CsrAttrs;

    if-eqz v0, :cond_0

    .line 24
    check-cast p0, Lorg/spongycastle/asn1/est/CsrAttrs;

    .line 32
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 27
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/est/CsrAttrs;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/est/CsrAttrs;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/est/CsrAttrs;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 39
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/est/CsrAttrs;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/est/CsrAttrs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAttrOrOIDs()[Lorg/spongycastle/asn1/est/AttrOrOID;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/spongycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/spongycastle/asn1/est/AttrOrOID;

    invoke-static {v0}, Lorg/spongycastle/asn1/est/Utils;->clone([Lorg/spongycastle/asn1/est/AttrOrOID;)[Lorg/spongycastle/asn1/est/AttrOrOID;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/spongycastle/asn1/est/AttrOrOID;

    array-length v0, v0

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/est/CsrAttrs;->attrOrOIDs:[Lorg/spongycastle/asn1/est/AttrOrOID;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
