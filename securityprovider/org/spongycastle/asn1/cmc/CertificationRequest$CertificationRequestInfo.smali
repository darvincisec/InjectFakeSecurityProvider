.class Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertificationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/cmc/CertificationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertificationRequestInfo"
.end annotation


# instance fields
.field private final attributes:Lorg/spongycastle/asn1/ASN1Set;

.field private final subject:Lorg/spongycastle/asn1/x500/X500Name;

.field private final subjectPublicKeyInfo:Lorg/spongycastle/asn1/ASN1Sequence;

.field final synthetic this$0:Lorg/spongycastle/asn1/cmc/CertificationRequest;

.field private final version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/cmc/CertificationRequest;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p2, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 152
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->this$0:Lorg/spongycastle/asn1/cmc/CertificationRequest;

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 153
    invoke-virtual {p2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 155
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "incorrect sequence size for CertificationRequestInfo"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_0
    invoke-virtual {p2, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 159
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    .line 160
    invoke-virtual {p2, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 161
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 163
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "incorrect subjectPublicKeyInfo size for CertificationRequestInfo"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 167
    .local v0, "tagobj":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "incorrect tag number on attributes for CertificationRequestInfo"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_2
    invoke-static {v0, v3}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/asn1/cmc/CertificationRequest;Lorg/spongycastle/asn1/ASN1Sequence;Lorg/spongycastle/asn1/cmc/CertificationRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/asn1/cmc/CertificationRequest;
    .param p2, "x1"    # Lorg/spongycastle/asn1/ASN1Sequence;
    .param p3, "x2"    # Lorg/spongycastle/asn1/cmc/CertificationRequest$1;

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;-><init>(Lorg/spongycastle/asn1/cmc/CertificationRequest;Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/cmc/CertificationRequest;Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 3
    .param p2, "subject"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p3, "algorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p4, "subjectPublicKey"    # Lorg/spongycastle/asn1/DERBitString;
    .param p5, "attributes"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->this$0:Lorg/spongycastle/asn1/cmc/CertificationRequest;

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 176
    invoke-static {}, Lorg/spongycastle/asn1/cmc/CertificationRequest;->access$600()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 177
    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    .line 178
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/spongycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 179
    iput-object p5, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/asn1/cmc/CertificationRequest;Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/cmc/CertificationRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/asn1/cmc/CertificationRequest;
    .param p2, "x1"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p3, "x2"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p4, "x3"    # Lorg/spongycastle/asn1/DERBitString;
    .param p5, "x4"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p6, "x5"    # Lorg/spongycastle/asn1/cmc/CertificationRequest$1;

    .prologue
    .line 142
    invoke-direct/range {p0 .. p5}, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;-><init>(Lorg/spongycastle/asn1/cmc/CertificationRequest;Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Set;)V

    return-void
.end method

.method static synthetic access$200(Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;)Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;)Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->getSubject()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;)Lorg/spongycastle/asn1/ASN1Set;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->getAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;)Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    return-object v0
.end method

.method private getAttributes()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method private getSubject()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method private getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/ASN1Sequence;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method private getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 204
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 206
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 207
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 208
    iget-object v1, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 209
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->attributes:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v3, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 211
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
