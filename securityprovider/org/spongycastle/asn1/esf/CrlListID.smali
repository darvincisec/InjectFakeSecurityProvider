.class public Lorg/spongycastle/asn1/esf/CrlListID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CrlListID.java"


# instance fields
.field private crls:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    iput-object v1, p0, Lorg/spongycastle/asn1/esf/CrlListID;->crls:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 39
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CrlListID;->crls:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 40
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/esf/CrlValidatedID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/CrlValidatedID;

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/esf/CrlValidatedID;)V
    .locals 1
    .param p1, "crls"    # [Lorg/spongycastle/asn1/esf/CrlValidatedID;

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 48
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/CrlListID;->crls:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 49
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/CrlListID;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 24
    instance-of v0, p0, Lorg/spongycastle/asn1/esf/CrlListID;

    if-eqz v0, :cond_0

    .line 26
    check-cast p0, Lorg/spongycastle/asn1/esf/CrlListID;

    .line 33
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 28
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 30
    new-instance v0, Lorg/spongycastle/asn1/esf/CrlListID;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/esf/CrlListID;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCrls()[Lorg/spongycastle/asn1/esf/CrlValidatedID;
    .locals 3

    .prologue
    .line 53
    iget-object v2, p0, Lorg/spongycastle/asn1/esf/CrlListID;->crls:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/esf/CrlValidatedID;

    .line 54
    .local v1, "result":[Lorg/spongycastle/asn1/esf/CrlValidatedID;
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 56
    iget-object v2, p0, Lorg/spongycastle/asn1/esf/CrlListID;->crls:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 57
    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/esf/CrlValidatedID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/CrlValidatedID;

    move-result-object v2

    aput-object v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-object v1
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/esf/CrlListID;->crls:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
