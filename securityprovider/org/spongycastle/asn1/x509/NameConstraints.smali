.class public Lorg/spongycastle/asn1/x509/NameConstraints;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "NameConstraints.java"


# instance fields
.field private excluded:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

.field private permitted:[Lorg/spongycastle/asn1/x509/GeneralSubtree;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 35
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 38
    .local v1, "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag encountered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :pswitch_0
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/x509/NameConstraints;->createArray(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->permitted:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    goto :goto_0

    .line 44
    :pswitch_1
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/x509/NameConstraints;->createArray(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->excluded:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    goto :goto_0

    .line 50
    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_0
    return-void

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/GeneralSubtree;[Lorg/spongycastle/asn1/x509/GeneralSubtree;)V
    .locals 1
    .param p1, "permitted"    # [Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .param p2, "excluded"    # [Lorg/spongycastle/asn1/x509/GeneralSubtree;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 67
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/spongycastle/asn1/x509/GeneralSubtree;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->permitted:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    .line 68
    invoke-static {p2}, Lorg/spongycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/spongycastle/asn1/x509/GeneralSubtree;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->excluded:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    .line 69
    return-void
.end method

.method private static cloneSubtree([Lorg/spongycastle/asn1/x509/GeneralSubtree;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 3
    .param p0, "subtrees"    # [Lorg/spongycastle/asn1/x509/GeneralSubtree;

    .prologue
    const/4 v2, 0x0

    .line 116
    if-eqz p0, :cond_0

    .line 118
    array-length v1, p0

    new-array v0, v1, [Lorg/spongycastle/asn1/x509/GeneralSubtree;

    .line 120
    .local v0, "rv":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    .end local v0    # "rv":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createArray(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 3
    .param p1, "subtree"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 73
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v0, v2, [Lorg/spongycastle/asn1/x509/GeneralSubtree;

    .line 75
    .local v0, "ar":[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 77
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    aput-object v2, v0, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/NameConstraints;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 20
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;

    if-eqz v0, :cond_0

    .line 22
    check-cast p0, Lorg/spongycastle/asn1/x509/NameConstraints;

    .line 29
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 24
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/x509/NameConstraints;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/NameConstraints;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getExcludedSubtrees()[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->excluded:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/spongycastle/asn1/x509/GeneralSubtree;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    return-object v0
.end method

.method public getPermittedSubtrees()[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->permitted:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/NameConstraints;->cloneSubtree([Lorg/spongycastle/asn1/x509/GeneralSubtree;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 99
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 101
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->permitted:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    if-eqz v1, :cond_0

    .line 103
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->permitted:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v5, v5, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->excluded:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    if-eqz v1, :cond_1

    .line 108
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->excluded:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v5, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
