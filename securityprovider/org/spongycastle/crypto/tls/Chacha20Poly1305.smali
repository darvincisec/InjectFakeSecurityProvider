.class public Lorg/spongycastle/crypto/tls/Chacha20Poly1305;
.super Ljava/lang/Object;
.source "Chacha20Poly1305.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# static fields
.field private static final ZEROES:[B


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/spongycastle/crypto/engines/ChaCha7539Engine;

.field protected decryptIV:[B

.field protected encryptCipher:Lorg/spongycastle/crypto/engines/ChaCha7539Engine;

.field protected encryptIV:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0xf

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->ZEROES:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;)V
    .locals 17
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 30
    new-instance v13, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v14, 0x50

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v13

    .line 33
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 35
    const/16 v2, 0x20

    .line 37
    .local v2, "cipherKeySize":I
    const/16 v7, 0xc

    .line 40
    .local v7, "fixed_iv_length":I
    const/16 v13, 0x40

    add-int/lit8 v9, v13, 0x18

    .line 42
    .local v9, "key_block_size":I
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsContext;I)[B

    move-result-object v8

    .line 44
    .local v8, "key_block":[B
    const/4 v10, 0x0

    .line 46
    .local v10, "offset":I
    new-instance v4, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v4, v8, v10, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 47
    .local v4, "client_write_key":Lorg/spongycastle/crypto/params/KeyParameter;
    add-int/2addr v10, v2

    .line 48
    new-instance v12, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v12, v8, v10, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 49
    .local v12, "server_write_key":Lorg/spongycastle/crypto/params/KeyParameter;
    add-int/lit8 v10, v2, 0x20

    .line 50
    const/16 v13, 0x4c

    invoke-static {v8, v10, v13}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 51
    .local v3, "client_write_IV":[B
    add-int/lit8 v10, v7, 0x40

    .line 52
    const/16 v13, 0x58

    invoke-static {v8, v10, v13}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 53
    .local v11, "server_write_IV":[B
    add-int/lit8 v10, v7, 0x4c

    .line 55
    if-eq v10, v9, :cond_1

    .line 57
    new-instance v13, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v14, 0x50

    invoke-direct {v13, v14}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v13

    .line 60
    :cond_1
    new-instance v13, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;

    invoke-direct {v13}, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/spongycastle/crypto/engines/ChaCha7539Engine;

    .line 61
    new-instance v13, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;

    invoke-direct {v13}, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/spongycastle/crypto/engines/ChaCha7539Engine;

    .line 64
    invoke-interface/range {p1 .. p1}, Lorg/spongycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 66
    move-object v6, v12

    .line 67
    .local v6, "encryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    move-object v5, v4

    .line 68
    .local v5, "decryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->encryptIV:[B

    .line 69
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->decryptIV:[B

    .line 79
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/spongycastle/crypto/engines/ChaCha7539Engine;

    const/4 v14, 0x1

    new-instance v15, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->encryptIV:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v15, v6, v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v13, v14, v15}, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/spongycastle/crypto/engines/ChaCha7539Engine;

    const/4 v14, 0x0

    new-instance v15, Lorg/spongycastle/crypto/params/ParametersWithIV;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->decryptIV:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v15, v5, v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v13, v14, v15}, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 81
    return-void

    .line 73
    .end local v5    # "decryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    .end local v6    # "encryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    :cond_2
    move-object v6, v4

    .line 74
    .restart local v6    # "encryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    move-object v5, v12

    .line 75
    .restart local v5    # "decryptKey":Lorg/spongycastle/crypto/params/KeyParameter;
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->encryptIV:[B

    .line 76
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->decryptIV:[B

    goto :goto_0
.end method


# virtual methods
.method protected calculateNonce(J[B)[B
    .locals 5
    .param p1, "seqNo"    # J
    .param p3, "iv"    # [B

    .prologue
    const/16 v4, 0xc

    .line 136
    new-array v1, v4, [B

    .line 137
    .local v1, "nonce":[B
    const/4 v2, 0x4

    invoke-static {p1, p2, v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 141
    aget-byte v2, v1, v0

    aget-byte v3, p3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-object v1
.end method

.method protected calculateRecordMAC(Lorg/spongycastle/crypto/params/KeyParameter;[B[BII)[B
    .locals 4
    .param p1, "macKey"    # Lorg/spongycastle/crypto/params/KeyParameter;
    .param p2, "additionalData"    # [B
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 159
    new-instance v0, Lorg/spongycastle/crypto/macs/Poly1305;

    invoke-direct {v0}, Lorg/spongycastle/crypto/macs/Poly1305;-><init>()V

    .line 160
    .local v0, "mac":Lorg/spongycastle/crypto/Mac;
    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 162
    array-length v2, p2

    invoke-virtual {p0, v0, p2, v3, v2}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->updateRecordMACText(Lorg/spongycastle/crypto/Mac;[BII)V

    .line 163
    invoke-virtual {p0, v0, p3, p4, p5}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->updateRecordMACText(Lorg/spongycastle/crypto/Mac;[BII)V

    .line 164
    array-length v2, p2

    invoke-virtual {p0, v0, v2}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->updateRecordMACLength(Lorg/spongycastle/crypto/Mac;I)V

    .line 165
    invoke-virtual {p0, v0, p5}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->updateRecordMACLength(Lorg/spongycastle/crypto/Mac;I)V

    .line 167
    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v2

    new-array v1, v2, [B

    .line 168
    .local v1, "output":[B
    invoke-interface {v0, v1, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 169
    return-object v1
.end method

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
    .line 104
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->getPlaintextLimit(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 106
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v7, 0x32

    invoke-direct {v4, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 109
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/spongycastle/crypto/engines/ChaCha7539Engine;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->decryptIV:[B

    move-object/from16 v5, p0

    move-wide/from16 v8, p1

    invoke-virtual/range {v5 .. v10}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->initRecord(Lorg/spongycastle/crypto/StreamCipher;ZJ[B)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v5

    .line 111
    .local v5, "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    add-int/lit8 v9, p6, -0x10

    .line 113
    .local v9, "plaintextLength":I
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v9}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->getAdditionalData(JSI)[B

    move-result-object v6

    .local v6, "additionalData":[B
    move-object/from16 v4, p0

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 114
    invoke-virtual/range {v4 .. v9}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->calculateRecordMAC(Lorg/spongycastle/crypto/params/KeyParameter;[B[BII)[B

    move-result-object v16

    .line 115
    .local v16, "calculatedMAC":[B
    add-int v4, p5, v9

    add-int v7, p5, p6

    move-object/from16 v0, p4

    invoke-static {v0, v4, v7}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v17

    .line 117
    .local v17, "receivedMAC":[B
    invoke-static/range {v16 .. v17}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 119
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v7, 0x14

    invoke-direct {v4, v7}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 122
    :cond_1
    new-array v14, v9, [B

    .line 123
    .local v14, "output":[B
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/spongycastle/crypto/engines/ChaCha7539Engine;

    const/4 v15, 0x0

    move-object/from16 v11, p4

    move/from16 v12, p5

    move v13, v9

    invoke-virtual/range {v10 .. v15}, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->processBytes([BII[BI)I

    .line 124
    return-object v14
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 9
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
    .line 90
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/spongycastle/crypto/engines/ChaCha7539Engine;

    const/4 v3, 0x1

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->encryptIV:[B

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->initRecord(Lorg/spongycastle/crypto/StreamCipher;ZJ[B)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v8

    .line 92
    .local v8, "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    add-int/lit8 v0, p6, 0x10

    new-array v4, v0, [B

    .line 93
    .local v4, "output":[B
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/spongycastle/crypto/engines/ChaCha7539Engine;

    const/4 v5, 0x0

    move-object v1, p4

    move v2, p5

    move v3, p6

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/engines/ChaCha7539Engine;->processBytes([BII[BI)I

    .line 95
    invoke-virtual {p0, p1, p2, p3, p6}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->getAdditionalData(JSI)[B

    move-result-object v3

    .line 96
    .local v3, "additionalData":[B
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, v8

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->calculateRecordMAC(Lorg/spongycastle/crypto/params/KeyParameter;[B[BII)[B

    move-result-object v7

    .line 97
    .local v7, "mac":[B
    const/4 v0, 0x0

    array-length v1, v7

    invoke-static {v7, v0, v4, p6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-object v4
.end method

.method protected generateRecordMACKey(Lorg/spongycastle/crypto/StreamCipher;)Lorg/spongycastle/crypto/params/KeyParameter;
    .locals 7
    .param p1, "cipher"    # Lorg/spongycastle/crypto/StreamCipher;

    .prologue
    const/4 v2, 0x0

    .line 149
    const/16 v0, 0x40

    new-array v1, v0, [B

    .line 150
    .local v1, "firstBlock":[B
    array-length v3, v1

    move-object v0, p1

    move-object v4, v1

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 152
    new-instance v6, Lorg/spongycastle/crypto/params/KeyParameter;

    const/16 v0, 0x20

    invoke-direct {v6, v1, v2, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 153
    .local v6, "macKey":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 154
    return-object v6
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
    .line 195
    const/16 v1, 0xd

    new-array v0, v1, [B

    .line 196
    .local v0, "additional_data":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    .line 197
    const/16 v1, 0x8

    invoke-static {p3, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 198
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 199
    const/16 v1, 0xb

    invoke-static {p4, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 201
    return-object v0
.end method

.method public getPlaintextLimit(I)I
    .locals 1
    .param p1, "ciphertextLimit"    # I

    .prologue
    .line 85
    add-int/lit8 v0, p1, -0x10

    return v0
.end method

.method protected initRecord(Lorg/spongycastle/crypto/StreamCipher;ZJ[B)Lorg/spongycastle/crypto/params/KeyParameter;
    .locals 3
    .param p1, "cipher"    # Lorg/spongycastle/crypto/StreamCipher;
    .param p2, "forEncryption"    # Z
    .param p3, "seqNo"    # J
    .param p5, "iv"    # [B

    .prologue
    .line 129
    invoke-virtual {p0, p3, p4, p5}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->calculateNonce(J[B)[B

    move-result-object v0

    .line 130
    .local v0, "nonce":[B
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-interface {p1, p2, v1}, Lorg/spongycastle/crypto/StreamCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 131
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->generateRecordMACKey(Lorg/spongycastle/crypto/StreamCipher;)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object v1

    return-object v1
.end method

.method protected updateRecordMACLength(Lorg/spongycastle/crypto/Mac;I)V
    .locals 6
    .param p1, "mac"    # Lorg/spongycastle/crypto/Mac;
    .param p2, "len"    # I

    .prologue
    .line 174
    int-to-long v2, p2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/spongycastle/util/Pack;->longToLittleEndian(J)[B

    move-result-object v0

    .line 175
    .local v0, "longLen":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 176
    return-void
.end method

.method protected updateRecordMACText(Lorg/spongycastle/crypto/Mac;[BII)V
    .locals 4
    .param p1, "mac"    # Lorg/spongycastle/crypto/Mac;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I

    .prologue
    .line 180
    invoke-interface {p1, p2, p3, p4}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 182
    rem-int/lit8 v0, p4, 0x10

    .line 183
    .local v0, "partial":I
    if-eqz v0, :cond_0

    .line 185
    sget-object v1, Lorg/spongycastle/crypto/tls/Chacha20Poly1305;->ZEROES:[B

    const/4 v2, 0x0

    rsub-int/lit8 v3, v0, 0x10

    invoke-interface {p1, v1, v2, v3}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 187
    :cond_0
    return-void
.end method
