.class public Lorg/spongycastle/asn1/x509/TBSCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TBSCertificate.java"


# instance fields
.field endDate:Lorg/spongycastle/asn1/x509/Time;

.field extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field issuer:Lorg/spongycastle/asn1/x500/X500Name;

.field issuerUniqueId:Lorg/spongycastle/asn1/DERBitString;

.field seq:Lorg/spongycastle/asn1/ASN1Sequence;

.field serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

.field signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lorg/spongycastle/asn1/x509/Time;

.field subject:Lorg/spongycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

.field subjectUniqueId:Lorg/spongycastle/asn1/DERBitString;

.field version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 12
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 74
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 75
    const/4 v5, 0x0

    .line 77
    .local v5, "seqStart":I
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 82
    invoke-virtual {p1, v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    instance-of v6, v6, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_1

    .line 84
    invoke-virtual {p1, v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v6, v11}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 92
    :goto_0
    const/4 v3, 0x0

    .line 93
    .local v3, "isV1":Z
    const/4 v4, 0x0

    .line 95
    .local v4, "isV2":Z
    iget-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 97
    const/4 v3, 0x1

    .line 108
    :cond_0
    :goto_1
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    .line 110
    add-int/lit8 v6, v5, 0x2

    invoke-virtual {p1, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 111
    add-int/lit8 v6, v5, 0x3

    invoke-virtual {p1, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    .line 116
    add-int/lit8 v6, v5, 0x4

    invoke-virtual {p1, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 118
    .local v0, "dates":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v0, v10}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->startDate:Lorg/spongycastle/asn1/x509/Time;

    .line 119
    invoke-virtual {v0, v11}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Time;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->endDate:Lorg/spongycastle/asn1/x509/Time;

    .line 121
    add-int/lit8 v6, v5, 0x5

    invoke-virtual {p1, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    .line 126
    add-int/lit8 v6, v5, 0x6

    invoke-virtual {p1, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 128
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    add-int/lit8 v7, v5, 0x6

    sub-int/2addr v6, v7

    add-int/lit8 v2, v6, -0x1

    .line 129
    .local v2, "extras":I
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 131
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "version 1 certificate contains extra data"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 88
    .end local v0    # "dates":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v2    # "extras":I
    .end local v3    # "isV1":Z
    .end local v4    # "isV2":Z
    :cond_1
    const/4 v5, -0x1

    .line 89
    new-instance v6, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v6, v8, v9}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->version:Lorg/spongycastle/asn1/ASN1Integer;

    goto/16 :goto_0

    .line 99
    .restart local v3    # "isV1":Z
    .restart local v4    # "isV2":Z
    :cond_2
    iget-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 101
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 103
    :cond_3
    iget-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 105
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "version number not recognised"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 134
    .restart local v0    # "dates":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v2    # "extras":I
    :cond_4
    :goto_2
    if-lez v2, :cond_6

    .line 136
    add-int/lit8 v6, v5, 0x6

    add-int/2addr v6, v2

    invoke-virtual {p1, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 138
    .local v1, "extra":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 153
    :goto_3
    add-int/lit8 v2, v2, -0x1

    .line 154
    goto :goto_2

    .line 141
    :pswitch_0
    invoke-static {v1, v10}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lorg/spongycastle/asn1/DERBitString;

    goto :goto_3

    .line 144
    :pswitch_1
    invoke-static {v1, v10}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lorg/spongycastle/asn1/DERBitString;

    goto :goto_3

    .line 147
    :pswitch_2
    if-eqz v4, :cond_5

    .line 149
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "version 2 certificate cannot contain extensions"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 151
    :cond_5
    invoke-static {v1, v11}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    goto :goto_3

    .line 155
    .end local v1    # "extra":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_6
    return-void

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertificate;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 60
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;

    if-eqz v0, :cond_0

    .line 62
    check-cast p0, Lorg/spongycastle/asn1/x509/TBSCertificate;

    .line 69
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 64
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 66
    new-instance v0, Lorg/spongycastle/asn1/x509/TBSCertificate;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/TBSCertificate;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 69
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/TBSCertificate;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 54
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEndDate()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->endDate:Lorg/spongycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getExtensions()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getIssuerUniqueId()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->issuerUniqueId:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSignature()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStartDate()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->startDate:Lorg/spongycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getSubject()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getSubjectUniqueId()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->subjectUniqueId:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TBSCertificate;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
