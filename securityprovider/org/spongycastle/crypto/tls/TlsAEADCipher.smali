.class public Lorg/spongycastle/crypto/tls/TlsAEADCipher;
.super Ljava/lang/Object;
.source "TlsAEADCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# static fields
.field static final NONCE_DRAFT_CHACHA20_POLY1305:I = 0x2

.field public static final NONCE_RFC5288:I = 0x1


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

.field protected decryptImplicitNonce:[B

.field protected encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

.field protected encryptImplicitNonce:[B

.field protected macSize:I

.field protected nonceMode:I

.field protected record_iv_length:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;II)V
    .locals 7
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "clientWriteCipher"    # Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .param p3, "serverWriteCipher"    # Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .param p4, "cipherKeySize"    # I
    .param p5, "macSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;III)V

    .line 38
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/modes/AEADBlockCipher;Lorg/spongycastle/crypto/modes/AEADBlockCipher;III)V
    .locals 17
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "clientWriteCipher"    # Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .param p3, "serverWriteCipher"    # Lorg/spongycastle/crypto/modes/AEADBlockCipher;
    .param p4, "cipherKeySize"    # I
    .param p5, "macSize"    # I
    .param p6, "nonceMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 45
    new-instance v13, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v14, 0x50

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v13

    .line 48
    :cond_0
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->nonceMode:I

    .line 53
    packed-switch p6, :pswitch_data_0

    .line 64
    new-instance v13, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v14, 0x50

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v13

    .line 56
    :pswitch_0
    const/4 v7, 0x4

    .line 57
    .local v7, "fixed_iv_length":I
    const/16 v13, 0x8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    .line 67
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 68
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->macSize:I

    .line 70
    mul-int/lit8 v13, p4, 0x2

    mul-int/lit8 v14, v7, 0x2

    add-int v9, v13, v14

    .line 72
    .local v9, "key_block_size":I
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsContext;I)[B

    move-result-object v8

    .line 74
    .local v8, "key_block":[B
    const/4 v10, 0x0

    .line 76
    .local v10, "offset":I
    new-instance v3, Lorg/spongycastle/crypto/params/KeyParameter;

    move/from16 v0, p4

    invoke-direct {v3, v8, v10, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 77
    .local v3, "client_write_key":Lorg/spongycastle/crypto/params/KeyParameter;
    add-int v10, v10, p4

    .line 78
    new-instance v12, Lorg/spongycastle/crypto/params/KeyParameter;

    move/from16 v0, p4

    invoke-direct {v12, v8, v10, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 79
    .local v12, "server_write_key":Lorg/spongycastle/crypto/params/KeyParameter;
    add-int v10, v10, p4

    .line 80
    add-int v13, v10, v7

    invoke-static {v8, v10, v13}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 81
    .local v2, "client_write_IV":[B
    add-int/2addr v10, v7

    .line 82
    add-int v13, v10, v7

    invoke-static {v8, v10, v13}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 83
    .local v11, "server_write_IV":[B
    add-int/2addr v10, v7

    .line 85
    if-eq v10, v9, :cond_1

    .line 87
    new-instance v13, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v14, 0x50

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v13

    .line 60
    .end local v2    # "client_write_IV":[B
    .end local v3    # "client_write_key":Lorg/spongycastle/crypto/params/KeyParameter;
    .end local v7    # "fixed_iv_length":I
    .end local v8    # "key_block":[B
    .end local v9    # "key_block_size":I
    .end local v10    # "offset":I
    .end local v11    # "server_write_IV":[B
    .end local v12    # "server_write_key":Lorg/spongycastle/crypto/params/KeyParameter;
    :pswitch_1
    const/16 v7, 0xc

    .line 61
    .restart local v7    # "fixed_iv_length":I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    goto :goto_0

    .line 91
    .restart local v2    # "client_write_IV":[B
    .restart local v3    # "client_write_key":Lorg/spongycastle/crypto/params/KeyParameter;
    .restart local v8    # "key_block":[B
    .restart local v9    # "key_block_size":I
    .restart local v10    # "offset":I
    .restart local v11    # "server_write_IV":[B
    .restart local v12    # "server_write_key":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 93
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 94
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 95
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    .line 96
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    .line 97
    move-object v6, v12

    .line 98
    .local v6, "encryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    move-object v4, v3

    .line 110
    .local v4, "decryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int/2addr v13, v7

    new-array v5, v13, [B

    .line 112
    .local v5, "dummyNonce":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    const/4 v14, 0x1

    new-instance v15, Lorg/spongycastle/crypto/params/AEADParameters;

    mul-int/lit8 v16, p5, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v6, v0, v5}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V

    invoke-interface {v13, v14, v15}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    const/4 v14, 0x0

    new-instance v15, Lorg/spongycastle/crypto/params/AEADParameters;

    mul-int/lit8 v16, p5, 0x8

    move/from16 v0, v16

    invoke-direct {v15, v4, v0, v5}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V

    invoke-interface {v13, v14, v15}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 114
    return-void

    .line 102
    .end local v4    # "decryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    .end local v5    # "dummyNonce":[B
    .end local v6    # "encryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 103
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    .line 104
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    .line 105
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    .line 106
    move-object v6, v3

    .line 107
    .restart local v6    # "encryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    move-object v4, v12

    .restart local v4    # "decryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    goto :goto_1

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public decodeCiphertext(JS[BII)[B
    .locals 19
    .param p1, "seqNo"    # J
    .param p3, "type"    # S
    .param p4, "ciphertext"    # [B
    .param p5, "offset"    # I
    .param p6, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->getPlaintextLimit(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 184
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 187
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    array-length v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int/2addr v4, v5

    new-array v13, v4, [B

    .line 189
    .local v13, "nonce":[B
    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->nonceMode:I

    packed-switch v4, :pswitch_data_0

    .line 203
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 192
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v5, v13, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    array-length v4, v13

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v13, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int v6, p5, v4

    .line 207
    .local v6, "ciphertextOffset":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    sub-int v7, p6, v4

    .line 208
    .local v7, "ciphertextLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v4, v7}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v15

    .line 210
    .local v15, "plaintextLength":I
    new-array v8, v15, [B

    .line 211
    .local v8, "output":[B
    const/4 v9, 0x0

    .line 213
    .local v9, "outputPos":I
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v15}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->getAdditionalData(JSI)[B

    move-result-object v10

    .line 214
    .local v10, "additionalData":[B
    new-instance v14, Lorg/spongycastle/crypto/params/AEADParameters;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->macSize:I

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v14, v4, v5, v13, v10}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B[B)V

    .line 218
    .local v14, "parameters":Lorg/spongycastle/crypto/params/AEADParameters;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v14}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-object/from16 v5, p4

    invoke-interface/range {v4 .. v9}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v4

    add-int/2addr v9, v4

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v4, v8, v9}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/2addr v9, v4

    .line 227
    array-length v4, v8

    if-eq v9, v4, :cond_2

    .line 230
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 196
    .end local v6    # "ciphertextOffset":I
    .end local v7    # "ciphertextLength":I
    .end local v8    # "output":[B
    .end local v9    # "outputPos":I
    .end local v10    # "additionalData":[B
    .end local v14    # "parameters":Lorg/spongycastle/crypto/params/AEADParameters;
    .end local v15    # "plaintextLength":I
    :pswitch_1
    array-length v4, v13

    add-int/lit8 v4, v4, -0x8

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v13, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    .line 197
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    array-length v4, v4

    if-ge v12, v4, :cond_1

    .line 199
    aget-byte v4, v13, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    aget-byte v5, v5, v12

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v13, v12

    .line 197
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 222
    .end local v12    # "i":I
    .restart local v6    # "ciphertextOffset":I
    .restart local v7    # "ciphertextLength":I
    .restart local v8    # "output":[B
    .restart local v9    # "outputPos":I
    .restart local v10    # "additionalData":[B
    .restart local v14    # "parameters":Lorg/spongycastle/crypto/params/AEADParameters;
    .restart local v15    # "plaintextLength":I
    :catch_0
    move-exception v11

    .line 224
    .local v11, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x14

    invoke-direct {v4, v5, v11}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v4

    .line 233
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v8

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 19
    .param p1, "seqNo"    # J
    .param p3, "type"    # S
    .param p4, "plaintext"    # [B
    .param p5, "offset"    # I
    .param p6, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    array-length v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int/2addr v4, v5

    new-array v14, v4, [B

    .line 127
    .local v14, "nonce":[B
    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->nonceMode:I

    packed-switch v4, :pswitch_data_0

    .line 142
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 130
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v5, v14, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    array-length v4, v4

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v14, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    .line 145
    :cond_0
    move/from16 v6, p5

    .line 146
    .local v6, "plaintextOffset":I
    move/from16 v7, p6

    .line 147
    .local v7, "plaintextLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v4, v7}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v11

    .line 149
    .local v11, "ciphertextLength":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int/2addr v4, v11

    new-array v8, v4, [B

    .line 150
    .local v8, "output":[B
    move-object/from16 v0, p0

    iget v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    if-eqz v4, :cond_1

    .line 152
    array-length v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v14, v4, v8, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    :cond_1
    move-object/from16 v0, p0

    iget v9, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    .line 156
    .local v9, "outputPos":I
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v7}, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->getAdditionalData(JSI)[B

    move-result-object v10

    .line 157
    .local v10, "additionalData":[B
    new-instance v15, Lorg/spongycastle/crypto/params/AEADParameters;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->macSize:I

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v15, v4, v5, v14, v10}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B[B)V

    .line 161
    .local v15, "parameters":Lorg/spongycastle/crypto/params/AEADParameters;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v15}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    move-object/from16 v5, p4

    invoke-interface/range {v4 .. v9}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v4

    add-int/2addr v9, v4

    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/spongycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v4, v8, v9}, Lorg/spongycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/2addr v9, v4

    .line 170
    array-length v4, v8

    if-eq v9, v4, :cond_2

    .line 173
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 135
    .end local v6    # "plaintextOffset":I
    .end local v7    # "plaintextLength":I
    .end local v8    # "output":[B
    .end local v9    # "outputPos":I
    .end local v10    # "additionalData":[B
    .end local v11    # "ciphertextLength":I
    .end local v15    # "parameters":Lorg/spongycastle/crypto/params/AEADParameters;
    :pswitch_1
    array-length v4, v14

    add-int/lit8 v4, v4, -0x8

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v14, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    .line 136
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    array-length v4, v4

    if-ge v13, v4, :cond_0

    .line 138
    aget-byte v4, v14, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    aget-byte v5, v5, v13

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v14, v13

    .line 136
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 165
    .end local v13    # "i":I
    .restart local v6    # "plaintextOffset":I
    .restart local v7    # "plaintextLength":I
    .restart local v8    # "output":[B
    .restart local v9    # "outputPos":I
    .restart local v10    # "additionalData":[B
    .restart local v11    # "ciphertextLength":I
    .restart local v15    # "parameters":Lorg/spongycastle/crypto/params/AEADParameters;
    :catch_0
    move-exception v12

    .line 167
    .local v12, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x50

    invoke-direct {v4, v5, v12}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v4

    .line 176
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v8

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getAdditionalData(JSI)[B
    .locals 3
    .param p1, "seqNo"    # J
    .param p3, "type"    # S
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    const/16 v1, 0xd

    new-array v0, v1, [B

    .line 245
    .local v0, "additional_data":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    .line 246
    const/16 v1, 0x8

    invoke-static {p3, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 247
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 248
    const/16 v1, 0xb

    invoke-static {p4, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 250
    return-object v0
.end method

.method public getPlaintextLimit(I)I
    .locals 2
    .param p1, "ciphertextLimit"    # I

    .prologue
    .line 119
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->macSize:I

    sub-int v0, p1, v0

    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    sub-int/2addr v0, v1

    return v0
.end method
