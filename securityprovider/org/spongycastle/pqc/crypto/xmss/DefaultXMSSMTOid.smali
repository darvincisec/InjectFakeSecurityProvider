.class public final Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;
.super Ljava/lang/Object;
.source "DefaultXMSSMTOid.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/xmss/XMSSOid;


# static fields
.field private static final oidLookupTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final oid:I

.field private final stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v3, 0x43

    const/16 v12, 0x40

    const/16 v1, 0x20

    const v11, 0x1000001

    const/16 v2, 0x10

    .line 19
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 20
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;>;"
    const-string v0, "SHA-256"

    const/16 v4, 0x14

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-256_W16_H20_D2"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v0, "SHA-256"

    const/16 v4, 0x14

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-256_W16_H20_D4"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v0, "SHA-256"

    const/16 v4, 0x28

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-256_W16_H40_D2"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "SHA-256"

    const/16 v4, 0x28

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-256_W16_H40_D4"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "SHA-256"

    const/16 v4, 0x28

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-256_W16_H40_D8"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "SHA-256"

    const/16 v4, 0x3c

    const/16 v5, 0x8

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-256_W16_H60_D3"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "SHA-256"

    const/16 v4, 0x3c

    const/4 v5, 0x6

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-256_W16_H60_D6"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "SHA-256"

    const/16 v4, 0x3c

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-256_W16_H60_D12"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v4, "SHA2-512"

    const/16 v7, 0x83

    const/16 v8, 0x14

    const/4 v9, 0x2

    move v5, v12

    move v6, v2

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-512_W16_H20_D2"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v4, "SHA2-512"

    const/16 v7, 0x83

    const/16 v8, 0x14

    const/4 v9, 0x4

    move v5, v12

    move v6, v2

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-512_W16_H20_D4"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v4, "SHA2-512"

    const/16 v7, 0x83

    const/16 v8, 0x28

    const/4 v9, 0x2

    move v5, v12

    move v6, v2

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-512_W16_H40_D2"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v4, "SHA2-512"

    const/16 v7, 0x83

    const/16 v8, 0x28

    const/4 v9, 0x4

    move v5, v12

    move v6, v2

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-512_W16_H40_D4"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v4, "SHA2-512"

    const/16 v7, 0x83

    const/16 v8, 0x28

    const/16 v9, 0x8

    move v5, v12

    move v6, v2

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-512_W16_H40_D8"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v4, "SHA2-512"

    const/16 v7, 0x83

    const/16 v8, 0x3c

    const/4 v9, 0x3

    move v5, v12

    move v6, v2

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-512_W16_H60_D3"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v4, "SHA2-512"

    const/16 v7, 0x83

    const/16 v8, 0x3c

    const/4 v9, 0x6

    move v5, v12

    move v6, v2

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-512_W16_H60_D6"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v4, "SHA2-512"

    const/16 v7, 0x83

    const/16 v8, 0x3c

    const/16 v9, 0xc

    move v5, v12

    move v6, v2

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHA2-512_W16_H60_D12"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "SHAKE128"

    const/16 v4, 0x14

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHAKE128_W16_H20_D2"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "SHAKE128"

    const/16 v4, 0x14

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHAKE128_W16_H20_D4"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "SHAKE128"

    const/16 v4, 0x28

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHAKE128_W16_H40_D2"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "SHAKE128"

    const/16 v4, 0x28

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHAKE128_W16_H40_D4"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "SHAKE128"

    const/16 v4, 0x28

    const/16 v5, 0x8

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHAKE128_W16_H40_D8"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "SHAKE128"

    const/16 v4, 0x3c

    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHAKE128_W16_H60_D3"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "SHAKE128"

    const/16 v4, 0x3c

    const/4 v5, 0x6

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v5, "XMSSMT_SHAKE128_W16_H60_D6"

    invoke-direct {v4, v11, v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "SHAKE128"

    const/16 v4, 0x3c

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE128_W16_H60_D12"

    invoke-direct {v1, v11, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "SHAKE256"

    const/16 v3, 0x83

    const/16 v4, 0x14

    const/4 v5, 0x2

    move v1, v12

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H20_D2"

    invoke-direct {v1, v11, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "SHAKE256"

    const/16 v3, 0x83

    const/16 v4, 0x14

    const/4 v5, 0x4

    move v1, v12

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H20_D4"

    invoke-direct {v1, v11, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "SHAKE256"

    const/16 v3, 0x83

    const/16 v4, 0x28

    const/4 v5, 0x2

    move v1, v12

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H40_D2"

    invoke-direct {v1, v11, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "SHAKE256"

    const/16 v3, 0x83

    const/16 v4, 0x28

    const/4 v5, 0x4

    move v1, v12

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H40_D4"

    invoke-direct {v1, v11, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "SHAKE256"

    const/16 v3, 0x83

    const/16 v4, 0x28

    const/16 v5, 0x8

    move v1, v12

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H40_D8"

    invoke-direct {v1, v11, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "SHAKE256"

    const/16 v3, 0x83

    const/16 v4, 0x3c

    const/4 v5, 0x3

    move v1, v12

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H60_D3"

    invoke-direct {v1, v11, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "SHAKE256"

    const/16 v3, 0x83

    const/16 v4, 0x3c

    const/4 v5, 0x6

    move v1, v12

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v3, "XMSSMT_SHAKE256_W16_H60_D6"

    invoke-direct {v1, v11, v3}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "SHAKE256"

    const/16 v3, 0x83

    const/16 v4, 0x3c

    const/16 v5, 0xc

    move v1, v12

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    const-string v2, "XMSSMT_SHAKE256_W16_H60_D12"

    invoke-direct {v1, v11, v2}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;-><init>(ILjava/lang/String;)V

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->oidLookupTable:Ljava/util/Map;

    .line 85
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "oid"    # I
    .param p2, "stringRepresentation"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->oid:I

    .line 107
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->stringRepresentation:Ljava/lang/String;

    .line 108
    return-void
.end method

.method private static createKey(Ljava/lang/String;IIIII)Ljava/lang/String;
    .locals 2
    .param p0, "algorithmName"    # Ljava/lang/String;
    .param p1, "digestSize"    # I
    .param p2, "winternitzParameter"    # I
    .param p3, "len"    # I
    .param p4, "height"    # I
    .param p5, "layers"    # I

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithmName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
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

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lookup(Ljava/lang/String;IIIII)Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;
    .locals 2
    .param p0, "algorithmName"    # Ljava/lang/String;
    .param p1, "digestSize"    # I
    .param p2, "winternitzParameter"    # I
    .param p3, "len"    # I
    .param p4, "height"    # I
    .param p5, "layers"    # I

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithmName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    sget-object v0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->oidLookupTable:Ljava/util/Map;

    invoke-static/range {p0 .. p5}, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->createKey(Ljava/lang/String;IIIII)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;

    return-object v0
.end method


# virtual methods
.method public getOid()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->oid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/DefaultXMSSMTOid;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method
