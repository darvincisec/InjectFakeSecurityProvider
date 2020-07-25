.class public Lorg/spongycastle/asn1/cmp/PBMParameter;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PBMParameter.java"


# instance fields
.field private iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

.field private mac:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private owf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private salt:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "salt"    # Lorg/spongycastle/asn1/ASN1OctetString;
    .param p2, "owf"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "iterationCount"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p4, "mac"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->salt:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 61
    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->owf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 62
    iput-object p3, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    .line 63
    iput-object p4, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->mac:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->salt:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->owf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 25
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    .line 26
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->mac:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 27
    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/asn1/x509/AlgorithmIdentifier;ILorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 4
    .param p1, "salt"    # [B
    .param p2, "owf"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "iterationCount"    # I
    .param p4, "mac"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 50
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v2, p3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {p0, v0, p2, v1, p4}, Lorg/spongycastle/asn1/cmp/PBMParameter;-><init>(Lorg/spongycastle/asn1/ASN1OctetString;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 52
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PBMParameter;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 31
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;

    if-eqz v0, :cond_0

    .line 33
    check-cast p0, Lorg/spongycastle/asn1/cmp/PBMParameter;

    .line 41
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 36
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 38
    new-instance v0, Lorg/spongycastle/asn1/cmp/PBMParameter;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PBMParameter;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 41
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIterationCount()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getMac()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->mac:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOwf()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->owf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSalt()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->salt:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 110
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->salt:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->owf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 112
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 113
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PBMParameter;->mac:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 115
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
