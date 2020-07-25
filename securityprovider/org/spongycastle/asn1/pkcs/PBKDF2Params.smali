.class public Lorg/spongycastle/asn1/pkcs/PBKDF2Params;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PBKDF2Params.java"


# static fields
.field private static final algid_hmacWithSHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# instance fields
.field private final iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

.field private final keyLength:Lorg/spongycastle/asn1/ASN1Integer;

.field private final octStr:Lorg/spongycastle/asn1/ASN1OctetString;

.field private final prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->INSTANCE:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 139
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 140
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    .line 142
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 146
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_1

    .line 148
    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    .line 149
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 163
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    if-eqz v1, :cond_2

    .line 165
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 177
    :goto_1
    return-void

    .line 155
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 160
    :cond_1
    iput-object v3, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 169
    .end local v1    # "o":Ljava/lang/Object;
    :cond_2
    iput-object v3, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    .line 174
    :cond_3
    iput-object v3, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    .line 175
    iput-object v3, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;-><init>([BII)V

    .line 73
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I
    .param p3, "keyLength"    # I

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 88
    return-void
.end method

.method public constructor <init>([BIILorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 4
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I
    .param p3, "keyLength"    # I
    .param p4, "prf"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 104
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 105
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v2, p2

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    .line 107
    if-lez p3, :cond_0

    .line 109
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v2, p3

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    .line 116
    :goto_0
    iput-object p4, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 117
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0
.end method

.method public constructor <init>([BILorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I
    .param p3, "prf"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 132
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PBKDF2Params;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 49
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    .line 59
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 54
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 56
    new-instance v0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 59
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIterationCount()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getKeyLength()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrf()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 236
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public isDefaultPrf()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 246
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 248
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 249
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 251
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 256
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->algid_hmacWithSHA1:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 258
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->prf:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 261
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
