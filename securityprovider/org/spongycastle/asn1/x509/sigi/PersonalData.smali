.class public Lorg/spongycastle/asn1/x509/sigi/PersonalData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PersonalData.java"


# instance fields
.field private dateOfBirth:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private gender:Ljava/lang/String;

.field private nameDistinguisher:Ljava/math/BigInteger;

.field private nameOrPseudonym:Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

.field private placeOfBirth:Lorg/spongycastle/asn1/x500/DirectoryString;

.field private postalAddress:Lorg/spongycastle/asn1/x500/DirectoryString;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v3, v5, :cond_0

    .line 82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad sequence size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 83
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 86
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 88
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

    .line 90
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 93
    .local v1, "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    .line 94
    .local v2, "tag":I
    packed-switch v2, :pswitch_data_0

    .line 112
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad tag number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :pswitch_0
    invoke-static {v1, v4}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-static {v1, v4}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-static {v1, v5}, Lorg/spongycastle/asn1/x500/DirectoryString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x500/DirectoryString;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/spongycastle/asn1/x500/DirectoryString;

    goto :goto_0

    .line 106
    :pswitch_3
    invoke-static {v1, v4}, Lorg/spongycastle/asn1/DERPrintableString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERPrintableString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    goto :goto_0

    .line 109
    :pswitch_4
    invoke-static {v1, v5}, Lorg/spongycastle/asn1/x500/DirectoryString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x500/DirectoryString;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/spongycastle/asn1/x500/DirectoryString;

    goto :goto_0

    .line 115
    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .end local v2    # "tag":I
    :cond_1
    return-void

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;Ljava/math/BigInteger;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/x500/DirectoryString;Ljava/lang/String;Lorg/spongycastle/asn1/x500/DirectoryString;)V
    .locals 0
    .param p1, "nameOrPseudonym"    # Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;
    .param p2, "nameDistinguisher"    # Ljava/math/BigInteger;
    .param p3, "dateOfBirth"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .param p4, "placeOfBirth"    # Lorg/spongycastle/asn1/x500/DirectoryString;
    .param p5, "gender"    # Ljava/lang/String;
    .param p6, "postalAddress"    # Lorg/spongycastle/asn1/x500/DirectoryString;

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 131
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

    .line 132
    iput-object p3, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 133
    iput-object p5, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    .line 135
    iput-object p6, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/spongycastle/asn1/x500/DirectoryString;

    .line 136
    iput-object p4, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/spongycastle/asn1/x500/DirectoryString;

    .line 137
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/sigi/PersonalData;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 48
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;

    .line 55
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 53
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/sigi/PersonalData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 58
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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
.method public getDateOfBirth()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getNameDistinguisher()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getNameOrPseudonym()Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

    return-object v0
.end method

.method public getPlaceOfBirth()Lorg/spongycastle/asn1/x500/DirectoryString;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/spongycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public getPostalAddress()Lorg/spongycastle/asn1/x500/DirectoryString;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/spongycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 188
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 189
    .local v0, "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameOrPseudonym:Lorg/spongycastle/asn1/x509/sigi/NameOrPseudonym;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 190
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 192
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v2, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->nameDistinguisher:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v5, v5, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 194
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_1

    .line 196
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->dateOfBirth:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, v5, v6, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 198
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_2

    .line 200
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->placeOfBirth:Lorg/spongycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v6, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 202
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 204
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x3

    new-instance v3, Lorg/spongycastle/asn1/DERPrintableString;

    iget-object v4, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->gender:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Lorg/spongycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v5, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 206
    :cond_3
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_4

    .line 208
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/sigi/PersonalData;->postalAddress:Lorg/spongycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v6, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 210
    :cond_4
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
