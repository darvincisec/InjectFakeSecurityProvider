.class public Lorg/spongycastle/asn1/cmc/CMCStatus;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CMCStatus.java"


# static fields
.field public static final confirmRequired:Lorg/spongycastle/asn1/cmc/CMCStatus;

.field public static final failed:Lorg/spongycastle/asn1/cmc/CMCStatus;

.field public static final noSupport:Lorg/spongycastle/asn1/cmc/CMCStatus;

.field public static final partial:Lorg/spongycastle/asn1/cmc/CMCStatus;

.field public static final pending:Lorg/spongycastle/asn1/cmc/CMCStatus;

.field public static final popRequired:Lorg/spongycastle/asn1/cmc/CMCStatus;

.field private static range:Ljava/util/Map;

.field public static final success:Lorg/spongycastle/asn1/cmc/CMCStatus;


# instance fields
.field private final value:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCStatus;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->success:Lorg/spongycastle/asn1/cmc/CMCStatus;

    .line 28
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCStatus;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->failed:Lorg/spongycastle/asn1/cmc/CMCStatus;

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCStatus;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->pending:Lorg/spongycastle/asn1/cmc/CMCStatus;

    .line 30
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x4

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCStatus;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->noSupport:Lorg/spongycastle/asn1/cmc/CMCStatus;

    .line 31
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x5

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCStatus;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->confirmRequired:Lorg/spongycastle/asn1/cmc/CMCStatus;

    .line 32
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x6

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCStatus;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->popRequired:Lorg/spongycastle/asn1/cmc/CMCStatus;

    .line 33
    new-instance v0, Lorg/spongycastle/asn1/cmc/CMCStatus;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x7

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmc/CMCStatus;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->partial:Lorg/spongycastle/asn1/cmc/CMCStatus;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    .line 39
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->success:Lorg/spongycastle/asn1/cmc/CMCStatus;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCStatus;->success:Lorg/spongycastle/asn1/cmc/CMCStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->failed:Lorg/spongycastle/asn1/cmc/CMCStatus;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCStatus;->failed:Lorg/spongycastle/asn1/cmc/CMCStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->pending:Lorg/spongycastle/asn1/cmc/CMCStatus;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCStatus;->pending:Lorg/spongycastle/asn1/cmc/CMCStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->noSupport:Lorg/spongycastle/asn1/cmc/CMCStatus;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCStatus;->noSupport:Lorg/spongycastle/asn1/cmc/CMCStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->confirmRequired:Lorg/spongycastle/asn1/cmc/CMCStatus;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCStatus;->confirmRequired:Lorg/spongycastle/asn1/cmc/CMCStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->popRequired:Lorg/spongycastle/asn1/cmc/CMCStatus;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCStatus;->popRequired:Lorg/spongycastle/asn1/cmc/CMCStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/spongycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->partial:Lorg/spongycastle/asn1/cmc/CMCStatus;

    iget-object v1, v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->value:Lorg/spongycastle/asn1/ASN1Integer;

    sget-object v2, Lorg/spongycastle/asn1/cmc/CMCStatus;->partial:Lorg/spongycastle/asn1/cmc/CMCStatus;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "value"    # Lorg/spongycastle/asn1/ASN1Integer;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/CMCStatus;->value:Lorg/spongycastle/asn1/ASN1Integer;

    .line 53
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/CMCStatus;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 57
    instance-of v1, p0, Lorg/spongycastle/asn1/cmc/CMCStatus;

    if-eqz v1, :cond_0

    .line 59
    check-cast p0, Lorg/spongycastle/asn1/cmc/CMCStatus;

    .line 74
    .end local p0    # "o":Ljava/lang/Object;
    .local v0, "status":Lorg/spongycastle/asn1/cmc/CMCStatus;
    :goto_0
    return-object p0

    .line 62
    .end local v0    # "status":Lorg/spongycastle/asn1/cmc/CMCStatus;
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_2

    .line 64
    sget-object v1, Lorg/spongycastle/asn1/cmc/CMCStatus;->range:Ljava/util/Map;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/cmc/CMCStatus;

    .line 66
    .restart local v0    # "status":Lorg/spongycastle/asn1/cmc/CMCStatus;
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 68
    goto :goto_0

    .line 71
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

    .line 74
    .end local v0    # "status":Lorg/spongycastle/asn1/cmc/CMCStatus;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/CMCStatus;->value:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method
