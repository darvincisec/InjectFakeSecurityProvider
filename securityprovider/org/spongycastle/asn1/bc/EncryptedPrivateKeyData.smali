.class public Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "EncryptedPrivateKeyData.java"


# instance fields
.field private final certificateChain:[Lorg/spongycastle/asn1/x509/Certificate;

.field private final encryptedPrivateKeyInfo:Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->encryptedPrivateKeyInfo:Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    .line 35
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 36
    .local v0, "certSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [Lorg/spongycastle/asn1/x509/Certificate;

    iput-object v2, p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->certificateChain:[Lorg/spongycastle/asn1/x509/Certificate;

    .line 37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->certificateChain:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 39
    iget-object v2, p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->certificateChain:[Lorg/spongycastle/asn1/x509/Certificate;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v3

    aput-object v3, v2, v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;[Lorg/spongycastle/asn1/x509/Certificate;)V
    .locals 3
    .param p1, "encryptedPrivateKeyInfo"    # Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .param p2, "certificateChain"    # [Lorg/spongycastle/asn1/x509/Certificate;

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->encryptedPrivateKeyInfo:Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    .line 28
    array-length v0, p2

    new-array v0, v0, [Lorg/spongycastle/asn1/x509/Certificate;

    iput-object v0, p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->certificateChain:[Lorg/spongycastle/asn1/x509/Certificate;

    .line 29
    iget-object v0, p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->certificateChain:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 45
    instance-of v0, p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;

    if-eqz v0, :cond_0

    .line 47
    check-cast p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;

    .line 54
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 49
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 51
    new-instance v0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 54
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertificateChain()[Lorg/spongycastle/asn1/x509/Certificate;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v1, p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->certificateChain:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v1, v1

    new-array v0, v1, [Lorg/spongycastle/asn1/x509/Certificate;

    .line 61
    .local v0, "tmp":[Lorg/spongycastle/asn1/x509/Certificate;
    iget-object v1, p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->certificateChain:[Lorg/spongycastle/asn1/x509/Certificate;

    iget-object v2, p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->certificateChain:[Lorg/spongycastle/asn1/x509/Certificate;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    return-object v0
.end method

.method public getEncryptedPrivateKeyInfo()Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->encryptedPrivateKeyInfo:Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 75
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->encryptedPrivateKeyInfo:Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 76
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/spongycastle/asn1/bc/EncryptedPrivateKeyData;->certificateChain:[Lorg/spongycastle/asn1/x509/Certificate;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 78
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
