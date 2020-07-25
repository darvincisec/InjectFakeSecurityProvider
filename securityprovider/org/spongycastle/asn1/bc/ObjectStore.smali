.class public Lorg/spongycastle/asn1/bc/ObjectStore;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ObjectStore.java"


# instance fields
.field private final integrityCheck:Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

.field private final storeData:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 42
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 43
    .local v0, "sData":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v2, v0, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;

    if-eqz v2, :cond_0

    .line 45
    iput-object v0, p0, Lorg/spongycastle/asn1/bc/ObjectStore;->storeData:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 65
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/bc/ObjectStore;->integrityCheck:Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

    .line 66
    return-void

    .line 47
    :cond_0
    instance-of v2, v0, Lorg/spongycastle/asn1/bc/ObjectStoreData;

    if-eqz v2, :cond_1

    .line 49
    iput-object v0, p0, Lorg/spongycastle/asn1/bc/ObjectStore;->storeData:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 55
    .local v1, "seqData":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 57
    invoke-static {v1}, Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/bc/ObjectStore;->storeData:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {v1}, Lorg/spongycastle/asn1/bc/ObjectStoreData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/ObjectStoreData;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/bc/ObjectStore;->storeData:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;)V
    .locals 0
    .param p1, "encryptedObjectStoreData"    # Lorg/spongycastle/asn1/bc/EncryptedObjectStoreData;
    .param p2, "integrityCheck"    # Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/spongycastle/asn1/bc/ObjectStore;->storeData:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 37
    iput-object p2, p0, Lorg/spongycastle/asn1/bc/ObjectStore;->integrityCheck:Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/bc/ObjectStoreData;Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;)V
    .locals 0
    .param p1, "objectStoreData"    # Lorg/spongycastle/asn1/bc/ObjectStoreData;
    .param p2, "integrityCheck"    # Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/spongycastle/asn1/bc/ObjectStore;->storeData:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 30
    iput-object p2, p0, Lorg/spongycastle/asn1/bc/ObjectStore;->integrityCheck:Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

    .line 31
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/ObjectStore;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 70
    instance-of v0, p0, Lorg/spongycastle/asn1/bc/ObjectStore;

    if-eqz v0, :cond_0

    .line 72
    check-cast p0, Lorg/spongycastle/asn1/bc/ObjectStore;

    .line 79
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 74
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 76
    new-instance v0, Lorg/spongycastle/asn1/bc/ObjectStore;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/bc/ObjectStore;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 79
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIntegrityCheck()Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/bc/ObjectStore;->integrityCheck:Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

    return-object v0
.end method

.method public getStoreData()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/asn1/bc/ObjectStore;->storeData:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 96
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/bc/ObjectStore;->storeData:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 97
    iget-object v1, p0, Lorg/spongycastle/asn1/bc/ObjectStore;->integrityCheck:Lorg/spongycastle/asn1/bc/ObjectStoreIntegrityCheck;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 99
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
