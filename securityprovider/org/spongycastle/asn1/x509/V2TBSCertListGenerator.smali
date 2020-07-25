.class public Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;
.super Ljava/lang/Object;
.source "V2TBSCertListGenerator.java"


# static fields
.field private static final reasons:[Lorg/spongycastle/asn1/ASN1Sequence;


# instance fields
.field private crlentries:Lorg/spongycastle/asn1/ASN1EncodableVector;

.field private extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field private issuer:Lorg/spongycastle/asn1/x500/X500Name;

.field private nextUpdate:Lorg/spongycastle/asn1/x509/Time;

.field private signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private thisUpdate:Lorg/spongycastle/asn1/x509/Time;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/spongycastle/asn1/ASN1Sequence;

    sput-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    .line 53
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    aput-object v1, v0, v2

    .line 54
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v3}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    aput-object v1, v0, v3

    .line 55
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v4}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    aput-object v1, v0, v4

    .line 56
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v5}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    aput-object v1, v0, v5

    .line 57
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static {v6}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    aput-object v1, v0, v6

    .line 58
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x7

    const/4 v2, 0x7

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 61
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 62
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 63
    sget-object v0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    const/16 v1, 0xa

    const/16 v2, 0xa

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 43
    iput-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    .line 44
    iput-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    .line 45
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/spongycastle/asn1/ASN1EncodableVector;

    .line 68
    return-void
.end method

.method private static createInvalidityDateExtension(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 5
    .param p0, "invalidityDate"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .prologue
    .line 267
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 271
    .local v1, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :try_start_0
    sget-object v2, Lorg/spongycastle/asn1/x509/Extension;->invalidityDate:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 272
    new-instance v2, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v2

    .line 274
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error encoding reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 6
    .param p0, "reasonCode"    # I

    .prologue
    .line 248
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 250
    .local v2, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-static {p0}, Lorg/spongycastle/asn1/x509/CRLReason;->lookup(I)Lorg/spongycastle/asn1/x509/CRLReason;

    move-result-object v0

    .line 254
    .local v0, "crlReason":Lorg/spongycastle/asn1/x509/CRLReason;
    :try_start_0
    sget-object v3, Lorg/spongycastle/asn1/x509/Extension;->reasonCode:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 255
    new-instance v3, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/CRLReason;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v3

    .line 257
    :catch_0
    move-exception v1

    .line 259
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private internalAddCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "userCertificate"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p2, "revocationDate"    # Lorg/spongycastle/asn1/x509/Time;
    .param p3, "extensions"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 173
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 175
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 176
    invoke-virtual {v0, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 178
    if-eqz p3, :cond_0

    .line 180
    invoke-virtual {v0, p3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 183
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 184
    return-void
.end method


# virtual methods
.method public addCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1UTCTime;I)V
    .locals 1
    .param p1, "userCertificate"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p2, "revocationDate"    # Lorg/spongycastle/asn1/ASN1UTCTime;
    .param p3, "reason"    # I

    .prologue
    .line 123
    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;I)V

    .line 124
    return-void
.end method

.method public addCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;I)V
    .locals 1
    .param p1, "userCertificate"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p2, "revocationDate"    # Lorg/spongycastle/asn1/x509/Time;
    .param p3, "reason"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;ILorg/spongycastle/asn1/ASN1GeneralizedTime;)V

    .line 129
    return-void
.end method

