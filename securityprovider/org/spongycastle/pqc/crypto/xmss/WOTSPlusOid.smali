.class final Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;
.super Ljava/lang/Object;
.source "WOTSPlusOid.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;


# static fields
.field private static final oidLookupTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final oid:I

.field private final stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x83

    const/16 v8, 0x43

    const/16 v7, 0x40

    const/16 v6, 0x20

    const/16 v5, 0x10

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;>;"
    const-string v1, "SHA-256"

    invoke-static {v1, v6, v5, v8}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->createKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;

    const v3, 0x1000001

    const-string v4, "WOTSP_SHA2-256_W16"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "SHA-512"

    invoke-static {v1, v7, v5, v9}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->createKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;

    const v3, 0x2000002

    const-string v4, "WOTSP_SHA2-512_W16"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "SHAKE128"

    invoke-static {v1, v6, v5, v8}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->createKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;

    const v3, 0x3000003

    const-string v4, "WOTSP_SHAKE128_W16"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "SHAKE256"

    invoke-static {v1, v7, v5, v9}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->createKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;

    const v3, 0x4000004

    const-string v4, "WOTSP_SHAKE256_W16"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->oidLookupTable:Ljava/util/Map;

    .line 27
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "oid"    # I
    .param p2, "stringRepresentation"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->oid:I

    .line 48
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->stringRepresentation:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private static createKey(Ljava/lang/String;III)Ljava/lang/String;
    .locals 2
    .param p0, "algorithmName"    # Ljava/lang/String;
    .param p1, "digestSize"    # I
    .param p2, "winternitzParameter"    # I
    .param p3, "len"    # I

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithmName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static lookup(Ljava/lang/String;III)Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;
    .locals 2
    .param p0, "algorithmName"    # Ljava/lang/String;
    .param p1, "digestSize"    # I
    .param p2, "winternitzParameter"    # I
    .param p3, "len"    # I

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithmName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    sget-object v0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->oidLookupTable:Ljava/util/Map;

    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->createKey(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;

    return-object v0
.end method


# virtual methods
.method public getOid()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->oid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/WOTSPlusOid;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method
