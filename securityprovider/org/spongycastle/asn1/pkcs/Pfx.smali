.class public Lorg/spongycastle/asn1/pkcs/Pfx;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "Pfx.java"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private contentInfo:Lorg/spongycastle/asn1/pkcs/ContentInfo;

.field private macData:Lorg/spongycastle/asn1/pkcs/MacData;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v2, 0x3

    .line 24
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 20
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->macData:Lorg/spongycastle/asn1/pkcs/MacData;

    .line 25
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 26
    .local v0, "version":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "wrong version for PFX PDU"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->contentInfo:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    .line 33
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 35
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/pkcs/MacData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/MacData;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->macData:Lorg/spongycastle/asn1/pkcs/MacData;

    .line 37
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/pkcs/ContentInfo;Lorg/spongycastle/asn1/pkcs/MacData;)V
    .locals 1
    .param p1, "contentInfo"    # Lorg/spongycastle/asn1/pkcs/ContentInfo;
    .param p2, "macData"    # Lorg/spongycastle/asn1/pkcs/MacData;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->macData:Lorg/spongycastle/asn1/pkcs/MacData;

    .line 59
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->contentInfo:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    .line 60
    iput-object p2, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->macData:Lorg/spongycastle/asn1/pkcs/MacData;

    .line 61
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/Pfx;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 42
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/Pfx;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Lorg/spongycastle/asn1/pkcs/Pfx;

    .line 52
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 47
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 49
    new-instance v0, Lorg/spongycastle/asn1/pkcs/Pfx;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/Pfx;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 52
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAuthSafe()Lorg/spongycastle/asn1/pkcs/ContentInfo;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->contentInfo:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    return-object v0
.end method

.method public getMacData()Lorg/spongycastle/asn1/pkcs/MacData;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->macData:Lorg/spongycastle/asn1/pkcs/MacData;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 77
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 78
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->contentInfo:Lorg/spongycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 80
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->macData:Lorg/spongycastle/asn1/pkcs/MacData;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/Pfx;->macData:Lorg/spongycastle/asn1/pkcs/MacData;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 85
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
