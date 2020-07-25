.class Lorg/spongycastle/asn1/ASN1Set$1;
.super Ljava/lang/Object;
.source "ASN1Set.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1SetParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/asn1/ASN1Set;->parser()Lorg/spongycastle/asn1/ASN1SetParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private index:I

.field private final max:I

.field final synthetic this$0:Lorg/spongycastle/asn1/ASN1Set;

.field final synthetic val$outer:Lorg/spongycastle/asn1/ASN1Set;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 1
    .param p1, "this$0"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 322
    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1Set$1;->this$0:Lorg/spongycastle/asn1/ASN1Set;

    iput-object p2, p0, Lorg/spongycastle/asn1/ASN1Set$1;->val$outer:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set$1;->this$0:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/ASN1Set$1;->max:I

    return-void
.end method


# virtual methods
.method public getLoadedObject()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set$1;->val$outer:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public readObject()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    iget v1, p0, Lorg/spongycastle/asn1/ASN1Set$1;->index:I

    iget v2, p0, Lorg/spongycastle/asn1/ASN1Set$1;->max:I

    if-ne v1, v2, :cond_1

    .line 331
    const/4 v0, 0x0

    .line 344
    :cond_0
    :goto_0
    return-object v0

    .line 334
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Set$1;->this$0:Lorg/spongycastle/asn1/ASN1Set;

    iget v2, p0, Lorg/spongycastle/asn1/ASN1Set$1;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/spongycastle/asn1/ASN1Set$1;->index:I

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 335
    .local v0, "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 337
    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    .end local v0    # "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->parser()Lorg/spongycastle/asn1/ASN1SequenceParser;

    move-result-object v0

    goto :goto_0

    .line 339
    .restart local v0    # "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_2
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 341
    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    .end local v0    # "obj":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->parser()Lorg/spongycastle/asn1/ASN1SetParser;

    move-result-object v0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Set$1;->val$outer:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method
