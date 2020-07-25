.class public Lorg/spongycastle/asn1/cmc/ControlsProcessed;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ControlsProcessed.java"


# instance fields
.field private final bodyPartReferences:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/ControlsProcessed;->bodyPartReferences:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmc/BodyPartReference;)V
    .locals 1
    .param p1, "bodyPartRef"    # Lorg/spongycastle/asn1/cmc/BodyPartReference;

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 33
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/ControlsProcessed;->bodyPartReferences:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 34
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/cmc/BodyPartReference;)V
    .locals 1
    .param p1, "bodyList"    # [Lorg/spongycastle/asn1/cmc/BodyPartReference;

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/ControlsProcessed;->bodyPartReferences:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 41
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/ControlsProcessed;
    .locals 2
    .param p0, "src"    # Ljava/lang/Object;

    .prologue
    .line 46
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/ControlsProcessed;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lorg/spongycastle/asn1/cmc/ControlsProcessed;

    .line 55
    .end local p0    # "src":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 50
    .restart local p0    # "src":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 52
    new-instance v0, Lorg/spongycastle/asn1/cmc/ControlsProcessed;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/ControlsProcessed;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 55
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBodyList()[Lorg/spongycastle/asn1/cmc/BodyPartReference;
    .locals 3

    .prologue
    .line 70
    iget-object v2, p0, Lorg/spongycastle/asn1/cmc/ControlsProcessed;->bodyPartReferences:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/cmc/BodyPartReference;

    .line 72
    .local v1, "tmp":[Lorg/spongycastle/asn1/cmc/BodyPartReference;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/asn1/cmc/ControlsProcessed;->bodyPartReferences:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 74
    iget-object v2, p0, Lorg/spongycastle/asn1/cmc/ControlsProcessed;->bodyPartReferences:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cmc/BodyPartReference;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartReference;

    move-result-object v2

    aput-object v2, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-object v1
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/ControlsProcessed;->bodyPartReferences:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
