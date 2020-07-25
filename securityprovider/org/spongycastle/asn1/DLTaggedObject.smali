.class public Lorg/spongycastle/asn1/DLTaggedObject;
.super Lorg/spongycastle/asn1/ASN1TaggedObject;
.source "DLTaggedObject.java"


# static fields
.field private static final ZERO_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/asn1/DLTaggedObject;->ZERO_BYTES:[B

    return-void
.end method

.method public constructor <init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 26
    return-void
.end method


# virtual methods
.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 5
    .param p1, "out"    # Lorg/spongycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa0

    .line 78
    iget-boolean v2, p0, Lorg/spongycastle/asn1/DLTaggedObject;->empty:Z

    if-nez v2, :cond_2

    .line 80
    iget-object v2, p0, Lorg/spongycastle/asn1/DLTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Primitive;->toDLObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 82
    .local v1, "primitive":Lorg/spongycastle/asn1/ASN1Primitive;
    iget-boolean v2, p0, Lorg/spongycastle/asn1/DLTaggedObject;->explicit:Z

    if-eqz v2, :cond_0

    .line 84
    iget v2, p0, Lorg/spongycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-virtual {p1, v4, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeTag(II)V

    .line 85
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 86
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    .end local v1    # "primitive":Lorg/spongycastle/asn1/ASN1Primitive;
    :goto_0
    return-void

    .line 94
    .restart local v1    # "primitive":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const/16 v0, 0xa0

    .line 103
    .local v0, "flags":I
    :goto_1
    iget v2, p0, Lorg/spongycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-virtual {p1, v0, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeTag(II)V

    .line 104
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeImplicitObject(Lorg/spongycastle/asn1/ASN1Primitive;)V

    goto :goto_0

    .line 100
    .end local v0    # "flags":I
    :cond_1
    const/16 v0, 0x80

    .restart local v0    # "flags":I
    goto :goto_1

    .line 109
    .end local v0    # "flags":I
    .end local v1    # "primitive":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_2
    iget v2, p0, Lorg/spongycastle/asn1/DLTaggedObject;->tagNo:I

    sget-object v3, Lorg/spongycastle/asn1/DLTaggedObject;->ZERO_BYTES:[B

    invoke-virtual {p1, v4, v2, v3}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(II[B)V

    goto :goto_0
.end method

.method encodedLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-boolean v1, p0, Lorg/spongycastle/asn1/DLTaggedObject;->empty:Z

    if-nez v1, :cond_1

    .line 54
    iget-object v1, p0, Lorg/spongycastle/asn1/DLTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->toDLObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0

    .line 56
    .local v0, "length":I
    iget-boolean v1, p0, Lorg/spongycastle/asn1/DLTaggedObject;->explicit:Z

    if-eqz v1, :cond_0

    .line 58
    iget v1, p0, Lorg/spongycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v1}, Lorg/spongycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v1

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 70
    .end local v0    # "length":I
    :goto_0
    return v1

    .line 63
    .restart local v0    # "length":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 65
    iget v1, p0, Lorg/spongycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v1}, Lorg/spongycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    .line 70
    .end local v0    # "length":I
    :cond_1
    iget v1, p0, Lorg/spongycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v1}, Lorg/spongycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method isConstructed()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 30
    iget-boolean v2, p0, Lorg/spongycastle/asn1/DLTaggedObject;->empty:Z

    if-nez v2, :cond_0

    .line 32
    iget-boolean v2, p0, Lorg/spongycastle/asn1/DLTaggedObject;->explicit:Z

    if-eqz v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/DLTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Primitive;->toDLObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 40
    .local v0, "primitive":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v1

    goto :goto_0
.end method
