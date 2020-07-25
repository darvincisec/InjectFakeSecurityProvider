.class Lorg/spongycastle/asn1/ASN1ObjectIdentifier$OidHandle;
.super Ljava/lang/Object;
.source "ASN1ObjectIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OidHandle"
.end annotation


# instance fields
.field private final enc:[B

.field private final key:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .param p1, "enc"    # [B

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier$OidHandle;->key:I

    .line 448
    iput-object p1, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier$OidHandle;->enc:[B

    .line 449
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 458
    instance-of v0, p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier$OidHandle;->enc:[B

    check-cast p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier$OidHandle;->enc:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    .line 463
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier$OidHandle;->key:I

    return v0
.end method
