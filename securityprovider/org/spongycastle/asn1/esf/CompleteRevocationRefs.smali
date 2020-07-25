.class public Lorg/spongycastle/asn1/esf/CompleteRevocationRefs;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CompleteRevocationRefs.java"


# instance fields
.field private crlOcspRefs:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 38
    .local v0, "seqEnum":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/esf/CrlOcspRef;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/CrlOcspRef;

    goto :goto_0

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 43
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/esf/CrlOcspRef;)V
    .locals 1
    .param p1, "crlOcspRefs"    # [Lorg/spongycastle/asn1/esf/CrlOcspRef;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 47
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 48
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/CompleteRevocationRefs;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 23
    instance-of v0, p0, Lorg/spongycastle/asn1/esf/CompleteRevocationRefs;

    if-eqz v0, :cond_0

    .line 25
    check-cast p0, Lorg/spongycastle/asn1/esf/CompleteRevocationRefs;

    .line 32
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 27
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/esf/CompleteRevocationRefs;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/esf/CompleteRevocationRefs;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCrlOcspRefs()[Lorg/spongycastle/asn1/esf/CrlOcspRef;
    .locals 3

    .prologue
    .line 52
    iget-object v2, p0, Lorg/spongycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/esf/CrlOcspRef;

    .line 53
    .local v1, "result":[Lorg/spongycastle/asn1/esf/CrlOcspRef;
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 55
    iget-object v2, p0, Lorg/spongycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 56
    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 55
    invoke-static {v2}, Lorg/spongycastle/asn1/esf/CrlOcspRef;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/CrlOcspRef;

    move-result-object v2

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-object v1
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/CompleteRevocationRefs;->crlOcspRefs:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
