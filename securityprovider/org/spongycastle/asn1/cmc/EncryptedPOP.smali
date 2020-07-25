.class public Lorg/spongycastle/asn1/cmc/EncryptedPOP;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "EncryptedPOP.java"


# instance fields
.field private final cms:Lorg/spongycastle/asn1/cms/ContentInfo;

.field private final request:Lorg/spongycastle/asn1/cmc/TaggedRequest;

.field private final thePOPAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private final witness:[B

.field private final witnessAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/TaggedRequest;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/TaggedRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->request:Lorg/spongycastle/asn1/cmc/TaggedRequest;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->cms:Lorg/spongycastle/asn1/cms/ContentInfo;

    .line 44
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->thePOPAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 45
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witnessAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 46
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witness:[B

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmc/TaggedRequest;Lorg/spongycastle/asn1/cms/ContentInfo;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .param p1, "request"    # Lorg/spongycastle/asn1/cmc/TaggedRequest;
    .param p2, "cms"    # Lorg/spongycastle/asn1/cms/ContentInfo;
    .param p3, "thePOPAlgID"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p4, "witnessAlgID"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p5, "witness"    # [B

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->request:Lorg/spongycastle/asn1/cmc/TaggedRequest;

    .line 57
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->cms:Lorg/spongycastle/asn1/cms/ContentInfo;

    .line 58
    iput-object p3, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->thePOPAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 59
    iput-object p4, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witnessAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 60
    invoke-static {p5}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witness:[B

    .line 61
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/EncryptedPOP;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 65
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;

    if-eqz v0, :cond_0

    .line 67
    check-cast p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;

    .line 75
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 70
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 72
    new-instance v0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/EncryptedPOP;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 75
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCms()Lorg/spongycastle/asn1/cms/ContentInfo;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->cms:Lorg/spongycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public getRequest()Lorg/spongycastle/asn1/cmc/TaggedRequest;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->request:Lorg/spongycastle/asn1/cmc/TaggedRequest;

    return-object v0
.end method

.method public getThePOPAlgID()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->thePOPAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getWitness()[B
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witness:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getWitnessAlgID()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witnessAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 108
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->request:Lorg/spongycastle/asn1/cmc/TaggedRequest;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 109
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->cms:Lorg/spongycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 110
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->thePOPAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witnessAlgID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 112
    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/spongycastle/asn1/cmc/EncryptedPOP;->witness:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 114
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
