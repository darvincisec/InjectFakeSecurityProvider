.class public Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;
.super Ljavax/crypto/MacSpi;
.source "BaseMac.java"

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;


# static fields
.field private static final gcmSpecClass:Ljava/lang/Class;


# instance fields
.field private keySize:I

.field private macEngine:Lorg/spongycastle/crypto/Mac;

.field private pbeHash:I

.field private scheme:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;

    const-string v1, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/Mac;)V
    .locals 1
    .param p1, "macEngine"    # Lorg/spongycastle/crypto/Mac;

    .prologue
    .line 44
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 40
    const/16 v0, 0xa0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 45
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    .line 46
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/Mac;III)V
    .locals 1
    .param p1, "macEngine"    # Lorg/spongycastle/crypto/Mac;
    .param p2, "scheme"    # I
    .param p3, "pbeHash"    # I
    .param p4, "keySize"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 40
    const/16 v0, 0xa0

    iput v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 54
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    .line 55
    iput p2, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    .line 56
    iput p3, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    .line 57
    iput p4, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    .line 58
    return-void
.end method

.method private static copyMap(Ljava/util/Map;)Ljava/util/Hashtable;
    .locals 4
    .param p0, "paramsMap"    # Ljava/util/Map;

    .prologue
    .line 267
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 269
    .local v2, "newTable":Ljava/util/Hashtable;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 270
    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "key":Ljava/lang/Object;
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    .end local v0    # "key":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->engineGetMacLength()I

    move-result v1

    new-array v0, v1, [B

    .line 260
    .local v0, "out":[B
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 262
    return-object v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 14
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 69
    new-instance v11, Ljava/security/InvalidKeyException;

    const-string v12, "key is null"

    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 72
    :cond_0
    instance-of v11, p1, Lorg/spongycastle/jcajce/PKCS12Key;

    if-eqz v11, :cond_a

    .line 79
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljavax/crypto/SecretKey;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .local v5, "k":Ljavax/crypto/SecretKey;
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v9, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .local v9, "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    instance-of v11, v5, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v11, :cond_1

    if-nez v9, :cond_1

    .line 97
    new-instance v9, Ljavax/crypto/spec/PBEParameterSpec;

    .end local v9    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    move-object v11, v5

    check-cast v11, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {v11}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v12

    move-object v11, v5

    check-cast v11, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {v11}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v11

    invoke-direct {v9, v12, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 100
    .restart local v9    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    :cond_1
    const/4 v2, 0x1

    .line 101
    .local v2, "digest":I
    const/16 v7, 0xa0

    .line 102
    .local v7, "keySize":I
    iget-object v11, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v11}, Lorg/spongycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "GOST"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 104
    const/4 v2, 0x6

    .line 105
    const/16 v7, 0x100

    .line 143
    :cond_2
    :goto_0
    const/4 v11, 0x2

    invoke-static {v5, v11, v2, v7, v9}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v8

    .line 172
    .end local v2    # "digest":I
    .end local v5    # "k":Ljavax/crypto/SecretKey;
    .end local v7    # "keySize":I
    .end local v9    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    .local v8, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_1
    instance-of v11, v8, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v11, :cond_f

    move-object v11, v8

    .line 174
    check-cast v11, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 181
    .local v6, "keyParam":Lorg/spongycastle/crypto/params/KeyParameter;
    :goto_2
    move-object/from16 v0, p2

    instance-of v11, v0, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;

    if-eqz v11, :cond_10

    move-object/from16 v1, p2

    .line 183
    check-cast v1, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;

    .line 185
    .local v1, "aeadSpec":Lorg/spongycastle/jcajce/spec/AEADParameterSpec;
    new-instance v8, Lorg/spongycastle/crypto/params/AEADParameters;

    .end local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {v1}, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    move-result v11

    invoke-virtual {v1}, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    move-result-object v12

    invoke-virtual {v1}, Lorg/spongycastle/jcajce/spec/AEADParameterSpec;->getAssociatedData()[B

    move-result-object v13

    invoke-direct {v8, v6, v11, v12, v13}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B[B)V

    .line 224
    .end local v1    # "aeadSpec":Lorg/spongycastle/jcajce/spec/AEADParameterSpec;
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_3
    :goto_3
    :try_start_2
    iget-object v11, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v11, v8}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 230
    return-void

    .line 81
    .end local v6    # "keyParam":Lorg/spongycastle/crypto/params/KeyParameter;
    .end local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_0
    move-exception v3

    .line 83
    .local v3, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/security/InvalidKeyException;

    const-string v12, "PKCS12 requires a SecretKey/PBEKey"

    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 90
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "k":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v3

    .line 92
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "PKCS12 requires a PBEParameterSpec"

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 107
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "digest":I
    .restart local v7    # "keySize":I
    .restart local v9    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    :cond_4
    iget-object v11, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    instance-of v11, v11, Lorg/spongycastle/crypto/macs/HMac;

    if-eqz v11, :cond_2

    .line 109
    iget-object v11, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v11}, Lorg/spongycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SHA-1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 111
    iget-object v11, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v11}, Lorg/spongycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SHA-224"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 113
    const/4 v2, 0x7

    .line 114
    const/16 v7, 0xe0

    goto :goto_0

    .line 116
    :cond_5
    iget-object v11, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v11}, Lorg/spongycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SHA-256"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 118
    const/4 v2, 0x4

    .line 119
    const/16 v7, 0x100

    goto :goto_0

    .line 121
    :cond_6
    iget-object v11, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v11}, Lorg/spongycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SHA-384"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 123
    const/16 v2, 0x8

    .line 124
    const/16 v7, 0x180

    goto/16 :goto_0

    .line 126
    :cond_7
    iget-object v11, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v11}, Lorg/spongycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SHA-512"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 128
    const/16 v2, 0x9

    .line 129
    const/16 v7, 0x200

    goto/16 :goto_0

    .line 131
    :cond_8
    iget-object v11, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v11}, Lorg/spongycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RIPEMD160"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 133
    const/4 v2, 0x2

    .line 134
    const/16 v7, 0xa0

    goto/16 :goto_0

    .line 138
    :cond_9
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "no PKCS12 mapping for HMAC: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v13}, Lorg/spongycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 145
    .end local v2    # "digest":I
    .end local v5    # "k":Ljavax/crypto/SecretKey;
    .end local v7    # "keySize":I
    .end local v9    # "pbeSpec":Ljavax/crypto/spec/PBEParameterSpec;
    :cond_a
    instance-of v11, p1, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v11, :cond_d

    move-object v5, p1

    .line 147
    check-cast v5, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 149
    .local v5, "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 151
    invoke-virtual {v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v8

    .restart local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto/16 :goto_1

    .line 153
    .end local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_b
    move-object/from16 v0, p2

    instance-of v11, v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v11, :cond_c

    .line 155
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v8

    .restart local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto/16 :goto_1

    .line 159
    .end local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_c
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "PBE requires PBE parameters to be set."

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 164
    .end local v5    # "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_d
    move-object/from16 v0, p2

    instance-of v11, v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v11, :cond_e

    .line 166
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "inappropriate parameter type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 168
    :cond_e
    new-instance v8, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto/16 :goto_1

    :cond_f
    move-object v6, v8

    .line 178
    check-cast v6, Lorg/spongycastle/crypto/params/KeyParameter;

    .restart local v6    # "keyParam":Lorg/spongycastle/crypto/params/KeyParameter;
    goto/16 :goto_2

    .line 187
    :cond_10
    move-object/from16 v0, p2

    instance-of v11, v0, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v11, :cond_11

    .line 189
    new-instance v8, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .end local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual/range {p2 .. p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v11

    invoke-direct {v8, v6, v11}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .restart local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto/16 :goto_3

    .line 191
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_11
    move-object/from16 v0, p2

    instance-of v11, v0, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v11, :cond_12

    .line 193
    new-instance v8, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .end local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    new-instance v12, Lorg/spongycastle/crypto/params/RC2Parameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v13

    move-object/from16 v11, p2

    check-cast v11, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {v11}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v11

    invoke-direct {v12, v13, v11}, Lorg/spongycastle/crypto/params/RC2Parameters;-><init>([BI)V

    check-cast p2, Ljavax/crypto/spec/RC2ParameterSpec;

    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual/range {p2 .. p2}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v11

    invoke-direct {v8, v12, v11}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .restart local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto/16 :goto_3

    .line 195
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_12
    move-object/from16 v0, p2

    instance-of v11, v0, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;

    if-eqz v11, :cond_13

    .line 197
    new-instance v11, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    check-cast p2, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;

    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/jcajce/spec/SkeinParameterSpec;->getParameters()Ljava/util/Map;

    move-result-object v12

    invoke-static {v12}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->copyMap(Ljava/util/Map;)Ljava/util/Hashtable;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->setKey([B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->build()Lorg/spongycastle/crypto/params/SkeinParameters;

    move-result-object v8

    goto/16 :goto_3

    .line 199
    .restart local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_13
    if-nez p2, :cond_14

    .line 201
    new-instance v8, Lorg/spongycastle/crypto/params/KeyParameter;

    .end local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto/16 :goto_3

    .line 203
    :cond_14
    sget-object v11, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    if-eqz v11, :cond_15

    sget-object v11, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 207
    :try_start_3
    sget-object v11, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    const-string v12, "getTLen"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 208
    .local v10, "tLen":Ljava/lang/reflect/Method;
    sget-object v11, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    const-string v12, "getIV"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 210
    .local v4, "iv":Ljava/lang/reflect/Method;
    new-instance v8, Lorg/spongycastle/crypto/params/AEADParameters;

    .end local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    check-cast v11, [B

    invoke-direct {v8, v6, v12, v11}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .restart local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto/16 :goto_3

    .line 212
    .end local v4    # "iv":Ljava/lang/reflect/Method;
    .end local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .end local v10    # "tLen":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v3

    .line 214
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "Cannot process GCMParameterSpec."

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 217
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_15
    move-object/from16 v0, p2

    instance-of v11, v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v11, :cond_3

    .line 219
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unknown parameter type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 226
    .end local p2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :catch_3
    move-exception v3

    .line 228
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot initialize MAC: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method protected engineReset()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->reset()V

    .line 240
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "input"    # B

    .prologue
    .line 245
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 246
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 254
    return-void
.end method
