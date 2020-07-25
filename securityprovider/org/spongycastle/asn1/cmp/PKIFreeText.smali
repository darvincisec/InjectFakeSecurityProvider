.class public Lorg/spongycastle/asn1/cmp/PKIFreeText;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PKIFreeText.java"


# instance fields
.field strings:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Lorg/spongycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/cmp/PKIFreeText;-><init>(Lorg/spongycastle/asn1/DERUTF8String;)V

    .line 65
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 44
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/spongycastle/asn1/DERUTF8String;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempt to insert non UTF8 STRING into PKIFreeText"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_1
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/PKIFreeText;->strings:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERUTF8String;)V
    .locals 1
    .param p1, "p"    # Lorg/spongycastle/asn1/DERUTF8String;

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 58
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIFreeText;->strings:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 59
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "strs"    # [Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 76
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 77
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 79
    new-instance v2, Lorg/spongycastle/asn1/DERUTF8String;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iput-object v2, p0, Lorg/spongycastle/asn1/cmp/PKIFreeText;->strings:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 82
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/DERUTF8String;)V
    .locals 1
    .param p1, "strs"    # [Lorg/spongycastle/asn1/DERUTF8String;

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 70
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIFreeText;->strings:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 71
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIFreeText;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 28
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/PKIFreeText;

    if-eqz v0, :cond_0

    .line 30
    check-cast p0, Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .line 37
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 32
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 34
    new-instance v0, Lorg/spongycastle/asn1/cmp/PKIFreeText;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PKIFreeText;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 37
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cmp/PKIFreeText;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 22
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIFreeText;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getStringAt(I)Lorg/spongycastle/asn1/DERUTF8String;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIFreeText;->strings:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERUTF8String;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIFreeText;->strings:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIFreeText;->strings:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
