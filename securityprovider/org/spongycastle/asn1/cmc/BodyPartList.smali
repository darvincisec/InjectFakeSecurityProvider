.class public Lorg/spongycastle/asn1/cmc/BodyPartList;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "BodyPartList.java"


# instance fields
.field private final bodyPartIDs:[Lorg/spongycastle/asn1/cmc/BodyPartID;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 63
    invoke-static {p1}, Lorg/spongycastle/asn1/cmc/Utils;->toBodyPartIDArray(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartList;->bodyPartIDs:[Lorg/spongycastle/asn1/cmc/BodyPartID;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmc/BodyPartID;)V
    .locals 2
    .param p1, "bodyPartID"    # Lorg/spongycastle/asn1/cmc/BodyPartID;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/spongycastle/asn1/cmc/BodyPartID;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartList;->bodyPartIDs:[Lorg/spongycastle/asn1/cmc/BodyPartID;

    .line 51
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/cmc/BodyPartID;)V
    .locals 1
    .param p1, "bodyPartIDs"    # [Lorg/spongycastle/asn1/cmc/BodyPartID;

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 57
    invoke-static {p1}, Lorg/spongycastle/asn1/cmc/Utils;->clone([Lorg/spongycastle/asn1/cmc/BodyPartID;)[Lorg/spongycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartList;->bodyPartIDs:[Lorg/spongycastle/asn1/cmc/BodyPartID;

    .line 58
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartList;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 22
    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartList;

    if-eqz v0, :cond_0

    .line 24
    check-cast p0, Lorg/spongycastle/asn1/cmc/BodyPartList;

    .line 32
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 27
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/cmc/BodyPartList;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/BodyPartList;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cmc/BodyPartList;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 39
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/BodyPartList;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBodyPartIDs()[Lorg/spongycastle/asn1/cmc/BodyPartID;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartList;->bodyPartIDs:[Lorg/spongycastle/asn1/cmc/BodyPartID;

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/Utils;->clone([Lorg/spongycastle/asn1/cmc/BodyPartID;)[Lorg/spongycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/BodyPartList;->bodyPartIDs:[Lorg/spongycastle/asn1/cmc/BodyPartID;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
