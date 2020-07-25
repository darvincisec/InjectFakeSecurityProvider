.class public Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;
.super Ljava/lang/Object;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B
    .locals 2
    .param p0, "type"    # I
    .param p1, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;

    .prologue
    .line 413
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 415
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    .line 425
    .local v0, "key":[B
    :goto_0
    return-object v0

    .line 417
    .end local v0    # "key":[B
    :cond_0
    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    .line 419
    :cond_1
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v0

    .restart local v0    # "key":[B
    goto :goto_0

    .line 423
    .end local v0    # "key":[B
    :cond_2
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    .restart local v0    # "key":[B
    goto :goto_0
.end method

.method private static makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;
    .locals 3
    .param p0, "type"    # I
    .param p1, "hash"    # I

    .prologue
    .line 63
    if-eqz p0, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 65
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 77
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 173
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :goto_0
    return-object v0

    .line 71
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createMD5()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 72
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 74
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_3
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA1()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 75
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 80
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :cond_1
    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    .line 82
    :cond_2
    packed-switch p1, :pswitch_data_1

    .line 127
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :pswitch_4
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 86
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 88
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_5
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createMD5()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 89
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 91
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_6
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA1()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 92
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 94
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_7
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 95
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 97
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_8
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/TigerDigest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/TigerDigest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 98
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 100
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_9
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA256()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 101
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 103
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_a
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 104
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 106
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_b
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA224()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 107
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto :goto_0

    .line 109
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_c
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA384()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 110
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 112
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_d
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA512()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 113
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 115
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_e
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA3_224()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 116
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 118
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_f
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA3_256()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 119
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 121
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_10
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA3_384()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 122
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 124
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_11
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA3_512()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 125
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 130
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :cond_3
    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    .line 132
    packed-switch p1, :pswitch_data_2

    .line 165
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown digest scheme for PBE encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :pswitch_12
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/MD2Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/MD2Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 136
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 138
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_13
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createMD5()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 139
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 141
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_14
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA1()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 142
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 144
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_15
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 145
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 147
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_16
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/TigerDigest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/TigerDigest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 148
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 150
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_17
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA256()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 151
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 153
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_18
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/spongycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v1}, Lorg/spongycastle/crypto/digests/GOST3411Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 154
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 156
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_19
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA224()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 157
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 159
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_1a
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA384()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 160
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 162
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :pswitch_1b
    new-instance v0, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA512()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 163
    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 170
    .end local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    :cond_4
    new-instance v0, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .restart local v0    # "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    goto/16 :goto_0

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 82
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 132
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_12
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method

