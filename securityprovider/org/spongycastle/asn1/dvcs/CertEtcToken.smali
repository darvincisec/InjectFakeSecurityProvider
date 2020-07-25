.class public Lorg/spongycastle/asn1/dvcs/CertEtcToken;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertEtcToken.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# static fields
.field public static final TAG_ASSERTION:I = 0x3

.field public static final TAG_CAPABILITIES:I = 0x8

.field public static final TAG_CERTIFICATE:I = 0x0

.field public static final TAG_CRL:I = 0x4

.field public static final TAG_ESSCERTID:I = 0x1

.field public static final TAG_OCSPCERTID:I = 0x6

.field public static final TAG_OCSPCERTSTATUS:I = 0x5

.field public static final TAG_OCSPRESPONSE:I = 0x7

.field public static final TAG_PKISTATUS:I = 0x2

.field private static final explicit:[Z


# instance fields
.field private extension:Lorg/spongycastle/asn1/x509/Extension;

.field private tagNo:I

.field private value:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->explicit:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "tagNo"    # I
    .param p2, "value"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 62
    iput p1, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    .line 63
    iput-object p2, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 64
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V
    .locals 3
    .param p1, "choice"    # Lorg/spongycastle/asn1/ASN1TaggedObject;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    .line 76
    iget v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    packed-switch v0, :pswitch_data_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_0
    invoke-static {p1, v1}, Lorg/spongycastle/asn1/x509/Certificate;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 108
    :goto_0
    return-void

    .line 82
    :pswitch_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ess/ESSCertID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ess/ESSCertID;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-static {p1, v1}, Lorg/spongycastle/asn1/cmp/PKIStatusInfo;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 88
    :pswitch_3
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 91
    :pswitch_4
    invoke-static {p1, v1}, Lorg/spongycastle/asn1/x509/CertificateList;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/CertificateList;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 94
    :pswitch_5
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ocsp/CertStatus;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/CertStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 97
    :pswitch_6
    invoke-static {p1, v1}, Lorg/spongycastle/asn1/ocsp/CertID;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/CertID;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 100
    :pswitch_7
    invoke-static {p1, v1}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 103
    :pswitch_8
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/smime/SMIMECapabilities;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/smime/SMIMECapabilities;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/Extension;)V
    .locals 1
    .param p1, "extension"    # Lorg/spongycastle/asn1/x509/Extension;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    .line 69
    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->extension:Lorg/spongycastle/asn1/x509/Extension;

    .line 70
    return-void
.end method

.method public static arrayFromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/dvcs/CertEtcToken;
    .locals 3
    .param p0, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    .line 164
    .local v1, "tmp":[Lorg/spongycastle/asn1/dvcs/CertEtcToken;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 166
    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    move-result-object v2

    aput-object v2, v1, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-object v1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/CertEtcToken;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 112
    instance-of v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    if-eqz v0, :cond_0

    .line 114
    check-cast p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    .line 125
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 116
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    check-cast p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/dvcs/CertEtcToken;-><init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V

    move-object p0, v0

    goto :goto_0

    .line 120
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    if-eqz p0, :cond_2

    .line 122
    new-instance v0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/Extension;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extension;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/dvcs/CertEtcToken;-><init>(Lorg/spongycastle/asn1/x509/Extension;)V

    move-object p0, v0

    goto :goto_0

    .line 125
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getExtension()Lorg/spongycastle/asn1/x509/Extension;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->extension:Lorg/spongycastle/asn1/x509/Extension;

    return-object v0
.end method

.method public getTagNo()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    return v0
.end method

.method public getValue()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->extension:Lorg/spongycastle/asn1/x509/Extension;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    sget-object v1, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->explicit:[Z

    iget v2, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    aget-boolean v1, v1, v2

    iget v2, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->tagNo:I

    iget-object v3, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->extension:Lorg/spongycastle/asn1/x509/Extension;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/Extension;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CertEtcToken {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->value:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
