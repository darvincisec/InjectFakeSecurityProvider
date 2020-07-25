.class public Lorg/spongycastle/asn1/cmc/RevokeRequest;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "RevokeRequest.java"


# instance fields
.field private comment:Lorg/spongycastle/asn1/DERUTF8String;

.field private invalidityDate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

.field private final name:Lorg/spongycastle/asn1/x500/X500Name;

.field private passphrase:Lorg/spongycastle/asn1/ASN1OctetString;

.field private final reason:Lorg/spongycastle/asn1/x509/CRLReason;

.field private final serialNumber:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_1

    .line 59
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "incorrect sequence size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->name:Lorg/spongycastle/asn1/x500/X500Name;

    .line 62
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    .line 63
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/CRLReason;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CRLReason;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->reason:Lorg/spongycastle/asn1/x509/CRLReason;

    .line 65
    const/4 v0, 0x3

    .line 66
    .local v0, "index":I
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v2, v0, :cond_2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v2, :cond_2

    .line 68
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move v0, v1

    .line 70
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v2, v0, :cond_3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v2, :cond_3

    .line 72
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/spongycastle/asn1/ASN1OctetString;

    move v0, v1

    .line 74
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_3
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v2, v0, :cond_4

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v2, :cond_4

    .line 76
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERUTF8String;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->comment:Lorg/spongycastle/asn1/DERUTF8String;

    .line 78
    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/CRLReason;Lorg/spongycastle/asn1/ASN1GeneralizedTime;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/DERUTF8String;)V
    .locals 0
    .param p1, "name"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p2, "serialNumber"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p3, "reason"    # Lorg/spongycastle/asn1/x509/CRLReason;
    .param p4, "invalidityDate"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .param p5, "passphrase"    # Lorg/spongycastle/asn1/ASN1OctetString;
    .param p6, "comment"    # Lorg/spongycastle/asn1/DERUTF8String;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->name:Lorg/spongycastle/asn1/x500/X500Name;

    .line 48
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    .line 49
    iput-object p3, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->reason:Lorg/spongycastle/asn1/x509/CRLReason;

    .line 50
    iput-object p4, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 51
    iput-object p5, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 52
    iput-object p6, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->comment:Lorg/spongycastle/asn1/DERUTF8String;

    .line 53
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/RevokeRequest;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 82
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;

    if-eqz v0, :cond_0

    .line 84
    check-cast p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;

    .line 92
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 87
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 89
    new-instance v0, Lorg/spongycastle/asn1/cmc/RevokeRequest;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/RevokeRequest;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 92
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getComment()Lorg/spongycastle/asn1/DERUTF8String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->comment:Lorg/spongycastle/asn1/DERUTF8String;

    return-object v0
.end method

.method public getInvalidityDate()Lorg/spongycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getName()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->name:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getPassPhrase()[B
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPassphrase()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getReason()Lorg/spongycastle/asn1/x509/CRLReason;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->reason:Lorg/spongycastle/asn1/x509/CRLReason;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public setComment(Lorg/spongycastle/asn1/DERUTF8String;)V
    .locals 0
    .param p1, "comment"    # Lorg/spongycastle/asn1/DERUTF8String;

    .prologue
    .line 137
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->comment:Lorg/spongycastle/asn1/DERUTF8String;

    .line 138
    return-void
.end method

.method public setInvalidityDate(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)V
    .locals 0
    .param p1, "invalidityDate"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .prologue
    .line 117
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .line 118
    return-void
.end method

.method public setPassphrase(Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "passphrase"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 127
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 128
    return-void
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 153
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->name:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 154
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 155
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->reason:Lorg/spongycastle/asn1/x509/CRLReason;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 157
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->invalidityDate:Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->passphrase:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 165
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->comment:Lorg/spongycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_2

    .line 167
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/RevokeRequest;->comment:Lorg/spongycastle/asn1/DERUTF8String;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 170
    :cond_2
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