.method public static makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lorg/spongycastle/crypto/CipherParameters;
    .locals 7
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "pbeSpec"    # Ljavax/crypto/spec/PBEParameterSpec;

    .prologue
    .line 392
    invoke-static {p1, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 395
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 397
    .local v2, "keyBytes":[B
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v5

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 399
    invoke-virtual {v0, p3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 401
    .local v3, "param":Lorg/spongycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-eq v1, v4, :cond_0

    .line 403
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :cond_0
    return-object v3
.end method

.method public static makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/spongycastle/crypto/CipherParameters;
    .locals 6
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I

    .prologue
    .line 326
    invoke-static {p1, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 330
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v2

    .line 332
    .local v2, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 334
    invoke-virtual {v0, p3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 336
    .local v3, "param":Lorg/spongycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-eq v1, v4, :cond_0

    .line 338
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-object v3
.end method

.method public static makePBEMacParameters(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/spongycastle/crypto/CipherParameters;
    .locals 6
    .param p0, "pbeKey"    # Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .prologue
    .line 298
    if-eqz p1, :cond_0

    instance-of v4, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v4, :cond_1

    .line 300
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object v3, p1

    .line 303
    check-cast v3, Ljavax/crypto/spec/PBEParameterSpec;

    .line 304
    .local v3, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v4

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v5

    invoke-static {v4, v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 305
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v1

    .line 308
    .local v1, "key":[B
    invoke-virtual {v3}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {v3}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v1, v4, v5}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 310
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    .line 312
    .local v2, "param":Lorg/spongycastle/crypto/CipherParameters;
    return-object v2
.end method

.method public static makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/spongycastle/crypto/CipherParameters;
    .locals 6
    .param p0, "keySpec"    # Ljavax/crypto/spec/PBEKeySpec;
    .param p1, "type"    # I
    .param p2, "hash"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I

    .prologue
    .line 355
    invoke-static {p1, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 359
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-static {p1, p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object v2

    .line 361
    .local v2, "key":[B
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 363
    if-eqz p4, :cond_0

    .line 365
    invoke-virtual {v0, p3, p4}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 372
    .local v3, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-eq v1, v4, :cond_1

    .line 374
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 369
    .end local v1    # "i":I
    .end local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    invoke-virtual {v0, p3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .restart local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    .line 377
    .restart local v1    # "i":I
    :cond_1
    return-object v3
.end method

.method public static makePBEParameters(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/spongycastle/crypto/CipherParameters;
    .locals 7
    .param p0, "pbeKey"    # Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "targetAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 244
    if-eqz p1, :cond_0

    instance-of v5, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v5, :cond_1

    .line 246
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v4, p1

    .line 249
    check-cast v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 250
    .local v4, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v5

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v6

    invoke-static {v5, v6}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 251
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v2

    .line 254
    .local v2, "key":[B
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 256
    const/4 v5, 0x2

    new-array v2, v5, [B

    .line 259
    :cond_2
    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v5

    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v6

    invoke-virtual {v0, v2, v5, v6}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 261
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v5

    if-eqz v5, :cond_4

    .line 263
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v5

    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 270
    .local v3, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    const-string v5, "DES"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    instance-of v5, v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v5, :cond_5

    move-object v5, v3

    .line 274
    check-cast v5, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 276
    .local v1, "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 286
    .end local v1    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_3
    :goto_1
    return-object v3

    .line 267
    .end local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_4
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result v5

    invoke-virtual {v0, v5}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .restart local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    :cond_5
    move-object v1, v3

    .line 280
    check-cast v1, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 282
    .restart local v1    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/crypto/params/DESParameters;->setOddParity([B)V

    goto :goto_1
.end method

.method public static makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/spongycastle/crypto/CipherParameters;
    .locals 7
    .param p0, "pbeKey"    # [B
    .param p1, "scheme"    # I
    .param p2, "digest"    # I
    .param p3, "keySize"    # I
    .param p4, "ivSize"    # I
    .param p5, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "targetAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 190
    if-eqz p5, :cond_0

    instance-of v5, p5, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v5, :cond_1

    .line 192
    :cond_0
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    const-string v6, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v5, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v4, p5

    .line 195
    check-cast v4, Ljavax/crypto/spec/PBEParameterSpec;

    .line 196
    .local v4, "pbeParam":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-static {p1, p2}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/spongycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 197
    .local v0, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    move-object v2, p0

    .line 205
    .local v2, "key":[B
    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v5

    invoke-virtual {v4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v6

    invoke-virtual {v0, v2, v5, v6}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 207
    if-eqz p4, :cond_3

    .line 209
    invoke-virtual {v0, p3, p4}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .line 216
    .local v3, "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    const-string v5, "DES"

    invoke-virtual {p6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 218
    instance-of v5, v3, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v5, :cond_4

    move-object v5, v3

    .line 220
    check-cast v5, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 222
    .local v1, "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 232
    .end local v1    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_2
    :goto_1
    return-object v3

    .line 213
    .end local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_3
    invoke-virtual {v0, p3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    .restart local v3    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto :goto_0

    :cond_4
    move-object v1, v3

    .line 226
    check-cast v1, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 228
    .restart local v1    # "kParam":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/crypto/params/DESParameters;->setOddParity([B)V

    goto :goto_1
.end method
