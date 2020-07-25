.class public Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertificateHolderAuthorization.java"


# static fields
.field static AuthorizationRole:Lorg/spongycastle/asn1/eac/BidirectionalMap; = null

.field public static final CVCA:I = 0xc0

.field public static final DV_DOMESTIC:I = 0x80

.field public static final DV_FOREIGN:I = 0x40

.field public static final IS:I = 0x0

.field public static final RADG3:I = 0x1

.field public static final RADG4:I = 0x2

.field static ReverseMap:Ljava/util/Hashtable;

.field static RightsDecodeMap:Ljava/util/Hashtable;

.field public static final id_role_EAC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field accessRights:Lorg/spongycastle/asn1/DERApplicationSpecific;

.field oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    sget-object v0, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->bsi_de:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3.1.2.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->id_role_EAC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->RightsDecodeMap:Ljava/util/Hashtable;

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/eac/BidirectionalMap;

    invoke-direct {v0}, Lorg/spongycastle/asn1/eac/BidirectionalMap;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->AuthorizationRole:Lorg/spongycastle/asn1/eac/BidirectionalMap;

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->ReverseMap:Ljava/util/Hashtable;

    .line 45
    sget-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->RightsDecodeMap:Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RADG4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->RightsDecodeMap:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RADG3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->AuthorizationRole:Lorg/spongycastle/asn1/eac/BidirectionalMap;

    const/16 v1, 0xc0

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CVCA"

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/asn1/eac/BidirectionalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->AuthorizationRole:Lorg/spongycastle/asn1/eac/BidirectionalMap;

    const/16 v1, 0x80

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DV_DOMESTIC"

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/asn1/eac/BidirectionalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->AuthorizationRole:Lorg/spongycastle/asn1/eac/BidirectionalMap;

    const/16 v1, 0x40

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DV_FOREIGN"

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/asn1/eac/BidirectionalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->AuthorizationRole:Lorg/spongycastle/asn1/eac/BidirectionalMap;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IS"

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/asn1/eac/BidirectionalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;I)V
    .locals 1
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "rights"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 114
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->setOid(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 115
    int-to-byte v0, p2

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->setAccessRights(B)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERApplicationSpecific;)V
    .locals 2
    .param p1, "aSpe"    # Lorg/spongycastle/asn1/DERApplicationSpecific;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_0

    .line 129
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->setPrivateData(Lorg/spongycastle/asn1/ASN1InputStream;)V

    .line 131
    :cond_0
    return-void
.end method

.method public static getFlag(Ljava/lang/String;)I
    .locals 4
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-object v1, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->AuthorizationRole:Lorg/spongycastle/asn1/eac/BidirectionalMap;

    invoke-virtual {v1, p0}, Lorg/spongycastle/asn1/eac/BidirectionalMap;->getReverse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 70
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getRoleDescription(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 64
    sget-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->AuthorizationRole:Lorg/spongycastle/asn1/eac/BidirectionalMap;

    invoke-static {p0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/eac/BidirectionalMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private setAccessRights(B)V
    .locals 3
    .param p1, "rights"    # B

    .prologue
    .line 148
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 149
    .local v0, "accessRights":[B
    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 150
    new-instance v1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v2, 0x13

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(I[B)V

    iput-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->accessRights:Lorg/spongycastle/asn1/DERApplicationSpecific;

    .line 151
    return-void
.end method

.method private setOid(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0
    .param p1, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 169
    return-void
.end method

.method private setPrivateData(Lorg/spongycastle/asn1/ASN1InputStream;)V
    .locals 3
    .param p1, "cha"    # Lorg/spongycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 83
    .local v0, "obj":Lorg/spongycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    .line 85
    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v0    # "obj":Lorg/spongycastle/asn1/ASN1Primitive;
    iput-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 91
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 92
    .restart local v0    # "obj":Lorg/spongycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    if-eqz v1, :cond_1

    .line 94
    check-cast v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    .end local v0    # "obj":Lorg/spongycastle/asn1/ASN1Primitive;
    iput-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->accessRights:Lorg/spongycastle/asn1/DERApplicationSpecific;

    .line 100
    return-void

    .line 89
    .restart local v0    # "obj":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no Oid in CerticateHolderAuthorization"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No access rights in CerticateHolderAuthorization"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getAccessRights()I
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->accessRights:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getOid()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 178
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 179
    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->accessRights:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 181
    new-instance v1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v2, 0x4c

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
