.class public Lorg/spongycastle/crypto/tls/TlsMac;
.super Ljava/lang/Object;
.source "TlsMac.java"


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsContext;

.field protected digestBlockSize:I

.field protected digestOverhead:I

.field protected mac:Lorg/spongycastle/crypto/Mac;

.field protected macLength:I

.field protected secret:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/Digest;[BII)V
    .locals 3
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "key"    # [B
    .param p4, "keyOff"    # I
    .param p5, "keyLen"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    .line 35
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p3, p4, p5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 37
    .local v0, "keyParameter":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->secret:[B

    .line 40
    instance-of v1, p2, Lorg/spongycastle/crypto/digests/LongDigest;

    if-eqz v1, :cond_2

    .line 42
    const/16 v1, 0x80

    iput v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->digestBlockSize:I

    .line 43
    const/16 v1, 0x10

    iput v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->digestOverhead:I

    .line 51
    :goto_0
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    new-instance v1, Lorg/spongycastle/crypto/tls/SSL3Mac;

    invoke-direct {v1, p2}, Lorg/spongycastle/crypto/tls/SSL3Mac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    .line 56
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    .line 62
    const/4 v1, 0x4

    iput v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->digestOverhead:I

    .line 72
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 74
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->macLength:I

    .line 75
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v1

    iget-boolean v1, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    if-eqz v1, :cond_1

    .line 77
    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->macLength:I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->macLength:I

    .line 79
    :cond_1
    return-void

    .line 47
    :cond_2
    const/16 v1, 0x40

    iput v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->digestBlockSize:I

    .line 48
    const/16 v1, 0x8

    iput v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->digestOverhead:I

    goto :goto_0

    .line 67
    :cond_3
    new-instance v1, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v1, p2}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    goto :goto_1
.end method


# virtual methods
.method public calculateMac(JS[BII)[B
    .locals 7
    .param p1, "seqNo"    # J
    .param p3, "type"    # S
    .param p4, "message"    # [B
    .param p5, "offset"    # I
    .param p6, "length"    # I

    .prologue
    const/4 v6, 0x0

    .line 108
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsMac;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-interface {v4}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    .line 109
    .local v3, "serverVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isSSL()Z

    move-result v0

    .line 111
    .local v0, "isSSL":Z
    if-eqz v0, :cond_1

    const/16 v4, 0xb

    :goto_0
    new-array v1, v4, [B

    .line 112
    .local v1, "macHeader":[B
    invoke-static {p1, p2, v1, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    .line 113
    const/16 v4, 0x8

    invoke-static {p3, v1, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 114
    if-nez v0, :cond_0

    .line 116
    const/16 v4, 0x9

    invoke-static {v3, v1, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 118
    :cond_0
    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    invoke-static {p6, v1, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 120
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    array-length v5, v1

    invoke-interface {v4, v1, v6, v5}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 121
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v4, p4, p5, p6}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 123
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v4

    new-array v2, v4, [B

    .line 124
    .local v2, "result":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v4, v2, v6}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 125
    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/tls/TlsMac;->truncate([B)[B

    move-result-object v4

    return-object v4

    .line 111
    .end local v1    # "macHeader":[B
    .end local v2    # "result":[B
    :cond_1
    const/16 v4, 0xd

    goto :goto_0
.end method

.method public calculateMacConstantTime(JS[BIII[B)[B
    .locals 7
    .param p1, "seqNo"    # J
    .param p3, "type"    # S
    .param p4, "message"    # [B
    .param p5, "offset"    # I
    .param p6, "length"    # I
    .param p7, "fullLength"    # I
    .param p8, "dummyData"    # [B

    .prologue
    const/4 v5, 0x0

    .line 134
    invoke-virtual/range {p0 .. p6}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(JS[BII)[B

    move-result-object v2

    .line 140
    .local v2, "result":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsMac;->context:Lorg/spongycastle/crypto/tls/TlsContext;

    invoke-static {v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xb

    .line 143
    .local v1, "headerLength":I
    :goto_0
    add-int v3, v1, p7

    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/tls/TlsMac;->getDigestBlockCount(I)I

    move-result v3

    add-int v4, v1, p6

    invoke-virtual {p0, v4}, Lorg/spongycastle/crypto/tls/TlsMac;->getDigestBlockCount(I)I

    move-result v4

    sub-int v0, v3, v4

    .line 145
    .local v0, "extra":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 147
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    iget v4, p0, Lorg/spongycastle/crypto/tls/TlsMac;->digestBlockSize:I

    invoke-interface {v3, p8, v5, v4}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    goto :goto_1

    .line 140
    .end local v0    # "extra":I
    .end local v1    # "headerLength":I
    :cond_0
    const/16 v1, 0xd

    goto :goto_0

    .line 151
    .restart local v0    # "extra":I
    .restart local v1    # "headerLength":I
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    aget-byte v4, p8, v5

    invoke-interface {v3, v4}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 152
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Mac;->reset()V

    .line 154
    return-object v2
.end method

.method protected getDigestBlockCount(I)I
    .locals 2
    .param p1, "inputLength"    # I

    .prologue
    .line 160
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->digestOverhead:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->digestBlockSize:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getMACSecret()[B
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->secret:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->macLength:I

    return v0
.end method

.method protected truncate([B)[B
    .locals 2
    .param p1, "bs"    # [B

    .prologue
    .line 165
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->macLength:I

    if-gt v0, v1, :cond_0

    .line 170
    .end local p1    # "bs":[B
    :goto_0
    return-object p1

    .restart local p1    # "bs":[B
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->macLength:I

    invoke-static {p1, v0}, Lorg/spongycastle/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0
.end method
