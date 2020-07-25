.class public Lorg/spongycastle/crypto/examples/DESExample;
.super Ljava/lang/Object;
.source "DESExample.java"


# instance fields
.field private cipher:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

.field private encrypt:Z

.field private in:Ljava/io/BufferedInputStream;

.field private key:[B

.field private out:Ljava/io/BufferedOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->encrypt:Z

    .line 60
    iput-object v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->cipher:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 63
    iput-object v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    .line 66
    iput-object v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    .line 69
    iput-object v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->key:[B

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15
    .param p1, "infile"    # Ljava/lang/String;
    .param p2, "outfile"    # Ljava/lang/String;
    .param p3, "keyfile"    # Ljava/lang/String;
    .param p4, "encrypt"    # Z

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v12, 0x1

    iput-boolean v12, p0, Lorg/spongycastle/crypto/examples/DESExample;->encrypt:Z

    .line 60
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/spongycastle/crypto/examples/DESExample;->cipher:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 63
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/spongycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    .line 66
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/spongycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    .line 69
    const/4 v12, 0x0

    iput-object v12, p0, Lorg/spongycastle/crypto/examples/DESExample;->key:[B

    .line 126
    move/from16 v0, p4

    iput-boolean v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->encrypt:Z

    .line 129
    :try_start_0
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v12, p0, Lorg/spongycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    :try_start_1
    new-instance v12, Ljava/io/BufferedOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v12, p0, Lorg/spongycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :goto_1
    if-eqz p4, :cond_0

    .line 159
    const/4 v10, 0x0

    .line 162
    .local v10, "sr":Ljava/security/SecureRandom;
    :try_start_2
    new-instance v11, Ljava/security/SecureRandom;

    invoke-direct {v11}, Ljava/security/SecureRandom;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 177
    .end local v10    # "sr":Ljava/security/SecureRandom;
    .local v11, "sr":Ljava/security/SecureRandom;
    :try_start_3
    const-string v12, "www.bouncycastle.org"

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/security/SecureRandom;->setSeed([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v10, v11

    .line 185
    .end local v11    # "sr":Ljava/security/SecureRandom;
    .restart local v10    # "sr":Ljava/security/SecureRandom;
    :goto_2
    :try_start_4
    new-instance v7, Lorg/spongycastle/crypto/KeyGenerationParameters;

    const/16 v12, 0xc0

    invoke-direct {v7, v10, v12}, Lorg/spongycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 192
    .local v7, "kgp":Lorg/spongycastle/crypto/KeyGenerationParameters;
    new-instance v6, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;

    invoke-direct {v6}, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;-><init>()V

    .line 193
    .local v6, "kg":Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;
    invoke-virtual {v6, v7}, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 198
    invoke-virtual {v6}, Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;->generateKey()[B

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/crypto/examples/DESExample;->key:[B

    .line 205
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 207
    .local v5, "keystream":Ljava/io/BufferedOutputStream;
    iget-object v12, p0, Lorg/spongycastle/crypto/examples/DESExample;->key:[B

    invoke-static {v12}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v4

    .line 208
    .local v4, "keyhex":[B
    const/4 v12, 0x0

    array-length v13, v4

    invoke-virtual {v5, v4, v12, v13}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 209
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 210
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 238
    .end local v4    # "keyhex":[B
    .end local v5    # "keystream":Ljava/io/BufferedOutputStream;
    .end local v6    # "kg":Lorg/spongycastle/crypto/generators/DESedeKeyGenerator;
    .end local v7    # "kgp":Lorg/spongycastle/crypto/KeyGenerationParameters;
    .end local v10    # "sr":Ljava/security/SecureRandom;
    :goto_3
    return-void

    .line 131
    :catch_0
    move-exception v2

    .line 133
    .local v2, "fnf":Ljava/io/FileNotFoundException;
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Input file not found ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 141
    .end local v2    # "fnf":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 143
    .local v2, "fnf":Ljava/io/IOException;
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Output file not created ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_1

    .line 179
    .end local v2    # "fnf":Ljava/io/IOException;
    .restart local v10    # "sr":Ljava/security/SecureRandom;
    :catch_2
    move-exception v9

    .line 181
    .local v9, "nsa":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "Hmmm, no SHA1PRNG, you need the Sun implementation"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/System;->exit(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2

    .line 212
    .end local v9    # "nsa":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 214
    .local v1, "createKey":Ljava/io/IOException;
    :goto_5
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Could not decryption create key file ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_3

    .line 224
    .end local v1    # "createKey":Ljava/io/IOException;
    .end local v10    # "sr":Ljava/security/SecureRandom;
    :cond_0
    :try_start_6
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 226
    .local v5, "keystream":Ljava/io/BufferedInputStream;
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->available()I

    move-result v8

    .line 227
    .local v8, "len":I
    new-array v4, v8, [B

    .line 228
    .restart local v4    # "keyhex":[B
    const/4 v12, 0x0

    invoke-virtual {v5, v4, v12, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 229
    invoke-static {v4}, Lorg/spongycastle/util/encoders/Hex;->decode([B)[B

    move-result-object v12

    iput-object v12, p0, Lorg/spongycastle/crypto/examples/DESExample;->key:[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_3

    .line 231
    .end local v4    # "keyhex":[B
    .end local v5    # "keystream":Ljava/io/BufferedInputStream;
    .end local v8    # "len":I
    :catch_4
    move-exception v3

    .line 233
    .local v3, "ioe":Ljava/io/IOException;
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Decryption key file not found, or not valid ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_3

    .line 212
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v11    # "sr":Ljava/security/SecureRandom;
    :catch_5
    move-exception v1

    move-object v10, v11

    .end local v11    # "sr":Ljava/security/SecureRandom;
    .restart local v10    # "sr":Ljava/security/SecureRandom;
    goto :goto_5

    .line 179
    .end local v10    # "sr":Ljava/security/SecureRandom;
    .restart local v11    # "sr":Ljava/security/SecureRandom;
    :catch_6
    move-exception v9

    move-object v10, v11

    .end local v11    # "sr":Ljava/security/SecureRandom;
    .restart local v10    # "sr":Ljava/security/SecureRandom;
    goto :goto_4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 76
    const/4 v1, 0x1

    .line 77
    .local v1, "encrypt":Z
    const/4 v2, 0x0

    .line 78
    .local v2, "infile":Ljava/lang/String;
    const/4 v4, 0x0

    .line 79
    .local v4, "outfile":Ljava/lang/String;
    const/4 v3, 0x0

    .line 81
    .local v3, "keyfile":Ljava/lang/String;
    array-length v5, p0

    if-ge v5, v8, :cond_0

    .line 83
    new-instance v0, Lorg/spongycastle/crypto/examples/DESExample;

    invoke-direct {v0}, Lorg/spongycastle/crypto/examples/DESExample;-><init>()V

    .line 84
    .local v0, "de":Lorg/spongycastle/crypto/examples/DESExample;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Usage: java "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " infile outfile [keyfile]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 89
    .end local v0    # "de":Lorg/spongycastle/crypto/examples/DESExample;
    :cond_0
    const-string v3, "deskey.dat"

    .line 90
    const/4 v5, 0x0

    aget-object v2, p0, v5

    .line 91
    aget-object v4, p0, v9

    .line 93
    array-length v5, p0

    if-le v5, v8, :cond_1

    .line 95
    const/4 v1, 0x0

    .line 96
    aget-object v3, p0, v8

    .line 99
    :cond_1
    new-instance v0, Lorg/spongycastle/crypto/examples/DESExample;

    invoke-direct {v0, v2, v4, v3, v1}, Lorg/spongycastle/crypto/examples/DESExample;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    .restart local v0    # "de":Lorg/spongycastle/crypto/examples/DESExample;
    invoke-direct {v0}, Lorg/spongycastle/crypto/examples/DESExample;->process()V

    .line 101
    return-void
.end method

.method private performDecrypt([B)V
    .locals 10
    .param p1, "key"    # [B

    .prologue
    const/4 v3, 0x0

    .line 361
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->cipher:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v3, v2}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 369
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/spongycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 377
    .local v6, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 378
    .local v1, "inblock":[B
    const/4 v4, 0x0

    .line 379
    .local v4, "outblock":[B
    const/4 v9, 0x0

    .line 380
    .local v9, "rv":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 382
    invoke-static {v9}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 383
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->cipher:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    array-length v2, v1

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    .line 385
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->cipher:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->processBytes([BII[BI)I

    move-result v8

    .line 391
    .local v8, "outL":I
    if-lez v8, :cond_0

    .line 393
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    .end local v8    # "outL":I
    :catch_0
    move-exception v7

    .line 416
    .local v7, "ioeread":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 418
    .end local v7    # "ioeread":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 403
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->cipher:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->doFinal([BI)I

    move-result v8

    .line 404
    .restart local v8    # "outL":I
    if-lez v8, :cond_1

    .line 406
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 409
    .end local v8    # "outL":I
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private performEncrypt([B)V
    .locals 11
    .param p1, "key"    # [B

    .prologue
    .line 286
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->cipher:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v2, 0x1

    new-instance v5, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v5, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v2, v5}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 299
    const/16 v6, 0x2f

    .line 300
    .local v6, "inBlockSize":I
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->cipher:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v0, v6}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->getOutputSize(I)I

    move-result v8

    .line 302
    .local v8, "outBlockSize":I
    new-array v1, v6, [B

    .line 303
    .local v1, "inblock":[B
    new-array v4, v8, [B

    .line 312
    .local v4, "outblock":[B
    const/4 v10, 0x0

    .line 313
    .local v10, "rv":[B
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .local v3, "inL":I
    if-lez v3, :cond_2

    .line 315
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->cipher:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->processBytes([BII[BI)I

    move-result v9

    .line 320
    .local v9, "outL":I
    if-lez v9, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-static {v4, v0, v9}, Lorg/spongycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v10

    .line 323
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    array-length v5, v10

    invoke-virtual {v0, v10, v2, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 324
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v3    # "inL":I
    .end local v9    # "outL":I
    :catch_0
    move-exception v7

    .line 349
    .local v7, "ioeread":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 351
    .end local v7    # "ioeread":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 334
    .restart local v3    # "inL":I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->cipher:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;->doFinal([BI)I

    move-result v9

    .line 335
    .restart local v9    # "outL":I
    if-lez v9, :cond_1

    .line 337
    const/4 v0, 0x0

    invoke-static {v4, v0, v9}, Lorg/spongycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v10

    .line 338
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    array-length v5, v10

    invoke-virtual {v0, v10, v2, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 339
    iget-object v0, p0, Lorg/spongycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_1
    .catch Lorg/spongycastle/crypto/CryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 342
    .end local v9    # "outL":I
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private process()V
    .locals 4

    .prologue
    .line 246
    new-instance v1, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/engines/DESedeEngine;

    invoke-direct {v3}, Lorg/spongycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->cipher:Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 256
    iget-boolean v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->encrypt:Z

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->key:[B

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/examples/DESExample;->performEncrypt([B)V

    .line 268
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 269
    iget-object v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 270
    iget-object v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_1
    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/examples/DESExample;->key:[B

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/examples/DESExample;->performDecrypt([B)V

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 274
    .local v0, "closing":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception closing resources: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method
