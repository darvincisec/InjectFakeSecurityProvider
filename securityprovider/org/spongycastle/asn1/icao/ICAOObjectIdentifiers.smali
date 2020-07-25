.class public interface abstract Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;
.super Ljava/lang/Object;
.source "ICAOObjectIdentifiers.java"


# static fields
.field public static final id_icao:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_aaProtocolObject:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_cscaMasterList:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_cscaMasterListSigningKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_documentTypeList:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_extensions:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_extensions_namechangekeyrollover:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_ldsSecurityObject:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_mrtd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final id_icao_mrtd_security:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2.23.136"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 18
    sget-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    sget-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 24
    sget-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_ldsSecurityObject:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    sget-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_cscaMasterList:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    sget-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_cscaMasterListSigningKey:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    sget-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_documentTypeList:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    sget-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_aaProtocolObject:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    sget-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_mrtd_security:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_extensions:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 48
    sget-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_extensions:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/icao/ICAOObjectIdentifiers;->id_icao_extensions_namechangekeyrollover:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
