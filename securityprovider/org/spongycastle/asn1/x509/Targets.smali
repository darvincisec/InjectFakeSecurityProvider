.class public Lorg/spongycastle/asn1/x509/Targets;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "Targets.java"


# instance fields
.field private targets:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0
    .param p1, "targets"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/Targets;->targets:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 72
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/x509/Target;)V
    .locals 1
    .param p1, "targets"    # [Lorg/spongycastle/asn1/x509/Target;

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 85
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/Targets;->targets:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 86
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Targets;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 50
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/Targets;

    if-eqz v0, :cond_0

    .line 52
    check-cast p0, Lorg/spongycastle/asn1/x509/Targets;

    .line 59
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 54
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/x509/Targets;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/Targets;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 59
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTargets()[Lorg/spongycastle/asn1/x509/Target;
    .locals 5

    .prologue
    .line 97
    iget-object v4, p0, Lorg/spongycastle/asn1/x509/Targets;->targets:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v3, v4, [Lorg/spongycastle/asn1/x509/Target;

    .line 98
    .local v3, "targs":[Lorg/spongycastle/asn1/x509/Target;
    const/4 v0, 0x0

    .line 99
    .local v0, "count":I
    iget-object v4, p0, Lorg/spongycastle/asn1/x509/Targets;->targets:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/Target;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Target;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_0

    .line 103
    :cond_0
    return-object v3
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/Targets;->targets:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
