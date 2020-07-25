.class public Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;
.super Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLSKeyMaterialFactory;
.source "TLSKDF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TLS12"
.end annotation


# instance fields
.field private final prf:Lorg/spongycastle/crypto/Mac;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/spongycastle/crypto/Mac;)V
    .locals 0
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "prf"    # Lorg/spongycastle/crypto/Mac;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLSKeyMaterialFactory;-><init>(Ljava/lang/String;)V

    .line 113
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->prf:Lorg/spongycastle/crypto/Mac;

    .line 114
    return-void
.end method

.method private PRF(Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;Lorg/spongycastle/crypto/Mac;)[B
    .locals 5
    .param p1, "parameters"    # Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;
    .param p2, "prf"    # Lorg/spongycastle/crypto/Mac;

    .prologue
    .line 130
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 131
    .local v1, "label":[B
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getSeed()[B

    move-result-object v4

    invoke-static {v1, v4}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v2

    .line 132
    .local v2, "labelSeed":[B
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getSecret()[B

    move-result-object v3

    .line 134
    .local v3, "secret":[B
    invoke-virtual {p1}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getLength()I

    move-result v4

    new-array v0, v4, [B

    .line 136
    .local v0, "buf":[B
    invoke-static {p2, v3, v2, v0}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;->access$100(Lorg/spongycastle/crypto/Mac;[B[B[B)V

    .line 138
    return-object v0
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 120
    instance-of v0, p1, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    check-cast p1, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->prf:Lorg/spongycastle/crypto/Mac;

    invoke-direct {p0, p1, v1}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->PRF(Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;Lorg/spongycastle/crypto/Mac;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 125
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
