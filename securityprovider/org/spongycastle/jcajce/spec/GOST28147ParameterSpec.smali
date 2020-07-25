.class public Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;
.super Ljava/lang/Object;
.source "GOST28147ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static oidMappings:Ljava/util/Map;


# instance fields
.field private iv:[B

.field private sBox:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->oidMappings:Ljava/util/Map;

    .line 90
    sget-object v0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->oidMappings:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_CryptoPro_A_ParamSet:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "E-A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->oidMappings:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_CryptoPro_B_ParamSet:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "E-B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->oidMappings:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_CryptoPro_C_ParamSet:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "E-C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->oidMappings:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_CryptoPro_D_ParamSet:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "E-D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sBoxName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->iv:[B

    .line 19
    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->sBox:[B

    .line 42
    invoke-static {p1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->getSBox(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->sBox:[B

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "sBoxName"    # Ljava/lang/String;
    .param p2, "iv"    # [B

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 50
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->iv:[B

    .line 52
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->iv:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[B)V
    .locals 1
    .param p1, "sBoxName"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "iv"    # [B

    .prologue
    .line 59
    invoke-static {p1}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->iv:[B

    .line 61
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "sBox"    # [B

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->iv:[B

    .line 19
    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->sBox:[B

    .line 24
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->sBox:[B

    .line 26
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->sBox:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 3
    .param p1, "sBox"    # [B
    .param p2, "iv"    # [B

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;-><init>([B)V

    .line 34
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->iv:[B

    .line 36
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->iv:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    return-void
.end method

.method private static getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 4
    .param p0, "sBoxOid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 98
    sget-object v1, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->oidMappings:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, "sBoxName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown OID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->iv:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSBox()[B
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->sBox:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSbox()[B
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->sBox:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
