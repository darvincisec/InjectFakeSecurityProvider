.class public Lorg/spongycastle/asn1/cmp/ProtectedPart;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ProtectedPart.java"


# instance fields
.field private body:Lorg/spongycastle/asn1/cmp/PKIBody;

.field private header:Lorg/spongycastle/asn1/cmp/PKIHeader;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmp/PKIHeader;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/ProtectedPart;->header:Lorg/spongycastle/asn1/cmp/PKIHeader;

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmp/PKIBody;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIBody;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/ProtectedPart;->body:Lorg/spongycastle/asn1/cmp/PKIBody;

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/PKIHeader;Lorg/spongycastle/asn1/cmp/PKIBody;)V
    .locals 0
    .param p1, "header"    # Lorg/spongycastle/asn1/cmp/PKIHeader;
    .param p2, "body"    # Lorg/spongycastle/asn1/cmp/PKIBody;

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/ProtectedPart;->header:Lorg/spongycastle/asn1/cmp/PKIHeader;

    .line 39
    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/ProtectedPart;->body:Lorg/spongycastle/asn1/cmp/PKIBody;

    .line 40
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/ProtectedPart;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 23
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/ProtectedPart;

    if-eqz v0, :cond_0

    .line 25
    check-cast p0, Lorg/spongycastle/asn1/cmp/ProtectedPart;

    .line 33
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 28
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 30
    new-instance v0, Lorg/spongycastle/asn1/cmp/ProtectedPart;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/ProtectedPart;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBody()Lorg/spongycastle/asn1/cmp/PKIBody;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/ProtectedPart;->body:Lorg/spongycastle/asn1/cmp/PKIBody;

    return-object v0
.end method

.method public getHeader()Lorg/spongycastle/asn1/cmp/PKIHeader;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/ProtectedPart;->header:Lorg/spongycastle/asn1/cmp/PKIHeader;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 65
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/ProtectedPart;->header:Lorg/spongycastle/asn1/cmp/PKIHeader;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 66
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/ProtectedPart;->body:Lorg/spongycastle/asn1/cmp/PKIBody;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 68
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
