.class public Lorg/spongycastle/asn1/x509/TargetInformation;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TargetInformation.java"


# instance fields
.field private targets:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/TargetInformation;->targets:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/Targets;)V
    .locals 1
    .param p1, "targets"    # Lorg/spongycastle/asn1/x509/Targets;

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 84
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/TargetInformation;->targets:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 85
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/Target;)V
    .locals 1
    .param p1, "targets"    # [Lorg/spongycastle/asn1/x509/Target;

    .prologue
    .line 96
    new-instance v0, Lorg/spongycastle/asn1/x509/Targets;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/x509/Targets;-><init>([Lorg/spongycastle/asn1/x509/Target;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/TargetInformation;-><init>(Lorg/spongycastle/asn1/x509/Targets;)V

    .line 97
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TargetInformation;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 36
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/TargetInformation;

    if-eqz v0, :cond_0

    .line 38
    check-cast p0, Lorg/spongycastle/asn1/x509/TargetInformation;

    .line 45
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 40
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 42
    new-instance v0, Lorg/spongycastle/asn1/x509/TargetInformation;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/TargetInformation;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTargetsObjects()[Lorg/spongycastle/asn1/x509/Targets;
    .locals 5

    .prologue
    .line 67
    iget-object v4, p0, Lorg/spongycastle/asn1/x509/TargetInformation;->targets:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v0, v4, [Lorg/spongycastle/asn1/x509/Targets;

    .line 68
    .local v0, "copy":[Lorg/spongycastle/asn1/x509/Targets;
    const/4 v1, 0x0

    .line 69
    .local v1, "count":I
    iget-object v4, p0, Lorg/spongycastle/asn1/x509/TargetInformation;->targets:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/Targets;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Targets;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 73
    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/TargetInformation;->targets:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
