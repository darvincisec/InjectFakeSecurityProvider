.class Lorg/spongycastle/asn1/ASN1OutputStream$ImplicitOutputStream;
.super Lorg/spongycastle/asn1/ASN1OutputStream;
.source "ASN1OutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/ASN1OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImplicitOutputStream"
.end annotation


# instance fields
.field private first:Z

.field final synthetic this$0:Lorg/spongycastle/asn1/ASN1OutputStream;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1OutputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->this$0:Lorg/spongycastle/asn1/ASN1OutputStream;

    .line 178
    invoke-direct {p0, p2}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->first:Z

    .line 179
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-boolean v0, p0, Lorg/spongycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->first:Z

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/asn1/ASN1OutputStream$ImplicitOutputStream;->first:Z

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_0
.end method
