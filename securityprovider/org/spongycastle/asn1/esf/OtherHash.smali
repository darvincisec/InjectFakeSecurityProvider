.class public Lorg/spongycastle/asn1/esf/OtherHash;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OtherHash.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private otherHash:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

.field private sha1Hash:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "sha1Hash"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/OtherHash;->sha1Hash:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;)V
    .locals 0
    .param p1, "otherHash"    # Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/OtherHash;->otherHash:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

    .line 48
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "sha1Hash"    # [B

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 52
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->sha1Hash:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 53
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/OtherHash;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 29
    instance-of v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;

    if-eqz v0, :cond_0

    .line 31
    check-cast p0, Lorg/spongycastle/asn1/esf/OtherHash;

    .line 37
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 33
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/esf/OtherHash;

    check-cast p0, Lorg/spongycastle/asn1/ASN1OctetString;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/esf/OtherHash;-><init>(Lorg/spongycastle/asn1/ASN1OctetString;)V

    move-object p0, v0

    goto :goto_0

    .line 37
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/esf/OtherHash;

    invoke-static {p0}, Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/esf/OtherHash;-><init>(Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->otherHash:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->otherHash:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;->getHashAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    goto :goto_0
.end method

.method public getHashValue()[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->otherHash:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->sha1Hash:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->otherHash:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;->getHashValue()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->otherHash:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->sha1Hash:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/OtherHash;->otherHash:Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/esf/OtherHashAlgAndValue;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0
.end method
