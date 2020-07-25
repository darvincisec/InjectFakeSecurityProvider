.class public final Lorg/spongycastle/crypto/util/DERMacData$Builder;
.super Ljava/lang/Object;
.source "DERMacData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/util/DERMacData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private ephemDataU:Lorg/spongycastle/asn1/ASN1OctetString;

.field private ephemDataV:Lorg/spongycastle/asn1/ASN1OctetString;

.field private idU:Lorg/spongycastle/asn1/ASN1OctetString;

.field private idV:Lorg/spongycastle/asn1/ASN1OctetString;

.field private text:[B

.field private final type:Lorg/spongycastle/crypto/util/DERMacData$Type;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/util/DERMacData$Type;[B[B[B[B)V
    .locals 1
    .param p1, "type"    # Lorg/spongycastle/crypto/util/DERMacData$Type;
    .param p2, "idU"    # [B
    .param p3, "idV"    # [B
    .param p4, "ephemDataU"    # [B
    .param p5, "ephemDataV"    # [B

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->type:Lorg/spongycastle/crypto/util/DERMacData$Type;

    .line 59
    invoke-static {p2}, Lorg/spongycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->idU:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 60
    invoke-static {p3}, Lorg/spongycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->idV:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 61
    invoke-static {p4}, Lorg/spongycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->ephemDataU:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 62
    invoke-static {p5}, Lorg/spongycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->ephemDataV:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 63
    return-void
.end method

.method private concatenate([B[B[B[B[B[B)[B
    .locals 2
    .param p1, "header"    # [B
    .param p2, "id1"    # [B
    .param p3, "id2"    # [B
    .param p4, "ed1"    # [B
    .param p5, "ed2"    # [B
    .param p6, "text"    # [B

    .prologue
    .line 99
    invoke-static {p1, p2, p3}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    invoke-static {p4, p5, p6}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lorg/spongycastle/crypto/util/DERMacData;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 80
    sget-object v0, Lorg/spongycastle/crypto/util/DERMacData$1;->$SwitchMap$org$spongycastle$crypto$util$DERMacData$Type:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->type:Lorg/spongycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/util/DERMacData$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown type encountered in build"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :pswitch_0
    new-instance v7, Lorg/spongycastle/crypto/util/DERMacData;

    iget-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->type:Lorg/spongycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/util/DERMacData$Type;->getHeader()[B

    move-result-object v1

    iget-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->idU:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 85
    invoke-static {v0}, Lorg/spongycastle/crypto/util/DerUtil;->toByteArray(Lorg/spongycastle/asn1/ASN1Primitive;)[B

    move-result-object v2

    iget-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->idV:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-static {v0}, Lorg/spongycastle/crypto/util/DerUtil;->toByteArray(Lorg/spongycastle/asn1/ASN1Primitive;)[B

    move-result-object v3

    iget-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->ephemDataU:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 86
    invoke-static {v0}, Lorg/spongycastle/crypto/util/DerUtil;->toByteArray(Lorg/spongycastle/asn1/ASN1Primitive;)[B

    move-result-object v4

    iget-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->ephemDataV:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-static {v0}, Lorg/spongycastle/crypto/util/DerUtil;->toByteArray(Lorg/spongycastle/asn1/ASN1Primitive;)[B

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->text:[B

    move-object v0, p0

    .line 84
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/util/DERMacData$Builder;->concatenate([B[B[B[B[B[B)[B

    move-result-object v0

    invoke-direct {v7, v0, v8}, Lorg/spongycastle/crypto/util/DERMacData;-><init>([BLorg/spongycastle/crypto/util/DERMacData$1;)V

    move-object v0, v7

    .line 89
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v7, Lorg/spongycastle/crypto/util/DERMacData;

    iget-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->type:Lorg/spongycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/util/DERMacData$Type;->getHeader()[B

    move-result-object v1

    iget-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->idV:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 90
    invoke-static {v0}, Lorg/spongycastle/crypto/util/DerUtil;->toByteArray(Lorg/spongycastle/asn1/ASN1Primitive;)[B

    move-result-object v2

    iget-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->idU:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-static {v0}, Lorg/spongycastle/crypto/util/DerUtil;->toByteArray(Lorg/spongycastle/asn1/ASN1Primitive;)[B

    move-result-object v3

    iget-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->ephemDataV:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 91
    invoke-static {v0}, Lorg/spongycastle/crypto/util/DerUtil;->toByteArray(Lorg/spongycastle/asn1/ASN1Primitive;)[B

    move-result-object v4

    iget-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->ephemDataU:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-static {v0}, Lorg/spongycastle/crypto/util/DerUtil;->toByteArray(Lorg/spongycastle/asn1/ASN1Primitive;)[B

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->text:[B

    move-object v0, p0

    .line 89
    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/util/DERMacData$Builder;->concatenate([B[B[B[B[B[B)[B

    move-result-object v0

    invoke-direct {v7, v0, v8}, Lorg/spongycastle/crypto/util/DERMacData;-><init>([BLorg/spongycastle/crypto/util/DERMacData$1;)V

    move-object v0, v7

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public withText([B)Lorg/spongycastle/crypto/util/DERMacData$Builder;
    .locals 3
    .param p1, "text"    # [B

    .prologue
    const/4 v2, 0x0

    .line 73
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    invoke-static {p1}, Lorg/spongycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-direct {v0, v2, v2, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-static {v0}, Lorg/spongycastle/crypto/util/DerUtil;->toByteArray(Lorg/spongycastle/asn1/ASN1Primitive;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/util/DERMacData$Builder;->text:[B

    .line 75
    return-object p0
.end method
