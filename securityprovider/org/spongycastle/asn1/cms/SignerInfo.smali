.class public Lorg/spongycastle/asn1/cms/SignerInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SignerInfo.java"


# instance fields
.field private authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

.field private digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

.field private sid:Lorg/spongycastle/asn1/cms/SignerIdentifier;

.field private unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 188
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 189
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 191
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 192
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cms/SignerIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/SignerIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->sid:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    .line 193
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 195
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 197
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    .line 199
    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 201
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 209
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 211
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 219
    :goto_1
    return-void

    .line 205
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    iput-object v4, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 206
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    .line 217
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    iput-object v4, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    goto :goto_1
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/SignerIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 4
    .param p1, "sid"    # Lorg/spongycastle/asn1/cms/SignerIdentifier;
    .param p2, "digAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "authenticatedAttributes"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p4, "digEncryptionAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "encryptedDigest"    # Lorg/spongycastle/asn1/ASN1OctetString;
    .param p6, "unauthenticatedAttributes"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 141
    :goto_0
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->sid:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    .line 142
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 143
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 144
    iput-object p4, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 145
    iput-object p5, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 146
    iput-object p6, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 147
    return-void

    .line 138
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/SignerIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/cms/Attributes;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/cms/Attributes;)V
    .locals 4
    .param p1, "sid"    # Lorg/spongycastle/asn1/cms/SignerIdentifier;
    .param p2, "digAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "authenticatedAttributes"    # Lorg/spongycastle/asn1/cms/Attributes;
    .param p4, "digEncryptionAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "encryptedDigest"    # Lorg/spongycastle/asn1/ASN1OctetString;
    .param p6, "unauthenticatedAttributes"    # Lorg/spongycastle/asn1/cms/Attributes;

    .prologue
    .line 165
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 166
    invoke-virtual {p1}, Lorg/spongycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 175
    :goto_0
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->sid:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    .line 176
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 177
    invoke-static {p3}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 178
    iput-object p4, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 179
    iput-object p5, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 180
    invoke-static {p6}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 181
    return-void

    .line 172
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/SignerInfo;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 103
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;

    if-eqz v0, :cond_0

    .line 105
    check-cast p0, Lorg/spongycastle/asn1/cms/SignerInfo;

    .line 112
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 107
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 109
    new-instance v0, Lorg/spongycastle/asn1/cms/SignerInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/SignerInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 112
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAuthenticatedAttributes()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getDigestEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncryptedDigest()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSID()Lorg/spongycastle/asn1/cms/SignerIdentifier;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->sid:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    return-object v0
.end method

.method public getUnauthenticatedAttributes()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 261
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 263
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 264
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->sid:Lorg/spongycastle/asn1/cms/SignerIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 265
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 267
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 269
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->authenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 272
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->digEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 273
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->encryptedDigest:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 275
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 277
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/asn1/cms/SignerInfo;->unauthenticatedAttributes:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 280
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
