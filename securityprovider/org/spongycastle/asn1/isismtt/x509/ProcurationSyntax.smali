.class public Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ProcurationSyntax.java"


# instance fields
.field private certRef:Lorg/spongycastle/asn1/x509/IssuerSerial;

.field private country:Ljava/lang/String;

.field private thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

.field private typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/x500/DirectoryString;Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "typeOfSubstitution"    # Lorg/spongycastle/asn1/x500/DirectoryString;
    .param p3, "thirdPerson"    # Lorg/spongycastle/asn1/x509/GeneralName;

    .prologue
    .line 167
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 168
    iput-object p1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;

    .line 170
    iput-object p3, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/spongycastle/asn1/x509/IssuerSerial;

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/asn1/x500/DirectoryString;Lorg/spongycastle/asn1/x509/IssuerSerial;)V
    .locals 1
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "typeOfSubstitution"    # Lorg/spongycastle/asn1/x500/DirectoryString;
    .param p3, "certRef"    # Lorg/spongycastle/asn1/x509/IssuerSerial;

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 147
    iput-object p1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 150
    iput-object p3, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/spongycastle/asn1/x509/IssuerSerial;

    .line 151
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v5, 0x1

    .line 97
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 98
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-lt v3, v5, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 100
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad sequence size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 104
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 107
    .local v1, "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 127
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

    .line 110
    :pswitch_0
    invoke-static {v1, v5}, Lorg/spongycastle/asn1/DERPrintableString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERPrintableString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERPrintableString;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    goto :goto_0

    .line 113
    :pswitch_1
    invoke-static {v1, v5}, Lorg/spongycastle/asn1/x500/DirectoryString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x500/DirectoryString;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;

    goto :goto_0

    .line 116
    :pswitch_2
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 117
    .local v2, "signingFor":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v3, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_2

    .line 119
    invoke-static {v2}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

    goto :goto_0

    .line 123
    :cond_2
    invoke-static {v2}, Lorg/spongycastle/asn1/x509/IssuerSerial;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/spongycastle/asn1/x509/IssuerSerial;

    goto :goto_0

    .line 130
    .end local v1    # "o":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .end local v2    # "signingFor":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_3
    return-void

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 62
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;

    .line 69
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 67
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 69
    new-instance v0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;

    check-cast p0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 72
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
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
.method public getCertRef()Lorg/spongycastle/asn1/x509/IssuerSerial;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/spongycastle/asn1/x509/IssuerSerial;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPerson()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getTypeOfSubstitution()Lorg/spongycastle/asn1/x500/DirectoryString;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 216
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 217
    .local v0, "vec":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 219
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v2, Lorg/spongycastle/asn1/DERPrintableString;

    iget-object v3, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->country:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 221
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_1

    .line 223
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->typeOfSubstitution:Lorg/spongycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 225
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_2

    .line 227
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->thirdPerson:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v5, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 234
    :goto_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 231
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/isismtt/x509/ProcurationSyntax;->certRef:Lorg/spongycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, v4, v5, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method
