.class public Lorg/spongycastle/asn1/cmc/CMCFailInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CMCFailInfo.java"


# static fields
.field public static final authDataFail:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field public static final badAlg:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field public static final badCertId:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field public static final badIdentity:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field public static final badMessageCheck:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field public static final badRequest:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field public static final badTime:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field public static final internalCAError:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field public static final mustArchiveKeys:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field public static final noKeyReuse:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field public static final popFailed:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field public static final popRequired:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field private static range:Ljava/util/Map;

.field public static final tryLater:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

.field public static final unsupportedExt:Lorg/spongycastle/asn1/cmc/CMCFailInfo;


# instance fields
.field private final value:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badAlg:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 34
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badMessageCheck:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badRequest:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 36
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badTime:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 37
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x4

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badCertId:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 38
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x5

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->unsupportedExt:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 39
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x6

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->mustArchiveKeys:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x7

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badIdentity:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 41
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x8

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->popRequired:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 42
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x9

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->popFailed:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 43
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0xa

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->noKeyReuse:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 44
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0xb

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->internalCAError:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 45
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0xc

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->tryLater:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 46
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0xd

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCFailInfo;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->authDataFail:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    .line 52
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badAlg:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badAlg:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badMessageCheck:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badMessageCheck:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badRequest:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badRequest:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badTime:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badTime:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badCertId:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badCertId:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->popRequired:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->popRequired:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->unsupportedExt:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->unsupportedExt:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->mustArchiveKeys:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->mustArchiveKeys:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badIdentity:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badIdentity:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->popRequired:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->popRequired:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->popFailed:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->popFailed:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badCertId:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->badCertId:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->popRequired:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->popRequired:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->noKeyReuse:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->noKeyReuse:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->internalCAError:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->internalCAError:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->tryLater:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->tryLater:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->authDataFail:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->authDataFail:Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "value"    # Lorg/spongycastle/asn1/ASN1Integer;

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    .line 76
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCFailInfo;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 80
    instance-of v1, p0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    if-eqz v1, :cond_0

    .line 82
    check-cast p0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 97
    .end local p0    # "o":Ljava/lang/Object;
    .local v0, "status":Lorg/spongycastle/asn1/cmc/CMCFailInfo;
    :goto_0
    return-object p0

    .line 85
    .end local v0    # "status":Lorg/spongycastle/asn1/cmc/CMCFailInfo;
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_2

    .line 87
    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->range:Ljava/util/Map;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;

    .line 89
    .restart local v0    # "status":Lorg/spongycastle/asn1/cmc/CMCFailInfo;
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 91
    goto :goto_0

    .line 94
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown object in getInstance(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    .end local v0    # "status":Lorg/spongycastle/asn1/cmc/CMCFailInfo;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCFailInfo;->value:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method
