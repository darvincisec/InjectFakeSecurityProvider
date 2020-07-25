.class public Lorg/spongycastle/asn1/bc/ObjectDataSequence;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ObjectDataSequence.java"

# interfaces
.implements Lorg/spongycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/spongycastle/asn1/ASN1Object;",
        "Lorg/spongycastle/util/Iterable",
        "<",
        "Lorg/spongycastle/asn1/ASN1Encodable;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataSequence:[Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/spongycastle/asn1/ASN1Encodable;

    iput-object v1, p0, Lorg/spongycastle/asn1/bc/ObjectDataSequence;->dataSequence:[Lorg/spongycastle/asn1/ASN1Encodable;

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/asn1/bc/ObjectDataSequence;->dataSequence:[Lorg/spongycastle/asn1/ASN1Encodable;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 36
    iget-object v1, p0, Lorg/spongycastle/asn1/bc/ObjectDataSequence;->dataSequence:[Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/bc/ObjectData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/ObjectData;

    move-result-object v2

    aput-object v2, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/asn1/bc/ObjectData;)V
    .locals 3
    .param p1, "dataSequence"    # [Lorg/spongycastle/asn1/bc/ObjectData;

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 25
    array-length v0, p1

    new-array v0, v0, [Lorg/spongycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lorg/spongycastle/asn1/bc/ObjectDataSequence;->dataSequence:[Lorg/spongycastle/asn1/ASN1Encodable;

    .line 27
    iget-object v0, p0, Lorg/spongycastle/asn1/bc/ObjectDataSequence;->dataSequence:[Lorg/spongycastle/asn1/ASN1Encodable;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/bc/ObjectDataSequence;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 43
    instance-of v0, p0, Lorg/spongycastle/asn1/bc/ObjectDataSequence;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Lorg/spongycastle/asn1/bc/ObjectDataSequence;

    .line 52
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 47
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 49
    new-instance v0, Lorg/spongycastle/asn1/bc/ObjectDataSequence;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/bc/ObjectDataSequence;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 52
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/spongycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lorg/spongycastle/util/Arrays$Iterator;

    iget-object v1, p0, Lorg/spongycastle/asn1/bc/ObjectDataSequence;->dataSequence:[Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1}, Lorg/spongycastle/util/Arrays$Iterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/spongycastle/asn1/bc/ObjectDataSequence;->dataSequence:[Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