.method public addCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;ILorg/spongycastle/asn1/ASN1GeneralizedTime;)V
    .locals 4
    .param p1, "userCertificate"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p2, "revocationDate"    # Lorg/spongycastle/asn1/x509/Time;
    .param p3, "reason"    # I
    .param p4, "invalidityDate"    # Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    .prologue
    .line 133
    if-eqz p3, :cond_3

    .line 135
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 137
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    sget-object v1, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    array-length v1, v1

    if-ge p3, v1, :cond_2

    .line 139
    if-gez p3, :cond_0

    .line 141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid reason value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    sget-object v1, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->reasons:[Lorg/spongycastle/asn1/ASN1Sequence;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 150
    :goto_0
    if-eqz p4, :cond_1

    .line 152
    invoke-static {p4}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createInvalidityDateExtension(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 155
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p0, p1, p2, v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->internalAddCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 169
    .end local v0    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :goto_1
    return-void

    .line 147
    .restart local v0    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_2
    invoke-static {p3}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createReasonExtension(I)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 157
    .end local v0    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_3
    if-eqz p4, :cond_4

    .line 159
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 161
    .restart local v0    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-static {p4}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->createInvalidityDateExtension(Lorg/spongycastle/asn1/ASN1GeneralizedTime;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 163
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {p0, p1, p2, v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->internalAddCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/ASN1Sequence;)V

    goto :goto_1

    .line 167
    .end local v0    # "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/x509/Extensions;)V

    goto :goto_1
.end method

.method public addCRLEntry(Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/x509/Time;Lorg/spongycastle/asn1/x509/Extensions;)V
    .locals 2
    .param p1, "userCertificate"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p2, "revocationDate"    # Lorg/spongycastle/asn1/x509/Time;
    .param p3, "extensions"    # Lorg/spongycastle/asn1/x509/Extensions;

    .prologue
    .line 188
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 190
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 191
    invoke-virtual {v0, p2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 193
    if-eqz p3, :cond_0

    .line 195
    invoke-virtual {v0, p3}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 198
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {p0, v1}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 199
    return-void
.end method

.method public addCRLEntry(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "crlEntry"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 118
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0, p1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 119
    return-void
.end method

.method public generateTBSCertList()Lorg/spongycastle/asn1/x509/TBSCertList;
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    if-nez v1, :cond_1

    .line 217
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not all mandatory fields set in V2 TBSCertList generator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 222
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 223
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 224
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 226
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 227
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 233
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 235
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 238
    :cond_3
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_4

    .line 240
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 243
    :cond_4
    new-instance v1, Lorg/spongycastle/asn1/x509/TBSCertList;

    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x509/TBSCertList;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v1
.end method

.method public setExtensions(Lorg/spongycastle/asn1/x509/Extensions;)V
    .locals 0
    .param p1, "extensions"    # Lorg/spongycastle/asn1/x509/Extensions;

    .prologue
    .line 210
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    .line 211
    return-void
.end method

.method public setExtensions(Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 1
    .param p1, "extensions"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 204
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->setExtensions(Lorg/spongycastle/asn1/x509/Extensions;)V

    .line 205
    return-void
.end method

.method public setIssuer(Lorg/spongycastle/asn1/x500/X500Name;)V
    .locals 0
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x500/X500Name;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    .line 89
    return-void
.end method

.method public setIssuer(Lorg/spongycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x509/X509Name;

    .prologue
    .line 83
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/X509Name;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    .line 84
    return-void
.end method

.method public setNextUpdate(Lorg/spongycastle/asn1/ASN1UTCTime;)V
    .locals 1
    .param p1, "nextUpdate"    # Lorg/spongycastle/asn1/ASN1UTCTime;

    .prologue
    .line 100
    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    .line 101
    return-void
.end method

.method public setNextUpdate(Lorg/spongycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "nextUpdate"    # Lorg/spongycastle/asn1/x509/Time;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/spongycastle/asn1/x509/Time;

    .line 113
    return-void
.end method

.method public setSignature(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "signature"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 75
    return-void
.end method

.method public setThisUpdate(Lorg/spongycastle/asn1/ASN1UTCTime;)V
    .locals 1
    .param p1, "thisUpdate"    # Lorg/spongycastle/asn1/ASN1UTCTime;

    .prologue
    .line 94
    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    .line 95
    return-void
.end method

.method public setThisUpdate(Lorg/spongycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "thisUpdate"    # Lorg/spongycastle/asn1/x509/Time;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/spongycastle/asn1/x509/Time;

    .line 107
    return-void
.end method
