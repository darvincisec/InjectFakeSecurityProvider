.class public Lorg/spongycastle/asn1/crmf/CertId;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertId.java"


# instance fields
.field private issuer:Lorg/spongycastle/asn1/x509/GeneralName;

.field private serialNumber:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/CertId;->issuer:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/crmf/CertId;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/GeneralName;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x509/GeneralName;
    .param p2, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 48
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/crmf/CertId;-><init>(Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/ASN1Integer;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/GeneralName;Lorg/spongycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x509/GeneralName;
    .param p2, "serialNumber"    # Lorg/spongycastle/asn1/ASN1Integer;

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/spongycastle/asn1/crmf/CertId;->issuer:Lorg/spongycastle/asn1/x509/GeneralName;

    .line 54
    iput-object p2, p0, Lorg/spongycastle/asn1/crmf/CertId;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    .line 55
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertId;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 28
    instance-of v0, p0, Lorg/spongycastle/asn1/crmf/CertId;

    if-eqz v0, :cond_0

    .line 30
    check-cast p0, Lorg/spongycastle/asn1/crmf/CertId;

    .line 38
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 33
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/crmf/CertId;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/crmf/CertId;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/crmf/CertId;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "isExplicit"    # Z

    .prologue
    .line 43
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/CertId;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertId;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIssuer()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertId;->issuer:Lorg/spongycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getSerialNumber()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/spongycastle/asn1/crmf/CertId;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 79
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertId;->issuer:Lorg/spongycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 80
    iget-object v1, p0, Lorg/spongycastle/asn1/crmf/CertId;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 82
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
