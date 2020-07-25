.class public Lorg/spongycastle/asn1/BERTaggedObject;
.super Lorg/spongycastle/asn1/ASN1TaggedObject;
.source "BERTaggedObject.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "tagNo"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    new-instance v1, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v1}, Lorg/spongycastle/asn1/BERSequence;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 46
    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1
    .param p1, "tagNo"    # I
    .param p2, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 23
    return-void
.end method

.method public constructor <init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 36
    return-void
.end method


# virtual methods
.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 6
    .param p1, "out"    # Lorg/spongycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 99
    const/16 v3, 0xa0

    iget v4, p0, Lorg/spongycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-virtual {p1, v3, v4}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeTag(II)V

    .line 100
    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 102
    iget-boolean v3, p0, Lorg/spongycastle/asn1/BERTaggedObject;->empty:Z

    if-nez v3, :cond_5

    .line 104
    iget-boolean v3, p0, Lorg/spongycastle/asn1/BERTaggedObject;->explicit:Z

    if-nez v3, :cond_4

    .line 107
    iget-object v3, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v3, v3, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v3, v3, Lorg/spongycastle/asn1/BEROctetString;

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v3, Lorg/spongycastle/asn1/BEROctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 133
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 135
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 115
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v2, Lorg/spongycastle/asn1/ASN1OctetString;

    .line 116
    .local v2, "octs":Lorg/spongycastle/asn1/ASN1OctetString;
    new-instance v0, Lorg/spongycastle/asn1/BEROctetString;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/BEROctetString;-><init>([B)V

    .line 117
    .local v0, "berO":Lorg/spongycastle/asn1/BEROctetString;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 118
    .restart local v1    # "e":Ljava/util/Enumeration;
    goto :goto_0

    .line 120
    .end local v0    # "berO":Lorg/spongycastle/asn1/BEROctetString;
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "octs":Lorg/spongycastle/asn1/ASN1OctetString;
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v3, v3, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_2

    .line 122
    iget-object v3, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1    # "e":Ljava/util/Enumeration;
    goto :goto_0

    .line 124
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v3, v3, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v3, :cond_3

    .line 126
    iget-object v3, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v3, Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1    # "e":Ljava/util/Enumeration;
    goto :goto_0

    .line 130
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_3
    new-instance v3, Lorg/spongycastle/asn1/ASN1Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not implemented: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 140
    :cond_4
    iget-object v3, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 144
    :cond_5
    invoke-virtual {p1, v5}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 145
    invoke-virtual {p1, v5}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 146
    return-void
.end method

.method encodedLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-boolean v2, p0, Lorg/spongycastle/asn1/BERTaggedObject;->empty:Z

    if-nez v2, :cond_1

    .line 74
    iget-object v2, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 75
    .local v1, "primitive":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0

    .line 77
    .local v0, "length":I
    iget-boolean v2, p0, Lorg/spongycastle/asn1/BERTaggedObject;->explicit:Z

    if-eqz v2, :cond_0

    .line 79
    iget v2, p0, Lorg/spongycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v2}, Lorg/spongycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 91
    .end local v0    # "length":I
    .end local v1    # "primitive":Lorg/spongycastle/asn1/ASN1Primitive;
    :goto_0
    return v2

    .line 84
    .restart local v0    # "length":I
    .restart local v1    # "primitive":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 86
    iget v2, p0, Lorg/spongycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v2}, Lorg/spongycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_0

    .line 91
    .end local v0    # "length":I
    .end local v1    # "primitive":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_1
    iget v2, p0, Lorg/spongycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v2}, Lorg/spongycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method isConstructed()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 50
    iget-boolean v2, p0, Lorg/spongycastle/asn1/BERTaggedObject;->empty:Z

    if-nez v2, :cond_0

    .line 52
    iget-boolean v2, p0, Lorg/spongycastle/asn1/BERTaggedObject;->explicit:Z

    if-eqz v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 58
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->toDERObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 60
    .local v0, "primitive":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v1

    goto :goto_0
.end method
