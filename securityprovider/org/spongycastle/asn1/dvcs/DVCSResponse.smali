.class public Lorg/spongycastle/asn1/dvcs/DVCSResponse;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "DVCSResponse.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private dvCertInfo:Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;

.field private dvErrorNote:Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;)V
    .locals 0
    .param p1, "dvCertInfo"    # Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;)V
    .locals 0
    .param p1, "dvErrorNote"    # Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvErrorNote:Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;

    .line 37
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/DVCSResponse;
    .locals 7
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 41
    if-eqz p0, :cond_0

    instance-of v4, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;

    if-eqz v4, :cond_1

    .line 43
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;

    .line 69
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 47
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v4, p0, [B

    if-eqz v4, :cond_2

    .line 51
    :try_start_0
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/DVCSResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to construct sequence from byte[]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 58
    .end local v2    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v4, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v4, :cond_3

    .line 60
    invoke-static {p0}, Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;

    move-result-object v0

    .line 62
    .local v0, "dvCertInfo":Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;
    new-instance p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/dvcs/DVCSResponse;-><init>(Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;)V

    goto :goto_0

    .line 64
    .end local v0    # "dvCertInfo":Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v4, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v4, :cond_4

    .line 66
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    .line 67
    .local v3, "t":Lorg/spongycastle/asn1/ASN1TaggedObject;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;

    move-result-object v1

    .line 69
    .local v1, "dvErrorNote":Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;
    new-instance p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lorg/spongycastle/asn1/dvcs/DVCSResponse;-><init>(Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;)V

    goto :goto_0

    .line 73
    .end local v1    # "dvErrorNote":Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;
    .end local v3    # "t":Lorg/spongycastle/asn1/ASN1TaggedObject;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t convert from object to DVCSResponse: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/dvcs/DVCSResponse;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 80
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/DVCSResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCertInfo()Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;

    return-object v0
.end method

.method public getErrorNotice()Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvErrorNote:Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvErrorNote:Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;

    invoke-direct {v0, v2, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DVCSResponse {\ndvCertInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvCertInfo:Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/dvcs/DVCSCertInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DVCSResponse {\ndvErrorNote: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/DVCSResponse;->dvErrorNote:Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/dvcs/DVCSErrorNotice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
