.class public interface abstract Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;
.super Ljava/lang/Object;
.source "UAObjectIdentifiers.java"


# static fields
.field public static final UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu4145be:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu4145le:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7564digest_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7564digest_384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7564digest_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7564mac_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7564mac_384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7564mac_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cbc_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cbc_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cbc_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ccm_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ccm_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ccm_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cfb_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cfb_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cfb_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cmac_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cmac_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624cmac_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ctr_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ctr_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ctr_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ecb_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ecb_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ecb_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624gmac_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624gmac_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624gmac_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624kw_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624kw_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624kw_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ofb_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ofb_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624ofb_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624xts_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624xts_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final dstu7624xts_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.804.2.1.1.1"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 20
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.1.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu4145le:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.1.1.1.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu4145be:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 25
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.2.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7564digest_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.2.2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7564digest_384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.2.3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7564digest_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.2.4"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7564mac_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.2.5"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7564mac_384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.2.2.6"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7564mac_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.1.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 42
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.1.2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.1.3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ecb_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 47
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.2.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.2.2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 51
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.2.3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ctr_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.3.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.3.2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 58
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.3.3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cfb_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 61
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.4.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cmac_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 63
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.4.2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cmac_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 65
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.4.3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cmac_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.5.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 70
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.5.2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 72
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.5.3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624cbc_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 75
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.6.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 77
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.6.2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 79
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.6.3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ofb_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 82
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.7.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.7.2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 86
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.7.3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624gmac_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 89
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.8.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 91
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.8.2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 93
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.8.3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624ccm_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 96
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.9.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624xts_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 98
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.9.2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624xts_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 100
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.9.3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624xts_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 103
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.10.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_128:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 105
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.10.2"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 107
    sget-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->UaOid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.1.3.10.3"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/ua/UAObjectIdentifiers;->dstu7624kw_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
