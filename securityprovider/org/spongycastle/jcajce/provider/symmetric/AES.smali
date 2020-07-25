.class public final Lorg/spongycastle/jcajce/provider/symmetric/AES;
.super Ljava/lang/Object;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/symmetric/AES$Mappings;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamsCCM;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParams;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamGenGCM;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamGenCCM;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$AlgParamGen;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithMD5And256BitAESCBCOpenSSL;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithMD5And192BitAESCBCOpenSSL;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithMD5And128BitAESCBCOpenSSL;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And256BitAESBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And192BitAESBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And128BitAESBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd256BitAESBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd192BitAESBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHAAnd128BitAESBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$KeyGen256;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$KeyGen192;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$KeyGen128;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$KeyGen;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHA256AESCBC256;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHA256AESCBC192;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHA256AESCBC128;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHA1AESCBC256;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHA1AESCBC192;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithSHA1AESCBC128;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$PBEWithAESCBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$RFC5649Wrap;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$RFC3211Wrap;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$WrapPad;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$Wrap;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$Poly1305KeyGen;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$Poly1305;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$KeyFactory;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$AESCCMMAC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$AESGMAC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$AESCMAC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$CCM;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$GCM;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$OFB;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$CFB;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$CBC;,
        Lorg/spongycastle/jcajce/provider/symmetric/AES$ECB;
    }
.end annotation


# static fields
.field private static final generalAesAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/provider/symmetric/AES;->generalAesAttributes:Ljava/util/Map;

    .line 57
    sget-object v0, Lorg/spongycastle/jcajce/provider/symmetric/AES;->generalAesAttributes:Ljava/util/Map;

    const-string v1, "SupportedKeyClasses"

    const-string v2, "javax.crypto.SecretKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/spongycastle/jcajce/provider/symmetric/AES;->generalAesAttributes:Ljava/util/Map;

    const-string v1, "SupportedKeyFormats"

    const-string v2, "RAW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/spongycastle/jcajce/provider/symmetric/AES;->generalAesAttributes:Ljava/util/Map;

    return-object v0
.end method
