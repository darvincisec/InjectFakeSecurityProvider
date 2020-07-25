.class public Lorg/spongycastle/asn1/cryptopro/GostR3410KeyTransport;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "GostR3410KeyTransport.java"


# instance fields
.field private final sessionEncryptedKey:Lorg/spongycastle/asn1/cryptopro/Gost2814789EncryptedKey;

.field private final transportParameters:Lorg/spongycastle/asn1/cryptopro/GostR3410TransportParameters;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 28
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cryptopro/Gost2814789EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GostR3410KeyTransport;->sessionEncryptedKey:Lorg/spongycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/cryptopro/GostR3410TransportParameters;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cryptopro/GostR3410TransportParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GostR3410KeyTransport;->transportParameters:Lorg/spongycastle/asn1/cryptopro/GostR3410TransportParameters;

    .line 30
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cryptopro/GostR3410KeyTransport;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 35
    instance-of v0, p0, Lorg/spongycastle/asn1/cryptopro/GostR3410KeyTransport;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Lorg/spongycastle/asn1/cryptopro/GostR3410KeyTransport;

    .line 45
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 40
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 42
    new-instance v0, Lorg/spongycastle/asn1/cryptopro/GostR3410KeyTransport;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cryptopro/GostR3410KeyTransport;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 45
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSessionEncryptedKey()Lorg/spongycastle/asn1/cryptopro/Gost2814789EncryptedKey;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GostR3410KeyTransport;->sessionEncryptedKey:Lorg/spongycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    return-object v0
.end method

.method public getTransportParameters()Lorg/spongycastle/asn1/cryptopro/GostR3410TransportParameters;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/spongycastle/asn1/cryptopro/GostR3410KeyTransport;->transportParameters:Lorg/spongycastle/asn1/cryptopro/GostR3410TransportParameters;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 62
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cryptopro/GostR3410KeyTransport;->sessionEncryptedKey:Lorg/spongycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 63
    iget-object v1, p0, Lorg/spongycastle/asn1/cryptopro/GostR3410KeyTransport;->transportParameters:Lorg/spongycastle/asn1/cryptopro/GostR3410TransportParameters;

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/cryptopro/GostR3410KeyTransport;->transportParameters:Lorg/spongycastle/asn1/cryptopro/GostR3410TransportParameters;

    invoke-direct {v1, v3, v3, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 68
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
