.class public Lorg/spongycastle/crypto/tls/TlsUtils;
.super Ljava/lang/Object;
.source "TlsUtils.java"


# static fields
.field public static final EMPTY_BYTES:[B

.field public static final EMPTY_INTS:[I

.field public static final EMPTY_LONGS:[J

.field public static final EMPTY_SHORTS:[S

.field public static final EXT_signature_algorithms:Ljava/lang/Integer;

.field static final SSL3_CONST:[[B

.field static final SSL_CLIENT:[B

.field static final SSL_SERVER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 47
    new-array v0, v1, [B

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 48
    new-array v0, v1, [S

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_SHORTS:[S

    .line 49
    new-array v0, v1, [I

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_INTS:[I

    .line 50
    new-array v0, v1, [J

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_LONGS:[J

    .line 52
    const/16 v0, 0xd

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    .line 1392
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_CLIENT:[B

    .line 1393
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_SERVER:[B

    .line 1396
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsUtils;->genSSL3Const()[[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    return-void

    .line 1392
    nop

    :array_0
    .array-data 1
        0x43t
        0x4ct
        0x4et
        0x54t
    .end array-data

    .line 1393
    :array_1
    .array-data 1
        0x53t
        0x52t
        0x56t
        0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B
    .locals 8
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "secret"    # [B
    .param p2, "asciiLabel"    # Ljava/lang/String;
    .param p3, "seed"    # [B
    .param p4, "size"    # I

    .prologue
    .line 957
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v5

    .line 959
    .local v5, "version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 961
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "No PRF available for SSLv3 session"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 964
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 965
    .local v1, "label":[B
    invoke-static {v1, p3}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v2

    .line 967
    .local v2, "labelSeed":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getPrfAlgorithm()I

    move-result v3

    .line 969
    .local v3, "prfAlgorithm":I
    if-nez v3, :cond_1

    .line 971
    invoke-static {p1, v1, v2, p4}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF_legacy([B[B[BI)[B

    move-result-object v0

    .line 977
    :goto_0
    return-object v0

    .line 974
    :cond_1
    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->createPRFHash(I)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    .line 975
    .local v4, "prfDigest":Lorg/spongycastle/crypto/Digest;
    new-array v0, p4, [B

    .line 976
    .local v0, "buf":[B
    invoke-static {v4, p1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    goto :goto_0
.end method

.method public static PRF_legacy([BLjava/lang/String;[BI)[B
    .locals 3
    .param p0, "secret"    # [B
    .param p1, "asciiLabel"    # Ljava/lang/String;
    .param p2, "seed"    # [B
    .param p3, "size"    # I

    .prologue
    .line 982
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 983
    .local v0, "label":[B
    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v1

    .line 985
    .local v1, "labelSeed":[B
    invoke-static {p0, v0, v1, p3}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF_legacy([B[B[BI)[B

    move-result-object v2

    return-object v2
.end method

.method static PRF_legacy([B[B[BI)[B
    .locals 8
    .param p0, "secret"    # [B
    .param p1, "label"    # [B
    .param p2, "labelSeed"    # [B
    .param p3, "size"    # I

    .prologue
    const/4 v7, 0x0

    .line 990
    array-length v6, p0

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v5, v6, 0x2

    .line 991
    .local v5, "s_half":I
    new-array v3, v5, [B

    .line 992
    .local v3, "s1":[B
    new-array v4, v5, [B

    .line 993
    .local v4, "s2":[B
    invoke-static {p0, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 994
    array-length v6, p0

    sub-int/2addr v6, v5

    invoke-static {p0, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 996
    new-array v0, p3, [B

    .line 997
    .local v0, "b1":[B
    new-array v1, p3, [B

    .line 998
    .local v1, "b2":[B
    const/4 v6, 0x1

    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v6

    invoke-static {v6, v3, p2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 999
    const/4 v6, 0x2

    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v6

    invoke-static {v6, v4, p2, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 1000
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 1002
    aget-byte v6, v0, v2

    aget-byte v7, v1, v2

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 1000
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1004
    :cond_0
    return-object v0
.end method

.method public static addSignatureAlgorithmsExtension(Ljava/util/Hashtable;Ljava/util/Vector;)V
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->createSignatureAlgorithmsExtension(Ljava/util/Vector;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    return-void
.end method

.method static calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsContext;I)[B
    .locals 5
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "size"    # I

    .prologue
    .line 1056
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    .line 1057
    .local v1, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v0

    .line 1058
    .local v0, "master_secret":[B
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v3

    .line 1059
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v4

    .line 1058
    invoke-static {v3, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v2

    .line 1061
    .local v2, "seed":[B
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1063
    invoke-static {v0, v2, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateKeyBlock_SSL([B[BI)[B

    move-result-object v3

    .line 1066
    :goto_0
    return-object v3

    :cond_0
    const-string v3, "key expansion"

    invoke-static {p0, v0, v3, v2, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v3

    goto :goto_0
.end method

.method static calculateKeyBlock_SSL([B[BI)[B
    .locals 10
    .param p0, "master_secret"    # [B
    .param p1, "random"    # [B
    .param p2, "size"    # I

    .prologue
    const/4 v9, 0x0

    .line 1071
    const/4 v8, 0x1

    invoke-static {v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    .line 1072
    .local v1, "md5":Lorg/spongycastle/crypto/Digest;
    const/4 v8, 0x2

    invoke-static {v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v4

    .line 1073
    .local v4, "sha1":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 1074
    .local v2, "md5Size":I
    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    new-array v5, v8, [B

    .line 1075
    .local v5, "shatmp":[B
    add-int v8, p2, v2

    new-array v7, v8, [B

    .line 1077
    .local v7, "tmp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v3, 0x0

    .line 1078
    .local v3, "pos":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 1080
    sget-object v8, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    aget-object v6, v8, v0

    .line 1082
    .local v6, "ssl3Const":[B
    array-length v8, v6

    invoke-interface {v4, v6, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1083
    array-length v8, p0

    invoke-interface {v4, p0, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1084
    array-length v8, p1

    invoke-interface {v4, p1, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1085
    invoke-interface {v4, v5, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1087
    array-length v8, p0

    invoke-interface {v1, p0, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1088
    array-length v8, v5

    invoke-interface {v1, v5, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1089
    invoke-interface {v1, v7, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1091
    add-int/2addr v3, v2

    .line 1092
    add-int/lit8 v0, v0, 0x1

    .line 1093
    goto :goto_0

    .line 1095
    .end local v6    # "ssl3Const":[B
    :cond_0
    invoke-static {v7, v9, p2}, Lorg/spongycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    return-object v8
.end method

.method static calculateMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;[B)[B
    .locals 5
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "pre_master_secret"    # [B

    .prologue
    .line 1100
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    .line 1103
    .local v1, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    iget-boolean v3, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    if-eqz v3, :cond_0

    .line 1105
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getSessionHash()[B

    move-result-object v2

    .line 1112
    .local v2, "seed":[B
    :goto_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1114
    invoke-static {p1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateMasterSecret_SSL([B[B)[B

    move-result-object v3

    .line 1121
    :goto_1
    return-object v3

    .line 1109
    .end local v2    # "seed":[B
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v3

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getServerRandom()[B

    move-result-object v4

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v2

    .restart local v2    # "seed":[B
    goto :goto_0

    .line 1117
    :cond_1
    iget-boolean v3, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    if-eqz v3, :cond_2

    const-string v0, "extended master secret"

    .line 1121
    .local v0, "asciiLabel":Ljava/lang/String;
    :goto_2
    const/16 v3, 0x30

    invoke-static {p0, p1, v0, v2, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object v3

    goto :goto_1

    .line 1117
    .end local v0    # "asciiLabel":Ljava/lang/String;
    :cond_2
    const-string v0, "master secret"

    goto :goto_2
.end method

.method static calculateMasterSecret_SSL([B[B)[B
    .locals 10
    .param p0, "pre_master_secret"    # [B
    .param p1, "random"    # [B

    .prologue
    const/4 v9, 0x0

    .line 1126
    const/4 v8, 0x1

    invoke-static {v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    .line 1127
    .local v1, "md5":Lorg/spongycastle/crypto/Digest;
    const/4 v8, 0x2

    invoke-static {v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v5

    .line 1128
    .local v5, "sha1":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    .line 1129
    .local v2, "md5Size":I
    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    new-array v6, v8, [B

    .line 1131
    .local v6, "shatmp":[B
    mul-int/lit8 v8, v2, 0x3

    new-array v4, v8, [B

    .line 1132
    .local v4, "rval":[B
    const/4 v3, 0x0

    .line 1134
    .local v3, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v8, 0x3

    if-ge v0, v8, :cond_0

    .line 1136
    sget-object v8, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    aget-object v7, v8, v0

    .line 1138
    .local v7, "ssl3Const":[B
    array-length v8, v7

    invoke-interface {v5, v7, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1139
    array-length v8, p0

    invoke-interface {v5, p0, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1140
    array-length v8, p1

    invoke-interface {v5, p1, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1141
    invoke-interface {v5, v6, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1143
    array-length v8, p0

    invoke-interface {v1, p0, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1144
    array-length v8, v6

    invoke-interface {v1, v6, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 1145
    invoke-interface {v1, v4, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 1147
    add-int/2addr v3, v2

    .line 1134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1150
    .end local v7    # "ssl3Const":[B
    :cond_0
    return-object v4
.end method

.method static calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/lang/String;[B)[B
    .locals 4
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "asciiLabel"    # Ljava/lang/String;
    .param p2, "handshakeHash"    # [B

    .prologue
    .line 1155
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1164
    .end local p2    # "handshakeHash":[B
    :goto_0
    return-object p2

    .line 1160
    .restart local p2    # "handshakeHash":[B
    :cond_0
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    .line 1161
    .local v1, "securityParameters":Lorg/spongycastle/crypto/tls/SecurityParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getMasterSecret()[B

    move-result-object v0

    .line 1162
    .local v0, "master_secret":[B
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getVerifyDataLength()I

    move-result v2

    .line 1164
    .local v2, "verify_data_length":I
    invoke-static {p0, v0, p1, p2, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF(Lorg/spongycastle/crypto/tls/TlsContext;[BLjava/lang/String;[BI)[B

    move-result-object p2

    goto :goto_0
.end method

.method public static checkUint16(I)V
    .locals 2
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint16(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 84
    :cond_0
    return-void
.end method

.method public static checkUint16(J)V
    .locals 2
    .param p0, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint16(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 92
    :cond_0
    return-void
.end method

.method public static checkUint24(I)V
    .locals 2
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint24(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 100
    :cond_0
    return-void
.end method

.method public static checkUint24(J)V
    .locals 2
    .param p0, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint24(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 108
    :cond_0
    return-void
.end method

.method public static checkUint32(J)V
    .locals 2
    .param p0, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint32(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 116
    :cond_0
    return-void
.end method

.method public static checkUint48(J)V
    .locals 2
    .param p0, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint48(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 124
    :cond_0
    return-void
.end method

.method public static checkUint64(J)V
    .locals 2
    .param p0, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint64(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 132
    :cond_0
    return-void
.end method

.method public static checkUint8(I)V
    .locals 2
    .param p0, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint8(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 68
    :cond_0
    return-void
.end method

.method public static checkUint8(J)V
    .locals 2
    .param p0, "i"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint8(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 76
    :cond_0
    return-void
.end method

.method public static checkUint8(S)V
    .locals 2
    .param p0, "i"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidUint8(S)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 60
    :cond_0
    return-void
.end method

.method public static cloneHash(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;
    .locals 2
    .param p0, "hashAlgorithm"    # S
    .param p1, "hash"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 1197
    packed-switch p0, :pswitch_data_0

    .line 1212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1200
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/MD5Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>(Lorg/spongycastle/crypto/digests/MD5Digest;)V

    .line 1210
    :goto_0
    return-object v0

    .line 1202
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA1Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    goto :goto_0

    .line 1204
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA224Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA224Digest;)V

    goto :goto_0

    .line 1206
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_3
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA256Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA256Digest;)V

    goto :goto_0

    .line 1208
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_4
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA384Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA384Digest;)V

    goto :goto_0

    .line 1210
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_5
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    check-cast p1, Lorg/spongycastle/crypto/digests/SHA512Digest;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA512Digest;)V

    goto :goto_0

    .line 1197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static clonePRFHash(ILorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;
    .locals 1
    .param p0, "prfAlgorithm"    # I
    .param p1, "hash"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 1229
    packed-switch p0, :pswitch_data_0

    .line 1234
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getHashAlgorithmForPRFAlgorithm(I)S

    move-result v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->cloneHash(SLorg/spongycastle/crypto/Digest;)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :goto_0
    return-object v0

    .line 1232
    .restart local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/CombinedHash;

    check-cast p1, Lorg/spongycastle/crypto/tls/CombinedHash;

    .end local p1    # "hash":Lorg/spongycastle/crypto/Digest;
    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>(Lorg/spongycastle/crypto/tls/CombinedHash;)V

    goto :goto_0

    .line 1229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static concat([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1009
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 1010
    .local v0, "c":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1011
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1012
    return-object v0
.end method

.method public static createHash(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;)Lorg/spongycastle/crypto/Digest;
    .locals 1
    .param p0, "signatureAndHashAlgorithm"    # Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    .prologue
    .line 1190
    if-nez p0, :cond_0

    new-instance v0, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>()V

    :goto_0
    return-object v0

    .line 1192
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    goto :goto_0
.end method

.method public static createHash(S)Lorg/spongycastle/crypto/Digest;
    .locals 2
    .param p0, "hashAlgorithm"    # S

    .prologue
    .line 1169
    packed-switch p0, :pswitch_data_0

    .line 1184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1172
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    .line 1182
    :goto_0
    return-object v0

    .line 1174
    :pswitch_1
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    goto :goto_0

    .line 1176
    :pswitch_2
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA224Digest;-><init>()V

    goto :goto_0

    .line 1178
    :pswitch_3
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    goto :goto_0

    .line 1180
    :pswitch_4
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>()V

    goto :goto_0

    .line 1182
    :pswitch_5
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA512Digest;-><init>()V

    goto :goto_0

    .line 1169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static createPRFHash(I)Lorg/spongycastle/crypto/Digest;
    .locals 1
    .param p0, "prfAlgorithm"    # I

    .prologue
    .line 1218
    packed-switch p0, :pswitch_data_0

    .line 1223
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getHashAlgorithmForPRFAlgorithm(I)S

    move-result v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->createHash(S)Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1221
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>()V

    goto :goto_0

    .line 1218
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static createSignatureAlgorithmsExtension(Ljava/util/Vector;)[B
    .locals 2
    .param p0, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 839
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->encodeSupportedSignatureAlgorithms(Ljava/util/Vector;ZLjava/io/OutputStream;)V

    .line 841
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static createTlsSigner(S)Lorg/spongycastle/crypto/tls/TlsSigner;
    .locals 2
    .param p0, "clientCertificateType"    # S

    .prologue
    .line 1379
    sparse-switch p0, :sswitch_data_0

    .line 1388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'clientCertificateType\' is not a type with signing capability"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1382
    :sswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDSSSigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsDSSSigner;-><init>()V

    .line 1386
    :goto_0
    return-object v0

    .line 1384
    :sswitch_1
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsECDSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsECDSASigner;-><init>()V

    goto :goto_0

    .line 1386
    :sswitch_2
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSASigner;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsRSASigner;-><init>()V

    goto :goto_0

    .line 1379
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method public static encodeOpaque8([B)[B
    .locals 1
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 422
    array-length v0, p0

    int-to-byte v0, v0

    invoke-static {p0, v0}, Lorg/spongycastle/util/Arrays;->prepend([BB)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeSupportedSignatureAlgorithms(Ljava/util/Vector;ZLjava/io/OutputStream;)V
    .locals 5
    .param p0, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .param p1, "allowAnonymous"    # Z
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 873
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    const v4, 0x8000

    if-lt v3, v4, :cond_1

    .line 875
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'supportedSignatureAlgorithms\' must have length from 1 to (2^15 - 1)"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 880
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    mul-int/lit8 v2, v3, 0x2

    .line 881
    .local v2, "length":I
    invoke-static {v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 882
    invoke-static {v2, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 883
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 885
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    .line 886
    .local v0, "entry":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v3

    if-nez v3, :cond_2

    .line 892
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "SignatureAlgorithm.anonymous MUST NOT appear in the signature_algorithms extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 895
    :cond_2
    invoke-virtual {v0, p2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->encode(Ljava/io/OutputStream;)V

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 897
    .end local v0    # "entry":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    :cond_3
    return-void
.end method

.method public static encodeUint16ArrayWithUint16Length([I)[B
    .locals 3
    .param p0, "uints"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    array-length v2, p0

    mul-int/lit8 v0, v2, 0x2

    .line 435
    .local v0, "length":I
    add-int/lit8 v2, v0, 0x2

    new-array v1, v2, [B

    .line 436
    .local v1, "result":[B
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([I[BI)V

    .line 437
    return-object v1
.end method

.method public static encodeUint8ArrayWithUint8Length([S)[B
    .locals 2
    .param p0, "uints"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 428
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([S[BI)V

    .line 429
    return-object v0
.end method

.method private static genSSL3Const()[[B
    .locals 5

    .prologue
    .line 1400
    const/16 v3, 0xa

    .line 1401
    .local v3, "n":I
    new-array v0, v3, [[B

    .line 1402
    .local v0, "arr":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1404
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [B

    .line 1405
    .local v1, "b":[B
    add-int/lit8 v4, v2, 0x41

    int-to-byte v4, v4

    invoke-static {v1, v4}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 1406
    aput-object v1, v0, v2

    .line 1402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1408
    .end local v1    # "b":[B
    :cond_0
    return-object v0
.end method

.method public static getAllSignatureAlgorithms()Ljava/util/Vector;
    .locals 2

    .prologue
    .line 712
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 713
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 714
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 715
    const/4 v1, 0x2

    invoke-static {v1}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 716
    const/4 v1, 0x3

    invoke-static {v1}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 717
    return-object v0
.end method

.method public static getCipherType(I)I
    .locals 2
    .param p0, "ciphersuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1420
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getEncryptionAlgorithm(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1453
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 1433
    :sswitch_0
    const/4 v0, 0x2

    .line 1450
    :goto_0
    return v0

    .line 1445
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1450
    :sswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1420
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method static getClientCertificateType(Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/tls/Certificate;)S
    .locals 7
    .param p0, "clientCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .param p1, "serverCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x2b

    .line 1277
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1279
    const/4 v4, -0x1

    .line 1332
    :goto_0
    return v4

    .line 1282
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/tls/Certificate;->getCertificateAt(I)Lorg/spongycastle/asn1/x509/Certificate;

    move-result-object v3

    .line 1283
    .local v3, "x509Cert":Lorg/spongycastle/asn1/x509/Certificate;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/Certificate;->getSubjectPublicKeyInfo()Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 1286
    .local v1, "keyInfo":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :try_start_0
    invoke-static {v1}, Lorg/spongycastle/crypto/util/PublicKeyFactory;->createKey(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 1287
    .local v2, "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1289
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    .end local v2    # "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :catch_0
    move-exception v0

    .line 1341
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v4, v6, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v4

    .line 1307
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "publicKey":Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :cond_1
    :try_start_1
    instance-of v4, v2, Lorg/spongycastle/crypto/params/RSAKeyParameters;

    if-eqz v4, :cond_2

    .line 1309
    const/16 v4, 0x80

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 1310
    const/4 v4, 0x1

    goto :goto_0

    .line 1317
    :cond_2
    instance-of v4, v2, Lorg/spongycastle/crypto/params/DSAPublicKeyParameters;

    if-eqz v4, :cond_3

    .line 1319
    const/16 v4, 0x80

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 1320
    const/4 v4, 0x2

    goto :goto_0

    .line 1328
    :cond_3
    instance-of v4, v2, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    if-eqz v4, :cond_4

    .line 1330
    const/16 v4, 0x80

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V

    .line 1332
    const/16 v4, 0x40

    goto :goto_0

    .line 1337
    :cond_4
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x2b

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static getDefaultDSSSignatureAlgorithms()Ljava/util/Vector;
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 722
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    invoke-direct {v0, v1, v1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultECDSASignatureAlgorithms()Ljava/util/Vector;
    .locals 3

    .prologue
    .line 727
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultRSASignatureAlgorithms()Ljava/util/Vector;
    .locals 3

    .prologue
    .line 732
    new-instance v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultSupportedSignatureAlgorithms()Ljava/util/Vector;
    .locals 8

    .prologue
    .line 737
    const/4 v5, 0x5

    new-array v0, v5, [S

    fill-array-data v0, :array_0

    .line 739
    .local v0, "hashAlgorithms":[S
    const/4 v5, 0x3

    new-array v4, v5, [S

    fill-array-data v4, :array_1

    .line 742
    .local v4, "signatureAlgorithms":[S
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 743
    .local v3, "result":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 745
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 747
    new-instance v5, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    aget-short v6, v0, v2

    aget-short v7, v4, v1

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;-><init>(SS)V

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 745
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 743
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    .end local v2    # "j":I
    :cond_1
    return-object v3

    .line 737
    :array_0
    .array-data 2
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
    .end array-data

    .line 739
    nop

    :array_1
    .array-data 2
        0x1s
        0x2s
        0x3s
    .end array-data
.end method

.method public static getEncryptionAlgorithm(I)I
    .locals 2
    .param p0, "ciphersuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 1459
    sparse-switch p0, :sswitch_data_0

    .line 1759
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 1479
    :sswitch_0
    const/4 v0, 0x7

    .line 1756
    :goto_0
    :sswitch_1
    return v0

    .line 1513
    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 1520
    :sswitch_3
    const/16 v0, 0xf

    goto :goto_0

    .line 1527
    :sswitch_4
    const/16 v0, 0x10

    goto :goto_0

    .line 1542
    :sswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 1550
    :sswitch_6
    const/16 v0, 0x67

    goto :goto_0

    .line 1584
    :sswitch_7
    const/16 v0, 0x9

    goto :goto_0

    .line 1591
    :sswitch_8
    const/16 v0, 0x11

    goto :goto_0

    .line 1598
    :sswitch_9
    const/16 v0, 0x12

    goto :goto_0

    .line 1613
    :sswitch_a
    const/16 v0, 0xb

    goto :goto_0

    .line 1621
    :sswitch_b
    const/16 v0, 0x68

    goto :goto_0

    .line 1643
    :sswitch_c
    const/16 v0, 0xc

    goto :goto_0

    .line 1658
    :sswitch_d
    const/16 v0, 0x13

    goto :goto_0

    .line 1680
    :sswitch_e
    const/16 v0, 0xd

    goto :goto_0

    .line 1695
    :sswitch_f
    const/16 v0, 0x14

    goto :goto_0

    .line 1704
    :sswitch_10
    const/16 v0, 0x15

    goto :goto_0

    :sswitch_11
    move v0, v1

    .line 1736
    goto :goto_0

    :sswitch_12
    move v0, v1

    .line 1748
    goto :goto_0

    .line 1756
    :sswitch_13
    const/16 v0, 0xe

    goto :goto_0

    .line 1459
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_11
        0x5 -> :sswitch_12
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x10 -> :sswitch_0
        0x13 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_11
        0x1b -> :sswitch_0
        0x2c -> :sswitch_1
        0x2d -> :sswitch_1
        0x2e -> :sswitch_1
        0x2f -> :sswitch_2
        0x30 -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x34 -> :sswitch_2
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x3a -> :sswitch_7
        0x3b -> :sswitch_1
        0x3c -> :sswitch_2
        0x3d -> :sswitch_7
        0x3e -> :sswitch_2
        0x3f -> :sswitch_2
        0x40 -> :sswitch_2
        0x41 -> :sswitch_c
        0x42 -> :sswitch_c
        0x43 -> :sswitch_c
        0x44 -> :sswitch_c
        0x45 -> :sswitch_c
        0x46 -> :sswitch_c
        0x67 -> :sswitch_2
        0x68 -> :sswitch_7
        0x69 -> :sswitch_7
        0x6a -> :sswitch_7
        0x6b -> :sswitch_7
        0x6c -> :sswitch_2
        0x6d -> :sswitch_7
        0x84 -> :sswitch_e
        0x85 -> :sswitch_e
        0x86 -> :sswitch_e
        0x87 -> :sswitch_e
        0x88 -> :sswitch_e
        0x89 -> :sswitch_e
        0x8a -> :sswitch_12
        0x8b -> :sswitch_0
        0x8c -> :sswitch_2
        0x8d -> :sswitch_7
        0x8e -> :sswitch_12
        0x8f -> :sswitch_0
        0x90 -> :sswitch_2
        0x91 -> :sswitch_7
        0x92 -> :sswitch_12
        0x93 -> :sswitch_0
        0x94 -> :sswitch_2
        0x95 -> :sswitch_7
        0x96 -> :sswitch_13
        0x97 -> :sswitch_13
        0x98 -> :sswitch_13
        0x99 -> :sswitch_13
        0x9a -> :sswitch_13
        0x9b -> :sswitch_13
        0x9c -> :sswitch_5
        0x9d -> :sswitch_a
        0x9e -> :sswitch_5
        0x9f -> :sswitch_a
        0xa0 -> :sswitch_5
        0xa1 -> :sswitch_a
        0xa2 -> :sswitch_5
        0xa3 -> :sswitch_a
        0xa4 -> :sswitch_5
        0xa5 -> :sswitch_a
        0xa6 -> :sswitch_5
        0xa7 -> :sswitch_a
        0xa8 -> :sswitch_5
        0xa9 -> :sswitch_a
        0xaa -> :sswitch_5
        0xab -> :sswitch_a
        0xac -> :sswitch_5
        0xad -> :sswitch_a
        0xae -> :sswitch_2
        0xaf -> :sswitch_7
        0xb0 -> :sswitch_1
        0xb1 -> :sswitch_1
        0xb2 -> :sswitch_2
        0xb3 -> :sswitch_7
        0xb4 -> :sswitch_1
        0xb5 -> :sswitch_1
        0xb6 -> :sswitch_2
        0xb7 -> :sswitch_7
        0xb8 -> :sswitch_1
        0xb9 -> :sswitch_1
        0xba -> :sswitch_c
        0xbb -> :sswitch_c
        0xbc -> :sswitch_c
        0xbd -> :sswitch_c
        0xbe -> :sswitch_c
        0xbf -> :sswitch_c
        0xc0 -> :sswitch_e
        0xc1 -> :sswitch_e
        0xc2 -> :sswitch_e
        0xc3 -> :sswitch_e
        0xc4 -> :sswitch_e
        0xc5 -> :sswitch_e
        0xc001 -> :sswitch_1
        0xc002 -> :sswitch_12
        0xc003 -> :sswitch_0
        0xc004 -> :sswitch_2
        0xc005 -> :sswitch_7
        0xc006 -> :sswitch_1
        0xc007 -> :sswitch_12
        0xc008 -> :sswitch_0
        0xc009 -> :sswitch_2
        0xc00a -> :sswitch_7
        0xc00b -> :sswitch_1
        0xc00c -> :sswitch_12
        0xc00d -> :sswitch_0
        0xc00e -> :sswitch_2
        0xc00f -> :sswitch_7
        0xc010 -> :sswitch_1
        0xc011 -> :sswitch_12
        0xc012 -> :sswitch_0
        0xc013 -> :sswitch_2
        0xc014 -> :sswitch_7
        0xc015 -> :sswitch_1
        0xc016 -> :sswitch_12
        0xc017 -> :sswitch_0
        0xc018 -> :sswitch_2
        0xc019 -> :sswitch_7
        0xc01a -> :sswitch_0
        0xc01b -> :sswitch_0
        0xc01c -> :sswitch_0
        0xc01d -> :sswitch_2
        0xc01e -> :sswitch_2
        0xc01f -> :sswitch_2
        0xc020 -> :sswitch_7
        0xc021 -> :sswitch_7
        0xc022 -> :sswitch_7
        0xc023 -> :sswitch_2
        0xc024 -> :sswitch_7
        0xc025 -> :sswitch_2
        0xc026 -> :sswitch_7
        0xc027 -> :sswitch_2
        0xc028 -> :sswitch_7
        0xc029 -> :sswitch_2
        0xc02a -> :sswitch_7
        0xc02b -> :sswitch_5
        0xc02c -> :sswitch_a
        0xc02d -> :sswitch_5
        0xc02e -> :sswitch_a
        0xc02f -> :sswitch_5
        0xc030 -> :sswitch_a
        0xc031 -> :sswitch_5
        0xc032 -> :sswitch_a
        0xc033 -> :sswitch_12
        0xc034 -> :sswitch_0
        0xc035 -> :sswitch_2
        0xc036 -> :sswitch_7
        0xc037 -> :sswitch_2
        0xc038 -> :sswitch_7
        0xc039 -> :sswitch_1
        0xc03a -> :sswitch_1
        0xc03b -> :sswitch_1
        0xc072 -> :sswitch_c
        0xc073 -> :sswitch_e
        0xc074 -> :sswitch_c
        0xc075 -> :sswitch_e
        0xc076 -> :sswitch_c
        0xc077 -> :sswitch_e
        0xc078 -> :sswitch_c
        0xc079 -> :sswitch_e
        0xc07a -> :sswitch_d
        0xc07b -> :sswitch_f
        0xc07c -> :sswitch_d
        0xc07d -> :sswitch_f
        0xc07e -> :sswitch_d
        0xc07f -> :sswitch_f
        0xc080 -> :sswitch_d
        0xc081 -> :sswitch_f
        0xc082 -> :sswitch_d
        0xc083 -> :sswitch_f
        0xc084 -> :sswitch_d
        0xc085 -> :sswitch_f
        0xc086 -> :sswitch_d
        0xc087 -> :sswitch_f
        0xc088 -> :sswitch_d
        0xc089 -> :sswitch_f
        0xc08a -> :sswitch_d
        0xc08b -> :sswitch_f
        0xc08c -> :sswitch_d
        0xc08d -> :sswitch_f
        0xc08e -> :sswitch_d
        0xc08f -> :sswitch_f
        0xc090 -> :sswitch_d
        0xc091 -> :sswitch_f
        0xc092 -> :sswitch_d
        0xc093 -> :sswitch_f
        0xc094 -> :sswitch_c
        0xc095 -> :sswitch_e
        0xc096 -> :sswitch_c
        0xc097 -> :sswitch_e
        0xc098 -> :sswitch_c
        0xc099 -> :sswitch_e
        0xc09a -> :sswitch_c
        0xc09b -> :sswitch_e
        0xc09c -> :sswitch_3
        0xc09d -> :sswitch_8
        0xc09e -> :sswitch_3
        0xc09f -> :sswitch_8
        0xc0a0 -> :sswitch_4
        0xc0a1 -> :sswitch_9
        0xc0a2 -> :sswitch_4
        0xc0a3 -> :sswitch_9
        0xc0a4 -> :sswitch_3
        0xc0a5 -> :sswitch_8
        0xc0a6 -> :sswitch_3
        0xc0a7 -> :sswitch_8
        0xc0a8 -> :sswitch_4
        0xc0a9 -> :sswitch_9
        0xc0aa -> :sswitch_4
        0xc0ab -> :sswitch_9
        0xc0ac -> :sswitch_3
        0xc0ad -> :sswitch_8
        0xc0ae -> :sswitch_4
        0xc0af -> :sswitch_9
        0xcca8 -> :sswitch_10
        0xcca9 -> :sswitch_10
        0xccaa -> :sswitch_10
        0xccab -> :sswitch_10
        0xccac -> :sswitch_10
        0xccad -> :sswitch_10
        0xccae -> :sswitch_10
        0xff00 -> :sswitch_6
        0xff01 -> :sswitch_b
        0xff02 -> :sswitch_6
        0xff03 -> :sswitch_b
        0xff04 -> :sswitch_6
        0xff05 -> :sswitch_b
        0xff10 -> :sswitch_6
        0xff11 -> :sswitch_b
        0xff12 -> :sswitch_6
        0xff13 -> :sswitch_b
        0xff14 -> :sswitch_6
        0xff15 -> :sswitch_b
    .end sparse-switch
.end method

.method public static getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B
    .locals 1
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "extensionType"    # Ljava/lang/Integer;

    .prologue
    .line 771
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    goto :goto_0
.end method

.method public static getHashAlgorithmForPRFAlgorithm(I)S
    .locals 2
    .param p0, "prfAlgorithm"    # I

    .prologue
    .line 1240
    packed-switch p0, :pswitch_data_0

    .line 1249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown PRFAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1243
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "legacy PRF not a valid algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1245
    :pswitch_1
    const/4 v0, 0x4

    .line 1247
    :goto_0
    return v0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    .line 1240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getKeyExchangeAlgorithm(I)I
    .locals 2
    .param p0, "ciphersuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1765
    sparse-switch p0, :sswitch_data_0

    .line 2055
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 1782
    :sswitch_0
    const/16 v0, 0xb

    .line 2052
    :goto_0
    return v0

    .line 1798
    :sswitch_1
    const/4 v0, 0x7

    goto :goto_0

    .line 1814
    :sswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 1830
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1854
    :sswitch_4
    const/16 v0, 0xe

    goto :goto_0

    .line 1877
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 1884
    :sswitch_6
    const/16 v0, 0x14

    goto :goto_0

    .line 1899
    :sswitch_7
    const/16 v0, 0x10

    goto :goto_0

    .line 1914
    :sswitch_8
    const/16 v0, 0x12

    goto :goto_0

    .line 1936
    :sswitch_9
    const/16 v0, 0x11

    goto :goto_0

    .line 1952
    :sswitch_a
    const/16 v0, 0x18

    goto :goto_0

    .line 1970
    :sswitch_b
    const/16 v0, 0x13

    goto :goto_0

    .line 1994
    :sswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 2019
    :sswitch_d
    const/4 v0, 0x1

    goto :goto_0

    .line 2037
    :sswitch_e
    const/16 v0, 0xf

    goto :goto_0

    .line 2042
    :sswitch_f
    const/16 v0, 0x15

    goto :goto_0

    .line 2047
    :sswitch_10
    const/16 v0, 0x16

    goto :goto_0

    .line 2052
    :sswitch_11
    const/16 v0, 0x17

    goto :goto_0

    .line 1765
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_d
        0x4 -> :sswitch_d
        0x5 -> :sswitch_d
        0xa -> :sswitch_d
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x13 -> :sswitch_3
        0x16 -> :sswitch_5
        0x18 -> :sswitch_0
        0x1b -> :sswitch_0
        0x2c -> :sswitch_c
        0x2d -> :sswitch_4
        0x2e -> :sswitch_e
        0x2f -> :sswitch_d
        0x30 -> :sswitch_1
        0x31 -> :sswitch_2
        0x32 -> :sswitch_3
        0x33 -> :sswitch_5
        0x34 -> :sswitch_0
        0x35 -> :sswitch_d
        0x36 -> :sswitch_1
        0x37 -> :sswitch_2
        0x38 -> :sswitch_3
        0x39 -> :sswitch_5
        0x3a -> :sswitch_0
        0x3b -> :sswitch_d
        0x3c -> :sswitch_d
        0x3d -> :sswitch_d
        0x3e -> :sswitch_1
        0x3f -> :sswitch_2
        0x40 -> :sswitch_3
        0x41 -> :sswitch_d
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
        0x44 -> :sswitch_3
        0x45 -> :sswitch_5
        0x46 -> :sswitch_0
        0x67 -> :sswitch_5
        0x68 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6a -> :sswitch_3
        0x6b -> :sswitch_5
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x84 -> :sswitch_d
        0x85 -> :sswitch_1
        0x86 -> :sswitch_2
        0x87 -> :sswitch_3
        0x88 -> :sswitch_5
        0x89 -> :sswitch_0
        0x8a -> :sswitch_c
        0x8b -> :sswitch_c
        0x8c -> :sswitch_c
        0x8d -> :sswitch_c
        0x8e -> :sswitch_4
        0x8f -> :sswitch_4
        0x90 -> :sswitch_4
        0x91 -> :sswitch_4
        0x92 -> :sswitch_e
        0x93 -> :sswitch_e
        0x94 -> :sswitch_e
        0x95 -> :sswitch_e
        0x96 -> :sswitch_d
        0x97 -> :sswitch_1
        0x98 -> :sswitch_2
        0x99 -> :sswitch_3
        0x9a -> :sswitch_5
        0x9b -> :sswitch_0
        0x9c -> :sswitch_d
        0x9d -> :sswitch_d
        0x9e -> :sswitch_5
        0x9f -> :sswitch_5
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_2
        0xa2 -> :sswitch_3
        0xa3 -> :sswitch_3
        0xa4 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_0
        0xa7 -> :sswitch_0
        0xa8 -> :sswitch_c
        0xa9 -> :sswitch_c
        0xaa -> :sswitch_4
        0xab -> :sswitch_4
        0xac -> :sswitch_e
        0xad -> :sswitch_e
        0xae -> :sswitch_c
        0xaf -> :sswitch_c
        0xb0 -> :sswitch_c
        0xb1 -> :sswitch_c
        0xb2 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb4 -> :sswitch_4
        0xb5 -> :sswitch_4
        0xb6 -> :sswitch_e
        0xb7 -> :sswitch_e
        0xb8 -> :sswitch_e
        0xb9 -> :sswitch_e
        0xba -> :sswitch_d
        0xbb -> :sswitch_1
        0xbc -> :sswitch_2
        0xbd -> :sswitch_3
        0xbe -> :sswitch_5
        0xbf -> :sswitch_0
        0xc0 -> :sswitch_d
        0xc1 -> :sswitch_1
        0xc2 -> :sswitch_2
        0xc3 -> :sswitch_3
        0xc4 -> :sswitch_5
        0xc5 -> :sswitch_0
        0xc001 -> :sswitch_7
        0xc002 -> :sswitch_7
        0xc003 -> :sswitch_7
        0xc004 -> :sswitch_7
        0xc005 -> :sswitch_7
        0xc006 -> :sswitch_9
        0xc007 -> :sswitch_9
        0xc008 -> :sswitch_9
        0xc009 -> :sswitch_9
        0xc00a -> :sswitch_9
        0xc00b -> :sswitch_8
        0xc00c -> :sswitch_8
        0xc00d -> :sswitch_8
        0xc00e -> :sswitch_8
        0xc00f -> :sswitch_8
        0xc010 -> :sswitch_b
        0xc011 -> :sswitch_b
        0xc012 -> :sswitch_b
        0xc013 -> :sswitch_b
        0xc014 -> :sswitch_b
        0xc015 -> :sswitch_6
        0xc016 -> :sswitch_6
        0xc017 -> :sswitch_6
        0xc018 -> :sswitch_6
        0xc019 -> :sswitch_6
        0xc01a -> :sswitch_f
        0xc01b -> :sswitch_11
        0xc01c -> :sswitch_10
        0xc01d -> :sswitch_f
        0xc01e -> :sswitch_11
        0xc01f -> :sswitch_10
        0xc020 -> :sswitch_f
        0xc021 -> :sswitch_11
        0xc022 -> :sswitch_10
        0xc023 -> :sswitch_9
        0xc024 -> :sswitch_9
        0xc025 -> :sswitch_7
        0xc026 -> :sswitch_7
        0xc027 -> :sswitch_b
        0xc028 -> :sswitch_b
        0xc029 -> :sswitch_8
        0xc02a -> :sswitch_8
        0xc02b -> :sswitch_9
        0xc02c -> :sswitch_9
        0xc02d -> :sswitch_7
        0xc02e -> :sswitch_7
        0xc02f -> :sswitch_b
        0xc030 -> :sswitch_b
        0xc031 -> :sswitch_8
        0xc032 -> :sswitch_8
        0xc033 -> :sswitch_a
        0xc034 -> :sswitch_a
        0xc035 -> :sswitch_a
        0xc036 -> :sswitch_a
        0xc037 -> :sswitch_a
        0xc038 -> :sswitch_a
        0xc039 -> :sswitch_a
        0xc03a -> :sswitch_a
        0xc03b -> :sswitch_a
        0xc072 -> :sswitch_9
        0xc073 -> :sswitch_9
        0xc074 -> :sswitch_7
        0xc075 -> :sswitch_7
        0xc076 -> :sswitch_b
        0xc077 -> :sswitch_b
        0xc078 -> :sswitch_8
        0xc079 -> :sswitch_8
        0xc07a -> :sswitch_d
        0xc07b -> :sswitch_d
        0xc07c -> :sswitch_5
        0xc07d -> :sswitch_5
        0xc07e -> :sswitch_2
        0xc07f -> :sswitch_2
        0xc080 -> :sswitch_3
        0xc081 -> :sswitch_3
        0xc082 -> :sswitch_1
        0xc083 -> :sswitch_1
        0xc084 -> :sswitch_0
        0xc085 -> :sswitch_0
        0xc086 -> :sswitch_9
        0xc087 -> :sswitch_9
        0xc088 -> :sswitch_7
        0xc089 -> :sswitch_7
        0xc08a -> :sswitch_b
        0xc08b -> :sswitch_b
        0xc08c -> :sswitch_8
        0xc08d -> :sswitch_8
        0xc08e -> :sswitch_c
        0xc08f -> :sswitch_c
        0xc090 -> :sswitch_4
        0xc091 -> :sswitch_4
        0xc092 -> :sswitch_e
        0xc093 -> :sswitch_e
        0xc094 -> :sswitch_c
        0xc095 -> :sswitch_c
        0xc096 -> :sswitch_4
        0xc097 -> :sswitch_4
        0xc098 -> :sswitch_e
        0xc099 -> :sswitch_e
        0xc09a -> :sswitch_a
        0xc09b -> :sswitch_a
        0xc09c -> :sswitch_d
        0xc09d -> :sswitch_d
        0xc09e -> :sswitch_5
        0xc09f -> :sswitch_5
        0xc0a0 -> :sswitch_d
        0xc0a1 -> :sswitch_d
        0xc0a2 -> :sswitch_5
        0xc0a3 -> :sswitch_5
        0xc0a4 -> :sswitch_c
        0xc0a5 -> :sswitch_c
        0xc0a6 -> :sswitch_4
        0xc0a7 -> :sswitch_4
        0xc0a8 -> :sswitch_c
        0xc0a9 -> :sswitch_c
        0xc0aa -> :sswitch_4
        0xc0ab -> :sswitch_4
        0xc0ac -> :sswitch_9
        0xc0ad -> :sswitch_9
        0xc0ae -> :sswitch_9
        0xc0af -> :sswitch_9
        0xcca8 -> :sswitch_b
        0xcca9 -> :sswitch_9
        0xccaa -> :sswitch_5
        0xccab -> :sswitch_c
        0xccac -> :sswitch_a
        0xccad -> :sswitch_4
        0xccae -> :sswitch_e
        0xff00 -> :sswitch_5
        0xff01 -> :sswitch_5
        0xff02 -> :sswitch_b
        0xff03 -> :sswitch_b
        0xff04 -> :sswitch_9
        0xff05 -> :sswitch_9
        0xff10 -> :sswitch_c
        0xff11 -> :sswitch_c
        0xff12 -> :sswitch_4
        0xff13 -> :sswitch_4
        0xff14 -> :sswitch_a
        0xff15 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getMACAlgorithm(I)I
    .locals 2
    .param p0, "ciphersuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2061
    sparse-switch p0, :sswitch_data_0

    .line 2325
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 2154
    :sswitch_0
    const/4 v0, 0x0

    .line 2322
    :goto_0
    return v0

    .line 2159
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2253
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2300
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 2322
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 2061
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0xa -> :sswitch_2
        0xd -> :sswitch_2
        0x10 -> :sswitch_2
        0x13 -> :sswitch_2
        0x16 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1b -> :sswitch_2
        0x2c -> :sswitch_2
        0x2d -> :sswitch_2
        0x2e -> :sswitch_2
        0x2f -> :sswitch_2
        0x30 -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_2
        0x33 -> :sswitch_2
        0x34 -> :sswitch_2
        0x35 -> :sswitch_2
        0x36 -> :sswitch_2
        0x37 -> :sswitch_2
        0x38 -> :sswitch_2
        0x39 -> :sswitch_2
        0x3a -> :sswitch_2
        0x3b -> :sswitch_3
        0x3c -> :sswitch_3
        0x3d -> :sswitch_3
        0x3e -> :sswitch_3
        0x3f -> :sswitch_3
        0x40 -> :sswitch_3
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x45 -> :sswitch_2
        0x46 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_3
        0x69 -> :sswitch_3
        0x6a -> :sswitch_3
        0x6b -> :sswitch_3
        0x6c -> :sswitch_3
        0x6d -> :sswitch_3
        0x84 -> :sswitch_2
        0x85 -> :sswitch_2
        0x86 -> :sswitch_2
        0x87 -> :sswitch_2
        0x88 -> :sswitch_2
        0x89 -> :sswitch_2
        0x8a -> :sswitch_2
        0x8b -> :sswitch_2
        0x8c -> :sswitch_2
        0x8d -> :sswitch_2
        0x8e -> :sswitch_2
        0x8f -> :sswitch_2
        0x90 -> :sswitch_2
        0x91 -> :sswitch_2
        0x92 -> :sswitch_2
        0x93 -> :sswitch_2
        0x94 -> :sswitch_2
        0x95 -> :sswitch_2
        0x96 -> :sswitch_2
        0x97 -> :sswitch_2
        0x98 -> :sswitch_2
        0x99 -> :sswitch_2
        0x9a -> :sswitch_2
        0x9b -> :sswitch_2
        0x9c -> :sswitch_0
        0x9d -> :sswitch_0
        0x9e -> :sswitch_0
        0x9f -> :sswitch_0
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_0
        0xa2 -> :sswitch_0
        0xa3 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa6 -> :sswitch_0
        0xa7 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xaa -> :sswitch_0
        0xab -> :sswitch_0
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xae -> :sswitch_3
        0xaf -> :sswitch_4
        0xb0 -> :sswitch_3
        0xb1 -> :sswitch_4
        0xb2 -> :sswitch_3
        0xb3 -> :sswitch_4
        0xb4 -> :sswitch_3
        0xb5 -> :sswitch_4
        0xb6 -> :sswitch_3
        0xb7 -> :sswitch_4
        0xb8 -> :sswitch_3
        0xb9 -> :sswitch_4
        0xba -> :sswitch_3
        0xbb -> :sswitch_3
        0xbc -> :sswitch_3
        0xbd -> :sswitch_3
        0xbe -> :sswitch_3
        0xbf -> :sswitch_3
        0xc0 -> :sswitch_3
        0xc1 -> :sswitch_3
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_3
        0xc4 -> :sswitch_3
        0xc5 -> :sswitch_3
        0xc001 -> :sswitch_2
        0xc002 -> :sswitch_2
        0xc003 -> :sswitch_2
        0xc004 -> :sswitch_2
        0xc005 -> :sswitch_2
        0xc006 -> :sswitch_2
        0xc007 -> :sswitch_2
        0xc008 -> :sswitch_2
        0xc009 -> :sswitch_2
        0xc00a -> :sswitch_2
        0xc00b -> :sswitch_2
        0xc00c -> :sswitch_2
        0xc00d -> :sswitch_2
        0xc00e -> :sswitch_2
        0xc00f -> :sswitch_2
        0xc010 -> :sswitch_2
        0xc011 -> :sswitch_2
        0xc012 -> :sswitch_2
        0xc013 -> :sswitch_2
        0xc014 -> :sswitch_2
        0xc015 -> :sswitch_2
        0xc016 -> :sswitch_2
        0xc017 -> :sswitch_2
        0xc018 -> :sswitch_2
        0xc019 -> :sswitch_2
        0xc01a -> :sswitch_2
        0xc01b -> :sswitch_2
        0xc01c -> :sswitch_2
        0xc01d -> :sswitch_2
        0xc01e -> :sswitch_2
        0xc01f -> :sswitch_2
        0xc020 -> :sswitch_2
        0xc021 -> :sswitch_2
        0xc022 -> :sswitch_2
        0xc023 -> :sswitch_3
        0xc024 -> :sswitch_4
        0xc025 -> :sswitch_3
        0xc026 -> :sswitch_4
        0xc027 -> :sswitch_3
        0xc028 -> :sswitch_4
        0xc029 -> :sswitch_3
        0xc02a -> :sswitch_4
        0xc02b -> :sswitch_0
        0xc02c -> :sswitch_0
        0xc02d -> :sswitch_0
        0xc02e -> :sswitch_0
        0xc02f -> :sswitch_0
        0xc030 -> :sswitch_0
        0xc031 -> :sswitch_0
        0xc032 -> :sswitch_0
        0xc033 -> :sswitch_2
        0xc034 -> :sswitch_2
        0xc035 -> :sswitch_2
        0xc036 -> :sswitch_2
        0xc037 -> :sswitch_3
        0xc038 -> :sswitch_4
        0xc039 -> :sswitch_2
        0xc03a -> :sswitch_3
        0xc03b -> :sswitch_4
        0xc072 -> :sswitch_3
        0xc073 -> :sswitch_4
        0xc074 -> :sswitch_3
        0xc075 -> :sswitch_4
        0xc076 -> :sswitch_3
        0xc077 -> :sswitch_4
        0xc078 -> :sswitch_3
        0xc079 -> :sswitch_4
        0xc07a -> :sswitch_0
        0xc07b -> :sswitch_0
        0xc07c -> :sswitch_0
        0xc07d -> :sswitch_0
        0xc07e -> :sswitch_0
        0xc07f -> :sswitch_0
        0xc080 -> :sswitch_0
        0xc081 -> :sswitch_0
        0xc082 -> :sswitch_0
        0xc083 -> :sswitch_0
        0xc084 -> :sswitch_0
        0xc085 -> :sswitch_0
        0xc086 -> :sswitch_0
        0xc087 -> :sswitch_0
        0xc088 -> :sswitch_0
        0xc089 -> :sswitch_0
        0xc08a -> :sswitch_0
        0xc08b -> :sswitch_0
        0xc08c -> :sswitch_0
        0xc08d -> :sswitch_0
        0xc08e -> :sswitch_0
        0xc08f -> :sswitch_0
        0xc090 -> :sswitch_0
        0xc091 -> :sswitch_0
        0xc092 -> :sswitch_0
        0xc093 -> :sswitch_0
        0xc094 -> :sswitch_3
        0xc095 -> :sswitch_4
        0xc096 -> :sswitch_3
        0xc097 -> :sswitch_4
        0xc098 -> :sswitch_3
        0xc099 -> :sswitch_4
        0xc09a -> :sswitch_3
        0xc09b -> :sswitch_4
        0xc09c -> :sswitch_0
        0xc09d -> :sswitch_0
        0xc09e -> :sswitch_0
        0xc09f -> :sswitch_0
        0xc0a0 -> :sswitch_0
        0xc0a1 -> :sswitch_0
        0xc0a2 -> :sswitch_0
        0xc0a3 -> :sswitch_0
        0xc0a4 -> :sswitch_0
        0xc0a5 -> :sswitch_0
        0xc0a6 -> :sswitch_0
        0xc0a7 -> :sswitch_0
        0xc0a8 -> :sswitch_0
        0xc0a9 -> :sswitch_0
        0xc0aa -> :sswitch_0
        0xc0ab -> :sswitch_0
        0xc0ac -> :sswitch_0
        0xc0ad -> :sswitch_0
        0xc0ae -> :sswitch_0
        0xc0af -> :sswitch_0
        0xcca8 -> :sswitch_0
        0xcca9 -> :sswitch_0
        0xccaa -> :sswitch_0
        0xccab -> :sswitch_0
        0xccac -> :sswitch_0
        0xccad -> :sswitch_0
        0xccae -> :sswitch_0
        0xff00 -> :sswitch_0
        0xff01 -> :sswitch_0
        0xff02 -> :sswitch_0
        0xff03 -> :sswitch_0
        0xff04 -> :sswitch_0
        0xff05 -> :sswitch_0
        0xff10 -> :sswitch_0
        0xff11 -> :sswitch_0
        0xff12 -> :sswitch_0
        0xff13 -> :sswitch_0
        0xff14 -> :sswitch_0
        0xff15 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getMinimumVersion(I)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1
    .param p0, "ciphersuite"    # I

    .prologue
    .line 2331
    sparse-switch p0, :sswitch_data_0

    .line 2468
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    :goto_0
    return-object v0

    .line 2465
    :sswitch_0
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_0

    .line 2331
    nop

    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x67 -> :sswitch_0
        0x68 -> :sswitch_0
        0x69 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0x6d -> :sswitch_0
        0x9c -> :sswitch_0
        0x9d -> :sswitch_0
        0x9e -> :sswitch_0
        0x9f -> :sswitch_0
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_0
        0xa2 -> :sswitch_0
        0xa3 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xa6 -> :sswitch_0
        0xa7 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xaa -> :sswitch_0
        0xab -> :sswitch_0
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xba -> :sswitch_0
        0xbb -> :sswitch_0
        0xbc -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
        0xbf -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc3 -> :sswitch_0
        0xc4 -> :sswitch_0
        0xc5 -> :sswitch_0
        0xc023 -> :sswitch_0
        0xc024 -> :sswitch_0
        0xc025 -> :sswitch_0
        0xc026 -> :sswitch_0
        0xc027 -> :sswitch_0
        0xc028 -> :sswitch_0
        0xc029 -> :sswitch_0
        0xc02a -> :sswitch_0
        0xc02b -> :sswitch_0
        0xc02c -> :sswitch_0
        0xc02d -> :sswitch_0
        0xc02e -> :sswitch_0
        0xc02f -> :sswitch_0
        0xc030 -> :sswitch_0
        0xc031 -> :sswitch_0
        0xc032 -> :sswitch_0
        0xc072 -> :sswitch_0
        0xc073 -> :sswitch_0
        0xc074 -> :sswitch_0
        0xc075 -> :sswitch_0
        0xc076 -> :sswitch_0
        0xc077 -> :sswitch_0
        0xc078 -> :sswitch_0
        0xc079 -> :sswitch_0
        0xc07a -> :sswitch_0
        0xc07b -> :sswitch_0
        0xc07c -> :sswitch_0
        0xc07d -> :sswitch_0
        0xc07e -> :sswitch_0
        0xc07f -> :sswitch_0
        0xc080 -> :sswitch_0
        0xc081 -> :sswitch_0
        0xc082 -> :sswitch_0
        0xc083 -> :sswitch_0
        0xc084 -> :sswitch_0
        0xc085 -> :sswitch_0
        0xc086 -> :sswitch_0
        0xc087 -> :sswitch_0
        0xc088 -> :sswitch_0
        0xc089 -> :sswitch_0
        0xc08a -> :sswitch_0
        0xc08b -> :sswitch_0
        0xc08c -> :sswitch_0
        0xc08d -> :sswitch_0
        0xc08e -> :sswitch_0
        0xc08f -> :sswitch_0
        0xc090 -> :sswitch_0
        0xc091 -> :sswitch_0
        0xc092 -> :sswitch_0
        0xc093 -> :sswitch_0
        0xc09c -> :sswitch_0
        0xc09d -> :sswitch_0
        0xc09e -> :sswitch_0
        0xc09f -> :sswitch_0
        0xc0a0 -> :sswitch_0
        0xc0a1 -> :sswitch_0
        0xc0a2 -> :sswitch_0
        0xc0a3 -> :sswitch_0
        0xc0a4 -> :sswitch_0
        0xc0a5 -> :sswitch_0
        0xc0a6 -> :sswitch_0
        0xc0a7 -> :sswitch_0
        0xc0a8 -> :sswitch_0
        0xc0a9 -> :sswitch_0
        0xc0aa -> :sswitch_0
        0xc0ab -> :sswitch_0
        0xc0ac -> :sswitch_0
        0xc0ad -> :sswitch_0
        0xc0ae -> :sswitch_0
        0xc0af -> :sswitch_0
        0xcca8 -> :sswitch_0
        0xcca9 -> :sswitch_0
        0xccaa -> :sswitch_0
        0xccab -> :sswitch_0
        0xccac -> :sswitch_0
        0xccad -> :sswitch_0
        0xccae -> :sswitch_0
        0xff00 -> :sswitch_0
        0xff01 -> :sswitch_0
        0xff02 -> :sswitch_0
        0xff03 -> :sswitch_0
        0xff04 -> :sswitch_0
        0xff05 -> :sswitch_0
        0xff10 -> :sswitch_0
        0xff11 -> :sswitch_0
        0xff12 -> :sswitch_0
        0xff13 -> :sswitch_0
        0xff14 -> :sswitch_0
        0xff15 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getOIDForHashAlgorithm(S)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "hashAlgorithm"    # S

    .prologue
    .line 1255
    packed-switch p0, :pswitch_data_0

    .line 1270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown HashAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1258
    :pswitch_0
    sget-object v0, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 1268
    :goto_0
    return-object v0

    .line 1260
    :pswitch_1
    sget-object v0, Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1262
    :pswitch_2
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1264
    :pswitch_3
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1266
    :pswitch_4
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1268
    :pswitch_5
    sget-object v0, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 1255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getSignatureAlgorithmsExtension(Ljava/util/Hashtable;)Ljava/util/Vector;
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 822
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->EXT_signature_algorithms:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 823
    .local v0, "extensionData":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readSignatureAlgorithmsExtension([B)Ljava/util/Vector;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSignatureAndHashAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsSignerCredentials;)Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .locals 3
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "signerCredentials"    # Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 760
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->getSignatureAndHashAlgorithm()Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    .line 761
    if-nez v0, :cond_0

    .line 763
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 766
    :cond_0
    return-object v0
.end method

.method public static getUsableSignatureAlgorithms(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 5
    .param p0, "sigHashAlgs"    # Ljava/util/Vector;

    .prologue
    .line 2532
    if-nez p0, :cond_1

    .line 2534
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsUtils;->getAllSignatureAlgorithms()Ljava/util/Vector;

    move-result-object v3

    .line 2551
    :cond_0
    return-object v3

    .line 2537
    :cond_1
    new-instance v3, Ljava/util/Vector;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    .line 2538
    .local v3, "v":Ljava/util/Vector;
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2539
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 2541
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    .line 2544
    .local v2, "sigHashAlg":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v4

    invoke-static {v4}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    .line 2545
    .local v1, "sigAlg":Ljava/lang/Short;
    invoke-virtual {v3, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2547
    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2539
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z
    .locals 2
    .param p0, "extensions"    # Ljava/util/Hashtable;
    .param p1, "extensionType"    # Ljava/lang/Integer;
    .param p2, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 777
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    .line 778
    .local v0, "extension_data":[B
    if-nez v0, :cond_0

    .line 780
    const/4 v1, 0x0

    .line 786
    :goto_0
    return v1

    .line 782
    :cond_0
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 784
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v1

    .line 786
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static hasSigningCapability(S)Z
    .locals 1
    .param p0, "clientCertificateType"    # S

    .prologue
    .line 1366
    sparse-switch p0, :sswitch_data_0

    .line 1373
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1371
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1366
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method static hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V
    .locals 11
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "secret"    # [B
    .param p2, "seed"    # [B
    .param p3, "out"    # [B

    .prologue
    const/4 v10, 0x0

    .line 1017
    new-instance v5, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v5, p0}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 1018
    .local v5, "mac":Lorg/spongycastle/crypto/macs/HMac;
    new-instance v7, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v7, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v5, v7}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 1019
    move-object v0, p2

    .line 1020
    .local v0, "a":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    .line 1021
    .local v6, "size":I
    array-length v7, p3

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    div-int v4, v7, v6

    .line 1022
    .local v4, "iterations":I
    invoke-virtual {v5}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v7

    new-array v1, v7, [B

    .line 1023
    .local v1, "buf":[B
    invoke-virtual {v5}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v7

    new-array v2, v7, [B

    .line 1024
    .local v2, "buf2":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1026
    array-length v7, v0

    invoke-virtual {v5, v0, v10, v7}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 1027
    invoke-virtual {v5, v1, v10}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 1028
    move-object v0, v1

    .line 1029
    array-length v7, v0

    invoke-virtual {v5, v0, v10, v7}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 1030
    array-length v7, p2

    invoke-virtual {v5, p2, v10, v7}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 1031
    invoke-virtual {v5, v2, v10}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 1032
    mul-int v7, v6, v3

    array-length v8, p3

    mul-int v9, v6, v3

    sub-int/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v2, v10, p3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1024
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1034
    :cond_0
    return-void
.end method

.method public static importSession([BLorg/spongycastle/crypto/tls/SessionParameters;)Lorg/spongycastle/crypto/tls/TlsSession;
    .locals 1
    .param p0, "sessionID"    # [B
    .param p1, "sessionParameters"    # Lorg/spongycastle/crypto/tls/SessionParameters;

    .prologue
    .line 791
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsSessionImpl;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/spongycastle/crypto/tls/SessionParameters;)V

    return-object v0
.end method

.method public static isAEADCipherSuite(I)Z
    .locals 2
    .param p0, "ciphersuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2474
    const/4 v0, 0x2

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getCipherType(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBlockCipherSuite(I)Z
    .locals 2
    .param p0, "ciphersuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2479
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getCipherType(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 1
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 186
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    return v0
.end method

.method public static isSignatureAlgorithmsExtensionAllowed(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2
    .param p0, "clientVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 796
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isStreamCipherSuite(I)Z
    .locals 1
    .param p0, "ciphersuite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2484
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getCipherType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTLSv11(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2
    .param p0, "version"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 191
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isTLSv11(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 1
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 196
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv11(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isTLSv12(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2
    .param p0, "version"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 201
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z
    .locals 1
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;

    .prologue
    .line 206
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isValidCipherSuiteForSignatureAlgorithms(ILjava/util/Vector;)Z
    .locals 3
    .param p0, "cipherSuite"    # I
    .param p1, "sigAlgs"    # Ljava/util/Vector;

    .prologue
    const/4 v2, 0x1

    .line 2492
    :try_start_0
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getKeyExchangeAlgorithm(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2499
    .local v1, "keyExchangeAlgorithm":I
    packed-switch v1, :pswitch_data_0

    .line 2521
    .end local v1    # "keyExchangeAlgorithm":I
    :goto_0
    :pswitch_0
    return v2

    .line 2494
    :catch_0
    move-exception v0

    .line 2496
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 2504
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "keyExchangeAlgorithm":I
    :pswitch_1
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 2510
    :pswitch_2
    invoke-static {v2}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 2515
    :pswitch_3
    const/4 v2, 0x2

    invoke-static {v2}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 2518
    :pswitch_4
    const/4 v2, 0x3

    invoke-static {v2}, Lorg/spongycastle/util/Shorts;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 2499
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static isValidCipherSuiteForVersion(ILorg/spongycastle/crypto/tls/ProtocolVersion;)Z
    .locals 2
    .param p0, "cipherSuite"    # I
    .param p1, "serverVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 2527
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->getMinimumVersion(I)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getEquivalentTLSVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v0

    return v0
.end method

.method public static isValidUint16(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 151
    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint16(J)Z
    .locals 2
    .param p0, "i"    # J

    .prologue
    .line 156
    const-wide/32 v0, 0xffff

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint24(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 161
    const v0, 0xffffff

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint24(J)Z
    .locals 2
    .param p0, "i"    # J

    .prologue
    .line 166
    const-wide/32 v0, 0xffffff

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint32(J)Z
    .locals 2
    .param p0, "i"    # J

    .prologue
    .line 171
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint48(J)Z
    .locals 2
    .param p0, "i"    # J

    .prologue
    .line 176
    const-wide v0, 0xffffffffffffL

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint64(J)Z
    .locals 1
    .param p0, "i"    # J

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidUint8(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 141
    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint8(J)Z
    .locals 2
    .param p0, "i"    # J

    .prologue
    .line 146
    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUint8(S)Z
    .locals 1
    .param p0, "i"    # S

    .prologue
    .line 136
    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseSupportedSignatureAlgorithms(ZLjava/io/InputStream;)Ljava/util/Vector;
    .locals 7
    .param p0, "allowAnonymous"    # Z
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 903
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v3

    .line 904
    .local v3, "length":I
    const/4 v5, 0x2

    if-lt v3, v5, :cond_0

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_1

    .line 906
    :cond_0
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v6, 0x32

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 908
    :cond_1
    div-int/lit8 v0, v3, 0x2

    .line 909
    .local v0, "count":I
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v0}, Ljava/util/Vector;-><init>(I)V

    .line 910
    .local v4, "supportedSignatureAlgorithms":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 912
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v1

    .line 913
    .local v1, "entry":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    if-nez p0, :cond_2

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v5

    if-nez v5, :cond_2

    .line 919
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v6, 0x2f

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5

    .line 921
    :cond_2
    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 910
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 923
    .end local v1    # "entry":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    :cond_3
    return-object v4
.end method

.method public static readASN1Object([B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x32

    .line 660
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 661
    .local v0, "asn1":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 662
    .local v1, "result":Lorg/spongycastle/asn1/ASN1Primitive;
    if-nez v1, :cond_0

    .line 664
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 666
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 668
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 670
    :cond_1
    return-object v1
.end method

.method public static readAllOrNothing(ILjava/io/InputStream;)[B
    .locals 3
    .param p0, "length"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    const/4 v2, 0x1

    if-ge p0, v2, :cond_1

    .line 539
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 551
    :cond_0
    :goto_0
    return-object v0

    .line 541
    :cond_1
    new-array v0, p0, [B

    .line 542
    .local v0, "buf":[B
    invoke-static {p1, v0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 543
    .local v1, "read":I
    if-nez v1, :cond_2

    .line 545
    const/4 v0, 0x0

    goto :goto_0

    .line 547
    :cond_2
    if-eq v1, p0, :cond_0

    .line 549
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public static readDERObject([B)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readASN1Object([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 680
    .local v1, "result":Lorg/spongycastle/asn1/ASN1Primitive;
    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 681
    .local v0, "check":[B
    invoke-static {v0, p0}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 683
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2

    .line 685
    :cond_0
    return-object v1
.end method

.method public static readFully([BLjava/io/InputStream;)V
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    array-length v0, p0

    .line 573
    .local v0, "length":I
    if-lez v0, :cond_0

    invoke-static {p1, p0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 575
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 577
    :cond_0
    return-void
.end method

.method public static readFully(ILjava/io/InputStream;)[B
    .locals 2
    .param p0, "length"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    const/4 v1, 0x1

    if-ge p0, v1, :cond_1

    .line 559
    sget-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    .line 566
    :cond_0
    return-object v0

    .line 561
    :cond_1
    new-array v0, p0, [B

    .line 562
    .local v0, "buf":[B
    invoke-static {p1, v0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 564
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public static readOpaque16(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    .line 590
    .local v0, "length":I
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method public static readOpaque24(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v0

    .line 597
    .local v0, "length":I
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method public static readOpaque8(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    .line 583
    .local v0, "length":S
    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method public static readSignatureAlgorithmsExtension([B)Ljava/util/Vector;
    .locals 4
    .param p0, "extensionData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    if-nez p0, :cond_0

    .line 856
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'extensionData\' cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 859
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 862
    .local v0, "buf":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->parseSupportedSignatureAlgorithms(ZLjava/io/InputStream;)Ljava/util/Vector;

    move-result-object v1

    .line 864
    .local v1, "supported_signature_algorithms":Ljava/util/Vector;
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 866
    return-object v1
.end method

.method public static readUint16(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 460
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 461
    .local v1, "i2":I
    if-gez v1, :cond_0

    .line 463
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 465
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    return v2
.end method

.method public static readUint16([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 470
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x8

    .line 471
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 472
    return v0
.end method

.method public static readUint16Array(ILjava/io/InputStream;)[I
    .locals 3
    .param p0, "count"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 614
    new-array v1, p0, [I

    .line 615
    .local v1, "uints":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 617
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    aput v2, v1, v0

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_0
    return-object v1
.end method

.method public static readUint24(Ljava/io/InputStream;)I
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 479
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 480
    .local v1, "i2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 481
    .local v2, "i3":I
    if-gez v2, :cond_0

    .line 483
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 485
    :cond_0
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v2

    return v3
.end method

.method public static readUint24([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 490
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x10

    .line 491
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 492
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 493
    return v0
.end method

.method public static readUint32(Ljava/io/InputStream;)J
    .locals 8
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 500
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 501
    .local v1, "i2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 502
    .local v2, "i3":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 503
    .local v3, "i4":I
    if-gez v3, :cond_0

    .line 505
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 507
    :cond_0
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    return-wide v4
.end method

.method public static readUint32([BI)J
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 512
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x18

    .line 513
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 514
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 515
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 516
    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    return-wide v2
.end method

.method public static readUint48(Ljava/io/InputStream;)J
    .locals 8
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v6, 0xffffffffL

    .line 522
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v0

    .line 523
    .local v0, "hi":I
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v1

    .line 524
    .local v1, "lo":I
    int-to-long v2, v0

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static readUint48([BI)J
    .locals 8
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 529
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v0

    .line 530
    .local v0, "hi":I
    add-int/lit8 v2, p1, 0x3

    invoke-static {p0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24([BI)I

    move-result v1

    .line 531
    .local v1, "lo":I
    int-to-long v2, v0

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static readUint8(Ljava/io/InputStream;)S
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 444
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 446
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 448
    :cond_0
    int-to-short v1, v0

    return v1
.end method

.method public static readUint8([BI)S
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 453
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static readUint8Array(ILjava/io/InputStream;)[S
    .locals 3
    .param p0, "count"    # I
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    new-array v1, p0, [S

    .line 604
    .local v1, "uints":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 606
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v2

    aput-short v2, v1, v0

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 608
    :cond_0
    return-object v1
.end method

.method public static readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 632
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 633
    .local v1, "i2":I
    if-gez v1, :cond_0

    .line 635
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 637
    :cond_0
    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->get(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    return-object v2
.end method

.method public static readVersion([BI)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->get(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public static readVersionRaw(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 650
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 651
    .local v1, "i2":I
    if-gez v1, :cond_0

    .line 653
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 655
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    return v2
.end method

.method public static readVersionRaw([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method static trackHashAlgorithms(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V
    .locals 4
    .param p0, "handshakeHash"    # Lorg/spongycastle/crypto/tls/TlsHandshakeHash;
    .param p1, "supportedSignatureAlgorithms"    # Ljava/util/Vector;

    .prologue
    .line 1347
    if-eqz p1, :cond_1

    .line 1349
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1352
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    .line 1353
    .local v2, "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v0

    .line 1356
    .local v0, "hashAlgorithm":S
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/HashAlgorithm;->isPrivate(S)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1358
    invoke-interface {p0, v0}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->trackHashAlgorithm(S)V

    .line 1349
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1362
    .end local v0    # "hashAlgorithm":S
    .end local v1    # "i":I
    .end local v2    # "signatureAndHashAlgorithm":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    :cond_1
    return-void
.end method

.method static validateKeyUsage(Lorg/spongycastle/asn1/x509/Certificate;I)V
    .locals 5
    .param p0, "c"    # Lorg/spongycastle/asn1/x509/Certificate;
    .param p1, "keyUsageBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1039
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/Certificate;->getTBSCertificate()Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/TBSCertificate;->getExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v1

    .line 1040
    .local v1, "exts":Lorg/spongycastle/asn1/x509/Extensions;
    if-eqz v1, :cond_0

    .line 1042
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/KeyUsage;->fromExtensions(Lorg/spongycastle/asn1/x509/Extensions;)Lorg/spongycastle/asn1/x509/KeyUsage;

    move-result-object v2

    .line 1043
    .local v2, "ku":Lorg/spongycastle/asn1/x509/KeyUsage;
    if-eqz v2, :cond_0

    .line 1045
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/KeyUsage;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 1046
    .local v0, "bits":I
    and-int v3, v0, p1

    if-eq v3, p1, :cond_0

    .line 1048
    new-instance v3, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v4, 0x2e

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v3

    .line 1052
    .end local v0    # "bits":I
    .end local v2    # "ku":Lorg/spongycastle/asn1/x509/KeyUsage;
    :cond_0
    return-void
.end method

.method private static vectorOfOne(Ljava/lang/Object;)Ljava/util/Vector;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1413
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1414
    .local v0, "v":Ljava/util/Vector;
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1415
    return-object v0
.end method

.method public static verifySupportedSignatureAlgorithm(Ljava/util/Vector;Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;)V
    .locals 4
    .param p0, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .param p1, "signatureAlgorithm"    # Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 929
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 930
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    const v3, 0x8000

    if-lt v2, v3, :cond_1

    .line 932
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'supportedSignatureAlgorithms\' must have length from 1 to (2^15 - 1)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 935
    :cond_1
    if-nez p1, :cond_2

    .line 937
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'signatureAlgorithm\' cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 940
    :cond_2
    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v2

    if-eqz v2, :cond_4

    .line 942
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 944
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    .line 945
    .local v0, "entry":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v2

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v2

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getSignature()S

    move-result v3

    if-ne v2, v3, :cond_3

    .line 947
    return-void

    .line 942
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 952
    .end local v0    # "entry":Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;
    .end local v1    # "i":I
    :cond_4
    new-instance v2, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v2
.end method

.method public static writeGMTUnixTime([BI)V
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 690
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 691
    .local v0, "t":I
    ushr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 692
    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 693
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 694
    add-int/lit8 v1, p1, 0x3

    int-to-byte v2, v0

    aput-byte v2, p0, v1

    .line 695
    return-void
.end method

.method public static writeOpaque16([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 334
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 335
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 336
    return-void
.end method

.method public static writeOpaque24([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint24(I)V

    .line 342
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 343
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 344
    return-void
.end method

.method public static writeOpaque8([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 326
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    .line 327
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 328
    return-void
.end method

.method public static writeUint16(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    ushr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 235
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 236
    return-void
.end method

.method public static writeUint16(I[BI)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 240
    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 241
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 242
    return-void
.end method

.method public static writeUint16Array([ILjava/io/OutputStream;)V
    .locals 2
    .param p0, "uints"    # [I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 386
    aget v1, p0, v0

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_0
    return-void
.end method

.method public static writeUint16Array([I[BI)V
    .locals 2
    .param p0, "uints"    # [I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 395
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 396
    add-int/lit8 p2, p2, 0x2

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_0
    return-void
.end method

.method public static writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V
    .locals 2
    .param p0, "uints"    # [I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    array-length v1, p0

    mul-int/lit8 v0, v1, 0x2

    .line 404
    .local v0, "length":I
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 405
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 406
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16Array([ILjava/io/OutputStream;)V

    .line 407
    return-void
.end method

.method public static writeUint16ArrayWithUint16Length([I[BI)V
    .locals 2
    .param p0, "uints"    # [I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    array-length v1, p0

    mul-int/lit8 v0, v1, 0x2

    .line 413
    .local v0, "length":I
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 414
    invoke-static {v0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 415
    add-int/lit8 v1, p2, 0x2

    invoke-static {p0, p1, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16Array([I[BI)V

    .line 416
    return-void
.end method

.method public static writeUint24(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 248
    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 249
    int-to-byte v0, p0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 250
    return-void
.end method

.method public static writeUint24(I[BI)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 254
    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 255
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 256
    add-int/lit8 v0, p2, 0x2

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 257
    return-void
.end method

.method public static writeUint32(JLjava/io/OutputStream;)V
    .locals 2
    .param p0, "i"    # J
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 263
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 264
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 265
    long-to-int v0, p0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 266
    return-void
.end method

.method public static writeUint32(J[BI)V
    .locals 4
    .param p0, "i"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 270
    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 271
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 272
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 273
    add-int/lit8 v0, p3, 0x3

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 274
    return-void
.end method

.method public static writeUint48(JLjava/io/OutputStream;)V
    .locals 2
    .param p0, "i"    # J
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 280
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 281
    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 282
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 283
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 284
    long-to-int v0, p0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 285
    return-void
.end method

.method public static writeUint48(J[BI)V
    .locals 4
    .param p0, "i"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 289
    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 290
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x20

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 291
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x18

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 292
    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x10

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 293
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x8

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 294
    add-int/lit8 v0, p3, 0x5

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 295
    return-void
.end method

.method public static writeUint64(JLjava/io/OutputStream;)V
    .locals 2
    .param p0, "i"    # J
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 301
    const/16 v0, 0x30

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 302
    const/16 v0, 0x28

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 303
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 304
    const/16 v0, 0x18

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 305
    const/16 v0, 0x10

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 306
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 307
    long-to-int v0, p0

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 308
    return-void
.end method

.method public static writeUint64(J[BI)V
    .locals 4
    .param p0, "i"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 312
    const/16 v0, 0x38

    ushr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 313
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 314
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 315
    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 316
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 317
    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 318
    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    ushr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 319
    add-int/lit8 v0, p3, 0x7

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 320
    return-void
.end method

.method public static writeUint8(ILjava/io/OutputStream;)V
    .locals 0
    .param p0, "i"    # I
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 219
    return-void
.end method

.method public static writeUint8(I[BI)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 228
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 229
    return-void
.end method

.method public static writeUint8(SLjava/io/OutputStream;)V
    .locals 0
    .param p0, "i"    # S
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 213
    return-void
.end method

.method public static writeUint8(S[BI)V
    .locals 1
    .param p0, "i"    # S
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 223
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 224
    return-void
.end method

.method public static writeUint8Array([SLjava/io/OutputStream;)V
    .locals 2
    .param p0, "uints"    # [S
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 351
    aget-short v1, p0, v0

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    return-void
.end method

.method public static writeUint8Array([S[BI)V
    .locals 2
    .param p0, "uints"    # [S
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 360
    aget-short v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 361
    add-int/lit8 p2, p2, 0x1

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method public static writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V
    .locals 1
    .param p0, "uints"    # [S
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 369
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    .line 370
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8Array([SLjava/io/OutputStream;)V

    .line 371
    return-void
.end method

.method public static writeUint8ArrayWithUint8Length([S[BI)V
    .locals 1
    .param p0, "uints"    # [S
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    array-length v0, p0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint8(I)V

    .line 377
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(I[BI)V

    .line 378
    add-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8Array([S[BI)V

    .line 379
    return-void
.end method

.method public static writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "version"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 701
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 702
    return-void
.end method

.method public static writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V
    .locals 2
    .param p0, "version"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 706
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 707
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 708
    return-void
.end method
