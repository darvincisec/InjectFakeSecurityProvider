.class public Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;
.super Ljava/lang/Object;
.source "TLSKDF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$Mappings;,
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA512;,
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA384;,
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA256;,
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;,
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS11;,
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS10;,
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLSKeyMaterialFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static PRF_legacy(Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;)[B
    .locals 14
    .param p0, "parameters"    # Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;

    .prologue
    const/4 v13, 0x0

    .line 78
    new-instance v5, Lorg/spongycastle/crypto/macs/HMac;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createMD5()Lorg/spongycastle/crypto/Digest;

    move-result-object v12

    invoke-direct {v5, v12}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 79
    .local v5, "md5Hmac":Lorg/spongycastle/crypto/Mac;
    new-instance v10, Lorg/spongycastle/crypto/macs/HMac;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA1()Lorg/spongycastle/crypto/Digest;

    move-result-object v12

    invoke-direct {v10, v12}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 81
    .local v10, "sha1HMac":Lorg/spongycastle/crypto/Mac;
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 82
    .local v3, "label":[B
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getSeed()[B

    move-result-object v12

    invoke-static {v3, v12}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v4

    .line 83
    .local v4, "labelSeed":[B
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getSecret()[B

    move-result-object v9

    .line 85
    .local v9, "secret":[B
    array-length v12, v9

    add-int/lit8 v12, v12, 0x1

    div-int/lit8 v8, v12, 0x2

    .line 86
    .local v8, "s_half":I
    new-array v6, v8, [B

    .line 87
    .local v6, "s1":[B
    new-array v7, v8, [B

    .line 88
    .local v7, "s2":[B
    invoke-static {v9, v13, v6, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    array-length v12, v9

    sub-int/2addr v12, v8

    invoke-static {v9, v12, v7, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getLength()I

    move-result v11

    .line 92
    .local v11, "size":I
    new-array v0, v11, [B

    .line 93
    .local v0, "b1":[B
    new-array v1, v11, [B

    .line 95
    .local v1, "b2":[B
    invoke-static {v5, v6, v4, v0}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;->hmac_hash(Lorg/spongycastle/crypto/Mac;[B[B[B)V

    .line 96
    invoke-static {v10, v7, v4, v1}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;->hmac_hash(Lorg/spongycastle/crypto/Mac;[B[B[B)V

    .line 98
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v11, :cond_0

    .line 100
    aget-byte v12, v0, v2

    aget-byte v13, v1, v2

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v0, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-object v0
.end method

.method static synthetic access$000(Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;)[B
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;

    .prologue
    .line 23
    invoke-static {p0}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;->PRF_legacy(Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/spongycastle/crypto/Mac;[B[B[B)V
    .locals 0
    .param p0, "x0"    # Lorg/spongycastle/crypto/Mac;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B

    .prologue
    .line 23
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;->hmac_hash(Lorg/spongycastle/crypto/Mac;[B[B[B)V

    return-void
.end method

.method private static hmac_hash(Lorg/spongycastle/crypto/Mac;[B[B[B)V
    .locals 10
    .param p0, "mac"    # Lorg/spongycastle/crypto/Mac;
    .param p1, "secret"    # [B
    .param p2, "seed"    # [B
    .param p3, "out"    # [B

    .prologue
    const/4 v9, 0x0

    .line 171
    new-instance v6, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v6, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {p0, v6}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 172
    move-object v0, p2

    .line 173
    .local v0, "a":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v5

    .line 174
    .local v5, "size":I
    array-length v6, p3

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    div-int v4, v6, v5

    .line 175
    .local v4, "iterations":I
    invoke-interface {p0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v6

    new-array v1, v6, [B

    .line 176
    .local v1, "buf":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v6

    new-array v2, v6, [B

    .line 177
    .local v2, "buf2":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 179
    array-length v6, v0

    invoke-interface {p0, v0, v9, v6}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 180
    invoke-interface {p0, v1, v9}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 181
    move-object v0, v1

    .line 182
    array-length v6, v0

    invoke-interface {p0, v0, v9, v6}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 183
    array-length v6, p2

    invoke-interface {p0, p2, v9, v6}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 184
    invoke-interface {p0, v2, v9}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 185
    mul-int v6, v5, v3

    array-length v7, p3

    mul-int v8, v5, v3

    sub-int/2addr v7, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v2, v9, p3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method
