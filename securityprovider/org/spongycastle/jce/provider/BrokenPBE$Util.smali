.class public Lorg/spongycastle/jce/provider/BrokenPBE$Util;
.super Ljava/lang/Object;
.source "BrokenPBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/BrokenPBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;
    .locals 3
    .param p0, "type"    # I
    .param p1, "hash"    # I

    .prologue
    .line 293
    if-nez p0, :cond_0

    .line 295
    packed-switch p1, :pswitch_data_0

    .line 304
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PKCS5 scheme 1 only supports only MD5 and SHA1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 346
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :goto_0
    return-object v0

    .line 301
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 302
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 307
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 309
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 311
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 313
    packed-switch p1, :pswitch_data_1

    .line 325
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown digest scheme for PBE encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :pswitch_2
    new-instance v0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 317
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 319
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_3
    new-instance v0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 320
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 322
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_4
    new-instance v0, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/OldPKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 323
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 330
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :cond_2
    packed-switch p1, :pswitch_data_2

    .line 342
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown digest scheme for PBE encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :pswitch_5
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 334
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 336
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_6
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 337
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 339
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_7
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 340
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 313
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 330
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static makePBEMacParameters(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;III)Lorg/spongycastle/crypto/CipherParameters;
    .locals 7
    .param p0, "pbeKey"    # Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "type"    # I
    .param p3, "hash"    # I
    .param p4, "keySize"    # I

    .prologue
    .line 419
    if-eqz p1, :cond_0

    instance-of v5, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v5, :cond_1

    .line 421
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v4, p1

    .line 424
    check-cast v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 425
    .local v4, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-static {p2, p3}, Lorg/spongycastle/jce/provider/BrokenPBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 426
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    .line 429
    .local v2, "key":[B
    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v5

    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v6

    invoke-virtual {v0, v2, v5, v6}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 431
    invoke-virtual {v0, p4}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 433
    .local v3, "param":Lorg/spongycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-eq v1, v5, :cond_2

    .line 435
    const/4 v5, 0x0

    aput-byte v5, v2, v1

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_2
    return-object v3
.end method

.method static makePBEParameters(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;IILjava/lang/String;II)Lorg/spongycastle/crypto/CipherParameters;
    .locals 8
    .param p0, "pbeKey"    # Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "type"    # I
    .param p3, "hash"    # I
    .param p4, "targetAlgorithm"    # Ljava/lang/String;
    .param p5, "keySize"    # I
    .param p6, "ivSize"    # I

    .prologue
    .line 362
    if-eqz p1, :cond_0

    instance-of v6, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v6, :cond_1

    .line 364
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object v5, p1

    .line 367
    check-cast v5, Ljavax/crypto/spec/PBEParameterSpec;

    .line 368
    .local v5, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-static {p2, p3}, Lorg/spongycastle/jce/provider/BrokenPBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 369
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v3

    .line 372
    .local v3, "key":[B
    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v6

    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v7

    invoke-virtual {v0, v3, v6, v7}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 374
    if-eqz p6, :cond_3

    .line 376
    invoke-virtual {v0, p5, p6}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    .line 383
    .local v4, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    const-string v6, "DES"

    invoke-virtual {p4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 385
    instance-of v6, v4, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v6, :cond_4

    move-object v6, v4

    .line 387
    check-cast v6, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 389
    .local v2, "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/jce/provider/BrokenPBE$Util;->setOddParity([B)V

    .line 399
    .end local v2    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v6, v3

    if-eq v1, v6, :cond_5

    .line 401
    const/4 v6, 0x0

    aput-byte v6, v3, v1

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 380
    .end local v1    # "i":I
    .end local v4    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_3
    invoke-virtual {v0, p5}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    .restart local v4    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    :cond_4
    move-object v2, v4

    .line 393
    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 395
    .restart local v2    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/jce/provider/BrokenPBE$Util;->setOddParity([B)V

    goto :goto_1

    .line 404
    .end local v2    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    .restart local v1    # "i":I
    :cond_5
    return-object v4
.end method

.method private static setOddParity([B)V
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 273
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 275
    aget-byte v0, p0, v1

    .line 276
    .local v0, "b":I
    and-int/lit16 v2, v0, 0xfe

    shr-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v0, 0x2

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x3

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x4

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x5

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x6

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x7

    xor-int/2addr v3, v4

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "b":I
    :cond_0
    return-void
.end method
