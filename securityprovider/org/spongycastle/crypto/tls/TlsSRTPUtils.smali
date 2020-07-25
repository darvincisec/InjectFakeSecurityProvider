.class public Lorg/spongycastle/crypto/tls/TlsSRTPUtils;
.super Ljava/lang/Object;
.source "TlsSRTPUtils.java"


# static fields
.field public static final EXT_use_srtp:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0xe

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsSRTPUtils;->EXT_use_srtp:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUseSRTPExtension(Ljava/util/Hashtable;Lorg/spongycastle/crypto/tls/UseSRTPData;)V
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "useSRTPData"    # Lorg/spongycastle/crypto/tls/UseSRTPData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsSRTPUtils;->EXT_use_srtp:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsSRTPUtils;->createUseSRTPExtension(Lorg/spongycastle/crypto/tls/UseSRTPData;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public static createUseSRTPExtension(Lorg/spongycastle/crypto/tls/UseSRTPData;)[B
    .locals 3
    .param p0, "useSRTPData"    # Lorg/spongycastle/crypto/tls/UseSRTPData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    if-nez p0, :cond_0

    .line 35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'useSRTPData\' cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/UseSRTPData;->getProtectionProfiles()[I

    move-result-object v1

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V

    .line 44
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/UseSRTPData;->getMki()[B

    move-result-object v1

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static getUseSRTPExtension(Ljava/util/Hashtable;)Lorg/spongycastle/crypto/tls/UseSRTPData;
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsSRTPUtils;->EXT_use_srtp:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 27
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsSRTPUtils;->readUseSRTPExtension([B)Lorg/spongycastle/crypto/tls/UseSRTPData;

    move-result-object v1

    goto :goto_0
.end method

.method public static readUseSRTPExtension([B)Lorg/spongycastle/crypto/tls/UseSRTPData;
    .locals 6
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 54
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "\'extensionData\' cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 60
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v1

    .line 61
    .local v1, "length":I
    const/4 v4, 0x2

    if-lt v1, v4, :cond_1

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_2

    .line 63
    :cond_1
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 65
    :cond_2
    div-int/lit8 v4, v1, 0x2

    invoke-static {v4, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16Array(ILjava/io/InputStream;)[I

    move-result-object v3

    .line 68
    .local v3, "protectionProfiles":[I
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 70
    .local v2, "mki":[B
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 72
    new-instance v4, Lorg/spongycastle/crypto/tls/UseSRTPData;

    invoke-direct {v4, v3, v2}, Lorg/spongycastle/crypto/tls/UseSRTPData;-><init>([I[B)V

    return-object v4
.end method
