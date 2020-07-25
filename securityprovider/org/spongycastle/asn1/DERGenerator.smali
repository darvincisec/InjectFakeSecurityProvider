.class public abstract Lorg/spongycastle/asn1/DERGenerator;
.super Lorg/spongycastle/asn1/ASN1Generator;
.source "DERGenerator.java"


# instance fields
.field private _isExplicit:Z

.field private _tagNo:I

.field private _tagged:Z


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/DERGenerator;->_tagged:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "tagNo"    # I
    .param p3, "isExplicit"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/ASN1Generator;-><init>(Ljava/io/OutputStream;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/DERGenerator;->_tagged:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/DERGenerator;->_tagged:Z

    .line 38
    iput-boolean p3, p0, Lorg/spongycastle/asn1/DERGenerator;->_isExplicit:Z

    .line 39
    iput p2, p0, Lorg/spongycastle/asn1/DERGenerator;->_tagNo:I

    .line 40
    return-void
.end method

.method private writeLength(Ljava/io/OutputStream;I)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    const/16 v3, 0x7f

    if-le p2, v3, :cond_1

    .line 49
    const/4 v1, 0x1

    .line 50
    .local v1, "size":I
    move v2, p2

    .line 52
    .local v2, "val":I
    :goto_0
    ushr-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    or-int/lit16 v3, v1, 0x80

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 59
    add-int/lit8 v3, v1, -0x1

    mul-int/lit8 v0, v3, 0x8

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 61
    shr-int v3, p2, v0

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 59
    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    .line 66
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "val":I
    :cond_1
    int-to-byte v3, p2

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 68
    :cond_2
    return-void
.end method


# virtual methods
.method writeDEREncoded(I[B)V
    .locals 5
    .param p1, "tag"    # I
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-boolean v3, p0, Lorg/spongycastle/asn1/DERGenerator;->_tagged:Z

    if-eqz v3, :cond_2

    .line 88
    iget v3, p0, Lorg/spongycastle/asn1/DERGenerator;->_tagNo:I

    or-int/lit16 v2, v3, 0x80

    .line 90
    .local v2, "tagNum":I
    iget-boolean v3, p0, Lorg/spongycastle/asn1/DERGenerator;->_isExplicit:Z

    if-eqz v3, :cond_0

    .line 92
    iget v3, p0, Lorg/spongycastle/asn1/DERGenerator;->_tagNo:I

    or-int/lit8 v3, v3, 0x20

    or-int/lit16 v1, v3, 0x80

    .line 94
    .local v1, "newTag":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0, p1, p2}, Lorg/spongycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    .line 98
    iget-object v3, p0, Lorg/spongycastle/asn1/DERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v3, v1, v4}, Lorg/spongycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    .line 116
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "newTag":I
    .end local v2    # "tagNum":I
    :goto_0
    return-void

    .line 102
    .restart local v2    # "tagNum":I
    :cond_0
    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_1

    .line 104
    iget-object v3, p0, Lorg/spongycastle/asn1/DERGenerator;->_out:Ljava/io/OutputStream;

    or-int/lit8 v4, v2, 0x20

    invoke-virtual {p0, v3, v4, p2}, Lorg/spongycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/asn1/DERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, v3, v2, p2}, Lorg/spongycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_0

    .line 114
    .end local v2    # "tagNum":I
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/asn1/DERGenerator;->_out:Ljava/io/OutputStream;

    invoke-virtual {p0, v3, p1, p2}, Lorg/spongycastle/asn1/DERGenerator;->writeDEREncoded(Ljava/io/OutputStream;I[B)V

    goto :goto_0
.end method

.method writeDEREncoded(Ljava/io/OutputStream;I[B)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "tag"    # I
    .param p3, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 77
    array-length v0, p3

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/DERGenerator;->writeLength(Ljava/io/OutputStream;I)V

    .line 78
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 79
    return-void
.end method
