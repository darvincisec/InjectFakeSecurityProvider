.class public Lorg/spongycastle/asn1/est/AttrOrOID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "AttrOrOID.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private final attribute:Lorg/spongycastle/asn1/pkcs/Attribute;

.field private final oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/asn1/est/AttrOrOID;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/est/AttrOrOID;->attribute:Lorg/spongycastle/asn1/pkcs/Attribute;

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/pkcs/Attribute;)V
    .locals 1
    .param p1, "attribute"    # Lorg/spongycastle/asn1/pkcs/Attribute;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/est/AttrOrOID;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    iput-object p1, p0, Lorg/spongycastle/asn1/est/AttrOrOID;->attribute:Lorg/spongycastle/asn1/pkcs/Attribute;

    .line 35
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/est/AttrOrOID;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 40
    instance-of v2, p0, Lorg/spongycastle/asn1/est/AttrOrOID;

    if-eqz v2, :cond_0

    .line 42
    check-cast p0, Lorg/spongycastle/asn1/est/AttrOrOID;

    .line 74
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 45
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_4

    .line 47
    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_2

    move-object v2, p0

    .line 49
    check-cast v2, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 51
    .local v0, "asn1Prim":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v2, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_1

    .line 53
    new-instance p0, Lorg/spongycastle/asn1/est/AttrOrOID;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/est/AttrOrOID;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    .line 55
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_2

    .line 57
    new-instance p0, Lorg/spongycastle/asn1/est/AttrOrOID;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/Attribute;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/est/AttrOrOID;-><init>(Lorg/spongycastle/asn1/pkcs/Attribute;)V

    goto :goto_0

    .line 60
    .end local v0    # "asn1Prim":Lorg/spongycastle/asn1/ASN1Encodable;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, [B

    if-eqz v2, :cond_3

    .line 64
    :try_start_0
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/est/AttrOrOID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/est/AttrOrOID;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown encoding in getInstance()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown object in getInstance(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_4
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAttribute()Lorg/spongycastle/asn1/pkcs/Attribute;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/asn1/est/AttrOrOID;->attribute:Lorg/spongycastle/asn1/pkcs/Attribute;

    return-object v0
.end method

.method public getOid()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/est/AttrOrOID;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public isOid()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/spongycastle/asn1/est/AttrOrOID;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/est/AttrOrOID;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/est/AttrOrOID;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/est/AttrOrOID;->attribute:Lorg/spongycastle/asn1/pkcs/Attribute;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/pkcs/Attribute;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0
.end method
