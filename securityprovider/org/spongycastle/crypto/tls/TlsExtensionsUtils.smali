.class public Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;
.super Ljava/lang/Object;
.source "TlsExtensionsUtils.java"


# static fields
.field public static final EXT_encrypt_then_mac:Ljava/lang/Integer;

.field public static final EXT_extended_master_secret:Ljava/lang/Integer;

.field public static final EXT_heartbeat:Ljava/lang/Integer;

.field public static final EXT_max_fragment_length:Ljava/lang/Integer;

.field public static final EXT_padding:Ljava/lang/Integer;

.field public static final EXT_server_name:Ljava/lang/Integer;

.field public static final EXT_status_request:Ljava/lang/Integer;

.field public static final EXT_truncated_hmac:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x16

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_encrypt_then_mac:Ljava/lang/Integer;

    .line 13
    const/16 v0, 0x17

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_extended_master_secret:Ljava/lang/Integer;

    .line 14
    const/16 v0, 0xf

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_heartbeat:Ljava/lang/Integer;

    .line 15
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_max_fragment_length:Ljava/lang/Integer;

    .line 16
    const/16 v0, 0x15

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_padding:Ljava/lang/Integer;

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_server_name:Ljava/lang/Integer;

    .line 18
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    .line 19
    const/4 v0, 0x4

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_truncated_hmac:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEncryptThenMACExtension(Ljava/util/Hashtable;)V
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;

    .prologue
    .line 28
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_encrypt_then_mac:Ljava/lang/Integer;

    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createEncryptThenMACExtension()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public static addExtendedMasterSecretExtension(Ljava/util/Hashtable;)V
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;

    .prologue
    .line 33
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_extended_master_secret:Ljava/lang/Integer;

    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createExtendedMasterSecretExtension()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public static addHeartbeatExtension(Ljava/util/Hashtable;Lorg/spongycastle/crypto/tls/HeartbeatExtension;)V
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "heartbeatExtension"    # Lorg/spongycastle/crypto/tls/HeartbeatExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_heartbeat:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createHeartbeatExtension(Lorg/spongycastle/crypto/tls/HeartbeatExtension;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public static addMaxFragmentLengthExtension(Ljava/util/Hashtable;S)V
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "maxFragmentLength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_max_fragment_length:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createMaxFragmentLengthExtension(S)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public static addPaddingExtension(Ljava/util/Hashtable;I)V
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_padding:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createPaddingExtension(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public static addServerNameExtension(Ljava/util/Hashtable;Lorg/spongycastle/crypto/tls/ServerNameList;)V
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "serverNameList"    # Lorg/spongycastle/crypto/tls/ServerNameList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_server_name:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createServerNameExtension(Lorg/spongycastle/crypto/tls/ServerNameList;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public static addStatusRequestExtension(Ljava/util/Hashtable;Lorg/spongycastle/crypto/tls/CertificateStatusRequest;)V
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "statusRequest"    # Lorg/spongycastle/crypto/tls/CertificateStatusRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createStatusRequestExtension(Lorg/spongycastle/crypto/tls/CertificateStatusRequest;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public static addTruncatedHMacExtension(Ljava/util/Hashtable;)V
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;

    .prologue
    .line 68
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_truncated_hmac:Ljava/lang/Integer;

    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createTruncatedHMacExtension()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public static createEmptyExtensionData()[B
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    return-object v0
.end method

.method public static createEncryptThenMACExtension()[B
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    return-object v0
.end method

.method public static createExtendedMasterSecretExtension()[B
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    return-object v0
.end method

.method public static createHeartbeatExtension(Lorg/spongycastle/crypto/tls/HeartbeatExtension;)[B
    .locals 3
    .param p0, "heartbeatExtension"    # Lorg/spongycastle/crypto/tls/HeartbeatExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 144
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 147
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 149
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/HeartbeatExtension;->encode(Ljava/io/OutputStream;)V

    .line 151
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static createMaxFragmentLengthExtension(S)[B
    .locals 2
    .param p0, "maxFragmentLength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(S)V

    .line 159
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 160
    .local v0, "extensionData":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 161
    return-object v0
.end method

.method public static createPaddingExtension(I)[B
    .locals 1
    .param p0, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 168
    new-array v0, p0, [B

    return-object v0
.end method

.method public static createServerNameExtension(Lorg/spongycastle/crypto/tls/ServerNameList;)[B
    .locals 3
    .param p0, "serverNameList"    # Lorg/spongycastle/crypto/tls/ServerNameList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 176
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 179
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 181
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/ServerNameList;->encode(Ljava/io/OutputStream;)V

    .line 183
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static createStatusRequestExtension(Lorg/spongycastle/crypto/tls/CertificateStatusRequest;)[B
    .locals 3
    .param p0, "statusRequest"    # Lorg/spongycastle/crypto/tls/CertificateStatusRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 191
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 194
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->encode(Ljava/io/OutputStream;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static createTruncatedHMacExtension()[B
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->createEmptyExtensionData()[B

    move-result-object v0

    return-object v0
.end method

.method public static ensureExtensionsInitialised(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0
    .param p0, "extensions"    # Ljava/util/Hashtable;

    .prologue
    .line 23
    if-nez p0, :cond_0

    new-instance p0, Ljava/util/Hashtable;

    .end local p0    # "extensions":Ljava/util/Hashtable;
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static getHeartbeatExtension(Ljava/util/Hashtable;)Lorg/spongycastle/crypto/tls/HeartbeatExtension;
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_heartbeat:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 75
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readHeartbeatExtension([B)Lorg/spongycastle/crypto/tls/HeartbeatExtension;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMaxFragmentLengthExtension(Ljava/util/Hashtable;)S
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_max_fragment_length:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 82
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readMaxFragmentLengthExtension([B)S

    move-result v1

    goto :goto_0
.end method

.method public static getPaddingExtension(Ljava/util/Hashtable;)I
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_padding:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 89
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readPaddingExtension([B)I

    move-result v1

    goto :goto_0
.end method

.method public static getServerNameExtension(Ljava/util/Hashtable;)Lorg/spongycastle/crypto/tls/ServerNameList;
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_server_name:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 96
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readServerNameExtension([B)Lorg/spongycastle/crypto/tls/ServerNameList;

    move-result-object v1

    goto :goto_0
.end method

.method public static getStatusRequestExtension(Ljava/util/Hashtable;)Lorg/spongycastle/crypto/tls/CertificateStatusRequest;
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 103
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readStatusRequestExtension([B)Lorg/spongycastle/crypto/tls/CertificateStatusRequest;

    move-result-object v1

    goto :goto_0
.end method

.method public static hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_encrypt_then_mac:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 109
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readEncryptThenMACExtension([B)Z

    move-result v1

    goto :goto_0
.end method

.method public static hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_extended_master_secret:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 115
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readExtendedMasterSecretExtension([B)Z

    move-result v1

    goto :goto_0
.end method

.method public static hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_truncated_hmac:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 121
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readTruncatedHMacExtension([B)Z

    move-result v1

    goto :goto_0
.end method

.method private static readEmptyExtensionData([B)Z
    .locals 2
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    if-nez p0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'extensionData\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 215
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 218
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static readEncryptThenMACExtension([B)Z
    .locals 1
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result v0

    return v0
.end method

.method public static readExtendedMasterSecretExtension([B)Z
    .locals 1
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result v0

    return v0
.end method

.method public static readHeartbeatExtension([B)Lorg/spongycastle/crypto/tls/HeartbeatExtension;
    .locals 4
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    if-nez p0, :cond_0

    .line 236
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'extensionData\' cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 241
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/HeartbeatExtension;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/HeartbeatExtension;

    move-result-object v1

    .line 243
    .local v1, "heartbeatExtension":Lorg/spongycastle/crypto/tls/HeartbeatExtension;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 245
    return-object v1
.end method

.method public static readMaxFragmentLengthExtension([B)S
    .locals 2
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    if-nez p0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'extensionData\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 258
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 261
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8([BI)S

    move-result v0

    return v0
.end method

.method public static readPaddingExtension([B)I
    .locals 3
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    if-nez p0, :cond_0

    .line 269
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'extensionData\' cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 273
    aget-byte v1, p0, v0

    if-eqz v1, :cond_1

    .line 275
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 271
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_2
    array-length v1, p0

    return v1
.end method

.method public static readServerNameExtension([B)Lorg/spongycastle/crypto/tls/ServerNameList;
    .locals 4
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    if-nez p0, :cond_0

    .line 286
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'extensionData\' cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 291
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/ServerNameList;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerNameList;

    move-result-object v1

    .line 293
    .local v1, "serverNameList":Lorg/spongycastle/crypto/tls/ServerNameList;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 295
    return-object v1
.end method

.method public static readStatusRequestExtension([B)Lorg/spongycastle/crypto/tls/CertificateStatusRequest;
    .locals 4
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    if-nez p0, :cond_0

    .line 303
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'extensionData\' cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 308
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/CertificateStatusRequest;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateStatusRequest;

    move-result-object v1

    .line 310
    .local v1, "statusRequest":Lorg/spongycastle/crypto/tls/CertificateStatusRequest;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 312
    return-object v1
.end method

.method public static readTruncatedHMacExtension([B)Z
    .locals 1
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->readEmptyExtensionData([B)Z

    move-result v0

    return v0
.end method
