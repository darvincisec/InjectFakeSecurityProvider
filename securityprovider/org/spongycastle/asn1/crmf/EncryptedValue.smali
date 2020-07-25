.class public Lorg/spongycastle/asn1/crmf/EncryptedValue;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "EncryptedValue.java"


# instance fields
.field private encSymmKey:Lorg/spongycastle/asn1/DERBitString;

.field private encValue:Lorg/spongycastle/asn1/DERBitString;

.field private intendedAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private symmAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private valueHint:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, "index":I
    :goto_0
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 32
    .local v1, "tObj":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 50
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

    .line 35
    :pswitch_0
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->intendedAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 52
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 53
    goto :goto_0

    .line 38
    :pswitch_1
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->symmAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    .line 41
    :pswitch_2
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encSymmKey:Lorg/spongycastle/asn1/DERBitString;

    goto :goto_1

    .line 44
    :pswitch_3
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    .line 47
    :pswitch_4
    invoke-static {v1, v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->valueHint:Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_1

    .line 55
    .end local v1    # "tObj":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_0
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encValue:Lorg/spongycastle/asn1/DERBitString;

    .line 56
    return-void

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/DERBitString;)V
    .locals 2
    .param p1, "intendedAlg"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "symmAlg"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "encSymmKey"    # Lorg/spongycastle/asn1/DERBitString;
    .param p4, "keyAlg"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "valueHint"    # Lorg/spongycastle/asn1/ASN1OctetString;
    .param p6, "encValue"    # Lorg/spongycastle/asn1/DERBitString;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 80
    if-nez p6, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'encValue\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->intendedAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 86
    iput-object p2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->symmAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 87
    iput-object p3, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encSymmKey:Lorg/spongycastle/asn1/DERBitString;

    .line 88
    iput-object p4, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 89
    iput-object p5, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->valueHint:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 90
    iput-object p6, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encValue:Lorg/spongycastle/asn1/DERBitString;

    .line 91
    return-void
.end method

.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 161
    if-eqz p3, :cond_0

    .line 163
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 165
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/EncryptedValue;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 60
    instance-of v0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;

    if-eqz v0, :cond_0

    .line 62
    check-cast p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;

    .line 69
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 64
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 66
    new-instance v0, Lorg/spongycastle/asn1/crmf/EncryptedValue;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/crmf/EncryptedValue;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 69
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEncSymmKey()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encSymmKey:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getEncValue()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encValue:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getIntendedAlg()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->intendedAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKeyAlg()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSymmAlg()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->symmAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getValueHint()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->valueHint:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 148
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->intendedAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->symmAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 150
    const/4 v1, 0x2

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encSymmKey:Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 151
    const/4 v1, 0x3

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->keyAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 152
    const/4 v1, 0x4

    iget-object v2, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->valueHint:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 154
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/EncryptedValue;->encValue:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 156
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
