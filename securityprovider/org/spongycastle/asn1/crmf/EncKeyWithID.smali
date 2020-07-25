.class public Lorg/spongycastle/asn1/crmf/EncKeyWithID;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "EncKeyWithID.java"


# instance fields
.field private final identifier:Lorg/spongycastle/asn1/ASN1Encodable;

.field private final privKeyInfo:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    .line 37
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 39
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/DERUTF8String;

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 1
    .param p1, "privKeyInfo"    # Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;Lorg/spongycastle/asn1/DERUTF8String;)V
    .locals 0
    .param p1, "privKeyInfo"    # Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .param p2, "str"    # Lorg/spongycastle/asn1/DERUTF8String;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    .line 63
    iput-object p2, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;Lorg/spongycastle/asn1/x509/GeneralName;)V
    .locals 0
    .param p1, "privKeyInfo"    # Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .param p2, "generalName"    # Lorg/spongycastle/asn1/x509/GeneralName;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    .line 69
    iput-object p2, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 70
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/EncKeyWithID;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 21
    instance-of v0, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;

    if-eqz v0, :cond_0

    .line 23
    check-cast p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;

    .line 30
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 25
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 27
    new-instance v0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/crmf/EncKeyWithID;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIdentifier()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getPrivateKey()Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    return-object v0
.end method

.method public hasIdentifier()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdentifierUTF8String()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/spongycastle/asn1/DERUTF8String;

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 108
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->privKeyInfo:Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 110
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/EncKeyWithID;->identifier:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
