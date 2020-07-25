.class public Lorg/spongycastle/asn1/cmc/BodyPartReference;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "BodyPartReference.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private final bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

.field private final bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/cmc/BodyPartID;)V
    .locals 1
    .param p1, "bodyPartID"    # Lorg/spongycastle/asn1/cmc/BodyPartID;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmc/BodyPartPath;)V
    .locals 1
    .param p1, "bodyPartPath"    # Lorg/spongycastle/asn1/cmc/BodyPartPath;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    .line 36
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    .line 37
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartReference;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 42
    instance-of v2, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;

    if-eqz v2, :cond_0

    .line 44
    check-cast p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;

    .line 76
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 47
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_4

    .line 49
    instance-of v2, p0, Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_2

    move-object v2, p0

    .line 51
    check-cast v2, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 53
    .local v0, "asn1Prim":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v2, v0, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_1

    .line 55
    new-instance p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/BodyPartID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartID;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/cmc/BodyPartReference;-><init>(Lorg/spongycastle/asn1/cmc/BodyPartID;)V

    goto :goto_0

    .line 57
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, v0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_2

    .line 59
    new-instance p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/BodyPartPath;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartPath;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/cmc/BodyPartReference;-><init>(Lorg/spongycastle/asn1/cmc/BodyPartPath;)V

    goto :goto_0

    .line 62
    .end local v0    # "asn1Prim":Lorg/spongycastle/asn1/ASN1Encodable;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, [B

    if-eqz v2, :cond_3

    .line 66
    :try_start_0
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/cmc/BodyPartReference;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartReference;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown encoding in getInstance()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown object in getInstance(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_4
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBodyPartID()Lorg/spongycastle/asn1/cmc/BodyPartID;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    return-object v0
.end method

.method public getBodyPartPath()Lorg/spongycastle/asn1/cmc/BodyPartPath;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    return-object v0
.end method

.method public isBodyPartID()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cmc/BodyPartID;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/BodyPartReference;->bodyPartPath:Lorg/spongycastle/asn1/cmc/BodyPartPath;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/cmc/BodyPartPath;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0
.end method
