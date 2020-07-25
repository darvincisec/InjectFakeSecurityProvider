.class public Lorg/spongycastle/pqc/asn1/XMSSKeyParams;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "XMSSKeyParams.java"


# instance fields
.field private final height:I

.field private final treeDigest:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private final version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 4
    .param p1, "height"    # I
    .param p2, "treeDigest"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 30
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 31
    iput p1, p0, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;->height:I

    .line 32
    iput-object p2, p0, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;->treeDigest:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 33
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "sequence"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;->height:I

    .line 39
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;->treeDigest:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 40
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/XMSSKeyParams;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 44
    instance-of v0, p0, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;

    if-eqz v0, :cond_0

    .line 46
    check-cast p0, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;

    .line 53
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 48
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 50
    new-instance v0, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 53
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;->height:I

    return v0
.end method

.method public getTreeDigest()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;->treeDigest:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 70
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 71
    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;->height:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 72
    iget-object v1, p0, Lorg/spongycastle/pqc/asn1/XMSSKeyParams;->treeDigest:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 74
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
